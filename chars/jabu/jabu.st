;---------------------------------------------------------------------------
; Format:
; [Statedef STATENO]
; type = ?      S/C/A/L  stand/crouch/air/liedown
; movetype = ?  I/A/H    idle/attack/gethit
; physics = ?   S/C/A/N  stand/crouch/air/none
; juggle = ?             air juggle points move requires
;
; [State STATENO, ?]     ? - any number you choose
; type = ?
; ...

[Statedef 170]
type = S

[State 195,sn ]
type = PlaySnd
trigger1 = animelem =2
value = 1,20
channel = 0 
[State 170,add ]
type = AssertSpecial
trigger1 = time > 0
flag = roundnotover

[Statedef 180]
type = S
ctrl = 0
anim = 180
[State 195,sn ]
type = PlaySnd
trigger1 = animelem =2
value =1,20
channel = 0 

[State 180,assert ]
type = AssertSpecial
trigger1 = time < 300
flag = roundnotover

[Statedef 190]
type = S
anim = 190
ctrl = 0

[State 195,sn ]
type = PlaySnd
trigger1 = animelem =24
value = 3000,3
channel = 0 

[State 190,colonna di luce ]
type = Helper
trigger1 = Animelem = 18
helpertype = normal
name = "colonna di luce"
stateno = 7190
ownpal = 1

