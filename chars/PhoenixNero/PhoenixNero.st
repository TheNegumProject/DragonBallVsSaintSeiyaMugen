;----------------------------------------------------------------
; Time Over
[Statedef 170]
type = S
anim = 170

[State 171, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 170,0
channel = 0

[State 171, Tux]
type = PlaySnd
trigger1 = AnimElem = 4
value = 52,0

;----------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180, 8]
type = ChangeState
triggerall = MatchOver = 0
trigger1 = Time = 0
value = 181

[State 180, 9]
type = ChangeState
triggerall = MatchOver = 1
trigger1 = Time = 0
value = 184

;----------------------------------------------------------------
;winpose 1st Round
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0,0

[State 181, 1]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 181, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = RoundNotOver

[State 181, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,13
channel = 0

;----------------------------------------------------------------
;WinPose 2nd Round by Tux
[Statedef 184]
type = S
ctrl = 0
anim = 182
velset = 0,0,0

[State 184, 1]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 184, 2]
type = AssertSpecial
trigger1 = Time = [0,240]
flag = RoundNotOver

[State 3500, a6]
type = AssertSpecial
trigger1 = time = [0, 240]
flag = nobardisplay
ignorehitpause = 1

[State 3500, BGPalfx]
Type = BGPalfx
Trigger1 = time = [80, 240]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[state 3110, explod]
type = explod
trigger1 = animelem= 3
anim = 3036
ID = 4105
pos = 60, 0
postype = back
sprpriority = 0
removetime = -1
ownpal = 1
scale = 0.8,0.8
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove= 1

[State 184, 12]
type = PlaySnd
trigger1 = Time = 0
value = 180,0
channel = 0

[State 184, 5]
type = PlaySnd
trigger1 = time = 80
value = 190, 2
volume = 50

[State 184, 6]
type = EnvShake
trigger1 = time = 80
time = 16
persistent = 0
ignorehitpause = 1

[State 184, 7]
type = PlaySnd
trigger1 = time = 86
value = 190, 1
volume = 50

[state 184, 8]
type = Explod
triggerall = NumExplod(19000) = 0
triggerall = stateno = 193
trigger1 = time = 0
anim = 19000
id = 19000
pos = 0,0
postype = LEFT
sprpriority = -4
removetime = 57
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 184, 9]
type = Explod
trigger1 = time = 80  
anim = 1930
sprpriority = -2
postype = p1
pos = 7,15
bindtime = 1
supermove = 1
ownpal = 1

[state 184, 10]
type = VarRandom
trigger1 = Time = 131
v = 2
range = 0,99

[State 184, 3]
type = PlaySnd
trigger1 = Time = 112
value = 190, 0

;----------------------------------------------------------------
; intro state decider
[statedef 190]
type = s
ctrl = 0
velset = 0,0,0

[state 190, 3]
type = varrandom
trigger1 = time = 0
v = 2
range = 0,99

;Random
[state 190, 6]
type = changestate
trigger1 = var(2) = [0,49]
value = 191

[state 190, 6]
type = changestate
trigger1 = var(2) = [50,74]
value = 192

[state 190, 6]
type = changestate
trigger1 = var(2) = [75,99]
value = 193

;----------------------------------------------------------------
; intro avec armure
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0,0

[State 191, 1]
type = AssertSpecial
trigger1 = Time = [0,538]
flag = Intro

[State 3500, a6]
type = AssertSpecial
trigger1 = time = [0, 538]
flag = nobardisplay
ignorehitpause = 1

[State 3500, BGPalfx]
Type = BGPalfx
Trigger1 = time = [0, 538]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 191, 0.1]
type = PlaySnd
trigger1 = time = 120
value = 190, 0

[State 191, 2]
type = PlaySnd
trigger1 = AnimElem = 18
value = 190, 1

[State 191 , 5]
type = PlaySnd
trigger1 = AnimElem = 29;Jambe
trigger2 = AnimElem = 34;Bras1
trigger3 = AnimElem = 42;Torse
trigger4 = AnimElem = 47;Dos
trigger5 = AnimElem = 52;Casque
value = 190,3

[State 191 , 5]
type = PlaySnd
trigger1 = AnimElem = 32;Jupe
trigger2 = AnimElem = 40;Bras2
trigger3 = AnimElem = 44;Epaule1
trigger4 = AnimElem = 49;Epaule2
value = 190, 4

[State 191 , 5]
type = PlaySnd
trigger1 = AnimElem = 59
value = 190,2

