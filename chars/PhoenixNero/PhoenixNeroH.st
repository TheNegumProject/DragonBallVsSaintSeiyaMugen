;===========================================================================
;Ankoku Houou Guenma-Ken
;===========================================================================
;(préparation)
[Statedef 3030]
type = S
movetype = A
physics = S
anim = 3030
velset = 0,0
poweradd = -3000
juggle = 0
ctrl = 0
supermovetime = 700
;===============================
;SND
;===============================
[State 3030,0Snd]
type = PlaySnd
Trigger1=animelem= 1
value =3030,0
channel = 0
;===============================
;paramétre spétial
;===============================
[State 3030 , pause]
type = SuperPause
trigger1 = Time = 0
time = 120
anim = -1
darken = 100
supermove = 1
movetime = 120

;(trainé rouge)
[State 3030, 1]
type = AfterImage
trigger1 =Time = 0
time = 214
FrameGap = 2
color = 1
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
length = 10
Trans = Add1
;===============================
;paramétre posture et vitesse
;===============================
;(déplasmen ver l'avent)
[State 3030, VelAdd]
type = VelAdd
trigger1 = AnimElem=5
x =5
y = 0
;ignorehitpause =
;persistent =

;===============================
;EXPLOD
;===============================

[State 3030, Explod2]
type = Explod
trigger1 = animelem= 3
anim = 8145
ID = 8015
pos = 152,160
postype =back
facing = 1
vfacing = 1
bindtime = 1
vel = 0
accel = 0
random = 0,0
removetime = -2
supermove =2
pausemove= 3
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
supermovetime = 140
removeongethit = 1

[state 3110, explod]
type = Explod
trigger1 = AnimElem = 1
postype = p1
pos = 0,-100
anim = 8000
ID = 4105
sprpriority = -1
bindtime = -1
removetime = 90
ownpal = 1
ignorehitpause = 1
persistent = 0
removeongethit = 1
supermove= 1

;===============================
[State 3030,cosmos]
type = Explod
triggerall= anim = 3030
trigger1 =animelem= 1
anim = 7003
id = 7003
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
;vel = 0,0
;accel = 0,0
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

;===============================
[State 3030, petit explosion de magma ]
type = Explod
trigger1 = animelem= 1
anim =8038
ID = 8038
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =
 supermovetime = 140

[State 3000,explosion demagma 2]
type = Explod
trigger1 = animelem= 1
anim =8049
ID = 8100
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 32
supermove = 1
pausemove
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =
;===============================
[State 3000,explosion demagma 2]
type = Explod
trigger1 = animelem= 1
anim =8100
ID = 8100
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =
 supermovetime = 140

[State 3000,explosion demagma 2]
type = Explod
trigger1 = animelem= 1
anim =8123
ID = 8100
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =
 supermovetime = 140

;===============================
[State 3030,jin gauche ]
type = Explod
trigger1 = AnimElem = 1
;trigger1 = Pos X   < 0
pos = 0,0
anim = 8041
ID = 4209
postype = left
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime =100
;ontop =1
supermovetime = 700
;===============================
[State 3030 , 11]
type = ChangeState
trigger1 = animtime = 0
value =3031
ctrl =1
;============================================
;ChangeState
;===============================
;(STATE D'ATTAQUE)
;===============================
[Statedef 3031]
type = S
movetype = A
physics = S
anim = 3031
velset = 0,0
juggle = 0
ctrl = 0
supermovetime = 700

;===============================
;paramétre posture et vitesse
;===============================
[State 3031]
type = VarSet
triggerall = stateno = 3031
trigger1 = time = 0
value = 0
v = 48

;(déplasmen ver l avent)
[State 3030, VelAdd]
 type = VelAdd
trigger1 = AnimElem=1
x =40
y = 0
;ignorehitpause =
;persistent =

;===============================
;EXPLOD
;===============================
;(COMOSE de feux)
[State 3031,cosmos]
type = Explod
triggerall =anim=3031
trigger1 =animelem= 1
anim = 7004
id = 7004
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
;vel = 0,0
;accel = 0,0
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1
;===============================
;(Si P1 est du côté droite)
[State  3031, cervo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno = 3035
trigger1 = MoveContact = 1
;trigger1 = Pos X < 0
pos =  320,-0
postype = front
anim = 8040
;ID = 8032
scale = 1,1
;facing = -1
;vfacing = 1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700

;(Si P1 est du côté gauche)
[State  3031, cervo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno = 3035
trigger1 = MoveContact = 1
;trigger1 = Pos X  > 0
pos = 0,-0
postype = back
anim = 8039
;ID = 8032
scale = 1,1
;facing = -1
;vfacing = 1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700
;===============================
;Si P1 est du côté droite
[State  3031, électic cérvo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno = 3035
trigger1 = MoveContact = 1
;trigger1 = Pos X < 0
pos = 320,-0
postype = front
anim = 8016
;ID = 8032
scale = 1,1
;facing = -1
;vfacing = 1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700

;Si P1 est du côté gauche
[State  3031, électic cérvo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno = 3035
trigger1 = MoveContact = 1
;trigger1 = Pos X  > 0
pos = -1,-0
postype = back
anim = 8015
;ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700
;===============================
 ;HIT ATTAQUE
;================================
[State 3031, 3]
type = hitdef
triggerall=anim=3031
trigger1 =  AnimElem = 1
attr = S, HT
;projhitanim = -1
postype = p1
hitflag=HLF
damage = 190
animtype = Light
guardflag = HLM
pausetime = 0,666
sparkno = 0
sparkxy = 47, -120
;sparkno = -1
;guard.sparkno = -1
hitsound   = S4000,1
guardsound = s6, 0
guard.pausetime =1, 130
mindist = 45 ,-6
maxdist = 45,-6
;guardsound = 6,0
ground.type = High
ground.slidetime=12
ground.hittime=11
ground.velocity=-2
air.velocity = -0,0
p2stateno = 3035
p2facing =1
snap = 38,0
fall = 1
fall.recover= 0
id = 3031

;================================
[State 3031 , transition si il est touchez]
type = ChangeState
trigger1 = MoveContact =1
trigger1 = p2stateno = 3035
;trigger1 = Time = 10
value = 3032
ctrl =0

[State 3031 , 11]
type = ChangeState
trigger1 = animtime = 0
value =3033
ctrl =0

;--------------------------------
;State Tux for P2
[Statedef 3035]
type = S
movetype = H
physics = S
ctrl = 0

[State 3035, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 3037

[State 3035, SS]
type = SelfState
trigger1 = Time = 666
value = 5050
ctrl = 0

;=======================================
;ChangeState de 3031a 3032
;=======================================
;(si p2 est en fall)
[Statedef 3032]
type = S
movetype = A
physics = S
anim = 3032
velset = 0,0
juggle = 0
ctrl = 0


;===============================
;SND
;===============================
[State 3032, batment Coeur Snd]
type = PlaySnd
trigger1 = Anim =3032
trigger1= Time
trigger1= Time%80=0
value = 35,0

[State 3032, provoc Snd]
type = PlaySnd
trigger1 =  AnimElem = 6
value = 36,1
channel = 0
;===============================
;paramétre spétial
;===============================
;(traverser P2)
[State 3032, PushOff]
type = PlayerPush
trigger1 = anim = 3032
value = 0
trigger1 = p2stateno = 3035
loop %80=0
Time%80=0

[State 3032, NoHit]
type = NotHitBy
trigger1 = anim = 3032
value = SCA

;(trainé rouge)
[State 3032, 2]
type = BGPalfx
trigger1 =AnimElem =27
ignorehitpause = 1
time = 47
mul = 93,0,127
add = 93,0,127
invertall = 1

[State 3601, lifeadd]
type = TargetLifeAdd
trigger1 = time = 100
trigger2 = time = 200
trigger3 = time = 300
trigger4 = time = 400
trigger5 = time = 500
value = -80
id = 3031

[State 3601, explod]
type = Explod
trigger1 = time = 100
trigger2 = time = 200
trigger3 = time = 300
trigger4 = time = 400
trigger5 = time = 500
anim = F10
facing = -1
postype = p1
pos = 40, -113
sprpriority = 4

[State 3601, explod]
type = Explod
trigger1 = time = 225
trigger2 = time = 550
trigger3 = time = 600
anim = F11
facing = -1
postype = p1
pos = 40, -113
sprpriority = 4

[State 3601, explod]
type = Explod
trigger1 = AnimElem = 2
anim = 3035
postype = p1
pos = 0, 0
scale = 0.55,0.55
bindtime = 1
sprpriority = 4
persistent = 0

[State 3601, explod]
type = Explod
trigger1 = time = 240
anim = 8063
postype = p2
removetime =60
pos = 20, -95
bindtime = 1
sprpriority = 4
persistent = 0

[State 3601, explod]
type = Explod
trigger1 =  AnimElem = 27
anim = 8063
postype = p2
removetime =45
pos = 20, -95
bindtime = 1
sprpriority = 4
persistent = 0

;===============================
;EXPLOD
;===============================
[State 3002,cosmos]
type = Explod
trigger1 =animelem= 1
anim = 7005
id = 7005
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
;vel = 0,0
;accel = 0,0
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1
;===============================
;divert las
[State 3032, las ]
type = Explod
;trigger1 = MoveContact =3
trigger1 = AnimElem = 1
trigger1 !=p2name!= "cassios"
;trigger1 = Pos X  > 0
pos =220,-40
anim = 8101
ID = 4209
;facing = 1
;vfacing = -1
postype = p2
sprpriority = 0
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 100
;ontop =1
supermovetime = 700

;cassios las
[State 3032, las ]
type = Explod
;trigger1 = MoveContact =3
trigger1 = AnimElem = 1
trigger1 =p2name= "cassios"
;trigger1 = Pos X  > 0
pos =220,-105
anim = 8101
ID = 4209
;facing = 1
;vfacing = -1
postype = p2
sprpriority = 0
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 100
;ontop =1
supermovetime = 700



;===============================
[State 3032 , 11]
type = ChangeState
trigger1 = animtime = 0
value =0
ctrl =1

;===========================================================================
;(alternative state p2 touché)
;===========================================================================
;(si p2  en gard   plus utille)
[Statedef 3033]
type = S
movetype = A
physics = S
anim = 3033
velset = 0,0
juggle = 0
ctrl = 0
;===============================
;paramétre spétial
;===============================
[State 3033, NoHit]
type = NotHitBy
trigger1 = anim = 3032
value = SCA

;traverser P2
[State 3033, PushOff]
type = PlayerPush
trigger1 = anim = 3032
value = 0
trigger1 = p2stateno = 3035
;;;loop %80=0
;;;Time%80=0
;===============================
[State 3033 , 11]
type = ChangeState
trigger1 = animtime = 0
value =0
ctrl =1
;=======================================================
;Black fenix Fire

[StateDef 11000]
type    = S
movetype = A
physics = S
poweradd= -1000
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 11000

[State 700, snd]
type = PlaySnd
trigger1 = animelem= 1
value = 40,4

[State 3000, phoenix cosmo gauche]
type = Explod
trigger1 = animelem= 1
anim =4106
ID = 4105
pos = 0,0
postype = back
sprpriority = -1
supermove = 1
removetime = 175
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[state 3110, explod]
type = explod
trigger1 = time = 0
anim = 8050
ID = 4105
pos = 0, 0
postype = back
sprpriority = -5
removetime = 175
ownpal = 1
scale = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove= 1

[state 900]
type = superpause
trigger1=time=1
time = 183
anim = -1
movetime = 183

[State 3500, BGPalfx]
Type = BGPalfx
Trigger1 = time = [0, 600]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State Snd]
type = PlaySnd
trigger1 = Time = 5
value = 4200, 0
channel = 0

[State 735000, cosmo]
type = Explod
triggerall = NumExplod(7750) = 0
trigger1 = AnimElem = 6
pos = 5,0
ID = 7750
anim = 7750
sprpriority = 1
removetime = 374
ownpal = 1
scale = 1,1
ignorehitpause = 1
supermove = 1
bindtime = -1
removeongethit = 1

[State 735000, cosmo]
type = Explod
triggerall = NumExplod(7751) = 0
trigger1 = AnimElem = 1
pos = 0,0
ID = 7751
anim = 7751
sprpriority = 0
removetime = 374
ownpal = 1
ignorehitpause = 1
supermove = 1
bindtime = -1
removeongethit = 1

[State 184, 9]
type = Explod
trigger1 = AnimElem = 2
anim = 1931
sprpriority = -2
postype = p1
pos = 7,15
bindtime = 1
supermove = 1
ownpal = 1


;----------------------

[State 3505, a1]
type = PlaySnd
trigger1 = time = 0
value = 1000, 12
channel = 6
loop = 1
volume = 256

[State 20000, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 11001

[StateDef 11001]
type    = S
movetype = A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 11001

[State 3500, BGPalfx]
Type = BGPalfx
Trigger1 = time = [0, 500]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State ]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 7000
name = "o_O"
postype = p1
pos = 0, 0
persistent = 1
ignorehitpause = 1
supermove = 1
bindtime = -1
stateno = 7000
ownpal = 1

[State ]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 7001
name = "o_O"
postype = p1
pos = 0, 0
persistent = 1
ignorehitpause = 1
supermove = 1
bindtime = -1
stateno = 7001
ownpal = 1

[State 3505, a1]
type = PlaySnd
trigger1 = time = 0
value = 1000, 12
channel = 7
volume = 256


[State 20000, Super B]
type = AfterImage
trigger1 = AnimElem = 1
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
time = 2

[State 20000, sound]
type = Playsnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 10
trigger3 = AnimElem = 17
value = S190,0
volumen = 256

[State 20000, sound]
type = Playsnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 10
trigger3 = AnimElem = 17
value = S1500,14
volumen = 256


[State 2199 , 6]
type = Explod
trigger1 = AnimElem = 3
anim = 3001
sprpriority = 1
postype = p1
pos = 0,5
removetime = 66
ignorehitpause = 1
supermove = 1
bindtime = -1
ownpal = 1
persistent = 0


[State 2199 , 6]
type = Explod
trigger1 = AnimElem = 10
anim = 3001
sprpriority = 1
postype = p1
pos = 0,5
removetime = 66
ignorehitpause = 1
supermove = 1
bindtime = -1
ownpal = 1
persistent = 0



[State 2199 , 6]
type = Explod
trigger1 = AnimElem = 17
anim = 3001
sprpriority = 1
postype = p1
pos = 0,5
removetime = 66
ignorehitpause = 1
supermove = 1
bindtime = -1
ownpal = 1
persistent = 0



[State 20000, BoltFat1]
type = Projectile
trigger1 = AnimElem = 4
trigger2 = AnimElem = 11
projanim = 30022
projhitanim = -1
projscale = 0.85,0.85
postype = p2
offset = 0, -300
velocity = 0, 8
attr = S, SP
damage    = 60
animtype = medium
air.animtype = Back
guardflag = HAL
hitflag = HAFL
pausetime = 0,120
sparkno = -1
guard.sparkno = -1
guardsound = S6, 0
hitsound   = S1500,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = 0, 12
air.velocity = 0, 12
air.juggle = 3
Palfx.Time = 120
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512
fall.recover = 0


[State 20000, BoltFat1]
type = Projectile
trigger1 = AnimElem = 18
projanim = 30022
projhitanim = -1
projscale = 0.9,0.9
postype = p2
offset = 0, -300
velocity = 0, 8
attr = S, SP
damage    = 80
animtype = medium
air.animtype = Back
guardflag = HAL
hitflag = HAFL
pausetime = 0,25
sparkno = -1
guard.sparkno = -1
guardsound = S6, 0
hitsound   = S1500,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 70
ground.velocity = 0, 12
air.velocity = 0, 12
air.juggle = 3
Palfx.Time = 90
palfx.time = 40
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512
EnvShake.Time = 10
EnvShake.Ampl = 5
EnvShake.Freq = 90
fall = 1
Air.Fall = 1
fall.recover = 0

[State ]
type = Helper
trigger1 = projcontact = 1
helpertype = Normal
ID = 8010
name = "o_O"
postype = p2
pos = 0, -50
persistent = 1
ignorehitpause = 1
supermove = 1
bindtime = -1
stateno = 8010
ownpal = 1

[State 660 , 1]
type = PlaySnd
trigger1 = projcontact = 1
value = 1000,14


[State 2199 , 6]
type = Explod
trigger1 = (projhit = 1) && (time >= 182)
anim = 3001
sprpriority = 1
postype = p2
pos = 0,5
removetime = 66
ignorehitpause = 1
supermove = 1
bindtime = -1
ownpal = 1
persistent = 0

[State 2199 , 6]
type = Explod
trigger1 = (projhit = 1) && (AnimElem >= 18)
anim = 3001
sprpriority = 1
postype = p2
pos = 0,5
removetime = 66
ignorehitpause = 1
supermove = 1
bindtime = -1
ownpal = 1
persistent = 0

[State 2199 , 6]
type = Explod
trigger1 = projhit = 1
anim = 3001
sprpriority = 1
postype = p2
pos = 0,5
removetime = 66
ignorehitpause = 1
supermove = 1
bindtime = -1
ownpal = 1
persistent = 0

[State 20000, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 11003


[StateDef 11003]
type = S
ctrl = 0
anim = 192
velset = 0,0
movetype = I
physics = S
sprpriority = 2
poweradd= 0

[State 3100]
type = RemoveExplod
trigger1 = time = 0
id = 4937

[State 230, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 13


[State 660 , 1]
type = PlaySnd
trigger1 = projcontact = 1
value = 1000,14

[State 2199 , 6]
type = Explod
trigger1 = projcontact = 1
anim = 3001
sprpriority = 1
postype = p2
pos = 0,5
removetime = 66
ignorehitpause = 1
supermove = 1
bindtime = -1
ownpal = 1
persistent = 0

[State ]
type = Helper
trigger1 = projcontact = 1
helpertype = Normal
ID = 8000
name = "o_O"
postype = p2
pos = 0, -50
persistent = 0
ignorehitpause = 1
stateno = 8000
ownpal = 1


[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------

[Statedef 7000]
type    = S
ctrl = 0
anim = 8888
velset = 0,0
ignorehitpause = 1


[State 7000,vr ]
type = VarRandom
trigger1 = timemod = 3,0
v = 2
range = -2,5
ignorehitpause = 1

[State 7000,vr ]
type = VarRandom
trigger1 = timemod = 3,0
v = 3
range = 1,3
ignorehitpause = 1


[State 7000,explod ]
type = Explod
trigger1 = timemod = 3,0
trigger2 = timemod = 7,0
anim = 7032   ; 7204
ID = 0
pos = 0,-30
vel = 0,-random%4
random = 30,60
sprpriority = var(2)
ownpal = 1
ignorehitpause = 1
supermove = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State 7000,explod ]
type = Explod
trigger1 = timemod = 4,2
trigger2 = timemod = 8,2
anim = 7031
ID = 0
pos = 0,-30
vel = 0,-random%3
random = 30,60
sprpriority = var(2)
ownpal = 1
ignorehitpause = 1
supermove = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State 7000,bind ]
type = BindToParent
trigger1 = time > 0
ignorehitpause = 1

[State 7000,ds ]
type = DestroySelf
trigger1 = parent,stateno != 3010

[Statedef 7001]
type    = S
ctrl = 0
anim = 8888
velset = 0,0
ignorehitpause = 1


[State 7000,vr ]
type = VarRandom
trigger1 = timemod = 3,0
v = 2
range = -2,5
ignorehitpause = 1

[State 7000,vr ]
type = VarRandom
trigger1 = timemod = 3,0
v = 3
range = 1,3
ignorehitpause = 1


[State 7000,explod ]
type = Explod
trigger1 = timemod = 3,0
trigger2 = timemod = 7,0
anim = 7032  ; 7204
ID = 0
pos = 0,-30
vel = 0,-random%4
random = 30,60
sprpriority = var(2)
ownpal = 1
ignorehitpause = 1
SuperMoveTime = 9999
supermove = 1

[State 7000,explod ]
type = Explod
trigger1 = timemod = 4,2
trigger2 = timemod = 8,2
anim = 7031
ID = 0
pos = 0,-30
vel = 0,-random%3
random = 30,60
sprpriority = var(2)
ownpal = 1
ignorehitpause = 1
supermove = 1
SuperMoveTime = 9999


[State 7000,bind ]
type = BindToParent
trigger1 = time > 0
ignorehitpause = 1

[State 7000,ds ]
type = DestroySelf
trigger1 = parent,stateno != 3000

;-----------------------------------------------------------------

[Statedef 8000]
Type = A
Physics = N
SprPriority = -1

[State -1]
Type = NotHitBy
Trigger1 = 1
Value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = 1

[State -1]
Type = VarRandom
Trigger1 = 1
V = 7
Range = 0,1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = Explod
Trigger1 = Time = [1,90]
Anim = 7030+Var(7)
ID = 8000
Ownpal = 1
BindTime = 4
PosType = P2
Pos = 0,IfElse(P2StateType != L,Const(Size.Mid.Pos.Y)+10,-10)
Random = 20,0
Vel = 0,-2.5
SprPriority = 1
IgnoreHitPause = 1
Persistent = 3
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = Explod
Trigger1 = Time >= 92
Anim = 7030+Var(7)
ID = 8000
Ownpal = 1
BindTime = 4
PosType = P2
Pos = 0,IfElse(P2StateType != L,Const(Size.Mid.Pos.Y)+10,-10)
Random = 20,0
Vel = 0,-2.5
SprPriority = 0
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999


[State -1]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow
Flag2 = Invisible
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = DestroySelf
Trigger1 = Time >= 92
IgnoreHitPause = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

;-----------------------------------------------------------------

[Statedef 8010]
Type = A
Physics = N
SprPriority = -1

[State -1]
Type = NotHitBy
Trigger1 = 1
Value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = 1

[State -1]
Type = VarRandom
Trigger1 = 1
V = 7
Range = 0,1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 9999
PauseMoveTime = 9999
supermove = 1

[State -1]
Type = Explod
Trigger1 = Time = [1,110]
Anim = 7030+Var(7)
ID = 8000
Ownpal = 1
BindTime = 4
PosType = P2
Pos = 0,IfElse(P2StateType != L,Const(Size.Mid.Pos.Y)+10,-10)
Random = 20,0
Vel = 0,-2.5
SprPriority = 1
IgnoreHitPause = 1
Persistent = 3
SuperMoveTime = 9999
PauseMoveTime = 9999
supermove = 1

;[State -1]
;Type = Explod
;Trigger1 = Time >= 112
;Anim = 7030+Var(7)
;ID = 8000
;Ownpal = 1
;BindTime = 4
;PosType = P2
;Pos = 0,IfElse(P2StateType != L,Const(Size.Mid.Pos.Y)+10,-10)
;Random = 20,0
;Vel = 0,-2.5
;SprPriority = 1
;IgnoreHitPause = 1
;Persistent = 0
;SuperMoveTime = 9999
;PauseMoveTime = 9999
;supermove = 1



[State -1]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow
Flag2 = Invisible
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = DestroySelf
Trigger1 = Time >= 112
IgnoreHitPause = 0
SuperMoveTime = 9999
PauseMoveTime = 9999
;======================================================================

;Fire Fenix Summon
[Statedef 3200]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = -2000
anim = 3200
ctrl = 0
sprpriority = 2

[State 3500, a6]
type = AssertSpecial
trigger1 = time = [0, 320]
flag = nobardisplay
ignorehitpause = 1

[State 4200,2]
type = Explod
trigger1 = animelem= 4
anim = 3211  ;4002
ID =11111  ; 4002
pos = 0, 0
postype = p1
sprpriority = 0
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 3000,explosion demagma 2]
type = Explod
trigger1 = animelem= 1
anim =8123
ID = 8100
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 32
supermove = 1
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 3000,explosion demagma 2]
type = Explod
trigger1 = animelem= 1
anim =8049
ID = 8100
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 32
supermove = 1
pausemove
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


[State 3000, pelicula de fondo]
type = Explod
trigger1 = AnimElem = 1
anim = 8100
pos = 0,0
postype = p1
removetime = 32
supermove = 1
sprpriority = 2
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1

[State 3000, Tux]
type = PlaySnd
trigger1 = AnimElem = 1
value = 190,0

[state 3110, explod]
type = explod
trigger1 = animelem= 1
anim = 8002
ID = 4105
pos = 75, -125
postype = p2
facing = -1
vel = -0.3,0.3
sprpriority = -1
removetime = 35
ownpal = 1
scale = 0.8,0.8
ignorehitpause = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove= 1

[State 3210, Snd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = s3,0

[State 4001 , pause]
type = SuperPause
trigger1 = Time = 0
time = 50
anim = -1
darken = 1
supermove = 1
movetime = 50

[State 3210, Snd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = s2,7
channel = 0

[State 3200, End]
type = ChangeState
trigger1 = animtime=0
trigger1 = BackEdgeBodyDist > -1
value = 3210
ctrl = 1

;(Here We Go)
[Statedef 3210]
type = S
movetype = I
physics = S
ctrl = 0
anim = 3210
velset = 0,0

[State 3500, a6]
type = AssertSpecial
trigger1 = time = [0, 100]
flag = nobardisplay
ignorehitpause = 1

[State 4200,2]
type = Explod
trigger1 = animelem= 1
anim = 3212  ;4002
ID =11111  ; 4002
pos = 0, 0
postype = p1
sprpriority = 0
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0



[State 3210, Snd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = s3,2

[State 3210, Helper]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
ignorehitpause = 1
name = "Fenix"
id = 3220
pos = 0,0
postype = P1
stateno = 3220

[State 3210, change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;(Black Fenix)
[Statedef 3220]
type = A
movetype = A
anim = 3220
sprpriority = 5
velset = 20,0

[State 3220, 0]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3220, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,9



[State 3220, Explod]
type = Explod
trigger1 = MoveHit = 1
anim = 7034
ID = 3220
pos = 20,-80
postype = p2
bindtime = -1
removetime = -2
sprpriority = 0
removeongethit = 1

[State 3220, Hitdef]
type = HitDef
trigger1 = AnimElem = 1
attr = A, HA
damage = 400
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 10
sparkno = s9992
sparkxy = -10,-60
hitsound = S3, 1
guardsound = S6, 0
ground.type = Hard
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -20,-6
airguard.velocity = -10,-3
air.type = High
air.velocity = -20,-6
air.hittime = 12
air.fall = 1
fall = 1
fall.recover= 0
Kill = 1
envshake.time = 10
envshake.ampl = 10
palfx.time = 90
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512

[state 3220, Destroyself]
type = DestroySelf
triggerall = Time > 10
trigger1 = BackEdgeBodyDist <= -100
trigger2 = FrontEdgeBodyDist <= -100


