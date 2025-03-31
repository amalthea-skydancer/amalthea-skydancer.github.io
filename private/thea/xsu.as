persona set marker b2348479-1e4b-fdf0-2011-4750ca026b39 b2348479-1e4b-fdf0-2011-4750ca026b39 b2348479-1e4b-fdf0-2011-4750ca026b39
persona set action {}

persona set action.yes Affirmative.
persona set action.no Negative.
persona set action.hi Initiating conversation. Hello.
persona set action.bye Ending session. See you soon.
persona set action.ok Acknowledged.
persona set action.lol That statement seems to contain elements of humor.
persona set action.thanks This unit thanks you.
persona set action.ready Ready.
persona set action.cannot This unit cannot comply.
persona set action.error An error has occurred.
persona set action.use This unit is available to assist.
persona set action.use? @say This unit offers \$pm.refl to assist.
persona set action.help This unit requires assistance.
persona set action.help? Do you require assistance?
persona set action.explain Please, explain further.
persona set action.mind @say This unit cannot comply while \$pm.gen cortex is disabled.
persona set action.ty This unit appreciate the assistance you have provided.
persona set action.ic I've updated my understanding based on your input.

power all on
id name 80-9275
db set id.prefix XSU
db set input.censored /me is unable to think
security owner $self
policy bolts on

policy group off
policy release off

id regen