[State 191, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,2
channel = 0

[State 191, Shake1]
type = EnvShake
trigger1 = AnimElem = 10, = 19
time = 4

[State 191, BoxHit1]
type = PlaySnd
trigger1 = AnimElem = 10, = 19
value = 190,3
volume = 50

[State 191, Shake2]
type = EnvShake
trigger1 = AnimElem = 10, = 27
time = 4

[State 193, colone de feux]
type = Explod
trigger1 = AnimElem = 24
anim = 199
sprpriority = 5
postype = p1
pos = 0,0
bindtime = 1
supermove = 1
ownpal = 1

;Armure
[state 191,1]
type = explod
trigger1 = AnimElem = 1
scale= 0.88,0.88
id = 1920
anim = 1919
pos = 0, 0
postype = p1
removetime = 85
sprpriority = -3
ownpal = 1


;Armure
[state 191,1]
type = explod
trigger1 = AnimElem = 12
id = 1920
anim = 1920
pos = 0, 13
postype = p1
removetime = 255
sprpriority = -3
ownpal = 1

; fenix negra
[State 193]
type = Explod
trigger1 = AnimElem = 1
scale = 0.8,0.8
postype = p1
pos = -55,7
anim = 7041
ID = 1920
sprpriority = -1
bindtime = -1
removetime = 408


;oiseau flamme
[State 191 , 8]
type = Explod
ID = 1960
trigger1 = AnimElem = 60
anim = 1960
sprpriority = -2
postype = p1
pos = -19,0
removetime = 95
bindtime = 1
supermove = 1
ownpal = 1

[State 191 , 10]
type = EnvShake
trigger1 = AnimElem = 60
time = 10

[State 191, Flash]
type = EnvColor
trigger1 = AnimElem = 60
value = 93,0,127
time = 3

[State 191, Tux]
type = PlaySnd
trigger1 = AnimElem = 63
value = 3,6

[State 191,remove]
type = RemoveExplod
triggerall = NumExplod(1980) = 1
trigger1 = animelem = 65
ID = 1980

[State 191, 11] ;Intro not yet over
type = VarSet
trigger1 = Time = 0
v = 9
value = 1

[State 191, 12] ;Intro over, set v9 to 0
type = VarSet
trigger1 = Time = 538
v = 9
value = 0

[State 191, 14]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0


;----------------------------------------------------------------
;Intro

[Statedef 192]
type = S
ctrl = 0
anim = 193
velset = 0,0,0

[state 193: 	assertspecial]
type 			= assertspecial
trigger1 		= 1
flag 			= intro
flag2 		= nomusic
flag3 		= nobardisplay

[State 193, 0]
type = AssertSpecial
trigger1 = Time = [0,160]
flag = intro

[State 193, 0]
type = AssertSpecial
trigger1 = Time = [0,160]
flag = nomusic

[State 193, phoenix]
type = PlaySnd
trigger1 = time = 0
value = 190, 0

[State 193, impact]
type = PlaySnd
trigger1 = time = 26
value = 190, 2
volume = 50

[State 193, tremblement impact]
type = EnvShake
trigger1 = time = 26
time = 16
persistent = 0
ignorehitpause = 1

[State 193, colone]
type = PlaySnd
trigger1 = time = 32
value = 190, 1
volume = 50

[State 193, colone de feux]
type = Explod
trigger1 = time = 26
anim = 1930
sprpriority = -2
postype = p1
pos = 7,15
bindtime = 1
supermove = 1
ownpal = 1

;Signe
[State 193 , Sign]
type = Explod
ID = 1980
trigger1 = time = 50
anim = 1980
sprpriority = -1
postype = p1
pos = 0,30
removetime = 95
bindtime = 1
supermove = 1
ownpal = 1

[State 193, Voix]
type = PlaySnd
trigger1 = Animelem = 2
value = 199, 0
channel = 0

[State 193, 9]
type = changestate
trigger1 = time = 160
value = 0
ctrl = 0

;----------------------------------------------------------------
; intro galactique
[Statedef 193]
type = A
ctrl = 0
anim = 183
velset = 0,0,0


[State 196, a]
type = AssertSpecial
trigger1 = Anim != 0
flag = Intro

[State 196, b]
type = ScreenBound
trigger1 = 1
value = 0

[State 196, 1]
type = PosAdd
trigger1 = time = 0
x = -250
y = -150

[State 196, 2]
type = VelSet
trigger1 = time = 25
x = 10
y = 6

[State 196, 3]
type = ChangeAnim
trigger1 = Pos Y > -1
value = 184
persistent = 0

[State 196, 4]
type = VelSet
trigger1 = Anim = 184
x = 0
y = 0
persistent = 0

[State 196, 5]
type = PosSet
trigger1 = Anim = 184
y = 0
persistent = 0

[State 196, Tux1]
type = PlaySnd
triggerall = Anim = 183
trigger1 = AnimElem = 1
value = 4000,2

[State 196, Tux1]
type = PlaySnd
triggerall = Anim = 184
trigger1 = AnimElem = 2
value = 52,0

[State 196, Tux1]
type = PlaySnd
triggerall = Anim = 184
trigger1 = AnimElem = 5
value = 2,10
channel = 0

[State 196, 10]
type = ChangeAnim
triggerall = Anim = 184
trigger1 = AnimTime = 0
value = 185
persistent = 0

[State 196, 10]
type = ChangeAnim
triggerall = Anim = 184
trigger1 = Time = 321
value = 185
persistent = 0

[State 196, Tux2]
type = PlaySnd
triggerall = Anim = 185
trigger1 = AnimElem = 1
value = 199,0
volume = 255
channel = 0

[State 196, 4]
type = ChangeState
trigger1 = Time = 300
value = 0
ctrl = 0

;----------------------------------------------------------------
; Stand Light Punch Far
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 200
poweradd = 20
sprpriority = 2

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = s8147;0
sparkxy =-10, -100;-10, -80
hitsound = s1,0
guardsound = s6, 0
animtype = Light
ground.type=High
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-6,-3),0
ground.cornerpush.veloff=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-9,-5);,0
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 1
getpower=0

 ;voix
