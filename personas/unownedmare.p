persona set marker d189e492-93ad-3f2c-698d-d37239d5e741 d189e492-93ad-3f2c-698d-d37239d5e741 d189e492-93ad-3f2c-698d-d37239d5e741
persona set path $rlv/persona/mare
persona set action {}

persona set action.yes /me stomps once
persona set action.no /me stomps twice
persona set action.hi /me curtsies
persona set action.bye /me curtsies
persona set action.nicker /me plays nicker.aiff
persona set action.snort /me plays snort.mp3
persona set action.whinny /me plays whinny.wav
persona set action.lol /me plays nicker.wma
persona set action.fuck /me plays snort.midi


power flight off
power reach off
power amplifier off
power mind off

policy bolts on

# Set the name of the unit
## setname
set wlen %count words $me
if $wlen > 3 then jump namecheck
jump setname

@namecheck:
    set n1 %word 1 in $me
    set n2 %word 2 in $me

    if $n1 is Mare then jump unitcheck
    jump cleanup

@unitcheck:
    if $n2 is Unit then jump cleanup

@setname:
    xset basename db json id.name

    say Name $basename doesn't start with Mare Unit, rectifying.

    id name Mare Unit $basename
    jump cleanup

@cleanup:
    set wlen %undefined
    set n1 %undefined
    set n2 %undefined
    set n3 %undefined
    set basename %undefined

## end setname

db set input.censored /me whinnies

say $me is ready to work