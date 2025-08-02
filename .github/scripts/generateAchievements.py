import csv
import json
import requests
from urllib.parse import urlparse

def extract_sheet_id(url: str) -> str:
    parsed = urlparse(url)
    if '/d/' in parsed.path:
        return parsed.path.split('/d/')[1].split('/')[0]
    raise ValueError("Invalid Google Sheets URL")

def get_csv_url(sheet_url: str) -> str:
    sheet_id = extract_sheet_id(sheet_url)
    return f"https://docs.google.com/spreadsheets/d/{sheet_id}/export?format=csv"

def find_headers_for_x(sheet_url: str, row_identifier: str = "i.doll") -> list[str]:
    response = requests.get(get_csv_url(sheet_url))
    response.raise_for_status()
    reader = csv.reader(response.text.splitlines())

    rows = list(reader)
    if not rows:
        return []

    headers = rows[0]

    for row in rows[1:]:
        if len(row) == 0:
            continue
        if row[0].strip().lower() == row_identifier.lower():
            # Found the target row
            matching_headers = []
            for idx, cell in enumerate(row):
                if cell.strip().lower() == 'x':
                    header = headers[idx] if idx < len(headers) else f"Unnamed_{idx}"
                    matching_headers.append(header)
            return matching_headers

    raise ValueError(f"Row starting with '{row_identifier}' not found.")

def save_to_json(data: list[str], filename: str = "output.json"):
    with open(filename, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=2, ensure_ascii=False)
    print(f"Saved to {filename}")


if __name__ == "__main__":
    sheet_url = "https://docs.google.com/spreadsheets/d/1WAmOt4LkUvbDSzCizzYAI9EKKQWBJIzqohhmU4G68Lo/edit?gid=0"
    row_id = "i.doll"
    headers = find_headers_for_x(sheet_url, row_id)
    save_to_json(headers, "../../Th3a/achievements.json")