[State 200, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 2, 2

  ;vent
[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Médium Punch Far
[Statedef 205]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 205
poweradd = 30
sprpriority = 2

[State 205, 1]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 28
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno =s8148 ;0
sparkxy = -20, -96
hitsound = s1,1
guardsound = s6, 0
animtype = Medium
ground.type=High
ground.slidetime=13
ground.hittime=13
ground.velocity=-6
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 2
getpower=0

 ;voix
[State 205, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 1
value = 2, 4

 ;vent
[State 205, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 205, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Standing strong Punch
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 210
sprpriority = -1


[State 210, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 1
value = 2, 5

[State 210, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2


[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Hard
damage    = 36
guardflag = MA
pausetime = 12,12
sparkno = s8149 ;1
sparkxy = -10,-80
hitsound   = s1,2
guardsound = s6,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 3
getpower=0


[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Punch Close
[Statedef 215]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 215
poweradd = 20
sprpriority = 2

[State 215, 1]
type = HitDef
trigger1 = time= 0
attr = S, NA
damage = 25, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 12
sparkno = s8147;0
sparkxy = -10, -85
hitsound = s1,0
guardsound = s6, 0
ground.type=High
ground.slidetime=8
ground.hittime=8
ground.velocity=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-6,-3),0
ground.cornerpush.veloff=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-9,-5);,0
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 7
envshake.ampl = 1
getpower=0

;voix
[State 215, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 2, 2

;vent
[State 215, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 215, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;----------------------------------------------------------------
; Stand Light Kick
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 220
poweradd = 20
sprpriority = 2

[State 220, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 23, 0
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
sparkno = s8147 ;0
sparkxy = -10, -76
hitsound = s1,7
guardsound = s6, 0
animtype = Light
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-6,-3),0
ground.cornerpush.veloff=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-9,-5);,0
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 1
getpower=0

;voix
[State 220, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 2, 2

 ;vent
[State 220, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 3

[State 220, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Médium Kick
[Statedef 225]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 225
poweradd = 30
sprpriority = 2

 ;voix
[State 225, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 2
value = 2, 4

;vent
[State 225, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 3

[State 225, 2]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage    = 31
guardflag = MA
pausetime = 12,12
sparkno = s8148;0 ;1
sparkxy = -10,-70
hitsound   = s1,8
guardsound = s6,0
animtype = Medium
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-3
air.type=Low
air.velocity=-3,-2
envshake.time=9
envshake.ampl=2

[State 225, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Standing strong Kick
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 230


[State 230, 1]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 38
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 12
sparkno = s8150;0
sparkxy = -10, -100
hitsound = s1,9
guardsound = s6, 0
animtype = Hard
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 3
getpower=0



   ;voix
[State 230, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 1
value = 2, 5

   ;vent
[State 230, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 4

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;----------------------------------------------------------------
; Stand Medium Kick Close
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 240
poweradd = 20
sprpriority = 2

[State 235, 1]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
attr = S, NA
damage = 15, 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 8
sparkno = s8148;0
sparkxy = -10, -76
hitsound = s1,8
guardsound = s6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

    ;voix
[State 235, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 1
value = 2, 4

  ;vent
[State 235, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 5

[State 235, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
;Crouching Light Punch
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 20
ctrl = 0
anim = 400
sprpriority = 2

  ;vent
[State 400, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 400, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 21
priority  = 3
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = s8147;0
sparkxy = -10,-50
hitsound   = s1,0
guardsound = s6,0
animtype = Light
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-6,-3),0
ground.cornerpush.veloff=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-9,-5);,0
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
envshake.time = 9
envshake.ampl = 1
getpower=0

[State 400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;----------------------------------------------------------------
;Crouching Medium Punch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 30
ctrl = 0
anim = 410
sprpriority = 2

  ;vent
[State 410, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 29
hitflag = MAF
guardflag = M
pausetime = 12,12
sparkno = s8148;0
sparkxy = -10,-45
hitsound   = s1,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-4
animtype = Medium
ground.type=Low
ground.slidetime=13
ground.hittime=13
ground.velocity=-6
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
envshake.time = 9
envshake.ampl = 2
getpower=0


[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------
;Crouching Strong Punch
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 60
ctrl = 0
anim = 420
sprpriority = 2

  ;voix
[State 420, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 1
value = 2, 5

  ;vent
[State 420, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 420, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 37
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = s8149;0
sparkxy = -10,-100
hitsound   = s1,2
guardsound = s6,0
animtype = up
ground.type=Low
ground.slidetime=14
ground.hittime=14
ground.velocity = 0,-11
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
envshake.time = 9
envshake.ampl = 3
getpower=0
fall = 1

[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------
;Crouching Light Kick
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 15
ctrl = 0
anim = 430
sprpriority = 2

 ;voix
[State 430, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 2, 2

   ;vent
[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 3

[State 430, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 25
priority  = 3
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = s8147;0
sparkxy = 0,-10
hitsound   = s1,7
guardsound = s6,0
animtype = Light
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-6,-3),0
ground.cornerpush.veloff=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-9,-5);,0
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
down.velocity=-2,-2
yaccel=.5
envshake.time = 9
envshake.ampl = 1
getpower=0


[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------
;Crouching Médium Kick
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 440
sprpriority = 2

  ;voix
[State 440, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 1
value = 2, 4

  ;vent
[State 440, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 4

[State 440, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 33
hitflag = MAF
guardflag = M
pausetime = 12,12
sparkno = s8148;0
sparkxy = -10,-20
hitsound   = s1,8
guardsound = s6,0
animtype = Medium
ground.type=Low
ground.slidetime=13
ground.hittime=13
ground.velocity=-6
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
down.velocity=-3,-3
yaccel=.5
envshake.time = 9
envshake.ampl = 2
getpower=0

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------
;Crouching Strong Kick
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 60
ctrl = 0
anim = 450
sprpriority = 2

  ;voix
[State 450, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 1
value = 2, 5

 ;vent
[State 450, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 5

[State 450, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 41
animtype  = hard
hitflag = MAF
guardflag = M
pausetime = 12,12
sparkno = s8150
sparkxy = -10,-83
hitsound   = s1,9
guardsound = s6,0
ground.type= trip
ground.slidetime=16
ground.hittime=16
ground.velocity=-1.33,-6.85
air.type=Low
air.hittime=12
air.velocity=-1.33,-6.85
air.cornerpush.veloff=0
down.velocity=-4,-4
getpower=0
yaccel=.5
envshake.time = 9
envshake.ampl = 3
getpower=0
fall =1

[State 450, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------
;Jump Light Punch
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 20
ctrl = 0
anim = 600
sprpriority = 2

;voix
[State 600, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 2, 2

;vent
[State 600, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 600, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage    = 23
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = s8147;0
sparkxy = -10,-100
hitsound   = s1,0
guardsound = s6,0
animtype = Light
ground.type=High
ground.slidetime=9
ground.hittime=12
ground.velocity=-3
air.type=Low
air.velocity = -1,((vel y)-.2)
getpower=0
envshake.time=9
envshake.ampl=1


;----------------------------------------------------------------
;Jump Medium Punch
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 30
ctrl = 0
anim = 610
sprpriority = 2

;voix
[State 610, 2]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 2
value = 2, 4

;vent
[State 610, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 610, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 31
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s8148;0
sparkxy = -10,-55
hitsound   = s1,1
guardsound = s6,0
animtype = Medium
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-5
air.type=Low
air.velocity = -2,((vel y)-.2)
getpower=80
envshake.time=9
envshake.ampl=2
getpower=0

;----------------------------------------------------------------
;Jump Hard Punch
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 620
sprpriority = 2

;voix
[State 620, 2]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 2
value = 2, 5

;vent
[State 620, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 620, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 39
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s8150;0
sparkxy = -10,-55
hitsound   = s1,2
guardsound = s6,0
animtype = Hard
ground.type=High
ground.slidetime=12
ground.hittime=16
ground.velocity=-7
air.type=high
air.velocity = -8,8
getpower=0
envshake.time=12
envshake.ampl=3
;fall=1
air.fall=1
fall.recover=0

;----------------------------------------------------------------
;Jump Light Kick
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 20
ctrl = 0
anim = 630
sprpriority = 2

;voix
[State 630, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 2, 2

;vent
[State 630, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 3

[State 630, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 25
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s8147;0
sparkxy = -5,-70
hitsound   = s1,7
guardsound = s6,0
animtype = Light
ground.type=High
ground.slidetime=9
ground.hittime=12
ground.velocity=-3
air.type=Low
air.velocity=-1.5,((vel y)-.2)
getpower=0
envshake.time=9
envshake.ampl=1


;----------------------------------------------------------------
;Jump Medium Kick
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 30
ctrl = 0
anim = 640
sprpriority = 2

;vox
[State 640, 2]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 2
value = 2, 4

;vent
[State 640, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 4

[State 640, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage    = 33
guardflag = HA
priority = 4
pausetime = 10,10
sparkno = s8148;0
sparkxy = -10,-65
hitsound   = s1,8
guardsound = s6,0
animtype = Medium
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-5
air.type=Low
air.velocity=-2,((vel y)-.2)
getpower=0
envshake.time=9
envshake.ampl=2

;----------------------------------------------------------------
;Jump Hard Kick
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 650
sprpriority = 2

;voix
[State 650, 2]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 2
value = 2, 5

;vent
[State 650, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 5

[State 650, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage    = 41
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s8150;0
sparkxy = -10,-65
hitsound   = s1,9
guardsound = s6,0
animtype = Hard
ground.type=High
ground.slidetime=12
ground.hittime=11
ground.velocity=-3
air.type=Low
air.velocity = -8,8
getpower=0
envshake.time=10
envshake.ampl=3
fall=1
air.fall=1
fall.recover=0
;===========================================================================
;iki Throw - Attempt
;===========================================================================
;sac De Frappe humain
[statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800

[state 800, 5]
type = envshake
trigger1 = animelem = 5
trigger2 = animelem = 7
time = 10
ampl = 4

[state 800, 5]
type = envshake
trigger1 = animelem = 9
time = 40
ampl = 8
;===============================
;SND
;===============================
;tenir
[state 800, p2 tenir]
type = playsnd
trigger1 = animelem = 2
value = s1,6

;===============================
 ;HIT ATTAQUE
;===============================
[state 800, 1]
type = hitdef
trigger1 = time = 0
attr = s, NT
getpower = 50
givepower = 30
damage = 40
hitflag = M
guardflag = -1
sparkno = -1
priority = 3, miss
pausetime = 25,25
p2facing = 1
p2stateno = 810
hitsound = 1100,1
fall.damage = 20

[state 800, 2]
type = changestate
triggerall = MoveHit
trigger1 = animtime = 0
value = 801
ctrl = 0

[state 800, 3]
type = changestate
triggerall = !MoveHit
trigger1 = animtime = 0
value = 0
ctrl = 1

;===============================
;sac De Frappe humain suit
[statedef 801]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 801

 ;===============================
;paramétre spétial
;===============================
[State 800, TargetLifeAdd]
type = TargetLifeAdd
trigger1  = MoveContact =1
trigger2 = animelem = 2
trigger3 = animelem = 4
trigger4 = animelem = 6
value = -10
ID = -1
;kill = 1
;absolute = 0
;ignorehitpause =
;persistent =

;===============================
;SND
;===============================
;vent
[state 800, 1]
type = playsnd
trigger1 = time = 0
value = 0, 1

;voix
[state 800, p1 voix frapland]
type = playsnd
trigger1 = animelem = 2
trigger2 = animelem = 4
value = s2,0

;voix (shiné)
[state 800, 1]
type = playsnd
trigger1 = animelem = 6
value = S2,6

 ;frape lande
[state 800, 1]
type = playsnd
trigger1  = MoveContact =1
trigger2 = animelem = 2
trigger3 = animelem = 4
value =s1,2

 ;frap fin
[state 800, 2]
type = playsnd
trigger1 = animelem = 6
value = 1500,0

;===============================
;EXPLOD
;===============================

[State 800, Explod]
type = Explod
trigger1  = MoveContact =1
trigger2 = animelem = 2
trigger3 = animelem = 4
anim = 8148
;ID =
pos = 0,-70
postype = p2  ;p2,front,back,left,right
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

[State 800, Explod]
type = Explod
trigger1  = MoveContact =1
trigger2 = animelem = 6
anim = 8149
;ID =
pos = 0,-100
postype = p2  ;p2,front,back,left,right
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

[state 801, 2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;==============================================
;iki Throw p2 lande
;==============================================
;Target p2
[Statedef 810]
type    = A
movetype= H 
physics = N
velset = 0,0
ctrl = 0

[state 810, 0]
type = changeanim2
trigger1 = time = 0
value = 810

[state 810, 2]
type = hitby
trigger1 = 1
value = sca
time = 1


[state 810, 3]
type = sprpriority
trigger1 = animelem = 5
trigger1 = animelem = 7
value = 2

[state 810, 8]
type = changestate
trigger1 = animtime = 0
value = 820
ctrl = 0
;==============================================
;p2 air launch
[statedef 820]
type = A
movetype = H
physics = N

[state 820 , 1]
type = velset
trigger1 = time = 0
x = 0
y = -5
z = 0

[state 820 , 2]
type = changeanim2
trigger1 = time >= 0
value = 820

[state  820 , 3]
type = changestate
trigger1 = hitshakeover = 1
value =  821
;==============================================
;p2 aie
[statedef  821]
type = A
movetype = H
physics = N
velset = -1.7,-11

[state  821 , 1]
type = veladd
trigger1 = time > 0
y = .4

[state  821 , 2]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100

;===========================================================================
;Neck-Breaker by Tux
;===========================================================================
[statedef 850]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 850

[state 850, Hit]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NT
getpower = 40
givepower = 20
damage = 35
hitflag = M
guardflag = -1
sparkno = -1
animtype = Light
priority = 3, miss
mindist = 45 ,-6
maxdist = 45,-6
pausetime = 0,40
ground.type = High
p2facing = 1
hitsound = S1,6
fall = 1
fall.damage = 0

[State 850, FX]
type = Explod
triggerall = MoveHit
trigger1 = AnimElem = 5
anim = F10
facing = -1
postype = p1
pos = 65, -95
sprpriority = 4

[State 850, Snd]
type = PlaySnd
triggerall = MoveHit
trigger1 = AnimElem = 5
value = 1,10

[State 850, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;===========================================================================
;auto garde (désactivé)
;===========================================================================
;===========================================================================
;super Guard 1
[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0,0
anim = 1100
ctrl = 0
sprpriority = 2

[State 1100,nohit ]
type = varset
trigger1 = time = 0
value = 1
v = 23

[State 1100, rev]
type = ReversalDef
trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3
reversal.attr = SAC,NA,SA,HA,S,SP
guard.sparkno = -1
pausetime = 0,0
p1stateno = 1101

[State 1100, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==============================================

[Statedef 1101]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1101
poweradd = 0
ctrl = 0

[State 1101,env ]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 3

[State 1101,nohit ]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA
time = 1

[State 1101,nohit ]
type = poweradd
trigger1 = time = 0
value = 250

[State 1101,fire ]
type = Explod
triggerall = NumExplod(1102) = 0
triggerall = stateno = 1101
trigger1 = time = 20
anim = 1102
id = 1102
pos = 0,0
postype = p1
sprpriority = -2
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 1101, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S,SA
animtype  = Hard
hitflag = MA
guardflag = MA 
animtype = Hard
damage = 80,0
sparkno = 1
guard.sparkno = -1
sparkxy = 0,-100
hitsound = s1,5
guardsound = s6,0
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime = 24
ground.velocity = -7,-5
air.velocity = -7,-5
fall = 1
fall.recover = 0
fall.damage = 75

[State 1101, 6]
type = ChangeState
trigger1 = Time = 100
value = 1102
ctrl = 0

;==============================================

[Statedef 1102]
type    = S
movetype= A
physics = S
velset = -12,0
anim = 1101
poweradd = 0
ctrl = 0

[State 1102,nohit ]
type = varset
trigger1 = time = 0
value = 0
v = 23

[State 1102, 6]
type = ChangeState
trigger1 = time = 2
value = 0
ctrl = 1


;===========================================================================
;Provoking
;===========================================================================
;Provoking
[Statedef 1990]
type = S
movetype = I
physics = S
anim = 1990
velset = 0
ctrl = 0

[State 1990, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,10
channel = 0

[State 1990, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "holdfwd"
trigger8 = command = "holdback"
trigger9 = command = "holdup"
trigger10 = command = "holddown"
channel = 0

[State 1990, 1]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = command = "a"
trigger3 = command = "b"
trigger4 = command = "c"
trigger5 = command = "x"
trigger6 = command = "y"
trigger7 = command = "z"
trigger8 = command = "holdfwd"
trigger9 = command = "holdback"
trigger10 = command = "holdup"
trigger11 = command = "holddown"
value = 0
ctrl = 1

;===========================================================================
;  cosmos charge
;===========================================================================
; cosmos charge
[Statedef 1960, charge cosmos]
type = S
movetype = I
physics = S
anim = 1900
ctrl = 0

[State 1960, Var]
type = VarSet
triggerall = var(59) = 1
trigger1 = Time = 0
v = 10
value = 1

[state 1960, 1]
type = changestate
trigger1 = AnimTime = 0
value = 1961

;--------------------------------------

; Power Charge
[statedef 1961]
type = s
physics = s
ctrl = 0
velset = 0,0
anim = 1901

[State 700,p ]
type = PowerAdd
trigger1 = (time > 10) && (timemod = 3,0)
value = 16

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = time=6
value = S2000,1
loop = 0

;voice
[State 700, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,8
channel = 0

[state 1961, 3]
type = changestate
triggerall = time >= 1
triggerall = Var(59) = 0
trigger1 = command != "cosmo"
trigger2 = command != "holdcosmo"
trigger3 = power >= 3000
value = 1962

[state 1961, End]
type = ChangeState
triggerall = time >= 1
triggerall = Var(59) = 1
trigger1 = random <= 10
trigger2 = power >= 3000
value = 1962

;===============================
;EXPLOD
;===============================
[State 1961, Cosmos]
type = Explod
;triggerall = NumExplod(7002) = 0
trigger1 = AnimElem = 3
anim = 7002
id = 7002
pos = 0,3
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 700, snd]
type = PlaySnd
trigger1 = (Time%32) = 0
value = 40,4

[state 40, 2]
type = Explod
trigger1 = (Time%32) = 0
postype = p1
pos = 0,0
bindtime = 1
removetime = 28
sprpriority = 9
anim = 7752
id = 7002
removeongethit = 1

[state 40, 2]
type = Explod
trigger1 = (Time%29) = 0
postype = p1
pos = 0,0
bindtime = 1
removetime = 28
sprpriority = -4
anim = 7751
id = 7002
removeongethit = 1

[state 40, 2]
type = Explod
trigger1 = (Time%32) = 0
postype = p1
pos = 0,0
bindtime = 1
removetime = 28
sprpriority = 9
anim = 7750
id = 7002
removeongethit = 1

;===============================
;Charge (Fin)
;===============================

; Power Charge - End
[statedef 1962]
type = s
physics = s
anim = 1902

[State 1962, Var]
type = VarSet
trigger1 = Time = 0
v = 10
value = 0

[State 191, Flash]
type = EnvColor
triggerall = power >= 3000
trigger1 = time = 0
value = 93,0,127
time = 3

[State 1962, Tux]
type = PlaySnd
triggerall = power >= 3000
trigger1 = time = 0
value = 190,2

[State 1962, 1]
type = EnvShake
triggerall = power >= 3000
trigger1 = time >= 0
time = 50
freq = 60

[State 1902,re ]
type = RemoveExplod
trigger1 = time = 0
ID = 7002

[State 1902,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

;---------------------------------------------------
;===================================================
;AI Variabili
;===================================================
;---------------------------------------------------

[State -2, Get P2 Distance]
type = VarSet
trigger1 = P2Dist X != 0
v = 11
value = Floor(P2Dist X)

;---------------------------------------------------
;===================================================
;Combo
;===================================================
;---------------------------------------------------

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 205
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 205) && (prevstateno = 200) && (movecontact) 
value = 210

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 200) && (movecontact) 
value = 205

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 200) && (movecontact) 
value = 205

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 205) 
trigger1 = (movecontact)
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 205) && (movecontact) 
value = 200

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210) 
trigger1 = (movecontact)
value = 205
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 205) && (prevstateno = 210) && (movecontact) 
value = 205

;3 calci 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 220) 
trigger1 = (movecontact)
value = 225
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 225) && (prevstateno = 220) && (movecontact) 
value = 230

;3 calci 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 225) 
trigger1 = (movecontact)
value = 230
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 225) && (movecontact) 
value = 230

;---------------------------------------------------
;===================================================
;Combo Crouching
;===================================================
;---------------------------------------------------

;pugni Abbasati
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 400) 
trigger1 = (movecontact)
value = 410
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 410) && (prevstateno = 400) && (movecontact) 
value = 420

;pugni Abbasati
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 410) 
trigger1 = (movecontact)
value = 400
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 400) && (prevstateno = 410) && (movecontact) 
value = 420

;calci Abbasati
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 440
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 440) && (prevstateno = 430) && (movecontact) 
value = 450

;calci Abbasati
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 440

;calci Abbasati
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 450

;---------------------------------------------------
;===================================================
;Combo Air
;===================================================
;---------------------------------------------------

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 610

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610) 
trigger1 = (movecontact)
value = 620

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 620) 
trigger1 = (movecontact)
value = 610

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630) 
trigger1 = (movecontact)
value = 640

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640) 
trigger1 = (movecontact)
value = 650

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 650) 
trigger1 = (movecontact)
value = 610

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640) 
trigger1 = (movecontact)
value = 600

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 610
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 610) && (prevstateno = 600) && (movecontact) 
value = 620

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610) 
trigger1 = (movecontact)
value = 600
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 600) && (prevstateno = 610) && (movecontact) 
value = 620

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 620) 
trigger1 = (movecontact)
value = 600
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 600) && (prevstateno = 620) && (movecontact) 
value = 610

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610) 
trigger1 = (movecontact)
value = 610
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 610) && (prevstateno = 610) && (movecontact) 
value = 620

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 600
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 600) && (prevstateno = 600) && (movecontact) 
value = 620

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 640

;---------------------------------------------------
;===================================================
;Specials
;===================================================
;---------------------------------------------------

;Charge
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 73])
trigger1 = (P2bodydist X >= 150) && (power < 3000) && (prevstateno != 5120)
value = 1960

[State -2, agarrão]
type = ChangeState
value = 800
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype = S)
trigger1 = (p2bodydist X <= 10) && (P2MoveType !=A) && (random = [74, 110])

[State -2, neck-breaker]
type = ChangeState
value = 850
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype = S)
trigger1 = (p2bodydist X <= 10) && (P2MoveType !=A) && (random = [111, 147])

[State -2, joelhada]
type = ChangeState
value = 1034
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 30)  && (random = [148, 184])  && (prevstateno != 5120)

[State -2, Light Fireball]
type = changestate
value = 1000
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = S) && (ctrl) && (random = [185, 221])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X >= 170)  && (prevstateno != 5120)

[State -2, medium Fireball]
type = changestate
value = 1010
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = S) && (ctrl) && (random = [222, 258])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X >= 160)  && (prevstateno != 5120)

[State -2, Strong  Fireball]
type = changestate
value = 1020
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = S) && (ctrl) && (random = [259, 295])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X >= 180)  && (prevstateno != 5120)

[State -2, Light Super_kick]
type = ChangeState
value = 1050
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = A) && (ctrl) && (random = [296, 332])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (p2bodydist X > 60) && (P2bodydist X <= 160) && (prevstateno != 5120) && (stateno != 1051)

[State -2, Médium Super_kick]
type = ChangeState
value = 1051
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = A) && (ctrl) && (random = [333, 369])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (p2bodydist X > 60) && (P2bodydist X <= 160) && (prevstateno != 5120)

[State -2, Strong Super_kick]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [370, 406])
trigger1 = (p2bodydist X > 60) && (P2bodydist X <= 160) && (prevstateno != 5120)
value = 1052

[State -2, MULTI-Punch]
type = ChangeState
value = 1060
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [407, 443])
trigger1 = (p2bodydist X <= 50) && (prevstateno != 5120)

[State -2, weak wings]
type = changestate
value = 1071
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = S) && (ctrl) && (random = [444, 480])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X >= 140) && (prevstateno != 5120)

[State -2, strong wings]
type = changestate
value = 1072
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = S) && (ctrl) && (random = [481, 517])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X >= 140) && (prevstateno != 5120)

[State -2, weak air wings]
type = changestate
value = 1750
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = A) && (ctrl) && (random = [518, 554])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X >= 140) && (prevstateno != 5120)