[State 190,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0

[State 190,add ]
type = AssertSpecial
trigger1 = time > 0
flag = intro

;FX colonna
[Statedef 7190]
type = S
anim = 191
ctrl = 0
sprpriority = 4

[State 7190,ass ]
type = AssertSpecial
trigger1 = time > 0
flag = invisible

[State 7190,aft ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 20
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 180,120,220
palpostbright = 0,0,0
paladd = 18,10,25
palmul = .69,.65,.75
timegap = 1
framegap = 1
trans = add

[State 7190,aft ]
type = AfterImageTime
trigger1 = time < 20
time = 2

[State 7190,des ]
type = DestroySelf
trigger1 = animtime = 0



[statedef 195]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 195
velset = 0,0

[State 195,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1,6
channel = 0 

[State 195,ctrl ]
type = CtrlSet
trigger1 = time > 50
value = 1



;-----------------
;NORMALI         |
;-----------------
[statedef 200]
type = S
movetype = A
physics =  S
poweradd = 10
ctrl = 0
anim = 200
velset = 0,0
juggle = 5

[State 200,snd ]
type = PlaySnd
trigger1 = animelem = 2
value = 200,0

[State 200,hit ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Light
damage = 40,0
pausetime = 10,9
sparkno = 0
sparkxy = 0,-80
hitsound = 5,0
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 11
ground.hittime = 14
ground.velocity = -4,0
air.velocity = -4,-2
getpower = 4,0
givepower = 0,4

[State 200,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 210]
type = S
movetype = A
physics =  S
poweradd = 10
ctrl = 0
anim = 210
velset = 0,0
juggle = 7

[State 210,snd ]
type = PlaySnd
trigger1 = animelem = 3
value = 200,0

[State 210,hit ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
damage = 80,0
pausetime = 10,9
sparkno = 1
sparkxy = 0,-60
hitsound = 5,1
guardsound = 6,0
ground.type = low
air.type = low
ground.slidetime = 13
ground.hittime = 15
ground.velocity = -7,0
air.velocity = -7,-2
getpower = 4,0
givepower = 0,4

[State 210,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[statedef 220]
type = S
movetype = A
physics =  S
poweradd = 10
ctrl = 0
anim = 220
velset = 0,0
juggle = 9

[State 220,vc ]
type = PlaySnd
trigger1 = animelem = 5
value = 1,2
channel = 0

[State 220,ex ]
type = Explod
trigger1 = animelem = 8
anim = 222
pos = -56,0
sprpriority = 5
ownpal = 1

[State 220,ex ]
type = Explod
trigger1 = animelem = 8
anim = 221
pos = 0,-10
sprpriority = 5
ownpal = 1


[State 220,vel ]
type = VelSet
trigger1 = time = [5,15]
x = 3

[State 220,vel ]
type = VelSet
trigger1 = animelem = 8
x = 12

[State 220,pos ]
type = PosAdd
trigger1 = animelem = 8
x = 22

[State 220,width ]
type = width
trigger1 = animelem = 7
value = 22

[State 220,snd ]
type = PlaySnd
trigger1 = animelem = 3
value = 200,1

[State 220,hit ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 90,0
pausetime = 10,9
sparkno = 2
sparkxy = 0,-60
hitsound = 5,2
guardsound = 6,0
ground.type = low
air.type = low
ground.slidetime = 13
ground.hittime = 15
ground.velocity = -7,0
air.velocity = -7,-2
getpower = 4,0
givepower = 0,4

[State 220,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[statedef 230]
type = S
movetype = A
physics =  S
poweradd = 10
ctrl = 0
anim = 230
velset = 0,0
juggle = 5

[State 200,snd ]
type = PlaySnd
trigger1 = animelem = 2
value = 200,1

[State 200,hit ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Light
damage = 45,0
pausetime = 10,9
sparkno = 0
sparkxy = 0,-60
hitsound = 5,0
guardsound = 6,0
ground.type = high
air.type = low
ground.slidetime = 11
ground.hittime = 14
ground.velocity = -4,0
air.velocity = -4,-2
getpower = 4,0
givepower = 0,4

[State 200,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[statedef 240]
type = S
movetype = A
physics =  S
poweradd = 10
ctrl = 0
anim = 240
velset = 0,0
juggle = 6

[State 200,snd ]
type = PlaySnd
trigger1 = animelem = 2
value = 200,1

[State 200,hit ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
damage = 75,0
pausetime = 10,9
sparkno = 1
sparkxy = 0,-80
hitsound = 5,2
guardsound = 6,0
ground.type = high
air.type = low
ground.slidetime = 13
ground.hittime = 16
ground.velocity = -7,0
air.velocity = -4,-2
getpower = 4,0
givepower = 0,4

[State 200,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 250]
type = S
movetype = A
physics =  S
poweradd = 10
ctrl = 0
anim = 250
velset = 0,0
juggle = 9

[State 220,vc ]
type = PlaySnd
trigger1 = time = 0
value = 1,3
channel = 0


[State 200,snd ]
type = PlaySnd
trigger1 = animelem = 2
value = 200,1

[State 200,hit ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 95,0
pausetime = 10,9
sparkno = 2
sparkxy = 0,-80
hitsound = 5,3
guardsound = 6,0
ground.type = high
air.type = low
ground.slidetime = 15
ground.hittime = 17
ground.velocity = -9,0
air.velocity = -5,-2
getpower = 4,0
givepower = 0,4

[State 200,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[statedef 255]
type = S
movetype = A
physics =  S
poweradd = 50
ctrl = 0
anim = 255
velset = 0,0
juggle = 9

[State 220,vc ]
type = PlaySnd
trigger1 = time = 0
value = 1,2
channel = 0

[State 200,snd ]
type = PlaySnd
trigger1 = time = 0
value = 200,1

[State 200,hit ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Up
damage = 95,0
pausetime = 10,9
sparkno = 2
sparkxy = 0,-60
hitsound = 5,4
guardsound = 6,0
ground.type = high
air.type = low
ground.slidetime = 15
ground.hittime = 29
air.hittime = 15
ground.velocity = 0,-9
air.velocity = 0,-9
getpower = 4,0
givepower = 0,4

[State 200,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 400]
type = C
movetype = A
physics =  S
poweradd = 7
ctrl = 0
anim = 400
velset = 0,0
juggle = 5

[State 400,hit ]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MAF
guardflag = M
animtype = Light
damage = 40,0
pausetime = 10,9
sparkno = 0
sparkxy = 0,-42
hitsound = 5,0
guardsound = 6,0
ground.type = low
air.type = low
ground.slidetime = 11
ground.hittime = 14
ground.velocity = -4,0
air.velocity = -4,-2
getpower = 4,0
givepower = 0,4

[State 400,sn ]
type = PlaySnd
trigger1 = time = 0
value = 200,0

[State 400,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1


[statedef 410]
type = C
movetype = A
physics =  S
poweradd = 7
ctrl = 0
anim = 410
velset = 0,0
juggle = 7

[State 400,hit ]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MAF
guardflag = M
animtype = Medium
damage = 70,0
pausetime = 10,9
sparkno = 1
sparkxy = 0,-32
hitsound = 5,2
guardsound = 6,0
ground.type = low
air.type = low
ground.slidetime = 11
ground.hittime = 14
ground.velocity = -6,0
air.velocity = -6,-2
getpower = 4,0
givepower = 0,4

[State 400,sn ]
type = PlaySnd
trigger1 = time = 0
value = 200,0

[State 400,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1


[statedef 420]
type = C
movetype = A
physics =  S
poweradd = 7
ctrl = 0
anim = 420
velset = 0,0
juggle = 9

[State 400,hit ]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MAF
guardflag = M
animtype = Medium
damage = 100,0
pausetime = 10,9
sparkno = 2
sparkxy = 0,-52
hitsound = 5,4
guardsound = 6,0
ground.type = low
air.type = low
ground.slidetime = 11
ground.hittime = 14
ground.velocity = -9,0
air.velocity = -9,-2
getpower = 4,0
givepower = 0,4

[State 400,sn ]
type = PlaySnd
trigger1 = time = 0
value = 200,0

[State 400,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

[statedef 430]
type = C
movetype = A
physics =  S
poweradd = 7
ctrl = 0
anim = 430
velset = 0,0
juggle = 6

[State 400,hit ]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MAFD
guardflag = M
animtype = Light
damage = 30,0
pausetime = 10,9
sparkno = 0
sparkxy = 0,-2
hitsound = 5,0
guardsound = 6,0
ground.type = low
air.type = low
ground.slidetime = 11
ground.hittime = 11
ground.velocity = -5,0
air.velocity = -5,-2
getpower = 4,0
givepower = 0,4

[State 400,sn ]
type = PlaySnd
trigger1 = time = 0
value = 200,1

[State 400,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1


[statedef 440]
type = C
movetype = A
physics =  S
poweradd = 7
ctrl = 0
anim = 440
velset = 0,0
juggle = 7

[State 440,p ]
type = PosAdd
trigger1 = time = 0
x = 10

[State 400,hit ]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MAFD
guardflag = M
animtype = Medium
damage = 70,0
pausetime = 10,9
sparkno = 1
sparkxy = 0,-2
hitsound = 5,2
guardsound = 6,0
ground.type = low
air.type = low
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -7,0
air.velocity = -7,-2
getpower = 4,0
givepower = 0,4

[State 400,sn ]
type = PlaySnd
trigger1 = time = 0
value = 200,1

[State 400,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

[statedef 450]
type = C
movetype = A
physics =  S
poweradd = 7
ctrl = 0
anim = 450
velset = 0,0
juggle = 7

[State 450,v ]
type = VelSet
trigger1 = time = 4
x = 12

[State 400,hit ]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MAFD
guardflag = M
animtype = Up
damage = 100,0
pausetime = 10,9
sparkno = 2
sparkxy = 0,-2
hitsound = 5,4
guardsound = 6,0
ground.type = trip
air.type = low
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -1,-4
air.velocity = -1,-5
getpower = 4,0
givepower = 0,4
fall = 1
fall.recover = 0

[State 400,sn ]
type = PlaySnd
trigger1 = time = 0
value = 200,1

[State 400,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1


[statedef 600]
type = A
movetype = A
physics =  A
poweradd = 7
ctrl = 0
anim = 600
juggle = 3

[State 600,hit ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = light
damage = 40,0
pausetime = 10,9
sparkno = 0
sparkxy = 0,-80
hitsound = 5,0
guardsound = 6,0
ground.type = high
air.type = high
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -4,0
air.velocity = -1,0
getpower = 4,0
givepower = 0,4

[State 600,sn ]
type = PlaySnd
trigger1 = time = 0
value = 200,0



[statedef 610]
type = A
movetype = A
physics =  A
poweradd = 7
ctrl = 0
anim = 600
juggle = 5

[State 600,hit ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = medium
damage = 70,0
pausetime = 10,9
sparkno = 1
sparkxy = 0,-80
hitsound = 5,2
guardsound = 6,0
ground.type = high
air.type = high
ground.slidetime = 12
ground.hittime = 14
ground.velocity = -6,0
air.velocity = -2,0
getpower = 4,0
givepower = 0,4

[State 600,sn ]
type = PlaySnd
trigger1 = time = 0
value = 200,0


[statedef 620]
type = A
movetype = A
physics =  A
poweradd = 7
ctrl = 0
anim = 620
juggle = 7

[State 600,hit ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = hard
damage = 90,0
pausetime = 10,9
sparkno = 2
sparkxy = 0,-80
hitsound = 5,4
guardsound = 6,0
ground.type = high
air.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -7,0
air.velocity = -4,12
getpower = 4,0
givepower = 0,4
air.fall = 1
fall.recover = 0

[State 600,sn ]
type = PlaySnd
trigger1 = time = 0
value = 200,0


[statedef 630]
type = A
movetype = A
physics =  A
poweradd = 7
ctrl = 0
anim = 630
juggle = 3

[State 600,hit ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = light
damage = 50,0
pausetime = 10,9
sparkno = 0
sparkxy = 0,-80
hitsound = 5,0
guardsound = 6,0
ground.type = high
air.type = high
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -4,0
air.velocity = -1,0
getpower = 4,0
givepower = 0,4

[State 600,sn ]
type = PlaySnd
trigger1 = time = 0
value = 200,1

[statedef 640]
type = A
movetype = A
physics =  A
poweradd = 7
ctrl = 0
anim = 640
juggle = 5

[State 600,hit ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = medium
damage = 77,0
pausetime = 10,9
sparkno = 1
sparkxy = 0,-70
hitsound = 5,2
guardsound = 6,0
ground.type = high
air.type = high
ground.slidetime = 12
ground.hittime = 14
ground.velocity = -6,0
air.velocity = -2,0
getpower = 4,0
givepower = 0,4

[State 600,sn ]
type = PlaySnd
trigger1 = time = 0
value = 200,1


[statedef 650]
type = A
movetype = A
physics =  A
poweradd = 7
ctrl = 0
anim = 650
juggle = 7

[State 600,hit ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = hard
damage = 90,0
pausetime = 10,9
sparkno = 2
sparkxy = 0,-80
hitsound = 5,4
guardsound = 6,0
ground.type = high
air.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -7,0
air.velocity = -8,6
getpower = 4,0
givepower = 0,4
air.fall = 1
fall.recover = 0

[State 600,sn ]
type = PlaySnd
trigger1 = time = 0
value = 200,1












;Carica cosmo
[statedef 700]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 700
velset = 0,0

[State 700, ex]
type = Explod
trigger1 = NumExplod(3) < 40
anim = 4
id = 3
pos = 0,-10
postype = p1
sprpriority = -1
removetime = -2
bindtime = 1
ownpal = 1
random = 50,10
removeongethit = 1
supermovetime = 30
vel = 0,-3

[State 700, snb]
type = PlaySnd
trigger1 = animelem = 2
value = 700,0

[State 700,p ]
type = PowerAdd
trigger1 = (time > 12) && (timemod = 3,0)
value = 10

[State 700,st ]
type = ChangeState
trigger1 = command != "holdcosmo"
trigger2 = power = 3000
value = 701

[statedef 701]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 701
velset = 0,0

[State 701,re ]
type = RemoveExplod
trigger1 = time = 0
ID = 3

[State 701,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



;Super parata
[statedef 800]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 800
velset = 0,0

[State 800,rev ]
type = ReversalDef
trigger1 = animelem = 2
reversal.attr = SCA,NA,SA,HA
pausetime = 20,20
hitsound = 5,4
p1stateno = 801
getpower = 800,0
givepower = 0,0


[State 701,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Super parata 2
[statedef 801]
type = S
movetype = I
physics =  N
ctrl = 0
anim = 801
velset = -12,0

[State 800,ex ]
type = Explod
trigger1 = (movehit = 1) && (numexplod(800) = 0)
anim = 221
ID = 800
pos = -90,-10
bindtime = 1
sprpriority = 6
ownpal = 1
ignorehitpause = 1

[State 801,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3000,0


[State 801,vm ]
type = VelMul
trigger1 = time > 10
x = .6

[State 801,md ]
type = MakeDust
trigger1 = (timemod = 3,0) && (time < 15)
pos = 0,0
spacing = 1

[State 701,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;-----------------
;SPECIALS        |
;-----------------

;Calcio dell'idiozia dell'unicorno (1000)
[statedef 1000]
type = A
movetype = A
physics =  N
poweradd = 100
ctrl = 0
anim = 1000
velset = 3,-9
juggle = 10

[State 1000,hit ]
type = HitDef
trigger1 = time = 0
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
damage = 40,4
pausetime = 6,5
sparkno = 2
sparkxy = 0,-67
hitsound = 5,3
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 7
ground.hittime = 12
ground.velocity = -3,-9
guard.velocity = -4
air.velocity = -3,-6
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
fall = 1
fall.recover = 0
getpower = 7,0
givepower = 0,7

[State 1001, ]
type = Explod
trigger1 = time = 0
anim = 1003
pos = -30,10
bindtime = 1
sprpriority = 6
ownpal = 1

[State 1001, ]
type = Explod
trigger1 = time = 0
anim = 1002
pos = 0,-150
vfacing = -1
bindtime = -1
sprpriority = 6
ownpal = 1
removeongethit = 1

[State 1001,vm ]
type = VelAdd
trigger1 = time > 0
y = .4

[State 1001,sm ]
type = PlaySnd
trigger1 = time = 0
value = 1000,1

[State 1001,sm ]
type = PlaySnd
trigger1 = time = 2
value = 1000,0

[State 1000,end ]
type = ChangeState
trigger1 = animtime = 0
value = 1001

[statedef 1001]
type = A
movetype = A
physics =  N
ctrl = 0
anim = 1001

[State 1001,hit ]
type = HitDef
trigger1 = time = 0
attr = A,SA
hitflag = MAF
guardflag = HA
animtype = hard
air.animtype = hard
damage = 70,4
pausetime = 6,5
sparkno = 3
sparkxy = 0,-40
hitsound = 5,4
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime = 16
ground.velocity = -9,0
guard.velocity = -4
air.velocity = -3,12
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.fall = 1
fall.recover = 0
getpower = 7,0
givepower = 0,7

[State 1001,vm ]
type = VelAdd
trigger1 = time > 0
y = .9

[State 1001,sm ]
type = PlaySnd
trigger1 = animelem = 2
value = 1000,1

[State 1001, ]
type = Explod
trigger1 = animelem = 3
anim = 1002
;ID = 
;pos = 0,0
;postype = p1
;facing = 1
;vfacing = 1
bindtime = -1
;vel = 0,0
;accel = 0,0
;random = 0,0
;removetime = -2
;supermove = 0
;pausemovetime = 0
;scale = 1, 1
sprpriority = 6
ownpal = 1
removeongethit = 1

[State 1000,end ]
type = ChangeState
trigger1 = pos Y >= 0
value = 52
ctrl = 1


;1000 zoccoli dell'unicorno XD (1010)
[statedef 1010]
type = A
movetype = A
physics =  A
poweradd = 70
ctrl = 0
anim = 1010


[State 1010, ]
type = PlaySnd
trigger1 = animelem = 2,1
trigger2 = animelem = 4,1
trigger3 = animelem = 6,1
value = 200,0

[State 1010,hit ]
type = HitDef
trigger1 = animelem = 2,1
trigger2 = animelem = 4,1
trigger3 = animelem = 6,1
attr = A,SA
hitflag = MAF
guardflag = HA
animtype = medium
damage = 10,0
pausetime = 4,5
sparkno = 2
sparkxy = 0,-80
hitsound = 5,2
guardsound = 6,0
ground.type = high
air.type = high
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -4,0
air.velocity = -3,0
getpower = 4,0
givepower = 0,4
air.fall = 1
air.juggle = 3


;1000 zoccoli dell'unicorno a terra XD (1015)
[statedef 1015]
type = S
movetype = A
physics =  S
poweradd = 70
ctrl = 0
anim = 1015
juggle = 7

[State 1015,var ]
type = VarSet
trigger1 = time = 0
v =  2
value = 1

[State 220,vc ]
type = PlaySnd
trigger1 = time = 0
value = 1,0
channel = 0

[State 1015,var ]
type = VarAdd
trigger1 = (movehit = 1) && (animelem = 2)
trigger2 = (movehit = 1) && (animelem = 4)
trigger3 = (movehit = 1) && (animelem = 6)
v =  2
value = 1

[State 1015,ht ]
type = HitDef
trigger1 = animelem = 2,1
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 6
damage = 35/(var(2)),2
pausetime = 3,3
sparkno = 2
sparkxy = 0,-60
hitsound = 5,3
guardsound = 6,0
ground.type = low
air.type = low
ground.slidetime = 10
guard.slidetime = 15
ground.hittime = 12
guard.hittime = 20
ground.velocity = -1,0
guard.velocity = -7
air.velocity = -1,-1
airguard.velocity = -7,-3
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9
air.juggle = 1
air.fall = 1
getpower = 4,0
givepower = 0,4

[State 1015,ht ]
type = HitDef
trigger1 = animelem = 4,1
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 6
damage = 35/(var(2)),2
pausetime = 3,3
sparkno = 2
sparkxy = 0,-30
hitsound = 5,3
guardsound = 6,0
ground.type = low
air.type = low
ground.slidetime = 10
guard.slidetime = 15
ground.hittime = 12
guard.hittime = 20
ground.velocity = -1,0
guard.velocity = -7
air.velocity = -1,-1
airguard.velocity = -7,-3
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9
air.juggle = 1
air.fall = 1
getpower = 4,0
givepower = 0,4

[State 1015,sn ]
type = PlaySnd
trigger1 = animelem = 2,1
trigger2 = animelem = 4,1
trigger3 = animelem = 6,1
value = 200,0

[State 1015,ht ]
type = HitDef
trigger1 = animelem = 6,1
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 6
damage = 35/(var(2)),2
pausetime = 3,3
sparkno = 2
sparkxy = 0,-80
hitsound = 5,3
guardsound = 6,0
ground.type = high
air.type = low
ground.slidetime = 10
guard.slidetime = 15
ground.hittime = 12
guard.hittime = 20
ground.velocity = -1,0
guard.velocity = -7
air.velocity = -1,-1
airguard.velocity = -7,-3
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9
air.juggle = 1
air.fall = 1
getpower = 4,0
givepower = 0,4


[State 1015,1 ]
type = ChangeState
trigger1 = (time > 49) && (command !="holda")
value = 1016

[State 1015,1 ]
type = ChangeState
trigger1 = time = 98
value = 1016+1*(movehit)

[statedef 1016]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 3101

[State 1015,1 ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1017]
type = S
movetype = A
physics =  S
ctrl = 0
anim = 1017

[State 200,snd ]
type = PlaySnd
trigger1 = animelem = 2
value = 200,1

[State 200,hit ]
type = HitDef
trigger1 = time = 0
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 35,0
pausetime = 10,9
sparkno = 2
sparkxy = 0,-80
hitsound = 5,3
guardsound = 6,0
ground.type = high
air.type = low
ground.slidetime = 15
ground.hittime = 17
ground.velocity = -9,-4
air.velocity = -8,-2
getpower = 4,0
FALL = 1
fall.recover = 0
givepower = 0,4

[State 1015,1 ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Trappola dell'unicorno
[statedef 1020]
type = S
movetype = I
physics =  S
poweradd = 100
ctrl = 0
anim = 1020
velset = 0,0

[State 1021,rv ]
type = ReversalDef
trigger1 = animelem = 3,>1
reversal.attr = SC,NA,SA
p2stateno = 1025
hitsound = S1000,1
sparkno = 40
fall = 1
p2facing = 1


[State 1020,1 ]
type = ChangeState
trigger1 = animtime = 0
value = 1021
ctrl = 1

[statedef 1021]
type = A
movetype = A
physics =  N
ctrl = 0
anim = 1021
velset = 1,-14

[State 1021, ]
type = Explod
trigger1 = time = 0
anim = 1003
pos = -30,10
bindtime = 1
sprpriority = 6
ownpal = 1
removeongethit = 1

[State 1021, ]
type = PlaySnd
trigger1 = time = 0
value = 1000,0

[State 1021,aft ]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 20
palcolor = 1
palinvertall = 1
timegap = 1
framegap = 1
trans = add

[State 1021,aft ]
type = AfterImageTime
trigger1 = time > 0
time = 2

[State 1021,v ]
type = VelAdd
trigger1 = time > 0
y = .6

[State 1020,1 ]
type = ChangeState
trigger1 = animtime = 0
value = 1022


[statedef 1022]
type = A
movetype = A
physics =  N
ctrl = 0
anim = 1022
velset = 0,0

[State 220,vc ]
type = PlaySnd
trigger1 = time = 0
value = 1,4
channel = 0

[State 1022,EFFETTO STUPIDO XD ]
type = Explod
trigger1 = timemod = 4,0
anim = 1023
ID = 1020
bindtime = -1
sprpriority = 8
ownpal = 1
removeongethit = 1

[State 1022,p ]
type = PlayerPush
trigger1 = time > 0
value = 0

[State 1022,hit!!! ]
type = HitDef
trigger1 = animelem = 1,>2
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 20,2
pausetime = 2,2
sparkno = 1
sparkxy = 0,-70
hitsound = 5,2
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
guard.velocity = -9
air.velocity = -5,-2
getpower = 4,0
givepower = 0,4

[State 1022,v ]
type = VelSet
trigger1 = animelem = 2
x = 14
y = 14

[State 1020,1 ]
type = ChangeState
trigger1 = pos Y >= 0
value = 52
ctrl = 1







[statedef 1025]
type = S
movetype = H
physics =  S
ctrl = 0
velset = -20,0

[State 1025,a2 ]
type = ChangeAnim2
trigger1 = time = 0
value = 1025

[State 1025, ]
type = PalFX
trigger1 = timemod = 3,0
time = 1
color = 60
invertall = 1
add = 1,1,1
mul = 256,256,256
sinadd = 126,116,136,4

[State 1025,st ]
type = SelfState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1030]
type = S
movetype = I
physics =  S
poweradd = 100
ctrl = 0
anim = 40
velset = 0,0

[State 1030,sn ]
type = PlaySnd
trigger1 = time = 5
value = 40,0

[State 1030,st ]
type = ChangeState
trigger1 = animtime = 0
value = 1031

[statedef 1031]
type = A
movetype = A
physics =  N
ctrl = 0
anim = 1030
velset = 3,-3

[State 1030,vs ]
type = VelAdd
trigger1 = time > 0
y = .5

[State 1030,cs ]
type = ChangeState
trigger1 = pos Y >= 40
value = 1032

[State 1030,hit ]
type = HitDef
trigger1 = time = 0
attr = A,SA
hitflag = MAF
guardflag = HA
animtype = medium
damage = 37,0
pausetime = 10,9
sparkno = 1
sparkxy = 0,-70
hitsound = 5,2
guardsound = 6,0
ground.type = high
air.type = high
ground.slidetime = 12
ground.hittime = 19
ground.velocity = -6,0
air.velocity = -2,0
getpower = 4,0
givepower = 0,4
air.fall = 1

[statedef 1032]
type = S
movetype = A
physics =  S
ctrl = 0
anim = 1031
velset = 9,0

[State 400,hit ]
type = HitDef
trigger1 = animelem = 7
attr = C,SA
hitflag = MAFD
guardflag = M
animtype = Up
damage = 100,0
pausetime = 10,9
sparkno = 2
sparkxy = 0,-16
hitsound = 5,4
guardsound = 6,0
ground.type = trip
air.type = low
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -1,-4
air.velocity = -1,-5
getpower = 4,0
givepower = 0,4
fall = 1
fall.recover = 0

[State 400,hit ]
type = HitDef
trigger1 = time = 0
attr = C,SA
hitflag = MAFD
guardflag = M
animtype = Medium
damage = 50,0
pausetime = 10,9
sparkno = 1
sparkxy = 0,-16
hitsound = 5,2
guardsound = 6,0
ground.type = low
air.type = low
ground.slidetime = 12
ground.hittime = 19
ground.velocity = -7,0
air.velocity = -7,-2
getpower = 4,0
givepower = 0,4

[State 1031,ps ]
type = PosSet
trigger1 = time = 0
y = 0

[State 1031,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1











;------------------
;SUPERS           |
;------------------
[statedef 3000]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 3000

[State 3000,effetto COSMO ]
type = Helper
trigger1 = animelem = 3
name = "effettocosmo"
ID = 3000
pos = 0,0
postype = p1
stateno = 30001
supermovetime = 30

[State 3000,vc ]
type = PlaySnd
trigger1 = time = 0
value = 1,5
channel = 0

[State 3000,ex ]
type = Explod
trigger1 = animelem = 3
anim = 7000
pos = 0,0
postype = back
bindtime = -1
removetime = 30
supermovetime = 30
sprpriority = -2
scale = 1.2,1.2
ownpal = 1

[State 3000,ex ]
type = Explod
trigger1 = animelem = 3
anim = 7001
pos = 0,0
postype = back
bindtime = -1
removetime = 30
supermovetime = 30
sprpriority = -1
scale = 1,1
ownpal = 1

[State 3000,super ]
type = SuperPause
trigger1 = animelem = 3
time = 30
anim = 101
sound = F20,0
pos = 0,-40
poweradd = -2000

[State 3000,end ]
type = ChangeState
trigger1 = animtime = 0
value = 3001


[statedef 3001]
type = S
movetype = A
physics =  N
ctrl = 0
anim = 3001
velset = 9,-2
juggle = 12

[State 3000,ex ]
type = Explod
trigger1 = animelem = 8
anim = 3004
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
sprpriority = 8
scale = 1,1
ownpal = 1

[State 3000,ex ]
type = Explod
trigger1 = (movehit = 1) && (numexplod(3005) = 0) && (time > 10)
anim = 3005
ID = 3005
pos = 0,-50
postype = p2
bindtime = -1
removetime = -2
sprpriority = 8
scale = 1,1
ownpal = 1

[State 3000,env ]
type = EnvShake
trigger1 = time = 0
time = 23
freq = 60
ampl = -4
phase = 5

[State 3000,hit2 ]
type = HitDef
trigger1 = time = [0,13]
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Back
damage = 20,2
pausetime = 3,1
sparkno = -1
sparkxy = 0,-70
hitsound = 5,3
guardsound = 6,0
ground.slidetime = 4
ground.hittime = 15
ground.velocity = -6,0
air.velocity = -6,0
getpower = 0,0
givepower = 0,0
palfx.time = 50
palfx.mul = 195,225,256
palfx.add =  82,31,184
palfx.sinadd = 195,225,256,10 
palfx.color = 1
envshake.time = 20
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 10
fall.envshake.time = 8
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 10

[State 3001,exspark ]
type = Explod
trigger1 = (movehit = 1) && (time = [0,13])
anim = F2
pos = -20,-70
postype = p2
bindtime = 1
random = 10,30
ontop = 1

[State 3000,ht ]
type = HitAdd
trigger1 = movehit = 1
value = 4

[State 3000,hit ]
type = HitDef
trigger1 = AnimElem = 9
attr = S,HA
hitflag = MAF
guardflag = HA
animtype = Hard
air.animtype = Hard
fall.animtype = Back
damage = 400,20
pausetime = 5,5
sparkno = 3
sparkxy = 0,-90
hitsound = S3000,2
guardsound = 6,0
ground.slidetime = 0
ground.velocity = -12,-9
air.velocity = -12,-9
fall = 1
fall.recover = 1
getpower = 0,0
givepower = 0,0
palfx.time = 50
palfx.mul = 195,225,256
palfx.add =  82,31,184
palfx.sinadd = 195,225,256,10 
palfx.color = 1
envshake.time = 20
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 10
fall.envshake.time = 8
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 10

[State 3001,effetto stupido]
type = Helper
trigger1 = time = 1
name = "effettostupido"
ID = 3001
pos = 0,0
postype = p1
stateno = 30002

[State 3001,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3000,0

[State 3001,nh ]
type = NotHitBy
trigger1 = time > 5
value = SCA,NA,SA

[State 3000,end ]
type = ChangeState
trigger1 = animtime = 0
value = 3002


[statedef 3002]
type = A
movetype = I
physics =  N
ctrl = 0
anim = 3002

[State 3002,v ]
type = VelAdd
trigger1 = time > 0
y = .8

[State 3002,st1]
type = ChangeState
trigger1 = pos Y >= 0
value = 52













[statedef 3100]
type = S
movetype = A
physics =  S
ctrl = 0
juggle = 15
anim = 3100

[State 3100,effetto COSMO ]
type = Helper
trigger1 = TIME = 0
name = "effettocosmo"
ID = 3000
pos = 0,0
postype = p1
stateno = 30001
supermovetime = 30

[State 3100,ex ]
type = Explod
trigger1 = TIME = 0
anim = 7000
pos = 0,0
postype = back
bindtime = -1
removetime = 30
supermovetime = 30
sprpriority = -2
scale = 1.2,1.2
ownpal = 1

[State 3100,ex ]
type = Explod
trigger1 = TIME = 0
anim = 7001
pos = 0,0
postype = back
bindtime = -1
removetime = 30
supermovetime = 30
sprpriority = -1
scale = 1,1
ownpal = 1

[State 3100,super ]
type = SuperPause
trigger1 = TIME = 0
time = 30
anim = 101
sound = F20,0
pos = 0,-40
poweradd = -1000

[State 3100, ]
type = HitDef
trigger1 = AnimElem = 2,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 8
damage = 100,20
pausetime = 35,40
guard.pausetime = 5,5
sparkno = 3
sparkxy = 0,-60
hitsound = 5,4
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 10
ground.hittime = 20
guard.velocity = -7
snap = 30,0
p1stateno = 3102
kill = 0
getpower = 0,0
givepower = 0,0
envshake.time = 20
envshake.freq = 70
envshake.ampl = -10
envshake.phase = 6

[State 1015,ht ]
type = HitDef
trigger1 = animelem = 4,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 6
damage = 20,2
pausetime = 3,3
sparkno = 2
sparkxy = 0,-30
hitsound = 5,3
guardsound = 6,0
ground.type = low
air.type = low
ground.slidetime = 10
guard.slidetime = 15
ground.hittime = 12
guard.hittime = 20
ground.velocity = -1,0
guard.velocity = -7
air.velocity = -1,-1
airguard.velocity = -7,-3
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9
air.juggle = 1
air.fall = 1
getpower = 4,0
givepower = 0,4

[State 1015,sn ]
type = PlaySnd
trigger1 = animelem = 2,1
trigger2 = animelem = 4,1
trigger3 = animelem = 6,1
value = 200,0

[State 1015,ht ]
type = HitDef
trigger1 = animelem = 6,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 6
damage = 20,2
pausetime = 3,3
sparkno = 2
sparkxy = 0,-80
hitsound = 5,3
guardsound = 6,0
ground.type = high
air.type = low
ground.slidetime = 10
guard.slidetime = 15
ground.hittime = 12
guard.hittime = 20
ground.velocity = -1,0
guard.velocity = -7
air.velocity = -1,-1
airguard.velocity = -7,-3
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9
air.juggle = 1
air.fall = 1
getpower = 4,0
givepower = 0,4

[State 3100,end ]
type = ChangeState
trigger1 = animtime = 0
value = 3101

[statedef 3101]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 3101

[State 3100,end ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 3102]
type = S
movetype = A
physics =  S
ctrl = 0
anim = 3102

[State 3102,ex ]
type = Explod
trigger1 = time = 0
anim = 7002
ID = 3100
pos = 0,0
postype = back
bindtime = -1
removetime = -1
scale = 1.2, 1.2
sprpriority = -2
ownpal = 1

[State 1015,ht ]
type = HitDef
trigger1 = animelem = 2,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 6
damage = 1,0
pausetime = 3,3
sparkno = 2
sparkxy = 0,-60
hitsound = 5,3
guardsound = 6,0
ground.type = low
air.type = low
ground.slidetime = 10
guard.slidetime = 15
ground.hittime = 12
guard.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
getpower = 4,0
givepower = 0,4
kill = 0

[State 1015,ht ]
type = HitDef
trigger1 = animelem = 4,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 6
damage = 1,0
pausetime = 3,3
sparkno = 2
sparkxy = 0,-30
hitsound = 5,3
guardsound = 6,0
ground.type = low
air.type = low
ground.slidetime = 10
guard.slidetime = 15
ground.hittime = 12
guard.hittime = 20
ground.velocity = 0,0
guard.velocity = -7
air.velocity = 0,-0
getpower = 4,0
givepower = 0,4
kill = 0

[State 1015,sn ]
type = PlaySnd
trigger1 = animelem = 2,1
trigger2 = animelem = 4,1
trigger3 = animelem = 6,1
value = 200,0

[State 1015,ht ]
type = HitDef
trigger1 = animelem = 6,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 6
damage = 1,0
pausetime = 3,3
sparkno = 2
sparkxy = 0,-80
hitsound = 5,3
guardsound = 6,0
ground.type = high
air.type = low
ground.slidetime = 10
guard.slidetime = 15
ground.hittime = 12
guard.hittime = 20
ground.velocity = 0,0
guard.velocity = -7
air.velocity = 0,0
getpower = 4,0
givepower = 0,4
kill = 0

[State 1015,ht ]
type = HitDef
trigger1 = time = 99
attr = S,HA
hitflag = MAF
guardflag = 
damage = 0,0
pausetime = 0,0
sparkno = -1
hitsound = -1
guardsound = -1
p2stateno = 3110

[State 3100,end ]
type = ChangeState
trigger1 = time = 100
value = 3103

[statedef 3103]
type = S
movetype = A
physics =  S
ctrl = 0
anim = 3103

[State 3103,ex ]
type = Explod
trigger1 = animelem = 2
anim = 3105
;ID = 
pos = -30,0
;postype = p1
;facing = 1
;vfacing = 1
;bindtime = 1
;vel = 0,0
;accel = 0,0
;random = 0,0
removetime = 50
supermovetime = 30
sprpriority = -1
;ontop = 0
;shadow = 0,0,0
;ownpal = 0
;removeongethit = 0
;ignorehitpause = 0
;persistent = 1



[State 3103,sp ]
type = SuperPause
trigger1 = animelem = 2
time = 30
anim = 100
sound = F20,0
pos = 0,-50
darken = 0
p2defmul = 1
poweradd = 0

[State 1015,ht ]
type = HitDef
trigger1 = time = 0
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 6
damage = 150,0
pausetime = 3,3
sparkno = 2
sparkxy = 0,-60
hitsound = S3000,2
guardsound = 6,0
ground.type = low
air.type = low
ground.slidetime = 10
guard.slidetime = 15
ground.hittime = 12
guard.hittime = 20
ground.velocity = -1,-20
air.velocity = -1,-20
getpower = 0,0
givepower = 0,0
fall = 1
fall.recover = 0

[State 3103,ev ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 30

[State 3103, st]
type = ChangeState
trigger1 = animtime = 0
value = 3104

[statedef 3104]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 3104

[State 3104,vc ]
type = PlaySnd
trigger1 = animelem = 3
value = 1,1

[State 3103, st]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;P2 STATES
[statedef 3110]
type = S
movetype = H
physics =  S
ctrl = 0
anim = 5300
velset = 0,0

[State 3110,p ]
type = PosSet
trigger1 = time = 0
y = 0













;------------------
;EFFETTI SUPERS    |
;------------------
[statedef 30000]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 7191


[State 30000,varrandom red ]
type = Varrandom
trigger1 = timemod = 5,0
v =  1
range = 1,2

[State 30000,varrandom blue]
type = Varrandom
trigger1 = timemod = 5,0
v =  2
range = 0,1

[State 30000,varrandom green]
type = Varrandom
trigger1 = timemod = 5,0
v =  3
range = 2,4

[State 30000,all ]
type = AllPalFX
trigger1 = timemod = 5,0
time = 4
add = -40*(var(1)),-90*(var(2)),70*(var(3))

[State 30000,des ]
type = DestroySelf
trigger1 = time = 30

[statedef 30001]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 7191

[State 30001, ex]
type = Explod
trigger1 = NumExplod(3) < 40
anim = 3
id = 3
pos = 0,-10
postype = p1
sprpriority = -1
removetime = -2
bindtime = 1
ownpal = 1
random = 40,10
removeongethit = 1
supermovetime = 30
vel = 0,-4

[State 3001,ex ]
type = RemoveExplod
trigger1 = time = 29
ID = 3

[State 30001,des ]
type = DestroySelf
trigger1 = time = 30

[statedef 30002]
type = S
movetype = I
physics =  N
ctrl = 0
anim = 7191
velset = 6,0

[State 3001,EX ]
type = Explod
trigger1 = timemod = 5,0
anim = 3003
sprpriority = 7
ownpal = 1

[State 30001,des ]
type = DestroySelf
trigger1 = parent,stateno != 3001



[statedef 3200]
type = S
movetype = A
physics =  S
ctrl = 0
juggle = 15
anim = 3200

[State 3000,ex ]
type = Explod
trigger1 = (movehit = 1) && (numexplod(3005) = 0) && (time > 10)
anim = 3005
ID = 3005
pos = 0,-50
postype = p2
bindtime = -1
removetime = -2
sprpriority = 8
scale = 1,1
ownpal = 1

[State 3200,effetto COSMO ]
type = Helper
trigger1 = TIME = 0
name = "effettocosmo"
ID = 3000
pos = 0,0
postype = p1
stateno = 30001
supermovetime = 30

[State 3200,ex ]
type = Explod
trigger1 = TIME = 0
anim = 7000
pos = 0,0
postype = back
bindtime = -1
removetime = 30
supermovetime = 30
sprpriority = -2
scale = 1.2,1.2
ownpal = 1

[State 3200,ex ]
type = Explod
trigger1 = TIME = 0
anim = 7001
pos = 0,0
postype = back
bindtime = -1
removetime = 30
supermovetime = 30
sprpriority = -1
scale = 1,1
ownpal = 1

[State 3200,super ]
type = SuperPause
trigger1 = TIME = 0
time = 30
anim = 101
sound = F20,0
pos = 0,-40
poweradd = -1000

[State 3200,ex1 ]
type = Explod
trigger1 = animelem = 3
ID = 33200
anim = 3203
pos = 0,0
removetime = -1
sprpriority = -2
scale = 1.1,1.1
postype = back
bindtime = -1
removeongethit = 1

[State 3200,ex1 ]
type = Explod
trigger1 = animelem = 2
anim = 3201
pos = -30,-5
removetime = -2
sprpriority = 6
removeongethit = 1
bindtime = -1

[State 3200,ex1 ]
type = Explod
trigger1 = animelem = 3
anim = 3202
pos = -30,-5
sprpriority = 6
removetime = -2
scale = 1.2,1
removeongethit = 1
bindtime = -1

[State 3200,ht ]
type = HitDef
trigger1 = (animelem = 3,>0) && (Timemod = 3,0) && (p2bodydist X > 20)
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 5,1
pausetime = 0,1
guard.pausetime = 0,4
sparkno = 3
sparkxy = 0,-70
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.hittime = 20
ground.velocity = 1,-5
guard.velocity = 0
air.velocity = 1,-3
ground.cornerpush.veloff = -5
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 0,0
palfx.time = 50
palfx.mul = 195,225,256
palfx.add =  82,31,184
palfx.sinadd = 195,225,256,10 
palfx.color = 1

[State 3200,ht ]
type = HitDef
trigger1 = (animelem = 3,>0) && (Timemod = 3,0) && (p2bodydist X <= 20)
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 5,1
pausetime = 0,1
guard.pausetime = 0,4
sparkno = 3
sparkxy = 0,-70
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.hittime = 20
ground.velocity = 0,-5
guard.velocity = 0
air.velocity = 0,-3
ground.cornerpush.veloff = -5
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 0,0
palfx.time = 50
palfx.mul = 195,225,256
palfx.add =  82,31,184
palfx.sinadd = 195,225,256,10 
palfx.color = 1

[State 3200,st ]
type = ChangeState
trigger1 = (animtime = 0) && (movehit = 0)
value = 0
ctrl = 1

[State 3200,st ]
type = ChangeState
trigger1 = (animtime = 0) && (movehit = 1)
value = 3201


[statedef 3201]
type = A
movetype = A
physics =  N
ctrl = 0
anim = 3205


[State 3201,check veloc ]
type = VelSet
trigger1 = (time = 0) && (p2bodydist X > 100)
y = (target,pos Y / 16)
x = 12

[State 3201,check veloc ]
type = VelSet
trigger1 = (time = 0) && (p2bodydist X = [50,100])
y = (target,pos Y / 16)
x = 7

[State 3201,check veloc ]
type = VelSet
trigger1 = (time = 0) && (p2bodydist X <= 50)
y = (target,pos Y / 16)
x = 3

[State 1001, ]
type = Explod
trigger1 = time = 0
anim = 1003
pos = -30,10
bindtime = 1
sprpriority = 6
ownpal = 1

[State 3200,ex1 ]
type = Explod
trigger1 = time = 0
ID = 33201
anim = 3204
pos = 0,0
removetime = -1
sprpriority = -2
scale = 1.1,1.1
postype = back
bindtime = -1
removeongethit = 1

[State 3000,hit ]
type = HitDef
trigger1 = time = 0
attr = A,HA
hitflag = MAF
guardflag = HA
animtype = Hard
air.animtype = Hard
fall.animtype = Back
damage = 300,20
pausetime = 5,5
sparkno = 3
sparkxy = 0,-90
hitsound = S3000,2
guardsound = 6,0
ground.slidetime = 0
ground.velocity = -12,-9
air.velocity = -12,-9
fall = 1
fall.recover = 1
getpower = 0,0
givepower = 0,0
palfx.time = 50
palfx.mul = 195,225,256
palfx.add =  82,31,184
palfx.sinadd = 195,225,256,10 
palfx.color = 1
envshake.time = 20
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 10
fall.envshake.time = 8
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 10

[State 3200,st ]
type = ChangeState
trigger1 = animtime = 0
value = 3202

[statedef 3202]
type = A
movetype = I
physics =  A
ctrl = 0
anim = 3206
velset = 4,-2

[State 3202, ]
type = Null
trigger1 = time = 0


[statedef 3300]
type = S
movetype = A
physics =  S
ctrl = 0
juggle = 15
anim = 3300
poweradd = -1000
sprpriority = 5
VELSET = 0,0

[State 3300, ]
type = Explod
trigger1 = time = 0
anim = 7000
ID = 3300
pos = 0,0
postype = back
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = 999
scale = 1.1, 1.1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 3300, ]
type = Explod
trigger1 = time = 0
anim = 3302
ID = 3302
pos = 0,-10
postype = back
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = 999
scale = 1.1, 1.1
sprpriority = -1
ownpal = 1
removeongethit = 1

[State 3300,pause ]
type = Pause
trigger1 = time = 0
time = 160
movetime = 160

[State 3300,ex ]
type = RemoveExplod
trigger1 = animelem = 10 
ID = 3302

[State 3300, ]
type = Explod
trigger1 = animelem = 10
anim = 3303
ID = 3303
pos = 0,0
postype = back
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 1,1
sprpriority = -1
ownpal = 1
removeongethit = 1

[State 3300,ex ]
type = Explod
trigger1 = animelem = 12
anim = 7001
pos = 0,0
postype = back
bindtime = -1
removetime = 30
supermovetime = 30
sprpriority = -1
scale = 1,1
ownpal = 1

[State 3300,ex ]
type = RemoveExplod
trigger1 = animelem = 13 
ID = 3300

[State 3300,super ]
type = SuperPause
trigger1 = animelem = 12
time = 30
anim = 101
sound = F20,0
pos = -27,-77

[State 3300,sn ]
type = PlaySnd
trigger1 = animelem = 10
value = 1,7

[State 3300,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1,9

[State 3300,unicorno ]
type = Helper
trigger1 = animelem = 14
name = "unicorno"
ID = 3300
pos = -70,0
stateno = 3301
ownpal = 1

[State 3300,unicorno ]
type = Helper
trigger1 = animelem = 12
name = "idiozia"
ID = 30000
pos = 0,0
stateno = 30000
ownpal = 1
supermovetime = 30

[State 3300,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 3301]
type = S
movetype = A
physics =  N
ctrl = 0
anim = 3301
velset = 9,0
sprpriority = 5

[State 3301,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1,10
volume = 255

[State 3301,sn ]
type = PlaySnd
trigger1 = animelem = 1,1
trigger2 = animelem = 3,1
value = 1,11
volume = 255

[State 3301,sn ]
type = PlaySnd
trigger1 = animelem = 5,1
value = 1,12
volume = 255

[State 3301,as ]
type = AssertSpecial
trigger1 = time > 0
flag = invisible

[State 3301,aft ]
type = AfterImage
trigger1 = time > 0
time = 2
length = 2
palcolor = 256
palbright = var(1),var(1),var(1)
palcontrast = var(1),var(1),var(1)
palpostbright = var(1),var(1),var(1)
paladd = var(1),var(1),var(1)
palmul = var(1),var(1),var(1)
timegap = 1
framegap = 1
trans = add
ignorehitpause = 1

[State 3301,hit ]
type = HitDef
trigger1 = time = 0
attr = S,HA
hitflag = MAF
guardflag = HA
animtype = Hard
air.animtype = Hard
fall.animtype = Back
damage = 300,5
pausetime = 5,5
sparkno = 3
sparkxy = 0,-90
hitsound = S3000,2
guardsound = 6,0
ground.slidetime = 0
ground.velocity = -12,-9
air.velocity = -12,-9
fall = 1
fall.recover = 1
getpower = 0,0
givepower = 0,0
palfx.time = 50
palfx.mul = 195,225,256
palfx.add =  82,31,184
palfx.sinadd = 195,225,256,10 
palfx.color = 1
envshake.time = 20
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 10
fall.envshake.time = 8
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 10

[State 3301,v ]
type = VarAdd
trigger1 = timemod = 1,0
v =  1
value = 3

[State 3301,ds ]
type = DestroySelf
trigger1 = frontedgedist < -70 










;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; AirJump Start
[Statedef 45]
type    = A
physics = N
ctrl = 0
velset = 0,0

[State 45,af ]
type = AfterImage
trigger1 = time = 0
time = 10
length = 12
color = 1
palbright = 0,0,0
palcontrast = 120,80,200
paladd = 10,0,10
palmul = .7,.5,1
timegap = 1
framegap = 2
trans = add1

[State 45, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(44)
value = 44

[State 45, 2]
type = ChangeAnim
trigger1 = !SelfAnimExist(44)
value = 41

[State 45, 3]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 45, 4]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 45, 5]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 45, 6]
type = VelSet
trigger1 = Time = 2
x = ifelse(sysvar(1)=0, const(velocity.airjump.neu.x), ifelse(sysvar(1)=1, const(velocity.airjump.fwd.x), const(velocity.airjump.back.x)))
y = const(velocity.airjump.y)

[State 45, 7]
type = ChangeState
trigger1 = Time = 2
value = 50
ctrl = 1

; Jump Up
[Statedef 50]
type    = A
physics = A

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = (Time = 0) && (prevstateno !=45)
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, high jump]
type = ChangeAnim
trigger1 = (Time = 0) && (prevstateno =45)
value = 941

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

;---------------------------------------------------------------------------
; RUN_FWD
[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100,af ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 12
color = 1
palbright = 0,0,0
palcontrast = 120,80,200
paladd = 10,0,10
palmul = .7,.5,1
timegap = 1
framegap = 2
trans = add1

[State -2,cancel any afterimages]
type = AfterImageTime
trigger1 = time > 0
time = 2

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3001,var ]
type = VarSet
trigger1 = backedgebodydist > 20
v =  1
value = 0

[State 100, 4]
type = ChangeState
trigger1 = command != "holdfwd"
value = 0

[State 100,s1 ]
type = PlaySnd
trigger1 = animelem = 3,1
value = 1,11

[State 100,s1 ]
type = PlaySnd
trigger1 = animelem = 6,1
value = 1,12


[Statedef 0]
type = S
physics = S
sprpriority = 0


[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 0

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3]
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

[State 0, ex]
type = Explod
triggerall = power >= 3000
triggerall = NumExplod(2) = 0
trigger1 = anim = 0
anim = 2
id = 2
pos = 0,0
postype = p1
sprpriority = -1
removetime = -1
bindtime = -1
ownpal = 1
removeongethit = 1

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State -2, ]
type = PlaySnd
trigger1 = (time = 1) && (Stateno = 40)
value = 40,0

[state -2,prov]
type =  stopsnd
trigger1 = prevstateno = 195
channel = 0

[State -2,cancel any afterimages if get hit ]
type = AfterImageTime
trigger1 = movetype = H
time = 0

[State -2,ex ]
type = RemoveExplod
trigger1 = anim != 0
ID = 2

[State -2,ex ]
type = RemoveExplod
trigger1 = stateno != 1022
ID = 1020

[State -2,ex ]
type = RemoveExplod
trigger1 = stateno != [3102,3103]
ID = 3100

[State -2,ex ]
type = RemoveExplod
trigger1 = stateno != 3103
ID = 3101

[State -2,ex ]
type = RemoveExplod
trigger1 = stateno != 3200
ID = 33200

[State -2,ex ]
type = RemoveExplod
trigger1 = stateno != 3201
ID = 33201

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

;[Statedef -3]



;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------
