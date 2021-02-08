
;===========================================================================
;Fireball
;===========================================================================
 ;Light Fireball
[StateDef 1000]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1002
poweradd = 20

;flam
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3,1


[State 1000, 4]
type = Explod
trigger1 = AnimElem = 2
persistent = 0
anim = 7024
pos = 14,-32
postype = p1
sprpriority = 3
bindtime = 1
ignorehitpause = 1
ownpal = 1

 ;voix
[State 1000, PlaySnd]
type = PlaySnd
triggerall = random <= 250
trigger1 = AnimElem = 3
value = s2,5

[State 1001, 4]
type = Projectile
trigger1 = AnimElem = 3
projanim = 8088
projhitanim = 1004
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 50,0
velocity = 6
attr = S, SP
damage   = 80
animtype = heavy
guardflag = MA
pausetime = 10,10
hitsound   = S4,0
sparkxy = 500,500
guardsound = s6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -3
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
palfx.time = 40
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0


[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;medium Fireball
[StateDef 1010]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1000
poweradd = 20

;flam
[State 1020, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3,1

[State 1000, 4]
type = Explod
trigger1 = AnimElem = 2
persistent = 0
anim = 7024
pos = 14,-32
postype = p1
sprpriority = 3
bindtime = 1
ignorehitpause = 1
ownpal = 1

 ;voix
[State 1020, PlaySnd]
type = PlaySnd
triggerall = random <= 500
trigger1 = AnimElem = 3
value = s2,5

[State 1010, 1]
type = Projectile
trigger1 = AnimElem = 3
projID = 1010
projanim = 8089
projhitanim = 81460
projhits = 2
projmisstime = 2
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 90,-90
velocity = 7
attr = S, SP
damage   = 40
animtype = hard
guardflag = MA
supermovetime = 900
pausemovetime = 900
hitflag = MAFDP
hitsound   = s4,0
guardsound = s1,0
pausetime = 0,10
hitsound   = s2,2
guardsound = s6,0
sparkno =s814900
sparkxy = 45,-5
guard.sparkno =s8147
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
palfx.time = 40
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512
air.fall = 1
fall.recover = 0
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 12
envshake.freq = 100
envshake.ampl = 4


;炎ヒットスパーク１
[State 7020, 4]
type = Explod
trigger1 = projhit = 1
persistent = 0
anim = 7030
pos = -10,-50
postype = p2
sprpriority = 2
bindtime = 15
ignorehitpause = 1
ownpal = 1

;炎ヒットスパーク２
[State 7020, 4]
type = Explod
trigger1 = projhit = 1
persistent = 0
anim = 7031
pos = 10,-40
postype = p2
sprpriority = 2
bindtime = 15
ignorehitpause = 1
ownpal = 1

;炎相手が燃える（繰返し）
[State 7020, 4]
type = Explod
trigger1 = projhit = 1
persistent = 0
anim = 7040
pos = 0,20
postype = p2
removetime = 30
sprpriority = 2
bindtime = 51
ignorehitpause = 1
facing = -1
ownpal = 1

[State 1010, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===========================================================================
 ; Strong  Fireball
[StateDef 1020]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1001
poweradd = 20

;flam
[State 1020, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3,1

 ;voix
[State 1020, PlaySnd]
type = PlaySnd
triggerall = random <= 750
trigger1 = AnimElem = 3
value = s2,5

[State 1000, 4]
type = Explod
trigger1 = AnimElem = 3
persistent = 0
anim = 7024
pos = 58,-36
postype = p1
sprpriority = 3
bindtime = 1
ignorehitpause = 1
ownpal = 1


[State 1020, 1]
type = Projectile
trigger1 = AnimElem = 3
projID = 1010
projanim = 8089
projhitanim = 81460
projhits = 3
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 103,-85
velocity = 8
attr = S, SP
damage   = 22
animtype = hard
guardflag = MA
supermovetime = 900
pausemovetime = 900
hitflag = MAFDP
hitsound   =s4,0
pausetime = 0,12
hitsound   = s2,2
guardsound = s6,0
sparkno =s814900
sparkxy = 45,-5
guard.sparkno =s8147
ground.type = Low
ground.slidetime = 24
ground.hittime = 24
ground.velocity = -10
ground.cornerpush.veloff = 0
air.velocity = -3,-3
air.fall = 1
fall.recover = 0
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
palfx.time = 40
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 12
envshake.freq = 100
envshake.ampl = 4

;炎ヒットスパーク１
[State 7020, 4]
type = Explod
trigger1 = projhit = 1
persistent = 0
anim = 7030
pos = -10,-50
postype = p2
sprpriority = 2
bindtime = 15
ignorehitpause = 1
ownpal = 1

;炎ヒットスパーク２
[State 7020, 4]
type = Explod
trigger1 = projhit = 1
persistent = 0
anim = 7031
pos = 10,-40
postype = p2
sprpriority = 2
bindtime = 15
ignorehitpause = 1
ownpal = 1

;炎相手が燃える（繰返し）
[State 7020, 4]
type = Explod
trigger1 = projhit = 1
persistent = 0
anim = 7040
pos = 0,20
postype = p2
removetime = 30
sprpriority = 2
bindtime = 51
ignorehitpause = 1
facing = -1
ownpal = 1

[State 1020, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;===========================================================================
;Fly away phoenix
[Statedef 1034]
type    = S
movetype= A
physics = S
poweradd= 10
ctrl = 0
velset = 0,0
anim = 47
sprpriority = 2

  ;voix
[State 1034, PlaySnd]
type = PlaySnd
triggerall = random <= 750
trigger1 = AnimElem =2
value = S2,9

[State 1034, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1035

;---------------------------------------------------------------------------
[Statedef 1035]
type    = A
movetype= A
physics = A
juggle  = 8
ctrl = 0
anim = 1020
sprpriority = 2
velset = 1.3,-5.0

[State 1031, PlaySnd]
type = PlaySnd
trigger1 = AnimElem =2
value = S3,2
;volume = 0
;channel = -1

[State 45, 5]
type = AfterImage
trigger1 = AnimElem = 2
time = 15
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1


[State 1035, lightG]
type = Explod
trigger1 = AnimElem = 3
pos = 0,0
postype = p1
anim = 1021
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removetime = 15
persistent = 0
removeongethit = 1
supermove = 1

[State 1035, lightG]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
postype = p1
anim = 1022
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
;removetime = 15
persistent = 0
removeongethit = 1
supermove = 1


[State 1035, 1]
type = HitDef
trigger1 = Time = 0
trigger2 = movecontact =3
attr = A, SA
animtype = Up
damage    = 15
guardflag = HA
priority = 4
pausetime = 12,12
sparkno =s8149 ;0;s8146
sparkxy = -10,-100
guard.sparkno =s8147
hitsound   = S1,2
guardsound = s6,0
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -.1,-5.5
guard.velocity = -7
air.velocity = -.1,-6.0
airguard.velocity = -3,-4
fall = 1
fall.damage = 20
fall.recover = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512

[State 1035]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1


;===========================================================================
;les Serres du ph駭ix
;===========================================================================

;les Serres du ph駭ix Light
[Statedef 1050]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1050
velset = 0,0
juggle = 7



;kik snd
[State 1050, PlaySnd2]
type = PlaySnd
triggerall = random <= 250
trigger1 = AnimElem = 3
;trigger2 = time=2
value = S2,7
volume = 0
channel = 0

[State 1031, PlaySnd]
type = PlaySnd
trigger1 = AnimElem =2
value = S0,5


; traverser P2
[State 1050, PushOff]
type = PlayerPush
trigger1 = anim = 1050
value = 0

;vel kik
[State 1050, Vel]
type = VelSet
trigger1 = Anim = 1050
trigger1 = AnimElem = 2
X = 7
Y = 7

[State 1050, flach kik]
type = Explod
trigger1 = AnimElem = 4
anim =8124
ID = 8124
pos = 85,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


[State 1050,kik]
type = HitDef
triggerall = Anim = 1050
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = Medium
damage = 30
pausetime = 15,15
guard.pausetime = 12,12
sparkno =s8148 ;0;s8146
guard.sparkno =s8147
sparkxy = 0,-25
hitsound   = S1,9
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
fall = 1

;Axe de  fin para pore au sol
[State 1050, end axe]
type = ChangeState
trigger1 = MoveContact=1

;trigger2 = Pos Y >= 3
value = 1055

;Axe de  fin para pore au sol
[State 1050, end axe]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Pos Y >= 3
value = 1053
;===========================================================================

;m馘ium les Serres du ph駭ix
[Statedef 1051]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1050
velset = 0,0
juggle = 7


;kik snd
[State 1051, PlaySnd2]
type = PlaySnd
triggerall = random <= 500
trigger1 = AnimElem = 3
;trigger2 = time=2
value = S2,7
channel = 0

[State 1031, PlaySnd]
type = PlaySnd
trigger1 = AnimElem =2
value = S0,5

; traverser P2
[State 1051, PushOff]
type = PlayerPush
trigger1 = anim = 1050
value = 0



;vel kik
[State 1051, Vel]
type = VelSet
trigger1 = Anim = 1050
trigger1 = AnimElem = 2
X = 7
Y =7



[State 1051, flach kik]
type = Explod
trigger1 = AnimElem = 4
anim =8124
ID = 8124
pos = 85,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 1051, kik]
type = HitDef
triggerall = Anim = 1050
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = Medium
damage = 30
pausetime = 20,20
guard.pausetime = 12,12
sparkno =s8148 ;0;s8146
guard.sparkno =s8147
sparkxy = 0,-25
hitsound   = S1,9
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
fall = 1


;;Axe de  fin para pore au sol
[State 1051, end axe]
type = ChangeState
trigger1 = MoveContact=1
;trigger2 = Pos Y >= 3
value = 1055

;Axe de  fin para pore au sol
[State 1051, end axe]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Pos Y >= 3
value = 1053

;===========================================================================
;hard les Serres du ph駭ix
[Statedef 1052]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1050
velset = 0,0
juggle = 7

;voix
[State 1052, PlaySnd2]
type = PlaySnd
triggerall = random <= 750
trigger1 = AnimElem = 3
value = S2,7
channel = 0

[State 1031, PlaySnd]
type = PlaySnd
trigger1 = AnimElem =2
value = S0,5

; traverser P2
[State 1052, PushOff]
type = PlayerPush
trigger1 = anim = 1050
value = 0

;vel kik
[State 1052, Vel]
type = VelSet
trigger1 = Anim = 1050
trigger1 = AnimElem = 2
X = 7
Y = 7

[State 1052, flach kik]
type = Explod
trigger1 = AnimElem = 4
anim =8124
ID = 8124
pos = 85,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


[State 1051, kik]
type = HitDef
triggerall = Anim = 1050
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = Medium
damage = 30
pausetime = 25,25
guard.pausetime = 12,12
sparkno =s8148 ;0;s8146
guard.sparkno =s8147
sparkxy = 0,-25
hitsound   = S1,9
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
fall = 1

;Axe de  fin para pore au sol
[State 1052, end axe]
type = ChangeState
trigger1 = MoveContact=1
;trigger2 = Pos Y >= 3
value = 1055

;Axe de  fin para pore au sol
[State 1052, end axe]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Pos Y >= 3
value = 1053

;===========================================================================
;at駻ire
[Statedef 1053]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1053
velset = 0,0
juggle = 7

[State 1053,1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1053, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===========================================================================
;rebon sur p2
[Statedef 1055]
type = A
movetype = A
physics = N
ctrl = 0
anim =1055
velset = 0,0
juggle = 7

[State 1055,1]
type = PosSet
trigger1 = Time = 0
y = 0

 [State 1055, VelSet]
type = VelSet
trigger1 = Anim = 1055
trigger1 = AnimElem=1
x = -10
y = -7
;ignorehitpause =
;persistent =


[State 1055, VelSet]
type = VelSet
trigger1 = Anim = 1055
trigger1 = AnimElem=6
x = 0
y = 0

;ignorehitpause =
;persistent =
[State 1055, end]
type = ChangeState
trigger1 =AnimTime = 0; AnimElem =6
value = 50
ctrl = 1
;===========================================================================
; Light MULTI Punch
;===========================================================================
; MULTI Punch
[Statedef 1060]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1060
sprpriority = 2

[State 1060, 1]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
attr = S, NA
damage = 13
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3, 3
sparkno =s8147 ;0;s8146
sparkxy = -10, -80
guard.sparkno =s8147
hitsound = s1,1
guardsound = s6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 1060, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 1060, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
; Stand Wings
;===========================================================================
;Light Stand Wings
[Statedef 1070]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1070
sprpriority = 2

[State 1070]
type = PlaySnd
trigger1 = Time = 14
value =0,0

;voix
[State 1070, PlaySnd2]
type = PlaySnd
triggerall = random <= 250
trigger1 =Time = 0
value = S2,5

[State 1070, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno =s8147
sparkno = 0
sparkxy = -10, -76
hitsound = 5, 0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12


[State 1070, Wings]
type = Projectile
trigger1 = time = 13
projanim = 3412
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =s8107
sparkxy = 45,-90 ;100
guard.sparkno =s8147
hitsound   =s1,3 ;5,0
velocity = 6,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 30
animtype = Medium
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3


[State 1070, Wings]
type = Projectile
trigger1 = time = 14
projanim = 3413
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =s8107
sparkxy = 45,-80
guard.sparkno =s8147
velocity = 7,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 30
animtype = Medium
guardflag = MA
pausetime = 0,9
hitsound   =s1,3 ;5,0
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3


[State 1070, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; m馘ium Stand Wings
[Statedef 1071]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1070
sprpriority = 2

[State 1070]
type = PlaySnd
trigger1 = Time = 14
value =0,0

;voix
[State 1071, PlaySnd2]
type = PlaySnd
triggerall = random <= 500
trigger1 =Time = 0
value = S2,5

[State 1071, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = 0
sparkxy = -10, -76
guard.sparkno =s8147
hitsound = 5, 0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12


[State 1071, Wings]
type = Projectile
trigger1 = time = 12
projanim = 3411
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =s8107
sparkxy = 45,-90
guard.sparkno =s8147
hitsound   =s1,3 ;5,0
velocity = 5,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Medium
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3


[State 1071, Wings]
type = Projectile
trigger1 = time = 13
projanim = 3412
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =s8107
sparkxy = 45,-80
guard.sparkno =s8147
hitsound   =s1,3 ;5,0
velocity = 6,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Medium
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3


[State 1071, Wings]
type = Projectile
trigger1 = time = 14
projanim = 3413
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =s8107
sparkxy = 45,-70
guard.sparkno =s8147
hitsound   =s1,3 ;5,0
velocity = 7,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Medium
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3


[State 1071, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------------------------
; Strong Stand Wings
[Statedef 1072]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1070
sprpriority = 2

[State 1070]
type = PlaySnd
trigger1 = Time = 14
value =0,1

;voix
[State 1072, PlaySnd2]
type = PlaySnd
triggerall = random <= 750
trigger1 =Time = 0
value = S2,5

[State 1072, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = 0
guard.sparkno =s8147
sparkxy = -10, -76
hitsound = 5, 0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 1072, Wings]
type = Projectile
trigger1 = time = 11
projanim = 3410
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =s8107
sparkxy = 45,-90
guard.sparkno =s8147
hitsound   =s1,3 ;5,0
velocity = 5,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Medium
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3


[State 1072, Wings]
type = Projectile
trigger1 = time = 12
projanim = 3411
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =s8107
sparkxy =45,-80
guard.sparkno =s8147
hitsound   =s1,3 ;5,0
velocity = 5,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Medium
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3


[State 1072, Wings]
type = Projectile
trigger1 = time = 13
projanim = 3412
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =s8107
sparkxy = 45,-70
guard.sparkno =s8147
hitsound   =s1,3 ;5,0
velocity = 6,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Medium
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3

[State 1072, Wings]
type = Projectile
trigger1 = time = 14
projanim = 3413
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =s8107
sparkxy = 45,-60
guard.sparkno =s8147
hitsound   =s1,3 ;5,0
velocity = 7,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Medium
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3

[State 1072, Wings]
type = Projectile
trigger1 = time = 15
projanim = 3414
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =s8107
sparkxy =  45,-80
guard.sparkno =s8147
hitsound   =s1,3 ;5,0
velocity = 8,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Medium
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3


[State 1072, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;=====================================================================================================================================================================
; chamas de Fenix negra no ar
;=====================================================================================================================================================================
[Statedef 1200]
type    = S
movetype= A
physics = N
juggle  = 5
poweradd= 80
ctrl = 0
anim = 1200
velset = 0,0

[State 1000, 1]
type = PlaySnd
trigger1 = time = 0
value = 2,3
channel = 0

[State 1000, 1]
type = PlaySnd
trigger1 = time = 0
value = 230,0

;炎
[State 1000, 4]
type = Explod
trigger1 = AnimTime = 0
persistent = 0
anim = 7020
pos = 10,20
postype = p1
sprpriority = 2
bindtime = 1
ignorehitpause = 1
ownpal = 1

;初期化
[State 5000, 21]
type = VarSet
trigger1 = time = 0
v = 22
value = 0

;コマンド入力確認
[State 5000, 20]
type = VarSet
triggerall = time >= 2
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
v = 22
value = 1

[State 1000, 8]
trigger1 = AnimTime = 0
type = ChangeState
value = 1201

;---------------------
;上昇
[Statedef 1201]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 1201

;コマンド入力確認
[State 5000, 21]
type = VarSet
triggerall = time < 6
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
v = 22
value = 1

;ブレーキングへ移行
[State 1053, 3]
type = ChangeState
trigger1 = Var(22) = 1
value = 1500

;初期化
[State 5000, 21]
type = VarSet
trigger1 = time = 6
v = 22
value = 0

[State 1003, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,3

[State 1003, 5]
type = velset
trigger1 = time >= 0
trigger1 = time < 3
x = 4.5
y = -7.6

[State 1003, 5]
type = VelAdd
trigger1 = time >= 3
y = 0.48

;ノーマル
[State 1053, 2]
type = HitDef
triggerall = palno < 7
trigger1 = AnimElem = 1
attr = S, NA
animtype  = hard
damage    = 60
guardflag = MA
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound   = S230,0
guardsound = s6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -1.6
air.velocity = -2,-6
fall = 1
air.fall = 1
fall.recover = 0
;PalFX
palfx.time = 50
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512

;カラー７
[State 1053, 2]
type = HitDef
triggerall = palno >= 7
trigger1 = AnimElem = 1
attr = S, NA
animtype  = hard
damage    = 60
guardflag = MA
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound   = S230,0
guardsound = s6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -1.6
air.velocity = -2,-6
fall = 1
air.fall = 1
fall.recover = 0
;PalFX
palfx.time = 40
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512

;炎 ヒットスパーク１
[State 7020, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 7030
pos = -10,-55
postype = p2
sprpriority = 2
bindtime = 15
ignorehitpause = 1
ownpal = 1

;炎 ヒットスパーク２
[State 7020, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 7031
pos = 10,-40
postype = p2
sprpriority = 2
bindtime = 15
ignorehitpause = 1
ownpal = 1

;炎 相手が燃える（繰返し）
[State 7020, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 7040
pos = 0,20
postype = p2
sprpriority = 2
bindtime = 51
ignorehitpause = 1
facing = -1
ownpal = 1

;ガードスパーク１
[State 1053, 4]
type = Explod
trigger1 = moveguarded = 1
persistent = 0
anim = 7120
pos = 10,0
postype = p2
sprpriority = 2
bindtime = 1
ignorehitpause = 1
ownpal = 1

;飛び道具発生
[state 1000, 4]
type = helper
trigger1 = animelem = 9
ID = 7020
pos = 25, -100
postype = p1
stateno = 7020
helpertype = normal
name = "uzu"
ownpal = 1
keyctrl = 0

;ヒット直後に相手の位置を修正
[State 905, 0]
type = TargetBind
trigger1 = movehit = 1
trigger1 = p2statetype = S
pos = 60, 0

[State 201, 4]
type = MoveHitReset
trigger1 = movehit = 1

[State 1053, 3]
type = ChangeState
trigger1 = Animtime = 0
value = 1202

;---------------------
; 終了モーション
[Statedef 1202]
type = A
movetype = A
physics = N
anim = 1202
velset = 0,0
ctrl = 0

;重力
[State 1054, 5]
type = veladd
trigger1 = time >= 0
y = 0.43

[State 1053, 3]
type = ChangeState
trigger1 = Animtime = 0
value = 1204

;---------------------
;落下
[Statedef 1204]
type = A
movetype = A
physics = N
anim = 1204
ctrl = 0

;重力
[State 1054, 5]
type = veladd
trigger1 = time >= 0
y = 0.48

[State 1054, 3]
type = ChangeState
trigger1 = Pos Y > 0
trigger1 = Vel Y >=0
value = 1205

;---------------------
; 受け身;着地
[Statedef 1205]
type = S
movetype = A
physics = S
anim = 1205
velset = 0,0
ctrl = 0

[State 1055, 5]
type = PosSet
trigger1 = time =0
y = 0

[State 1000, 1]
type = PlaySnd
trigger1 = time = 0
value = 0,0

[State 1055, 4]
type = MakeDust
trigger1 = Time = 1
pos = 15, 0
spacing = 1

;相手地上激闘
[State 207, 4]
type = EnvShake
trigger1 = p2stateno = 5100
time = 15
ampl = -3
freq = 40
phase = 40
bindtime = 15

[State 1055, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;=====================================================================================================================================================================
;ブレーキング
;=====================================================================================================================================================================
[Statedef 1500]
type = S
movetype = I
physics = S
juggle  = 5
anim = 1206
velset = 0,0
ctrl = 0

[State 1201, 4]
type = CtrlSet
trigger1 = time = 3
value = 1

;[State 1400, 1]
;type = RemoveExplod
;trigger1 = time =0
;ignorehitpause = 1
;ID = 7000

[State 1500, 5]
type = PosSet
trigger1 = time =0
y = 0

[State 1500, 2]
type = Afterimage
trigger1 = Time = 0
time = 14
length = 12
PalBright   =   0,  0,  40
PalContrast = 200,200,250
PalAdd      =   10,  10,  10
PalMul      =  1,1,1
FrameGap = 4
Trans = Add1

[State 1500, 4]
type = MakeDust
trigger1 = Time = 1
pos = 15, 0
spacing = 1

[State 1500, 1]
type = PlaySnd
trigger1 = time = 0
value = 100,4

[State 1500, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------
;飛び道具繰り返し
[Statedef 7020]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 7010

[State 7020, Tux]
type = Explod
trigger1 = Time = 0
anim = 8001
ID = 8001
pos = 0,0
postype = p1
bindtime = -1
removetime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
scale = 0.75,0.75

[State 7000, 5]
type = velset
trigger1 = time >= 0
x = 6
y = 6

[state 7000, 2]
type = sprpriority
trigger1 = time = 0
value = 2

[State 1000, 1]
type = PlaySnd
trigger1 = time = 0
value = 230,2

;ノーマル地上ヒット時
[state 7000, 1]
type = hitdef
triggerall = parent,palno < 7
trigger1 = p2statetype != A
trigger1 = animelem = 4
attr = S, SP
damage    = 80
animtype = hard
guardflag = MA
pausetime = 0,8
sparkno = -1
guard.sparkno = -1
hitsound   = S230,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -7
air.animtype = Back
air.velocity = -5.5,4
air.fall = 1
fall.recover = 0
;PalFX
palfx.time = 50
palfx.add = 155,155,155
palfx.sinadd = 255,255,255,80
palfx.mul = 70,40,100

;ノーマル空中ヒット時
[state 7000, 1]
type = hitdef
triggerall = parent,palno < 7
trigger1 = p2statetype = A
trigger1 = animelem = 4
attr = S, SP
damage    = 80
animtype = hard
guardflag = MA
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
hitsound   = S230,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -15
air.animtype = Back
air.velocity = -5.5,4
air.fall = 1
fall.recover = 0
;PalFX
palfx.time = 50
palfx.add = 155,155,155
palfx.sinadd = 255,255,255,80
palfx.mul = 70,40,100

;カラー７地上ヒット時
[state 7000, 1]
type = hitdef
triggerall = parent,palno >= 7
trigger1 = p2statetype != A
trigger1 = animelem = 4
attr = S, SP
damage    = 80
animtype = hard
guardflag = MA
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
hitsound   = S230,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -15
air.animtype = Back
air.velocity = -5.5,4
air.fall = 1
fall.recover = 0
;PalFX
palfx.time = 40
palfx.add = 0,0,0
palfx.sinadd = 90,90,90,60
palfx.mul = 140,140,160

;カラー７空中ヒット時
[state 7000, 1]
type = hitdef
triggerall = parent,palno >= 7
trigger1 = p2statetype = A
trigger1 = animelem = 4
attr = S, SP
damage    = 80
animtype = hard
guardflag = MA
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
hitsound   = S230,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -15
air.animtype = Back
air.velocity = -5.5,4
air.fall = 1
fall.recover = 0
;PalFX
palfx.time = 40
palfx.add = 0,0,0
palfx.sinadd = 90,90,90,60
palfx.mul = 140,140,160

;炎ヒットスパーク１
[State 7020, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 7030
pos = -10,-50
postype = p2
sprpriority = 2
bindtime = 15
ignorehitpause = 1
ownpal = 1

;炎ヒットスパーク２
[State 7020, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 7031
pos = 10,-40
postype = p2
sprpriority = 2
bindtime = 15
ignorehitpause = 1
ownpal = 1

;炎相手が燃える（繰返し）
[State 7020, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 7040
pos = 0,20
postype = p2
sprpriority = 2
bindtime = 51
ignorehitpause = 1
facing = -1
ownpal = 1


[State 9000, 2]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 7001

[state 7020, Tux]
type = RemoveExplod
trigger1 = movehit = 1
trigger2 = moveguarded = 1
trigger3 = time = 60
trigger4 = parent, stateno = [5000,5210]
trigger5 = Pos Y >= 0
ID = 8001

[state 7020, 2]
type = ChangeState
trigger1 = movehit = 1
trigger2 = moveguarded = 1
trigger3 = time = 60
trigger4 = parent, stateno = [5000,5210]
trigger5 = Pos Y >= 0
value = 7001


;----------------------
;消滅
[Statedef 7001]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 7030
VelSet = 0,0

[state 7020, 2]
type = destroyself
trigger1 = Animtime = 0
trigger2 = parent, stateno = [5000,5210]

;===============================================================================================================================================


;===========================================================================
; air Wings
;===========================================================================
;Light air Wings
[Statedef 1750]
type    = A
movetype= A
physics = A
anim = 1750
velset = 0,0
poweradd = 0
juggle = 5
ctrl = 0



[State 1752, Snd]
type = PlaySnd
trigger1 = time = 5
value = 0,1

;voix
[State 1750, PlaySnd2]
type = PlaySnd
triggerall = random <= 250
trigger1 =Time = 0
value = S2,5
channel = 0

[State 1750, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3511
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 45,-80
guard.sparkno =s8147
hitsound   =s1,3 ;5,0
velocity = 5,2
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3
envshake.time =  15 
envshake.freq = 10
envshake.ampl = 5  
envshake.phase = 5

[State 1750, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3512
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 90,-80
guard.sparkno =s8147
hitsound   =s1,3 ;5,0
velocity = 6,3
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1751, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1753
ctrl = 1

[Statedef 1753]
type = A
movetype = A
physics = A
anim = 1751
velset = 0, 0
juggle = 2
ctrl = 0

[State 660 , 4]
type = ChangeState
trigger1 = pos Y >= 0
value = 52
ctrl = 1



;===========================================================================


;m馘ium air Wings
[Statedef 1751]
type    = A
movetype= A
physics = A
anim = 1750
velset = 0,0
poweradd = 0
juggle = 5
ctrl = 0


[State 1752, Snd]
type = PlaySnd
trigger1 = time = 5
value = 0,1



;voix
[State 1751, PlaySnd2]
type = PlaySnd
triggerall = random <= 500
trigger1 =Time = 0
value = S2,5
channel = 0


[State 1751, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3511
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 45,-80
guard.sparkno =s8147
hitsound   =s1,3 ;5,0
velocity = 5,2
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1751, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3512
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 90,-80
guard.sparkno =s8147
hitsound   =s1,3 ;5,0
velocity = 6,3
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1751, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3513
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 90,-50
guard.sparkno =s8147
hitsound   =s1,3 ;5,0
velocity = 7,4
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1751, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1753
ctrl = 1

[Statedef 1753]
type = A
movetype = A
physics = A
anim = 1751
velset = 0, 0
juggle = 2
ctrl = 0

[State 660 , 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 47
ctrl = 1

;===========================================================================


;Strong air Wings
[Statedef 1752]
type    = A
movetype= A
physics = A
anim = 1750
velset = 0,0
poweradd = 0
juggle = 5
ctrl = 0


[State 1752, Snd]
type = PlaySnd
trigger1 = time = 5
value = 0,1


;voix
[State 1752, PlaySnd2]
type = PlaySnd
triggerall = random <= 750
trigger1 =Time = 0
value = S2,5
channel = 0

[State 1752, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3510
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 45,-90
guard.sparkno =s8147
hitsound   =s1,3 ;5,0
velocity = 4,1
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1752, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3511
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 90,-70
guard.sparkno =s8147
hitsound   =s1,3 ;5,0
velocity = 5,2
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1752, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3512
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 90,-40
guard.sparkno =s8147
hitsound   =s1,3 ;5,0
velocity = 6,3
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1752, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3513
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 90,-20
guard.sparkno =s8147
hitsound   =s1,3 ;5,0
velocity = 7,4
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1752, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3514
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 90,-10
guard.sparkno =s8147
hitsound   =s1,3 ;5,0
velocity = 8,5
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
hitsound   = 5,0
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1751, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1753
ctrl = 1

[Statedef 1753]
type = A
movetype = A
physics = A
anim = 1751
velset = 0, 0
juggle = 2
ctrl = 0

[State 660 , 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 47
ctrl = 1

;=====================================================================================================================================================================
; For軋 das sombras
;=====================================================================================================================================================================
;攻撃１
[Statedef 1080]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 120
ctrl = 0
anim = 1090
VelSet = 0,0

[State 1000, 1]
type = PlaySnd
trigger1 = time = 0
value = 4,0

;ノーマル
[State 1053, 2]
type = HitDef
triggerall = palno < 7
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
attr = S, NA
animtype  = hard
damage    = 10
guardflag = MA
pausetime = 6,8;12
sparkno = -1
guard.sparkno = -1
hitsound   = S200,7
guardsound = s6,0
ground.type = Low
ground.slidetime = 28
ground.hittime  = 28
ground.velocity = -2
air.velocity = -4,-4
;fall = 1
;air.fall = 1
;fall.recover = 0
;PalFX
palfx.time = 50
palfx.add = 155,155,155
palfx.sinadd = 255,255,255,80
palfx.mul = 70,40,100

;カラー７
[State 1053, 2]
type = HitDef
triggerall = palno >= 7
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
attr = S, NA
animtype  = hard
damage    = 15
guardflag = MA
pausetime = 6,8;12
sparkno = -1
guard.sparkno = -1
hitsound   = S200,7
guardsound = s6,0
ground.type = Low
ground.slidetime = 28
ground.hittime  = 28
ground.velocity = -2
air.velocity = -4,-4
;fall = 1
;air.fall = 1
;fall.recover = 0
;PalFX
palfx.time = 40
palfx.add = 0,0,0
palfx.sinadd = 90,90,90,60
palfx.mul = 140,140,160

;炎ヒットスパーク１
[State 7020, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 7030
pos = 55,-55
postype = p1
sprpriority = 4
bindtime = 15
ignorehitpause = 1
ownpal = 1

;炎ヒットスパーク２
[State 7020, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 7031
pos = 45,-45
postype = p1
sprpriority = 4
bindtime = 15
ignorehitpause = 1
ownpal = 1

[State 5000, 21]
type = VarSet
trigger1 = time = 0
v = 31
value = 0

[State 5000, 21]
type = VarAdd
trigger1 = movehit = 1
v = 31
value = 1
ignorehitpause = 1

;ランダム
[State 5000, 0]
type = VarRandom
trigger1 = time = 0
v = 0
range = 0, 2

;r1
;ちっちゃい炎ヒットスパーク１（固定表示）
[State 7020, 4]
type = Explod
trigger1 = Var(31) >= 2
trigger1 = Var(0) = 0
persistent = 0
anim = 7032
pos = 10,-50
postype = p1
sprpriority = 4
bindtime = 16
ignorehitpause = 1
ownpal = 1

;ちっちゃい炎ヒットスパーク１
[State 7020, 4]
type = Explod
trigger1 = Var(31) >= 12
trigger1 = Var(0) = 0
persistent = 0
anim = 7033
pos = 25,-90
postype = p1
sprpriority = 4
bindtime = 1
ignorehitpause = 1
ownpal = 1

;r2
;ちっちゃい炎ヒットスパーク１（固定表示）
[State 7020, 4]
type = Explod
trigger1 = Var(31) >= 4
trigger1 = Var(0) = 1
persistent = 0
anim = 7032
pos = 20,-55
postype = p1
sprpriority = 4
bindtime = 16
ignorehitpause = 1
ownpal = 1

;ちっちゃい炎ヒットスパーク１
[State 7020, 4]
type = Explod
trigger1 = Var(31) >= 14
trigger1 = Var(0) = 1
persistent = 0
anim = 7033
pos = 30,-85
postype = p1
sprpriority = 4
bindtime = 1
ignorehitpause = 1
ownpal = 1


;炎相手が燃える（繰返し）
[State 7020, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 7040
pos = 0,20
postype = p2
sprpriority = 2
bindtime = 51
ignorehitpause = 1
facing = -1
ownpal = 1

;ガードスパーク１
[State 1053, 4]
type = Explod
trigger1 = moveguarded = 1
persistent = 0
anim = 7120
pos = 10,0
postype = p2
sprpriority = 2
bindtime = 1
ignorehitpause = 1
ownpal = 1

;炎エフェクト４（シュワルツパンツァー用 強 ）
[State 1000, 4]
type = Explod
trigger1 = AnimElem = 10
persistent = 0
anim = 7023
pos = 57,-27
postype = p1
sprpriority = 4
bindtime = 1
ignorehitpause = 1
ownpal = 1
Vel = 1

;カラー７
[State 207, 4]
type = EnvShake
triggerall = palno >= 7
trigger1 = movehit = 1
time = 15
ampl = -3
freq = 40
phase = 40
bindtime = 15

[State 1000, 8]
trigger1 = AnimTime = 0
type = ChangeState
value = 1081

;--------------------
;モーション
[Statedef 1081]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 1091


[State 1000, 8]
trigger1 = AnimTime = 0
type = ChangeState
value = 1082

;--------------------
;攻撃２（繰返し）
[Statedef 1082]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1092

[State 182, 1]
type = explod
trigger1 = animelem = 1
anim = 6002
pos = 25,0
postype = p1
bindtime = 1
supermove = 1
sprpriority = 4
ownpal = 1

[State 100,Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 101
anim = 101
pos = -30,-20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 10001, Super B]
type=AfterImage
trigger1= Time = 0
time= 20
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1000, 1]
type = VelSet
triggerall = time >= 0
trigger1 = movehit != 1
trigger2 = moveguarded != 1
x = 10

[State 1000, 1]
type = VelSet
triggerall = time >= 0
trigger1 = movehit = 1
trigger2 = moveguarded = 1
x = 7

[State 1000, 1]
type = PlaySnd
trigger1 = time = 0
value = 230,10

;ノーマル
[State 1053, 2]
type = HitDef
triggerall = palno < 7
trigger1 = AnimElem = 2
trigger1 = moveguarded != 1
trigger1 = movehit != 1
attr = S, NA
animtype  = hard
damage    = 40
guardflag = MA
pausetime = 8,14
sparkno = -1
guard.sparkno = -1
hitsound   = S230,0
guardsound = s6,0
ground.type = Low;High
ground.slidetime = 28
ground.hittime  = 28
ground.velocity = -5.5
air.velocity = -5.5,-2
fall = 1
air.fall = 1
fall.recover = 0
;PalFX
palfx.time = 50
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512

;カラー７
[State 1053, 2]
type = HitDef
triggerall = palno >= 7
trigger1 = AnimElem = 2
trigger1 = moveguarded != 1
trigger1 = movehit != 1
attr = S, NA
animtype  = hard
damage    = 50
guardflag = MA
pausetime = 8,14
sparkno = -1
guard.sparkno = -1
hitsound   = S230,0
guardsound = s6,0
ground.type = Low;High
ground.slidetime = 28
ground.hittime  = 28
ground.velocity = -5.5
air.velocity = -5.5,-2
fall = 1
air.fall = 1
fall.recover = 0
;PalFX
palfx.time = 40
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512

;炎ヒットスパーク１
[State 7020, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 7030
pos = -10,-50
postype = p2
sprpriority = 4
bindtime = 15
ignorehitpause = 1
ownpal = 1

;炎ヒットスパーク２
[State 7020, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 7031
pos = 10,-40
postype = p2
sprpriority = 4
bindtime = 15
ignorehitpause = 1
ownpal = 1

[State 5000, 21]
type = VarSet
trigger1 = time = 0
v = 31
value = 0

[State 5000, 21]
type = VarAdd
trigger1 = movehit = 1
v = 31
value = 1
ignorehitpause = 1

;ランダム
[State 5000, 0]
type = VarRandom
trigger1 = time = 0
v = 0
range = 0, 2

;r1
;ちっちゃい炎ヒットスパーク１（固定表示）
[State 7020, 4]
type = Explod
trigger1 = Var(31) >= 2
trigger1 = Var(0) = 0
persistent = 0
anim = 7032
pos = 10,-50
postype = p1
sprpriority = 4
bindtime = 16
ignorehitpause = 1
ownpal = 1

;ちっちゃい炎ヒットスパーク１
[State 7020, 4]
type = Explod
trigger1 = Var(31) >= 12
trigger1 = Var(0) = 0
persistent = 0
anim = 7033
pos = 25,-90
postype = p1
sprpriority = 4
bindtime = 1
ignorehitpause = 1
ownpal = 1

;r2
;ちっちゃい炎ヒットスパーク１（固定表示）
[State 7020, 4]
type = Explod
trigger1 = Var(31) >= 4
trigger1 = Var(0) = 1
persistent = 0
anim = 7032
pos = 20,-55
postype = p1
sprpriority = 4
bindtime = 16
ignorehitpause = 1
ownpal = 1

;ちっちゃい炎ヒットスパーク１
[State 7020, 4]
type = Explod
trigger1 = Var(31) >= 14
trigger1 = Var(0) = 1
persistent = 0
anim = 7033
pos = 30,-85
postype = p1
sprpriority = 4
bindtime = 1
ignorehitpause = 1
ownpal = 1

;炎相手が燃える（繰返し）
[State 7020, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 7040
pos = 0,20
postype = p2
sprpriority = 2
bindtime = 51
ignorehitpause = 1
facing = -1
ownpal = 1



;炎エフェクト２（シュワルツパンツァー用）
[State 1000, 4]
type = Explod
trigger1 = time = 0
persistent = 0
anim = 7021
pos = 33,-17
postype = p1
sprpriority = 2
bindtime = 1
ignorehitpause = 1
ownpal = 1
Vel = -2

;炎エフェクト２（シュワルツパンツァー用）
[State 1000, 4]
type = Explod
trigger1 = time = 8
persistent = 0
anim = 7021
pos = 33,-17
postype = p1
sprpriority = 2
bindtime = 1
ignorehitpause = 1
ownpal = 1
Vel = -2

;炎エフェクト３（シュワルツパンツァー用）（繰返し）
[State 1000, 4]
type = Explod
trigger1 = time = 0
persistent = 0
anim = 7022
pos = 33,-17
postype = p1
sprpriority = 3
bindtime = 28
ignorehitpause = 1
ownpal = 1
removetime = 28
Vel = -2

;カラー７
[State 207, 4]
type = EnvShake
triggerall = palno >= 7
trigger1 = movehit = 1
time = 15
ampl = -3
freq = 40
phase = 40
bindtime = 15

[State 1000, 8]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 1092

[State 1000, 8]
type = ChangeState
trigger1 = Time = 20
value = 1083

;--------------------
;終了
[Statedef 1083]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1093

;r1
;ちっちゃい炎ヒットスパーク１
[State 7020, 4]
type = Explod
trigger1 = Var(31) >= 5
trigger1 = Var(0) = 0
trigger1 = time = 0
persistent = 0
anim = 7032
pos = -5,-80
postype = p1
sprpriority = 4
bindtime = 1
ignorehitpause = 1
ownpal = 1
Vel = -1

;r2
;ちっちゃい炎ヒットスパーク１
[State 7020, 4]
type = Explod
trigger1 = Var(31) >= 5
trigger1 = Var(0) = 1
trigger1 = time = 0
persistent = 0
anim = 7032
pos = -10,-75
postype = p1
sprpriority = 4
bindtime = 1
ignorehitpause = 1
ownpal = 1
Vel = -1

[State 5000, 21]
type = VarSet
trigger1 = time = 0
v = 31
value = 0

[State 5000, 21]
type = VarSet
trigger1 = time = 0
v = 0
value = 0

[State 1000, 1]
type = PlaySnd
trigger1 = time = 0
value = 0,0

;炎
[State 1000, 4]
type = Explod
trigger1 = AnimElem = 1
persistent = 0
anim = 7001
pos = -12,0
postype = p1
sprpriority = 2
bindtime = 1
ignorehitpause = 1
ownpal = 1

;相手地上激闘
[State 207, 4]
type = EnvShake
trigger1 = p2stateno = 5100
time = 15
ampl = -3
freq = 40
phase = 40
bindtime = 15

[State 1055, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Rage Run (inicio)
[Statedef 1400]
type    = S
movetype= I
physics = S
juggle  = 0
poweradd= 120
velset = 0,0
anim = 1400
ctrl = 0

[State 1010, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 3,7

[State 1010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1401
ctrl = 0

;---------------------------------------------------------------------------
; Rage Run (erro)
[Statedef 1408]
type    = S
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = 0.8,0
ctrl = 0

[State 1010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Rage Run (corrida)
[Statedef 1401]
type    = S
movetype= I
physics = S
juggle  = 0
poweradd= 0
velset = 0,0
anim = 1401
ctrl = 0

[State 1300, 1]
type = VelSet
trigger1 = Time > 2
x = 12
y = 0

[State 1010, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 3,6
channel = 0

[State 182, 1]
type = explod
trigger1 = animelem = 2
anim = 6002
pos = 25,0
postype = p1
bindtime = 1
supermove = 1
sprpriority = 4
ownpal = 1

[State 100,Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 101
anim = 101
pos = -30,-20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 10001, Super B]
type=AfterImage
trigger1= Time = 0
time= 20
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1010, 3]
type = ChangeState
trigger1 = P2bodydist X <= 20
trigger1 = P2StateType != A
value = 1402
ctrl = 0

[State 1010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1408
ctrl = 0

;---------------------------------------------------------------------------
; Rage Run - Type Swift (corrida)
[Statedef 1405]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
velset = 0,0
anim = 1405
ctrl = 0

[State 1300, 1]
type = VelSet
trigger1 = Time > 2
x = 8
y = 0

[State 1010, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 3,6


[State 1010, 3]
type = ChangeState
trigger1 = P2bodydist X <= 10
trigger1 = P2StateType != A
value = 1406
ctrl = 0

[State 1010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1408
ctrl = 0

;---------------------------------------------------------------------------
; Rage Run - Type Swift (troca)
[Statedef 1406]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
anim = 1406
ctrl = 0

[State 1010, 1]
type = SprPriority
trigger1 = Time = 0
value = 3

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3,7

[State 1010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1407
ctrl = 0

;---------------------------------------------------------------------------
; Rage Run - Type Swift (final)
[Statedef 1407]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
anim = 1407
ctrl = 0

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,2

[State 1380, 1]
type = PosAdd
trigger1 = Time = 0
x = 100

[State 1380, 1]
type = PosAdd
trigger1 = AnimTime = 0
x = 10

[State 1380, 2]
type = Turn
trigger1 = Time = 0

[State 1380, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Rage Run - Type "Dunk" (inicio)
[Statedef 1402]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
anim = 1402
ctrl = 0

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,12
channel = 0

[State 195, 2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 3,8

[State 1451, 1]
type = VelSet
trigger1 = AnimElem = 1
y = -4.5
x = 1.5

[State 1451, 2]
type = VelAdd
trigger1 = Time >= 2
y = .35

[State 1030, 1]
type = explod
trigger1 = AnimElem = 7
anim = 9008
pos = 41,-43
sprpriority = 2
postype = p1
bindtime = 1
supermove = 1
ownpal = 1

[State 1451, 5]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 70
guardflag = M
sparkno = S7031
guard.sparkno = S8002
sparkxy = -10,-38
animtype = Hard
pausetime = 5,8
hitsound = S1,5
guardsound = s6,0
ground.slidetime = 0
ground.hittime = 18
ground.velocity = 0,10
air.velocity = 0,10
air.fall = 0
air.recover = 0
palfx.time = 40
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512
fall = 1
fall.recover = 0
fall.xvelocity = 0
fall.yvelocity = -3

[State 1451, 6]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1403
ctrl = 0

;---------------------------------------------------------------------------
; Rage Run - Type "Dunk" ( landing - sucesso do hit )
[Statedef 1403]
type    = S
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
anim = 1403
ctrl = 0

[State 1010, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 52,0

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1010, 1]
type = VelMul
trigger1 = Time >= 0
x = .8

[State 1010, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;================================================================

;Soco atravessante
[Statedef 10000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 90
ctrl = 0
velset = 0,0
anim = 10003
sprpriority = 1


[State 20100, 1]
type = PlaySnd
trigger1 = Time = 2
value = 2, 5

[State 182, 1]
type = explod
trigger1 = animelem = 2
anim = 6002
pos = 25,0
postype = p1
bindtime = 1
supermove = 1
sprpriority = 4
ownpal = 1

[State 100,Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 101
anim = 101
pos = -30,-20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 10000, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Hard
damage    = 75
guardflag = MA
hitflag = MAF
pausetime = 0, 35
sparkno = S8150
sparkxy = -10,-90
guard.sparkno = S7033
hitsound   = S1,5
guardsound = S6,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 6
ground.velocity = 0
air.velocity = -2.5,-4
fall = 1
air.fall= 1
fall.recover= 0

[State 2199 , 8]
type = Explod
trigger1 = movehit
anim = 8104
sprpriority = 1
postype = p2
pos = -10,-100
removetime = 20
ignorehitpause = 1
supermove = 1
bindtime = -1


[State 10000, 3]
Type = Velset
trigger1 = AnimElem = 2
x = 16

[State 10000, 4]
Type = VelMul
trigger1 = AnimElem = 3
x = 1.5

[State 10000, 5]
Type = VelMul
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
x = 1.5

[State 10000, 6]
Type = VelMul
trigger1 = AnimElem = 6
x = 1.7

[State 10000,7]
type = PlaySnd
trigger1 = AnimElem = 2,1
value = 0,11

[State 10000, 8]
Type = VelMul
trigger1 = AnimElem = 7
x = 2

[State 10000, 9]
Type = VelMul
trigger1 = AnimElem = 8
x = 1.1

[State 10000, afterimage]
type=AfterImage
trigger1= AnimElem = 2
time = 10
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 10000, 10]
type = ChangeState
trigger1 = MoveHit
value = 10001
ctrl = 1

[State 10000, 11]
type = ChangeState
trigger1 = MoveGuarded
value = 0
ctrl = 1

[State 10000, 12]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1


;Atravessando
[statedef 10001]
type = S
Movetype = I
Physics = S
Anim = 10001
ctrl = 0

[State 10001, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 6

[State 10001, Super B]
type=AfterImage
trigger1= Time = 0
time = 10
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[state 10001,1]
type = posadd
trigger1 = animtime = 0
x = 100

[state 10001,2]
type = changestate
trigger1 = animtime = 0
value = 10002
ctrl = 1

;atravessando (fim)
[Statedef 10002]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 10001
sprpriority = 8

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3


[State 10002, Explod]
type = Explod
trigger1 = Time = 1
anim = F12
postype = p2
pos = 0, -80

[State 10002, 4]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 10002, 5]
type = ChangeState
trigger1 = time = 70
value = 0
ctrl = 1

[State 10002, 6.1]
Type = Velset
trigger1 = AnimElem = 1
x = 8


[State 10002, nothittableanything]
type = NotHitBy
trigger1 = 1
type = NotHitBy
value = SCA

[State 10002, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