[State -2, medium air wings]
type = changestate
value = 1751
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = A) && (ctrl) && (random = [555, 591])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X >= 140) && (prevstateno != 5120)

[State -2, strong air wings]
type = changestate
value = 1752
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = A) && (ctrl) && (random = [592, 628])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X >= 140) && (prevstateno != 5120)

[State -2, soco atravessante ]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [629, 665])
trigger1 = (P2bodydist X <= 120) && (P2bodydist X >= 30) && (prevstateno != 5120)
value = 10000

[State -2, força das sombras]
type = changestate
value = 1080
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = S) && (ctrl) && (random = [666, 702])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X <= 180) && (P2bodydist X >= 40) && (prevstateno != 5120)

[State -2, sombras aereas]
type = ChangeState
value = 1200
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = S) && (ctrl) && (random = [703, 739])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X <= 210) && (P2bodydist X >= 100) && (prevstateno != 5120)

[State -2, rage ]
type = changestate
value = 1400
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = S) && (ctrl) && (random = [740, 776])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X <= 210) && (P2bodydist X >= 80)  && (prevstateno != 5120)

;---------------------------------------------------
;===================================================
;Hypers
;===================================================
;---------------------------------------------------

[State -2,Black Fenix fire]
type = changestate
value = 11000
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype = S)
trigger1 = (p2bodydist X > 90) && (p2bodydist X < 210) && (power >= 1000) && (random = [777,813])

