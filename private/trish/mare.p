if $marker-neuter is %undefined then set marker-neuter 245b5372-8f37-2b9a-aa38-ea33970581d1
if $marker-female is %undefined then set marker-female d92316c9-b2db-1c81-1c52-0c72d677cda8
if $marker-male is %undefined then set marker-male a9cb060a-7ca5-b953-6cd8-6ecbfd2097f7
if $rlv is %undefined then set rlv ~ARES
persona set marker $marker-neuter $marker-female $marker-male
persona set path $rlv/persona/mare
persona set action {}

power inventory off
power flight off
power touch-self off
power far-cam off
power reach off
power amplifier off


persona set action.yes /me stomps once
persona set action.no /me stomps twice
persona set action.hi /me curtsies
persona set action.bye /me curtsies
persona set action.nicker /me nickers
persona set action.blow /me blows
persona set action.snort /me snorts
persona set action.whinny /me whinnies
persona set action.lol /me nickers
persona set action.fuck /me snorts


id name Mare D0A3C6

db set input.censored /me whinnies
policy bolts on
vox input on
db set policy.release 1
db set custom.values.mared 1
tell $self -151515 on
security ban $self

baseband.trigger-prefix mare