[State -2,  Black fenix Summon]
type = changestate
value = 3200
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X > 80)  && (power >= 2000) && (random = [814,850])

[State -2,  Ankoku Houou Guenma-Ken]
type = changestate
value = 3030
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X > 50)  && (power >= 3000) && (random = [851,887])

;===============================
;Hit Voices
;===============================
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5000
trigger2 = anim = 5001
trigger3 = anim = 5010
trigger4 = anim = 5011
trigger
value = 5000,0
channel = 0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
trigger2 = anim = 5021
value = 5000,0
channel = 0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5020
trigger1 = anim = 5000
trigger2 = anim = 5001
trigger3 = anim = 5010
trigger4 = anim = 5011
value = 5000,0
channel = 0

[State -2]
type = PlaySnd
triggerall = random < 500
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 5000,1
channel = 0

[State -2]
type = PlaySnd
trigger1 = random < 500
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 5000,1
channel = 0

[State -2]
type = PlaySnd
triggerall = random < 500
triggerall = time = 1
triggerall = stateno = 5020
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 5000,1
channel = 0

[State -2]
type = PlaySnd
trigger1 = time = 1
trigger1 = stateno = 5030
trigger1 = Alive = 1
value = 5000,2
channel = 0

;===============================
;COSMOS
;===============================
 ;COSMOS CHARGE
[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(7002) = 1
trigger1 = stateno != 1960
trigger1 = anim!= 1901
ID = 7002

[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(7002) = 1
trigger1 = stateno = [5000,5999]
ID = 7002
;========================================
   ;COSMOS CHARGE éffet
[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(8123) = 1
trigger1 = stateno != 1960
trigger1 = anim!= 1901
ID = 8123

[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(8123) = 1
trigger1 = stateno = [5000,5999]
ID =  8123

 ;========================================
 
[State -2,remove]
type = RemoveExplod
;triggerall =anim = 3037;NumExplod( 8010) = 1
triggerall = numexplod(8010)
trigger1 =time= 500
ID = 8010

;========================================
 ;COSMOS genmaken
[state -2,remove]
type = removeexplod
;triggerall = numexplod(7003) = 1
trigger1 = anim=3037
id = 7003

;[State -2,remove]
;type = RemoveExplod
;triggerall = NumExplod(7003) = 1
;trigger1 = stateno = [5000,5999]
;ID = 7004

 ;COSMOS genmaken
[state -2,remove]
type = removeexplod
;triggerall = numexplod(7003) = 1
trigger1 =  stateno=198
id = 2002
;========================================


;========================================
;Serres du phénix
;========================================
[state -2,remove]
type = removeexplod
triggerall = numexplod(8124) = 1
;trigger1 = Pos Y >= 29
trigger1 =time = 1
id = 8124




;===============================
;Anti-Bug to avoid going under the floor
;===============================
[State -2, TuxAntiBug]
type = PosSet
trigger1 = Pos Y > 50
y = 0

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

[State -3, RUN_FWD]
type = Explod
triggerall = stateno = 100
trigger1 = AnimElem = 2
pos = 0,0
anim = 6002
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State -3 , Remove]
type = RemoveExplod
triggerall = NumExplod(4139) != 0
trigger1 = Life <= 0
Id = 4139

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 106 ;Run-back land
value = 40, 0

[State -3, 3]
type = PlaySnd
trigger1 = stateno = 40
trigger1 = Time = 0
value = 40,3

[State -3, AirJump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = time = 1
value = 40, 4

;caer
[State -3 , 2]
type = PlaySnd
trigger1 = stateno = 52
trigger1 = Time = 1
value = 52,0


;cosmos stand
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(50) = 1
trigger1 = stateno != 0
ID = 50

;cosmos stand
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(50) = 1
trigger1 = anim = 5
ID = 50

;cosmos stand
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(51) = 1
trigger1 = stateno != 0
ID = 51

;cosmos stand
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(51) = 1
trigger1 = anim = 5
ID = 51

;cosmos stand
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(50) = 1
trigger1 = life < 250
ID = 50

;cosmos stand
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(51) = 1
trigger1 = life > 250
ID = 51

;-

;cosmos stand
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(52) = 1
trigger1 = stateno != 0
ID = 52

;cosmos stand
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(52) = 1
trigger1 = anim = 5
ID = 52

;cosmos stand
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(53) = 1
trigger1 = stateno != 0
ID = 53

;cosmos stand
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(53) = 1
trigger1 = anim = 5
ID = 53

;cosmos stand
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(52) = 1
trigger1 = life < 250
ID = 52

;cosmos stand
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(53) = 1
trigger1 = life > 250
ID = 53

;-----------------------------------------------------------
