; Stand
[Statedef 0]
type = S
physics = S
sprpriority = 0

[State 0, 1]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

;Standing Normal
[State 0, 1.1]
type = ChangeAnim
triggerall = life > 500
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 0

;Standing Rage
[State 0, 1.1]
type = ChangeAnim
triggerall = life < 500
trigger1 = Anim != 1 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 1

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

;Cosmos Standing Normal
[State 0, 4.1]
type = Explod
triggerall = life > 500
triggerall = power >= 3000
triggerall = NumExplod(2) = 0
triggerall = stateno = 0
trigger1 = Time = 0
anim = 2
id = 2
pos = 0,0
postype = p1
sprpriority = -2
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

;Cosmos Standing Rage
[State 0, 4.2]
type = Explod
triggerall = life < 500
triggerall = power >= 3000
triggerall = NumExplod(3) = 0
triggerall = stateno = 0
trigger1 = Time = 0
anim = 3
id = 3
pos = 0,0
postype = p1
sprpriority = -2
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

;cosmosound
[State 0, 5]
type = PlaySnd
triggerall = power >= 3000
trigger1 = Time = 0
value = 2115, 1


;[-----------------------Force Feedback-----------------]
[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000 || anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001 || anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012 || anim = 5002 || anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140


;===========================================================================
; Common1.cns Overide states...
;===========================================================================
;super guard
;prova superguard
[Statedef 3675]
type    = S
physics = S

[State 3675, 1]
type = ChangeAnim
trigger1 = Anim != 3675
value = 3675

;-------------------------------------------
;reversal attack
[Statedef 1400]
type = S
physics = S
anim = 3675
juggle = 5
velset = 0
ctrl = 0

[State 1400 , 4]
type = ReversalDef
trigger1 = time = 0
reversal.attr = SCA, NA, SA, HA
p1stateno = 1401
getpower = 450
hitsound = S4,4
pausetime = 40,50
sparkxy = -100,20

[State 1400 , 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
;reversal attack
[Statedef 1401]
type = S
movetype = A
physics = S
anim = 3675
pos = 0,5
poweradd = 400
juggle = 5
velset = 0
ctrl = 0

[State 1401, light]
type = Explod
trigger1 = MoveContact = 1
ID = 1401
anim = 3676
pos = 0,5
postype = p1
sprpriority = 4
supermove = 1
removetime = 70
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 1401 , 1]
type = PlaySnd
trigger1 = time = 0
value = 1997,1

[State 1401, polvere]
type = MakeDust
trigger1 = time = 0
pos = -15,3
pos2 = -22,-3
spacing = 2

[State 1401 , 2]
type = VelAdd
trigger1 = time = 0
x = -13

[State 1401 , 2]
type = VelMul
trigger1 = AnimElem = 1
x = 2.5

[State 1401 , 6]
type = ChangeState
triggerall = MoveContact = 1
trigger1 = Life <= 300
;trigger1 = random > 250
value = 2160
ctrl = 0

[State 1401 , 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------end reversal
; Grabbed and tossed by Close Throw (P2 State)
[Statedef 910]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0,0,0

[State 910, 1]
type = HitBy
Trigger1 = 1
value = SCA
time = 1

[State 910, 2]
type = HitFallSet
Trigger1 = Time = 0
value = 1

[State 910, 4]
type = ChangeAnim2
Trigger1 = Time = 0
value = 910

[State 910, 5]
type = PosAdd
Trigger1 = Time = 15
x = 30

[State 910, 6]
type = Turn
Trigger1 = Time = 20

[State 910, 7]
type = PosAdd
Trigger1 = Time = 20
x = -52
y = -5 

[State 910, 8]
type = PosAdd
Trigger1 = Time = 25
x = -39
y = 5

[State 910, 9]
type = LifeAdd
Trigger1 = Time = 28
value = -150

[State 910, 10]
type = PowerAdd
trigger1 = Time = 28
value = 70

[State 910, 11]
type = ChangeState
Trigger1 = Time = 30
value = 911

;---------------------------------------------------------------------------
; Flying Through the air!!! (P2 State)
[Statedef 911]
type    = A
movetype= H
physics = N

[State 911, Velocity Set]
type = VelSet
Trigger1 = Time = 0
x = -4
y = -9.5

[State 911, Velocity addition]
type = VelAdd
Trigger1 = 1
y = .35 

[State 911, Self State 1] 
type = SelfState
Trigger1 = ((Vel Y > 0) && (Pos Y > 25))
value = 5100

[State 911, Self State 2] 
type = SelfState
Triggerall = ((Vel Y > -1) && (Vel Y < 40) && (alive = 1) && (CanRecover = 1))
trigger1 = Command = "recovery"
value = 5210

[State 911, Change State]
type = ChangeState
triggerall = ((Vel Y > 0) && (Pos Y >= -20) && (alive = 1)  && (CanRecover = 1))
trigger1 = Command = "recovery"
value = 5200

;---------------------------------------------------------------------------


; Swing Throw P2 hit,caught,swing 
[Statedef 3124]
type    = L
movetype= H ;Get hit
physics = N
velset = 0,0

[State 3124, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3124

;---------------------------------------------------------------------------
; Swing throw flying through the air
[Statedef 3125]
type    = L
movetype= H ;Get hit
physics = N
velset = -5,-8

[State 3125, 2] ;Acceleration
type = VelAdd
Trigger1 = 1
y = .45

[State 3125, 3] ;Self's falling anim
type = ChangeAnim
Trigger1 = Time = 0
value = 5050

[State 3125, 3] ;Self's falling anim
type = ChangeAnim
Trigger1 = Time = 0
Trigger1 = AnimExist(5052)
value = 5052

[State 3125, 2] ;Coming down anim (normal fall type)
type = ChangeAnim
triggerall = anim != 5052 ;Not if in hit up anim
trigger1 = vel y >= 1
trigger1 = animexist(5060)
value = 5060
persistent = 0

[State 3125, 2] ;Coming down anim (hit up type)
type = ChangeAnim
triggerall = anim = 5052 ;Not if in hit up anim
trigger1 = vel y >= -2
trigger1 = animexist(5062)
value = 5062
persistent = 0

[State 3125, 4.1] ;Shake
type = EnvShake
trigger1 = vel y > 0
trigger1 = pos y >= 0
time = 18
ampl = 10

[State 3125, 4.2]
type = LifeAdd
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = -40

[State 3125, 4.3] ;Hit ground
trigger1 = vel y > 0
trigger1 = pos y >= 0
type = SelfState
value = 5100

;---------------------------------------------------------------------------
; Jump
[Statedef 50]
type    = A
physics = A

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, VelSet]
type = VelSet
trigger1 = ((var(10) = 1) && (command = "holdfwd") && (command != "holdback"))
x = 3

[State 50, VelSet]
type = VelSet
trigger1 = ((var(10) = 1) && (command != "holdfwd") && (command = "holdback"))
x = -3

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 3]
type = ChangeAnim
trigger1 = (Vel y > -2 && SelfAnimExist(anim + 3))
persistent = 0
value = Anim + 3

;---------------------------------------------------------------------------
; AirJump Start
[Statedef 45]
type    = A
physics = N
ctrl = 0
velset = 0,0

[State 45 , 0]
type = PlaySnd
trigger1 = Time = 0
value = 6,0

[State 45, 5]
type = AfterImage
trigger1 = time = 0
time = 20
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

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
y = -12.5;const(velocity.airjump.y);da testare

[State 45, 7]
type = ChangeState
trigger1 = Time = 2
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47

[State 52, VarSet]
type = VarSet
trigger1 = Time = 0
var(10) = 0

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 3]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ; GUARD (start)
[Statedef 120]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged

[State 120, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 120 + (statetype = C) + (statetype = A)*2

[State 120, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 120, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 120, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 120, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 130 + (statetype = C) + (statetype = A)*2

;---------------------------------------------------------------------------
; STAND GUARD (guarding)
[Statedef 130]
type    = S
physics = S

[State 130, cosmos]
type = Explod
trigger1 = StateNo = 130
anim = 123
id = 123
pos = 0,0
postype = p1
sprpriority = -4
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 130, 1]
type = ChangeAnim
trigger1 = Anim != 130
value = 130

;---------------------------------------------------------------------------
; CROUCH GUARD (guarding)
[Statedef 131]
type    = C
physics = C

[State 131, cosmos]
type = Explod
trigger1 = StateNo = 131
anim = 124
id = 124
pos = 0,0
postype = p1
sprpriority = -4
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 131, 1]
type = ChangeAnim
trigger1 = Anim != 131
value = 131

;---------------------------------------------------------------------------
; AIR GUARD (guarding)
[Statedef 132]
type    = A
physics = N

[State 132, cosmos]
type = Explod
trigger1 = StateNo = 132
anim = 125
id = 125
pos = 0,0
postype = p1
sprpriority = -4
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 132, 1]
type = ChangeAnim
trigger1 = Anim != 132
value = 132

[State 132, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 132, 3]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 132, 4]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, 5]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command != "holdback"
value = 52

[State 132, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 130

;---------------------------------------------------------------------------
; GUARD (end)
[Statedef 140]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged
ctrl = 1

[State 140, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 140 + (statetype = C) + (statetype = A)*2

[State 140, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 140, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 140, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

;[State 140, 5] ;Implemented within engine
;type = ChangeState
;trigger1 = AnimTime = 0
;value = (statetype = C)*11 + (statetype = A)*51

;---------------------------------------------------------------------------
; SGUARDHIT (shaking)
[Statedef 150]
type    = S
movetype= H
physics = N
velset = 0,0


;light guard
[State 150 , 6]
type = Explod
triggerall = NumExplod(8100) = 0
trigger1 = StateNo = [150,151]
anim = 8100
id = 8100
ignorehitpause = 1
sprpriority = 3
postype = p1
pos = -30,5
bindtime = -1
supermove = 1
ownpal = 1


[State 150, 1]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 151

[State 150, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 3

;---------------------------------------------------------------------------
; SGUARDHIT2 (knocked back)
[Statedef 151]
type    = S
movetype= H
physics = S
anim = 150

[State 151, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

;light guard
[State 151 , 6]
type = Explod
triggerall = NumExplod(8100) = 0
trigger1 = StateNo = [150,151]
anim = 8100
id = 8100
ignorehitpause = 1
sprpriority = 3
postype = p1
pos = -30,5
bindtime = -1
supermove = 1
ownpal = 1

[State 151, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 151, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = Time >= GetHitVar(hittime)
x = 0

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 151, 4]
type = ChangeState
trigger1 = Time >= GetHitVar(hittime)
value = 130
ctrl = 1

;---------------------------------------------------------------------------
; CGUARDHIT (shaking)
[Statedef 152]
type    = C
movetype= H
physics = N
velset = 0,0

;light guard
[State 152 , 6]
type = Explod
triggerall = NumExplod(8100) = 0
trigger1 = StateNo = [152,153]
anim = 8100
id = 8100
ignorehitpause = 1
sprpriority = 3
postype = p1
pos = -5,45
bindtime = -1
supermove = 1
ownpal = 1

[State 152, 1]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, 3]
type = ChangeState
trigger1 = HitShakeOver
value = 153

[State 152, 4]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; CGUARDHIT2 (knocked back)
[Statedef 153]
type    = C
movetype= H
physics = C
anim = 151

[State 153, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

;light guard
[State 153 , 6]
type = Explod
triggerall = NumExplod(8100) = 0
trigger1 = StateNo = [152,153]
anim = 8100
id = 8100
ignorehitpause = 1
sprpriority = 3
postype = p1
pos = -5,45
bindtime = -1
supermove = 1
ownpal = 1

[State 153, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 153, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = Time >= GetHitVar(hittime)
x = 0

[State 153, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 153, 4]
type = ChangeState
trigger1 = Time >= GetHitVar(hittime)
value = 131
ctrl = 1

;---------------------------------------------------------------------------
; AGUARDHIT (shaking)
[Statedef 154]
type    = A
movetype= H
physics = N
velset = 0,0

;light guard
[State 154 , 6]
type = Explod
triggerall = NumExplod(8100) = 0
trigger1 = StateNo = [154,155]
anim = 8100
id = 8100
ignorehitpause = 1
sprpriority = 3
postype = p1
pos = -10,37
bindtime = -1
supermove = 1
ownpal = 1

[State 154, 1]
type = ChangeAnim
trigger1 = 1
value = 152

[State 154, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 155 ;AGUARDHIT2

[State 154, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; AGUARDHIT2 (knocked away)
[Statedef 155]
type    = A
movetype= H
physics = N
anim = 152

;light guard
[State 155 , 6]
type = Explod
triggerall = NumExplod(8100) = 0
trigger1 = StateNo = [154,155]
anim = 8100
id = 8100
ignorehitpause = 1
sprpriority = 3
postype = p1
pos = -10,37
bindtime = -1
supermove = 1
ownpal = 1

[State 155, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 155, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 155, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 155, 4]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 155, 5]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, 7]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command != "holdback"
value = 52

[State 155, 8]
type = ChangeState
trigger1 = sysvar(0)
value = 130





;---------------------------------------------------------------------------
; Stand
[Statedef 0]
type = S
physics = S
sprpriority = 0

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 0



[State -3]
type = Explod
triggerall = power >= 3000
triggerall = NumExplod(2) = 0
triggerall = stateno = 0
trigger1 = time = 0
anim = 2
id = 2
pos =0
postype = p1
sprpriority = -2
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 0, sound]
type = PlaySnd
triggerall = power >= 3000
trigger1 = Time = 0
value = 5, 0



[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0



;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------





;---------------------------------------------------------------------------
; Basic Attacks, Win Poses, etc...
;---------------------------------------------------------------------------
; Standing Light Punch 
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0 
ctrl = 0
anim = 200
poweradd = 0
sprpriority = 2

[State 200,1]
type = Playsnd
trigger1 = Time = 2
value = 4, 0

[State 200, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 35, 5
getpower = 10
givepower = 5
animtype = Light 
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 7
sparkno = 0 
sparkxy = -10, -86
hitsound = S3, 0
guardsound = S7,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4 
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Punch 
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 210
sprpriority = -1

[State 210, 1]
type = PlaySnd
trigger1 = Time = 0
value = 4, 1

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 15,0

[State 210, 2]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
animtype  = Medium
damage    = 65,10
getpower = 60
givepower = 30
guardflag = MA
pausetime = 7,10
sparkno = S3630
sparkxy = -15,-65
hitsound   = S3,0
guardsound = S7,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.5,-4

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Punch
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0
anim = 220

[State 220, 2]
type = PlaySnd
trigger1 = Time = 0
value = 4, 2

[State 201, 3]
type = VelAdd
trigger1 = AnimElem = 3
x = 1

[State 201, 4]
type = VelAdd
trigger1 = AnimElem = 4
x = 18

[State 201, 0]
type = AfterImage
trigger1 = AnimElem = 3
time = 15
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 102,102,102 
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 220, 4]
type = HitDef
trigger1 = AnimElem = 5
priority = 5
attr = S, NA
damage   = 95,15
getpower = 80
givepower = 40
animtype = Hard
guardflag = MA
pausetime = 7,7
sparkno = S3630
sparkxy =  -15,-95
hitsound   = S3,2
guardsound = S7,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 23
ground.velocity = -7.5
air.type = Low
air.velocity = -3.1,-3.3
airguard.velocity = -3.5

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Standing light kick
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 2

[State 230, 1]
type = PlaySnd
trigger1 = Time = 0
value = 4, 0

[State 230, 2]
type = HitDef
trigger1 = animelem = 2
attr = S, NA
animtype  = Medium
damage    = 35,5
getpower = 15
givepower = 5
guardflag = MA
pausetime = 5,8
sparkno = 0
sparkxy = -10,-57
hitsound   = S3,0
guardsound = S7,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2.5,-3.5

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Standing medium kick
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 2

[State 240, 1]
type = PlaySnd
trigger1 = Time = 2
value = 4, 0

[State 240, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 65,10
getpower = 60
givepower = 30
guardflag = MA
pausetime = 8,10
sparkno = S3630
sparkxy = -10,-60
hitsound   = S3,2
guardsound = S7,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Standing Strong kick
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 250
sprpriority = 2

[State 250, 1]
type = PlaySnd
trigger1 = Time = 2
value = 4, 1

[State 250, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Heavy
damage   = 95,15
getpower = 80
givepower = 40
guardflag = MA
pausetime = 9,12
sparkno = S3630
sparkxy = -10,-90
hitsound   = S3,1
guardsound = S7,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2

[State 250, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Crouching light punch
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 0
ctrl = 0
anim = 400
sprpriority = 2

[State 400,1]
type = Playsnd
trigger1 = Time = 2
value = 4, 0

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 35,10
priority  = 3
animtype  = Medium
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = 0
sparkxy = -10,-42
hitsound   = S3,0
guardsound = S7,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1.5,-3

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
;Crouching medium punch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 0
ctrl = 0
anim = 410
sprpriority = 2

[State 410,1]
type = Playsnd
trigger1 = Time = 2
value = 4, 0

[State 410, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 65,10
animtype  = Medium
hitflag = MAF
guardflag = M
pausetime = 12,12
sparkno = S3630
sparkxy = -10,-55
hitsound   = S3,0
guardsound = S7,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-4

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
;Crouching Strong Punch
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 0
ctrl = 0
anim = 420
sprpriority = 2

[State 420, 1]
type = PlaySnd
trigger1 = Time = 1
value = 4, 0

[State 420, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 95,20
animtype  = Heavy
hitflag = MAF
guardflag = M
pausetime = 12,12
sparkno = S3630
sparkxy = -10,-55
hitsound   = S3,0
guardsound = S7,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-4

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
;Crouching light kick
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 0
ctrl = 0
anim = 430
sprpriority = 2

[State 201, 4]
type = VelAdd
trigger1 = AnimElem = 2
x = 7

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = 4, 0

[State 430, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 35
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = 0
sparkxy = -10,-8
hitsound   = S3,0
guardsound = S7,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2,-2
down.velocity = -5,0
down.hittime = 20

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
;Crouching Medium Kick
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 0
ctrl = 0
anim = 440
sprpriority = 2

[State 201, 4]
type = VelAdd
trigger1 = AnimElem = 2
x = 10

[State 440, 2]
type = PlaySnd
trigger1 = Time = 2
value = 4, 1

[State 440, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 65
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = S3630
sparkxy = -5,-10
hitsound   = S3,0
guardsound = S7,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5
air.velocity = -1.2,-2
guard.velocity = -5

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; Crouching Strong Kick
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 0
ctrl = 0
anim = 450
sprpriority = 2

[State 201, 4]
type = VelAdd
trigger1 = AnimElem = 2
x = 13

[State 450, 1]
type = PlaySnd
trigger1 = Time = 2
value = 4, 2

[State 450, 3]
type = HitDef
trigger1 = animelem = 3
attr = C, NA
damage    = 95
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = S3630
sparkxy = -5,-10
hitsound   = S3,2
guardsound = S7,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1

[State 450, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
;Jump Light Punch
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 0
ctrl = 0
anim = 600

[State 600, 2]
type = PlaySnd
trigger1 = Time = 4
value = 4, 1

[State 600, 3]
type = HitDef
trigger1 = Time = 1
attr = A, NA
animtype = ligth
damage    = 35
getpower  = 10
givepower = 10
guardflag = HA
priority = 3
pausetime = 10,7
sparkxy = -20,-38
sparkno = 5
hitsound   = S3,2
guardsound = S7,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 16
guard.velocity = -7
guard.slidetime = 12
ground.velocity = -10,0
air.velocity = 0,-6
air.type = Low
air.animtype = medium
airguard.velocity = -6,0
airguard.ctrltime = 8
air.hittime = 22

[State 600, 4]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 48 
ctrl = 1

[State 600, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 41


;---------------------------------------------------------------------------
;Jump Medium Punch
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 0
ctrl = 0
anim = 610

[state 610, explode]
type = explod
trigger1 = time = 3
id = 610
anim = 611
pos = 0, 0
postype = p1
bindtime = -1
removetime = 13
sprpriority = -1
supermovetime = 0

[State 610, removexplode]
type = RemoveExplod
trigger1 = time = 13
ID = 610


[State 610, 3]
type = HitDef
trigger1 = Time = 1
attr = A, NA
animtype = ligth
damage    = 65
getpower  = 10
givepower = 10
guardflag = HA
priority = 3
pausetime = 0
sparkxy = -20,-38
sparkno = S3630
hitsound   = S5,1
guardsound = S7,0
ground.type = High
ground.slidetime = 3
ground.hittime  = 16
guard.velocity = -7
guard.slidetime = 12
ground.velocity = -10,0
air.velocity = 0,-6
air.type = Low
air.animtype = medium
airguard.velocity = -6,0
airguard.ctrltime = 8
air.hittime = 22

[State 610, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 41

;---------------------------------------------------------------------------
;Jump Strong Punch
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 0
ctrl = 0
anim = 620
sprpriority = 2

[state 620, explode]
type = explod
trigger1 = time = 3
id = 620
anim = 611
pos = 0, 0
postype = p1
bindtime = -1
removetime = 13
sprpriority = -1
supermovetime = 0

[State 620, removexplode]
type = RemoveExplod
trigger1 = time = 13
ID = 620

[State 620, 3]
type = HitDef
trigger1 = animelem = 2
attr = A, NA
damage = 115
guardflag = HA
priority = 4
pausetime = 0, 0
sparkno = S3630
sparkxy = -10,-55
hitsound   = S1,0
guardsound = S7,0
animtype = Med
ground.type = High
ground.slidetime = 7
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3, 13
air.fall = 1
fall.recover = 0

[State 620, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 41


;---------------------------------------------------------------------------
;Jump Light Kick
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 0
ctrl = 0
anim = 630
sprpriority = 2

[State 630, 2]
type = PlaySnd
trigger1 = Time = 2
value = 4, 1

[State 630, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 35
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = 1
sparkxy = -5,-35
hitsound   = S3,2
guardsound = S7,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,0


;---------------------------------------------------------------------------
;Jump Medium Kick
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 0
ctrl = 0
anim = 640
sprpriority = 2

[State 640, 2]
type = PlaySnd
trigger1 = Time = 2
value = 4, 1

[State 640, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 65
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S3630
sparkxy = -10,-40
hitsound   = S3,2
guardsound = S7,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,0


;---------------------------------------------------------------------------
;Jump Strong Kick
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 0
ctrl = 0
anim = 650
sprpriority = 2

[State 650, 2]
type = PlaySnd
trigger1 = Time = 2
value = 4, 1

[State 650, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 95
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S3630
sparkxy = -10,-40
hitsound   = S3,1
guardsound = S7,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -10, 4
air.fall = 1
fall.recover = 0


;---------------------------------------
;------SPECIALS-----------
;---------------------------------------
;Throw
[Statedef 1300]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1300
sprpriority = 2

[State 1300, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          
hitflag = M-          
priority = 1, Miss    
sparkno = -1          
sprpriority = 1       
p1facing = ifelse (command = "holdfwd", 1, 1) 
p2facing = 1         
p1stateno = 1310     
p2stateno = 1320     
guard.dist = 0        
fall = 1              

[State 1300, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1310]
type    = S
movetype= A
physics = N
anim = 1310
poweradd = 60

;[State 1310 ]
;type = TargetLifeAdd
;trigger1 = AnimElem = 3
;value = -130

[State 1310, Width 2-11]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
edge = 60,0

[State 1310, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 1
pos = 58, 0

[State 1310, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 2
pos = 28, 0

[State 1310, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 3
pos = 28, -30

[State 1310, Throw 11]
type = TargetState
trigger1 = AnimElem = 3
value = 1321

[State 1310, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1320]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1320, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5999

[Statedef 1321]
type    = A
movetype= H
physics = N
velset = 0, -9
poweradd = 40

[State 1321, 1] 
type = VelAdd
trigger1 = time > 20
y = .8

[State 1321, 2] 
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 

[State 1321 ]
type = LifeAdd
trigger1 = AnimElem = 5
value = -140

[State 1321, 4] 
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 
;---------------------------------------------------------------------------
;INTRO
;---------------------------------------------------------------------------
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 190, 3]
type = ChangeState
trigger1 = Var(2) = [0,35]
value = 193

[State 190, 3]
type = ChangeState
trigger1 = Var(2) = [36,70]
value = 198

[State 190, 2]
type = ChangeState
trigger1 = Var(2) = [71,80]
value = 197
;-----------------------------------------------------------
; INTRO Alfabica pandora box
[Statedef 197]
type = S
ctrl = 0
anim = 197
velset = 0,0,0

[State 197, 0]
type = AssertSpecial
trigger1 = Time = [0,230]
flag = Intro

[State 197, 0.1]
type = PlaySnd
trigger1 = time = 1
value = 2, 6
;------------------------------------------------------------
; INTRO Alfabica y rosa
[Statedef 198]
type = S
ctrl = 0
anim = 198
velset = 0,0,0

[State 198, 0]
type = AssertSpecial
trigger1 = Time = [0,230]
flag = Intro

[State 198, 0.1]
type = PlaySnd
trigger1 = time = 1
value = 2, 6
;----------------------------------------------------------
; INTRO Alfabica sentado
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, 0]
type = AssertSpecial
trigger1 = Time = [0,40]
flag = Intro

[State 1010, 1]
type = PlaySnd
trigger1 = Time = 10
value = 1996,1

[State 193, 3]
type = ChangeState
trigger1 = Time = 40
value = 194
ctrl = 0

[Statedef 194]
type = S
ctrl = 0
anim = 66000
velset = 0,0

[State 194, 0]
type = AssertSpecial
trigger1 = Time = [0,155]
flag = Intro

[state 194, 2]
type = ChangeAnim
trigger1 = time = 125
value = 0

[State 194, 3]
type = ChangeState
trigger1 = Time = 155
value = 0
ctrl = 0

[State -3,remove]
type = Removeexplod
trigger1 = time =0
ID = 2001

;--------------------------------------------------------------
; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 
[Statedef 180]
type = S

[State 180, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,50


[State 180, 2]
type = ChangeState
trigger1 = Var(1) <= 25
value = 181


[State 190, 3]
type = ChangeState
trigger1 = Var(1) >= 26
value = 182
;-------------
[Statedef 181]
type = S
ctrl = 0
anim = 3330
velset = 0,0

[State 181 , 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2005,1

[State 181, tunnel]
type = Explod
trigger1 = AnimElem = 1
anim = 3480
ID = 3480
pos = -320, 0
postype = right
sprpriority = -5
supermove = 1
removetime = 210
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 181, tunnel]
type = Explod
trigger1 = AnimElem = 1
anim = 3481
ID = 3481
pos = -320, 0
postype = right
sprpriority = -5
supermove = 1
removetime = 210
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
[State 181, Assert]
type     = AssertSpecial
trigger1 = Time = [0,400]
flag     = roundnotover

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, 2]
type = PlaySnd
trigger1 = Animelem = 3
value = 2,4
;-------------
[Statedef 182]
type = S
ctrl = 0
anim = 3340
velset = 0,0

[State 182, tunnel]
type = Explod
trigger1 = AnimElem = 1
anim = 3480
ID = 3480
pos = -320, 0
postype = right
sprpriority = -5
supermove = 1
removetime = 210
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 182, tunnel]
type = Explod
trigger1 = AnimElem = 1
anim = 3481
ID = 3481
pos = -320, 0
postype = right
sprpriority = -5
supermove = 1
removetime = 210
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 182, Assert]
type     = AssertSpecial
trigger1 = Time = [0,400]
flag     = roundnotover

[State 182, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 182, 2]
type = PlaySnd
trigger1 = Animelem = 3
value = 2,6

;---------------------------------------------------------------------------
; Taunt
; CNS difficulty: easy
[Statedef 195]
type = S
ctrl = 0
velset = 0,0

[State 190, Randomizer]
type = VarRandom
trigger1 = time = 0
v = 2
range = 0,99


[State 190 , 0]
type = ChangeState
triggerall = time = 0
trigger1 = Var(2) = [0,49]
value = 196

[State 190 , 0]
type = ChangeState
triggerall = time = 0
trigger1 = Var(2) = [50,99]
value = 199


[Statedef 196]
type = S
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2
ctrl = 0

[State 182, 2]
type = PlaySnd
trigger1 = Time = 1
value = 2, 12
channel = 0

[State 195, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 199]
type = S
anim = 199
velset = 0,0
movetype = I
physics = S
sprpriority = 2
ctrl = 0

[State 1010 , 3]
type = Projectile
trigger1 = AnimElem = 15
attr = S, SP
projanim = 3311
projhitanim = 37241
offset = 60, -105
velocity = 5
damage = 10
animtype = Hard
guardflag = MA
pausetime = 0,12
sparkno = -1
guard.sparkno = -1
hitsound   = S1000,1
guardsound = S200,1
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -10
air.velocity = -2.5,-5
p2stateno = 10040
palfx.time = 30
palfx.add = 50,50,50
;palfx.mul = 255,255,255
palinvertall = 1

[State 182, 3]
type = PlaySnd
trigger1 = AnimElem = 14
value = 50800, 7
channel = 0

[State 182, 3]
type = PlaySnd
trigger1 = AnimElem = 16
value = 50800, 8
channel = 0

[State 195, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------
[State -3 , blackdragon brother]
type = Explod
trigger1 = numexplod(2000)=0
trigger1 = stateno = 0
id =2000
anim = 4
sprpriority = 0
removetime =-1
postype =left
pos = 0,220
bindtime =0
ownpal = 1
supermove =1
ownpal = 1
supermove = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;===========================================================================
[Statedef -2];  -2 State Section...
;===========================================================================
;---------------------------------------------------------------------------


[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(2) = 1
trigger1 = stateno!= 0
ID = 2


[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(2) = 1
trigger1 = anim =5
ID = 2
;Play "OWW!!" sound when hit
[State -2, 1]
type = PlaySnd
triggerall = ((Time = 1) && (var(8) < 500) && (random < 600))
trigger1 = (stateno = 5001) && (random < 500) 
value = 0, 1


[State -2, 1]
type = PlaySnd
triggerall = ((Time = 1) && (var(8) < 500) && (random < 600))
trigger1 = (stateno = 5040) && (random < 400) 
value = 0, 3

[State -2, 1]
type = PlaySnd
triggerall = ((Time = 1) && (var(8) < 500) && (random < 600))
trigger1 = (stateno = 5050)&& (random < 400) 
value = 0, 4


[State -2 , 1]
type = PlaySnd
triggerall = stateno = 20
trigger1 = AnimElem = 3
value = 5,0

[State -2 , 1]
type = PlaySnd
triggerall = stateno = 20
trigger1 = AnimElem = 8
value = 5,1


[State -2 , 1]
type = PlaySnd
triggerall = stateno = 21
trigger1 = AnimElem = 3
value = 5,1

[State -2 , 1]
type = PlaySnd
triggerall = stateno = 21
trigger1 = AnimElem = 8
value = 5,0

[State -2 , 1]
type = PlaySnd
triggerall = stateno = 41
trigger1 = AnimElem = 1
value = 6,0

[State -2 , 1]
type = PlaySnd
triggerall = stateno = 42
trigger1 = AnimElem = 1
value = 6,0

[State -2 , 1]
type = PlaySnd
triggerall = stateno = 43
trigger1 = AnimElem = 1
value = 6,0

[State -2 , 1]
type = PlaySnd
triggerall = stateno = 47
trigger1 = AnimElem = 1
value = 8,0

[State -2 , 1]
type = PlaySnd
triggerall = stateno = 52
trigger1 = AnimElem = 1
value = 8,0

[State -2 , 1]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 3
value = 5,0

[State -2 , 1]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 6
value = 5,1



[State -2 , 5]
type = PlaySnd
triggerall = stateno = 5001
triggerall = (anim >= 5000) && (anim <= 5009)
trigger1 = time = 1
value = 10,1

[State -2 , 5]
type = PlaySnd
triggerall = stateno = 5001
triggerall = (anim >= 5010) && (anim <= 5019)
trigger1 = time = 1
value = 10,3

[State -2 , 5]
type = PlaySnd
triggerall = stateno = 5001
triggerall = anim >= 5020
trigger1 = time = 1
value = 10,2

[State -2 , 6]
type = PlaySnd
triggerall = stateno = 5010
trigger1 = time = 1
value = 10,2

[State -2 , 7]
type = PlaySnd
triggerall = stateno = 5020
trigger1 = time = 1
value = 10,3


[State -2 , 7]
type = PlaySnd
triggerall = stateno = 5050
trigger1 = time = 1
trigger1 = Life <= 1
value = 10,4


;------------------------------
[State -3, target sign]
type = Explod
triggerall = NumExplod(3718) = 0
trigger1 = P2Dist y > 300
anim = 3718
id = 3718
pos = 0,-30
postype = p2
sprpriority = 4
supermove = 1
ignorehitpause = 1
ontop = 1
ownpal = 1
bindtime = -1
persistent = 1
facing = -1

[State -3,remove]
type = RemoveExplod
trigger1 = P2Dist y < 300
ID = 3718

[State -3,remove]
type = RemoveExplod
trigger1 = stateno!=130
trigger1 = stateno!=140
;trigger3 = stateno!=150
ID = 123

[State -3,remove]
type = RemoveExplod
trigger1 = stateno!=131
trigger1 = stateno!=141
;trigger3 = stateno!=151
ID = 124

[State -3,remove]
type = RemoveExplod
trigger1 = stateno!=132
trigger1 = stateno!=142
;trigger3 = stateno!=152
ID = 125

;===========================================================================
; Royal Rose
[Statedef 3001]
type    = S
movetype= A
physics = S
velset = 0,0
poweradd = -2000
ctrl = 0
anim = 9002


[State 7772, FUNDO]
type = Explod
trigger1 = time = 0
anim = 6002
postype = p1
pos = 0, 0
sprpriority = -2
supermovetime = 60
ignorehitpause = 1
bindtime = 60
ownpal = 1
under = 1

[State 7772, FUNDO]
type = Explod
trigger1 = time = 0
anim = 13000
postype = p1
pos = 0, 0
sprpriority = -5
supermovetime = 60
ignorehitpause = 1
bindtime = 60
ownpal = 1
under = 1

[State 229, 0]
type = SuperPause
trigger1 = Time = 0
time = 60
anim = -1
movetime = 60

[State 3334,0]
type = playsnd
trigger1 = time = 0
value = 3333,0

[State 3001, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3001, HitDef]
type = HitDef
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
attr = S, HA
damage = 30,13
givepower = 12
animtype = up
guardflag = MA
hitflag = MAF
priority = 6
pausetime = 0, 13
sparkno = -1
sparkxy = 0,-80
hitsound   = s40,4
guardsound = s30,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4.6,-9.4
air.velocity = -4.6,-9.4
guard.slidetime = 22
guard.hittime  = 32
guard.ctrltime = 34
guard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
p1stateno = 3102
p2stateno = 3101
p2getp1state = 1

[State 3001, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------
[Statedef 3102]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 9003

[State 7772, FUNDO]
type = Explod
trigger1 = time = 0
anim = 14000
postype = right
pos = -320, 0
sprpriority = -99
supermove = 1
ignorehitpause = 1
bindtime = 265
ownpal = 1
under = 1
removetime = 265

[State 7772, FUNDO]
type = Explod
trigger1 = time >= 0
trigger1 = TimeMod = 5, 0
trigger1 = time <= 225
anim = 15000
postype = right
pos = -160, 120
random = 320, 200
sprpriority = 10
supermove = 1
ignorehitpause = 1
bindtime = 265
ownpal = 1
ontop = 1

[State 7772, FUNDO]
type = Explod
trigger1 = time = 0
anim = 6102
postype = p2
pos = 0, 0
sprpriority = 5
supermove = 1
ignorehitpause = 1
bindtime = 265
ownpal = 1
ontop = 1


[State 820, 1]
type = targetlifeadd
trigger1 = time = [0, 265]
trigger1 = (GameTime%2)=1
value = -4

[State 3002, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===============P2State========================
[Statedef 3101]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3101

[State 821, 4]
type = SelfState
trigger1 = animtime = 0
value = 5100
;=====================================================================
;-- Rosas Negras --
[Statedef 6100]
type    = S
movetype= A
physics = S
velset = 0,0
poweradd = -3000
ctrl = 0
anim = 6100
ownpal=1

[State 7771, FUNDO]
type = Explod
trigger1 = time = 0
anim = 6002
postype = p1
pos = 0, 0
sprpriority = -2
supermovetime = 60
ignorehitpause = 1
bindtime = 60
ownpal = 1
under = 1

[State 7771, FUNDO]
type = Explod
trigger1 = time = 0
anim = 13001
postype = p1
pos = 0, 0
sprpriority = -5
supermovetime = 60
ignorehitpause = 1
bindtime = 60
ownpal = 1
under = 1

[State 229, 0]
type = SuperPause
trigger1 = Time = 0
time = 60
anim = -1
movetime = 60

[State 6100,1]
type = PlaySnd
trigger1 = time =1
value = 3000, 1
ownpal=1

[State 6100, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ownpal=1

[State 7771, FUNDO]
type = Explod
trigger1 = projcontact(4120) = 1
anim = F10
postype = P2
pos = -20, -40
random = 60, 70
sprpriority = 99
supermove = 1
ignorehitpause = 1
bindtime = 101
ownpal = 1
ontop = 1

[State 2500, fireball]
type = Projectile
trigger1 = time >= 61
trigger1 = TimeMod = 10, 0
trigger1 = time <= 325
projanim = 4120
projhitanim = -1
projremovetime = 300
projsprpriority = 5
projremove = 0
postype = p1
offset = 30,-95
velocity = 17, 0
remvelocity = 0, 0
projhits = 1
attr = S, SP
animtype = hard
pausetime = 4, 15
damage = 10,1
hitsound = 1,0
sparkno = -1
guard.sparkno = 40
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.hittime = 15 
ground.slidetime = 30
ground.velocity = -7,0
ground.type = low
air.velocity = -10,-5

[State 2500, fireball]
type = Projectile
trigger1 = time >= 61
trigger1 = TimeMod = 10, 6
trigger1 = time <= 325
projanim = 4120
projhitanim = -1
projremovetime = 300
projsprpriority = 5
projremove = 0
postype = p1
offset = 25,-70
velocity = 17, 0
remvelocity = 0, 0
projhits = 1
attr = S, SP
animtype = medium
pausetime = 4, 15
damage = 5,1
hitsound = s1,0
sparkno = -1
guard.sparkno = 40
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.hittime = 15
ground.slidetime = 30
ground.velocity = -7,0
ground.type = high
air.velocity = -10,-5

[State 2500, fireball]
type = Projectile
trigger1 = time >= 61
trigger1 = TimeMod = 10, 2
trigger1 = time <= 325
projanim = 4120
projhitanim = -1
projremovetime = 300
projsprpriority = 5
projremove = 0
postype = p1
offset = 28,-50
velocity = 17, 0
remvelocity = 0, 0
projhits = 1
attr = S, SP
animtype = medium
pausetime = 4, 15
damage = 5,1
hitsound = s1,0
sparkno = -1
guard.sparkno = 40
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.hittime = 15
ground.slidetime = 30
ground.velocity = -7,0
ground.type = low
air.velocity = -10,-5

[State 2500, fireball]
type = Projectile
trigger1 = time >= 61
trigger1 = TimeMod = 10, 4
trigger1 = time <= 325
projanim = 4120
projhitanim = -1
projremovetime = 300
projsprpriority = 5
projremove = 0
postype = p1
offset = 10,-20
velocity = 17, 0
remvelocity = 0, 0
projhits = 1
attr = S, SP
animtype = medium
pausetime = 4, 15
damage = 5,1
hitsound = s1,0
sparkno = -1
guard.sparkno = 40
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.hittime = 15
ground.slidetime = 30
ground.velocity = -7,0
ground.type = low
air.velocity = -10,-5

[State 2500, fireball]
type = Projectile
trigger1 = time >= 61
trigger1 = TimeMod = 13, 4
trigger1 = time <= 325
projanim = 4120
projhitanim = -1
projremovetime = 300
projsprpriority = 5
projremove = 0
postype = p1
offset = 25,-115
velocity = 17, 0
remvelocity = 0, 0
projhits = 1
attr = S, SP
animtype = hard
pausetime = 4, 15
damage = 5,1
hitsound = s1,0
sparkno = -1
guard.sparkno = 40
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.hittime = 15
ground.slidetime = 30
ground.velocity = -7,0
ground.type = low
air.velocity = -10,-5

[State 6100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------
;Triple Combo
[Statedef 6000]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 4000
ctrl = 0
sprpriority = 2

[State 6000, add]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2006,1

[State 6000, add]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2007,1



[State 3000, Width]
type = Width
trigger1 = AnimElem = 2, >= 0
value = 15,0

[State 6000, tunnel]
type = Explod
trigger1 = AnimElem = 1
anim = 70115
ID = 70115
pos = -320, 0
postype = right
sprpriority = -5
supermove = 1
removetime = 190
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 6000]
type = SuperPause
trigger1 = AnimElem = 2, 1
pos = 25, -57
anim = 100
sound = 20, 0
poweradd = -1000

[State 6000]
type = AfterImage
trigger1 = AnimElem = 2, 1
time = 2

[State 6000]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 1 && Time < 60
time = 2

[State 6000]
type = NotHitBy
trigger1 = AnimElem = 2
value = , NA, SA, AT
time = 11

[State 6000]
type = NotHitBy
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(14) < 0
value2 = C, NA
time = 1

[State 6000]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 8
trigger3 = AnimElem = 13
value = 3, 9

[State 6000]
type = PosAdd
trigger1 = AnimElem = 2
x = 20

[State 6000]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 16
x = 10

[State 6000]
type = VelSet
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 14
x = 6

[State 6000]
type = PosAdd
trigger1 = AnimElem = 5
x = 5

[State 6000]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
attr = S, HA
animtype  = Hard
damage    = 72,4
getpower  = 0
priority  = 6
guardflag = MA
pausetime = 15,15
sparkxy = -10,-60
hitsound   = 5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -6
air.velocity = -3,-2.8
air.fall = 1
fall.animtype = Hard
fall.recover = 0

[State 6000]
type = HitDef
trigger1 = AnimElem = 13
attr = S, HA
animtype  = Hard
damage    = 75,4
getpower  = 0
priority  = 5
guardflag = MA
pausetime = 15,15
sparkxy = -10,-60
hitsound   = 5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -5, -4
guard.velocity = -12
air.velocity = -5,-4
airguard.velocity = -3,-3
fall.animtype = Hard
fall = 1
fall.recover = 0

[State 6000]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------
;Bloody Rose
[Statedef 8887]
type = S
movetype = A
physics = S
anim = 8887
poweradd = -5000
juggle = 5
velset = 0
ctrl = 0

[State 8887]
type = playsnd
trigger1 = time = 0
value = 3333,1

[State 7771, FUNDO]
type = Explod
trigger1 = time = 0
anim = 4445
postype = p1
pos = 0, 0
sprpriority = -4
supermovetime = 360
ignorehitpause = 1
bindtime = 360
ownpal = 1
under = 1
removetime = 360

[State 7771, FUNDO]
type = Explod
trigger1 = time = 0
anim = 13002
postype = p1
pos = 0, 0
sprpriority = -99
supermovetime = 360
ignorehitpause = 1
bindtime = 360
ownpal = 1
under = 1

[State 8887]
type = superpause
trigger1 = time = 0
time = 360
anim = -1
pos = 0,0
movetime = 360

[State 8887]
type = Projectile
trigger1 = AnimElem = 61
attr = S, HP
projanim = 8888          
projhitanim = -1
offset = 75,-105    
velocity = 13
damage = 0
animtype = Hard
guardflag = -1
pausetime = 0,12
sparkno = -1;12
guard.sparkno = -1
hitsound   = s1,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = -5, -7
air.velocity = -2, -8
fall = 1
p1stateno = 8890
p2stateno = 8889
p2getp1state = 1

[State 8887]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------
[Statedef 8890]
type    = S
movetype= A
physics = N
anim = 8890
sprpriority = 1
velset = 0,0

[State 2170, 21]
type = Explod
trigger1 = animelem = 1
anim = 8891
postype = p2
pos = 13, -85
bindtime = 138
sprpriority = 5

[State 820, 1]
type = targetlifeadd
trigger1 = time = [0, 135]
trigger1 = (GameTime%2)=1
value = -14

[State 1207, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===============P2State========================
[Statedef 8889]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 8889

[State 821, 4]
type = SelfState
trigger1 = animtime = 0
value = 5100
;----------------------------
Recarga de Cosmo
[Statedef 7040]
type 			= S
movetype		= I
physics		= S
anim			= 7040
;velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 2

[State 7040:	PowerAdd]
type			= PowerAdd
trigger1		= (Time > 10) ;temps entre monte
value			= 13 ;la monte :)

;Pour Bronze
;[State 7040:	PowerAdd]
;type			= PowerAdd
;trigger1		= (Time > 100)
;value			= 3


[State 7040:	PlaySnd]
type			= PlaySnd
trigger1		= (Time = 13)
value			= S1000,1000
channel		= 0
loop			= 1

[State 7040:	PlaySnd]
type			= PlaySnd
trigger1		= (!Time)
value			= S0,12
channel		= 1

[State 7040:	PlaySnd]
type			= PlaySnd
trigger1		= (Time = 23)
value			= S20,8
channel		= 2



[State 7040:	BGPalFX]
type			= BGPalFX
trigger1		= ((Time > 100) && ((GameTime%70) = 0))
time			= 10
add			= 20,20,20
mul			= 256,256,256
sinadd		= 200,200,200,4
;mul			= 248,232,120
;sinadd		= 248,232,120,4
invertall		= 1
color			= 256

[State 7040:	Helper]
type			= Helper
trigger1		= (Time = 23) && (NumHelper(7041) = 0)
helpertype		= Normal
name			= "Flame Effect"
id			= 7041
pos			= 0,0
postype		= p1
facing		= 0
stateno		= 7041
keyctrl		= 0
ownpal		= 1
supermovetime	= 0
pausemovetime	= 0

[State 7040:	Helper]
type			= Helper
trigger1		= (Time = 19) && (NumHelper(17040) = 0)
helpertype		= Normal
name			= "Flame Effect"
id			= 17040
pos			= 0,0
postype		= p1
facing		= 0
stateno		= 17040
keyctrl		= 0
ownpal		= 1
supermovetime	= 0
pausemovetime	= 0

[State 13020:	Helper]
type			= Helper
trigger1 		= (AnimElem = 3)
helpertype		= Normal
name			= "KameHameHa Barrier"
id			= 13024
pos			= 0,0
postype		= p1
facing		= 1
stateno		= 13024
keyctrl		= 0
ownpal		= 1
supermovetime	= 0
pausemovetime	= 0

[State 7040:	Helper]; Pour chevalier d'or facultatif
type			= Helper
trigger1 		= (Time > 150) && ((GameTime%25) = 0) && (NumHelper(77046) < 15)
helpertype		= Normal
name			= "Energy"
id			= 77046
pos			= 0,0
postype		= p1
facing		= 1
stateno		= 77046
keyctrl		= 0
ownpal		= 1
supermovetime	= 0
pausemovetime	= 0
size.xscale		= 0.5
size.yscale		= 0.5

;Pour chevalier de bronze
;[State 7040,     LifeAdd]
;type = lifeadd
;trigger1 = Time >= 100
;trigger1 = life >= 1000
;value = 1


[State 7040:	ChangeState]
type			= ChangeState
trigger1		= ((Command != "hold_c") || (Command != "hold_b")) && (Var(2) <= 0)
value			= 7045
ctrl = 1


;Cosmos Effect
[Statedef 7041]
type 			= S
movetype		= I
physics		= N
anim			= 2;7041
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 0
facep2		= 1
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 2

[State 7041:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow
flag2			= Invisible

[State 7041:	BindToParent]
type			= BindToParent
trigger1		= 1
time			= 1
pos			= 0,0

[State 7041:	VarSet]
type			= VarSet
trigger1		= (!Time)
var(0)		= 35

[State 7041:	VarSet]
type			= VarSet
trigger1		= (Var(0) = 35)
var(1)		= 0

[State 7041:	VarSet]
type			= VarSet
trigger1		= (Var(0) = 150)
var(1)		= 1

[State 7041:	VarAdd]
type			= VarAdd
trigger1		= 1
var(0)		= IfElse(Var(1) = 0,1,-1)

[State 7041: 	AfterImage]
type 			= AfterImage
trigger1 		= 1
time 			= 5
framegap 		= 1
length 		= 2
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= var(0), var(0), var(0)
trans 		= add

[State 7041:	DestroySelf]
type			= DestroySelf
trigger1		= (Parent, StateNo != 7040)

;Cosmos Effect
[Statedef 17040]
type 			= S
movetype		= I
physics		= N
anim			= 17040
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 0
facep2		= 1
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 2

[State 17040:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow
flag2			= Invisible

[State 17040:	BindToParent]
type			= BindToParent
trigger1		= 1
time			= 1
pos			= 0,0

[State 17040:	VarSet]
type			= VarSet
trigger1		= (!Time)
var(0)		= 35

[State 17040:	VarSet]
type			= VarSet
trigger1		= (Var(0) = 35)
var(1)		= 0

[State 17040:	VarSet]
type			= VarSet
trigger1		= (Var(0) = 150)
var(1)		= 1

[State 17040:	VarAdd]
type			= VarAdd
trigger1		= 1
var(0)		= IfElse(Var(1) = 0,1,-1)

[State 17040: 	AfterImage]
type 			= AfterImage
trigger1 		= 1
time 			= 5
framegap 		= 1
length 		= 2
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= var(0), var(0), var(0)
trans 		= add

[State 17040:	DestroySelf]
type			= DestroySelf
trigger1		= (Parent, StateNo != 7040)

;Protection pendant charge contre projectile
[Statedef 13024]
type 			= S
movetype		= A
physics		= N
anim			= 13024
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 0
facep2		= 1
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 0

[State 13024:	NotHitBy]
type			= NotHitBy
trigger1		= 1
value			= SCA

[State 13024:	BindToParent]
type			= BindToParent
trigger1		= 1
time			= 1
pos			= 0,0

[State 13024:	HitBy]
type			= HitBy
trigger1		= 1
value			= , NP, SP, HP
ignorehitpause	= 1

[State 13024:	HitOverride]
type			= HitOverride
trigger1		= 1
attr			= , NP, SP, HP
slot			= 0
stateno		= 9060
ignorehitpause	= 1

[State 13024:	HitDef]
type			= HitDef
trigger1		= 1
attr			= A, SP
hitflag		= P
priority		= 7, Hit
guard.dist		= 0

[State 13024:	DestroySelf]
type			= DestroySelf
trigger1		= (Parent, StateNo != 7040)

;Cosmos Charge fin
[Statedef 7045]
type 			= S
movetype		= I
physics		= S
anim			= 7045
;velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 2

[State 7045:	VelSet]
type			= VelSet
trigger1		= (!Time)
y			= 0

[State 7045:	StopSnd]
type			= StopSnd
trigger1		= (!Time)
channel		= 0

[State 7045:	StopSnd]
type			= StopSnd
trigger1		= (!Time)
channel		= 1

[State 7045:	RemoveExplod]
type			= RemoveExplod
trigger1		= (!Time)
id			= 9020

[State 7045:	ChangeState]
type			= ChangeState
trigger1		= (AnimTime = 0)
value			= 0
ctrl = 1

;Cosmos flotant pour chevalier d'or
[Statedef 77046]
type 			= A
movetype		= A
physics		= N
anim			= 77046
;velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 3

[State 77046:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow
flag2			= Invisible

[State 77046:	NotHitBy]
type			= NotHitBy
trigger1		= 1
value			= SCA

[State 77046:	VelAdd]
type			= VelAdd
trigger1		= (ParentDist X < 0) && (Vel X > -9)
x			= -0.1

[State 77046:	VelAdd]
type			= VelAdd
trigger1		= (ParentDist X > 0) && (Vel X < 9)
x			= 0.1

[State 77046:	VelAdd]
type			= VelAdd
trigger1		= (Parent, Pos Y > Pos Y) && (Vel Y < 9)
y			= 0.1

[State 77046:	VelAdd]
type			= VelAdd
trigger1		= (Parent, Pos Y <= Pos Y) && (Vel Y > -9)
y			= -0.1

[State 77046:	VarSet]
type			= VarSet
trigger1		= (Time = 0)
var(0)		= 35

[State 77046:	VarSet]
type			= VarSet
trigger1		= (Var(0) = 35)
var(1)		= 0

[State 77046:	VarSet]
type			= VarSet
trigger1		= (Var(0) = 150)
var(1)		= 1

[State 77046:	VarAdd]
type			= VarAdd
trigger1		= 1
var(0)		= IfElse(Var(1) = 0,1,-1)

[State 77046:	VarRandom]
type			= VarRandom
trigger1		= (Time = 0)
v			= 2
range			= -500,500

[State 77046:	VarRandom]
type			= VarRandom
trigger1		= (Time = 0)
v			= 3
range			= -500,500

[State 77046:	PosSet]
type			= PosSet
trigger1		= (Time = 0)
x			= var(2)
y			= var(3)

[State 77046:	EnvColor]
type			= EnvColor
trigger1		= (Time = 0)
value			= 255,255,255
time			= 5

[State 77046: 	AfterImage]
type 			= AfterImage
trigger1 		= 1
time 			= 5
framegap 		= 1
length 		= 2
;paladd 		= 0, 0, 0
;palmul 		= .50, .50, .50
mul			= 248,232,120
sinadd		= 248,232,120,4
palcontrast 	= var(0), var(0), var(0)
trans 		= add

;[State 77046:	HitDef]
;type			= HitDef
;trigger1		= (Random > 900) && ((GameTime%10) = 0)
;attr			= S, SP
;hitflag		= -MAP
;guardflag		= MA
;animtype		= Hard
;priority		= 7, Hit
;damage		= 30,15
;pausetime		= 12,12
;guard.pausetime	= 15,20
;sparkno		= S66666
;guard.sparkno	= S66666
;sparkxy		= 0,0
;hitsound		= S1100,2
;guardsound		= S1200,2
;ground.type		= High
;air.type		= Trip
;ground.slidetime	= 25
;ground.hittime	= 25
;air.hittime		= 25
;ground.velocity	= -4,-2
;guard.velocity	= -2
;air.velocity	= -4,-2
;airguard.velocity	= -4,-2
;ground.cornerpush.veloff = 0
;fall.xvelocity	= -1
;fall.yvelocity	= -3
;fall.recover	= 0
;air.fall		= 1
;down.velocity	= -1,-2
;down.bounce		= 1
;id			= 77046
;getpower		= 0
;givepower		= 0
;envshake.time 	= 12
;envshake.freq 	= 120
;envshake.ampl 	= -6
;persistent		= 0

[State 77046:	DestroySelf]
type			= DestroySelf
trigger1		= (MoveContact) || (Time > 500)
ignorehitpause	= 1
;----------------------------

;Agarre

[Statedef 900]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 900

[State 900, 3]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
getpower  = 0
givepower = 0
hitflag = M-
numhits = 0
priority = 7, Hit
pausetime = 0,0
sparkno = -1
sparkxy = -25,-80
sprpriority = -1
p2facing = 1
ground.hittime = 30
p1stateno = 901
p2stateno = 903

[State 900, 5]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

; 膝地獄（つかみ）
[Statedef 901]
type    = S
movetype= A
physics = N
anim = 901

[state 1, 1]
type = sprpriority
trigger1 = Animelem = 1
value = 5

[State 2160, 33]
type = Explod
trigger1 = animelem = 2
anim = 920
sprpriority = 1
postype = p1
pos = 60,-90
bindtime = 1

[State 106, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 230,4

[State 1000, 2]
type = Width
trigger1 = AnimElem = 1
value = 80,0

[State 1360, Bind1]
type = TargetBind
trigger1 = animelem = 1, >= 0
trigger1 = animelem = 2, < 0
pos = 50,0

[State 905, 13]
type = ChangeState
trigger1 = AnimTime = 0
value = 902

;膝地獄（膝）
[Statedef 902]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 902

[State 107, 2]
type = PlaySnd
trigger1 = Animelem = 2
trigger2 = Animelem = 7
trigger3 = Animelem = 12
trigger4 = Animelem = 17
value = 240,0
channel = 0
volume = 30

[State 107, 2]
type = PlaySnd
trigger1 = Animelem = 3
trigger2 = Animelem = 8
trigger3 = Animelem = 13
trigger4 = Animelem = 18
value = 230,0

[State 1101, 1]
type = targetbind
trigger1 = Animelem = 1
trigger2 = Animelem = 6
trigger3 = Animelem = 11
trigger4 = Animelem = 16
pos = 50, 0
time = 9

[State 1101, 1]
type = targetbind
trigger1 = Animelem = 2
trigger2 = Animelem = 7
trigger3 = Animelem = 12
trigger4 = Animelem = 17
pos = 60,-55
time = 9

[State 1101, 1]
type = targetbind
trigger1 = Animelem = 3
trigger2 = Animelem = 8
trigger3 = Animelem = 13
trigger4 = Animelem = 18
pos = 70,-65
time = 9

[State 1101, 1]
type = targetbind
trigger1 = Animelem = 4
trigger2 = Animelem = 9
trigger3 = Animelem = 14
trigger4 = Animelem = 19
pos = 66,-60
time = 9

[State 1101, 1]
type = targetbind
trigger1 = Animelem = 5
trigger2 = Animelem = 10
trigger3 = Animelem = 15
trigger4 = Animelem = 20
pos = 50,0
time = 9

[State 3000,1] 
type = Explod
trigger1 = Animelem = 3
trigger2 = Animelem = 8
trigger3 = Animelem = 13
trigger4 = Animelem = 18
anim = F1
pos = 60, -75
sprpriority = 7
supermove = 2
Bindtime = 1

[State 1105, 3]
type = HitAdd
trigger1 = AnimElem = 3
trigger2 = Animelem = 8
trigger3 = Animelem = 13
trigger4 = Animelem = 18
value = 1

[State 905, 11]
type = TargetLifeAdd
trigger1 = AnimElem = 3
trigger2 = Animelem = 8
trigger3 = Animelem = 13
trigger4 = Animelem = 18
value = -30

[State 1105, 3]
type = Changestate
trigger1 = animtime = 0
value = 904

;膝地獄（やられ）
[Statedef 903]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 905, 11]
type = posadd
trigger1 = animtime = 0
x = -10
y = 40

[State 5050, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 903

[State 5050, 6]
type = ChangeState
trigger1 = animtime = 0
value = 4045;241

;膝地獄（膝フィニッシュ）
[Statedef 904]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 904
 
[State 1101, 1]
type = posadd
trigger1 = Animelem = 2
trigger2 = Animelem = 3
x = 10

[State 1101, 1]
type = targetbind
trigger1 = Animelem = 1
pos = 50,0
time = 1

[State 1101, 1]
type = targetbind
trigger1 = Animelem = 2
pos = 50,-55
time = 1

[State 1101, 1]
type = targetbind
trigger1 = Animelem = 3
pos = 60,-70
time = 4

[State 107, 2]
type = PlaySnd
trigger1 = Animelem = 3
value = 184,4
channel = 0
volume = 30

[State 1105, 3]
type = Changestate
trigger1 = animtime = 0
value = 905

;膝地獄（膝フィニッシュ空中）
[Statedef 905]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 905
 
[State 2000, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 60

[State 107, 2]
type = PlaySnd
trigger1 = Animelem = 1
value = 230,3

[State 1105, 3]
type = HitAdd
trigger1 = AnimElem = 1
value = 1

[State 905, 11]
type = TargetLifeAdd
trigger1 = AnimElem = 1
value = -30

[State 1101, 1]
type = targetbind
trigger1 = Animelem = 1
pos = 55,-70
time = 4

[State 3000,1] 
type = Explod
trigger1 = Animelem = 1
anim = F1
pos = 65, -85
sprpriority = 7
supermove = 2
Bindtime = 1

[State 1505, 3]
type = posadd
trigger1 = Time = 0
x = 10

[State 1505, 3]
type = VelSet
trigger1 = Time = 5
x = 3
y = -9.5

[State 1505, 3]
type = VelSet
trigger1 = time = 15
x = 1.5

[State 1505, 3]
type = VelSet
trigger1 = time = 20
x = 0.8

[State 1505, 3]
type = VelSet
trigger1 = time = 22
x = 0

[State 1505, 4]
type = VelAdd
trigger1 = Time >= 6
y = .6

[State 1505, 9]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1510

[Statedef 1510]
type = S
movetype = I
physics = S
anim = 1510
velset = 0,0

[State 1505, 3]
type = posadd
trigger1 = Time = 0
x = 10

[State 1510, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1510, 2]
type = PlaySnd
trigger1 = Time = 0
value = 52,0

[State 105, 2]
type = Turn
trigger1 = (var(20)!=0) && (animtime = 0)
trigger1 = p2dist X < 0

[State 1510, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------

[Statedef 4045]
type = A
movetype = H
physics = N

[State 800, 1]
type = HitBy
trigger1 = 1
value = SCA, HT
time = 1

[State 1280, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0
z = 0

[State 1280, 2]
type = ChangeAnim
trigger1 = animexist(1235)
Trigger1 = Time >= 0
value = 1235

[State 1280, 2]
type = ChangeAnim
trigger1 = !animexist(1235)
Trigger1 = Time >= 0
value = 5012

[State 1280, 3]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 4056

[Statedef 4056]
type = A
movetype = H
physics = N
velset = -3.8,-5.6

[State 800, 1]
type = HitBy
trigger1 = prevstateno = 4045
trigger1 = time >= 0
value = SCA, HT
time = 1

[State 800, 1]
type = HitBy
trigger1 = prevstateno = 4050
;trigger1 = Vel Y > 0 && Pos Y >= -35
trigger1 = time >= 23
value = SCA, HT
time = 1

[State 8145, 2]
type = ChangeAnim
trigger1 = prevstateno = 4050
Trigger1 = time = 2
value = 5030

[State 8145, 2]
type = ChangeAnim
trigger1 = prevstateno = 4050
Trigger1 = time = 5
value = 5050

[State 0, 0]
type = VelSet
trigger1 = Time = 0
trigger1 = enemy,facing=1
x = ifelse(facing=1,4.2,-4.2)
y = -6.4

[State 0, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = enemy,facing=-1
x = ifelse(facing=1,-4.2,4.2)
y = -6.4

[State 1500, 2]
type = PosAdd
trigger1 = time = 2
x = -5
y = -5

[State 1281, 1]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 2160, 33]
type = Explod
trigger1 = Vel Y > 0 && Pos Y >= 0
anim = F61
sprpriority = -2
postype = p1
pos = 0,0
bindtime = 1

[State 1281, 3]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100

[Statedef 5100]
type    = L
movetype= H
physics = N

[State 800, 1]
type = HitBy
trigger1 = 1
value = SCA, HT
time = 1

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = -1

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
;trigger1 = GetHitVar(fall.yvel) = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 0
value = F7
volume = 50

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 5101

[State 2160, 33]
type = Explod
trigger1 = time = 0
anim = F61
sprpriority = -2
postype = p1
pos = 0,0
bindtime = 1

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20
;---------------------------------------------------
;fireball
[statedef 121200]
type    = S
movetype= A
physics = S
poweradd= 100
ctrl = 0
anim = 101200
velset = 0

[state 195, sound]
type = playsnd
trigger1 = animelem = 1
value = 88888,14

[State 9750 , 5];voce
type = PlaySnd
trigger1 = AnimElem = 5
value = 1100,2

[State 9750, luce]
type = Explod
trigger1 = AnimElem = 5
anim = 3503
ID = 3503
pos = 35, -95
postype = p1
sprpriority = 2
removetime = 20

[State 1010 , 3]
type = Projectile
trigger1 = AnimElem = 6
attr = S, SP
projanim = 101100
projhitanim = -1
offset = 35, -95
velocity = 3.5
damage = 25
animtype = Hard
guardflag = MA
pausetime = 0,12
sparkno = 0
guard.sparkno = -1
hitsound   = S1,0
guardsound = S40,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -10
air.velocity = -2.5,-5
Palfx.time          = 20
Palfx.add           = 0,-200,-200
Palfx.sinadd        = 40,80,40,10
Palfx.color         = 0
Palfx.invertall     = 1

[State 4002, .5]
type = AfterImage
trigger1 = Time = 0
palfx.time = 1
palfx.add = 0,100,0
Time = 15

[State 1000, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------
;fireball2
[statedef 101200]
type    = S
movetype= A
physics = S
poweradd= 100
ctrl = 0
anim = 101200
velset = 0

[state 195, sound]
type = playsnd
trigger1 = animelem = 1
value = 88888,14

[State 9750 , 5];voce
type = PlaySnd
trigger1 = AnimElem = 5
value = 1100,2

[State 9750, luce]
type = Explod
trigger1 = AnimElem = 5
anim = 3503
ID = 3503
pos = 35, -95
postype = p1
sprpriority = 2
removetime = 20

[State 1010 , 3]
type = Projectile
trigger1 = AnimElem = 6
attr = S, SP
projanim = 101100
projhitanim = -1
offset = 35, -95
velocity = 5
damage = 30
animtype = Hard
guardflag = MA
pausetime = 0,12
sparkno = 0
guard.sparkno = -1
hitsound   = S1,0
guardsound = S40,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -10
air.velocity = -2.5,-5
Palfx.time          = 30
Palfx.add           = 0,-200,-200
Palfx.sinadd        = 40,80,40,10
Palfx.color         = 0
Palfx.invertall     = 1

[State 1000, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;======================================================
;protection roses 
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0,0
anim = 1002
ctrl = 0
sprpriority = -99

[State 1000, Power]
type = poweradd
trigger1 = Time = 0
value = 500

[State 1000, rev]
type = ReversalDef
trigger1 = AnimElem = 1
reversal.attr = SAC,NA,SA,HA,NP,SP,HP
guard.sparkno = -1
pausetime = 0,0
p1stateno = 1001

[State 1000, ex]
type = Explod
trigger1 = AnimElem = 1
trigger1 = timemod = 1,0
facing = 1
anim = 15000
pos = 0,0
scale = 0,0
sprpriority = 6

[State 1000, crystal]
type = Explod
trigger1 = time = 0
anim = 15000
pos = 0,0
postype = p1
removetime = 30
sprpriority = 3
ignorehitpause = 1
ownpal = 1
bindtime = 170
persistent = 0

[State 1000, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[State 1000, add]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7,0;1996,1

[Statedef 1001]
type    = S
movetype= A
physics = S
velset = -12,0
anim = 1001
poweradd = 200
ctrl = 0

[State 1001,env ]
type = EnvColor
trigger1 = time = 0
value = 255,10,10
time = 3

[State 1001,nohit ]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA
time = 1

[State 1001, 1]
type = HitDef
trigger1 = Time = 0
attr = S,SA
animtype  = Hard
hitflag = MA
guardflag = MA 
animtype = Hard
damage = 100,0
sparkno = 3
guard.sparkno = -1
sparkxy = 0,-90
hitsound = 5,4
guardsound = 5,4
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime = 24
ground.velocity = -7,-5
air.velocity = -7,-5
fall = 1
fall.recover = 0
fall.damage = 30

[State 1001, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Teleporte
[Statedef 6500]
type    = S
movetype= I
physics = S
poweradd = -300
ctrl = 0
velset = (prevstateno = 9010)* 0,(prevstateno = 9010)* 0
facep2 = !(prevstateno = 9010)

[State 6500, NotHitBy]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 45, 5]
type = AfterImage
trigger1 = time = 5
time = 4
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1
supermove = 1

[State 6500, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 6501

[State 6500, Pause1]
Type = SuperPause
trigger1 = Time = 0
MoveTime = 20
Time = 20
Pos = 0,0
Darken = 0
anim = -1

[State 6500, Pause2]
Type = SuperPause
trigger1 = AnimTime = 0
Time = 20
MoveTime = 20
Pos = 0,0
Darken = 0
anim = -1

[State 6500, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 6500, avant]
type = PosAdd
triggerall = AnimElem = 4
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
x = 300
y = 0

[State 6500, arriere]
type = PosAdd
triggerall = AnimElem = 4
trigger1 = command = "holdback"
trigger1 = command != "holdfwd"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
x = -300
y = 0

[State 6500, Tourne]
type = Turn
trigger1 = P2Dist X < 0
;trigger1 = AnimElem = 4

[State 6500, screen]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 6500, state]
type = ChangeState
trigger1 = AnimTime = 0
value = 6502
ctrl = 1
;----------------------------------------------------------------------------------------
;Teleporte suite
[Statedef 6502]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 6502
ctrl = 0
facep2 = 1

[State 45, 5]
type = AfterImage
trigger1 = time = 0
time = 8
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 6500, NotHitBy]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 6500, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 6500, add]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20,8

;[State 6500, add]
;type = PlaySnd
;trigger1 = AnimElem = 2
;value = 1997,1
;---------------------------------------------------------------------------

;----------------------------
[StateDef -3]

;ultra power
[State -3, 10]
type = AttackMulSet
trigger1 = time = 1500
value = 0

;ultra defence
[State -3, 11]
type = DefenceMulSet
trigger1 = time = 1500
value = 0

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(2) = 1
trigger1 = stateno != 0
ID = 2

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(2) = 1
trigger1 = anim = 5
ID = 2

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(3) = 1
trigger1 = stateno != 0
ID = 3

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(3) = 1
trigger1 = anim = 5
ID = 3

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(13) = 1
trigger1 = anim = 6
ID = 13

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(13) = 1
trigger1 = anim!= 11
ID = 13

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(22) = 1
trigger1 = anim!= 20
ID = 22

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(23) = 1
trigger1 = anim!= 21
ID = 23

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(60) = 1
trigger1 = anim!= 40
ID = 60

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(61) = 1
trigger1 = anim!= 41
trigger2 = stateno= 45
ID = 61

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(62) = 1
trigger1 = anim!= 42
trigger2 = stateno= 45
ID = 62

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(63) = 1
trigger1 = anim!= 43
trigger2 = stateno= 45
ID = 63

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(67) = 1
trigger1 = anim!= 47
ID = 67

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(102) = 1
trigger1 = anim!= 100
ID = 102

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(107) = 1
trigger1 = anim!= 105
ID = 107

[State -3,remove]
type = RemoveExplod
trigger1 = (anim != 120) && (anim != 130) && (anim != 140) && (anim != 150)
trigger1 = NumExplod(123) >= 1
ID = 123

[State -3,remove]
type = RemoveExplod
trigger1 = (anim != 121) && (anim != 131) && (anim != 141) && (anim != 151)
trigger1 = NumExplod(124) >= 1
ID = 124

[State -3,remove]
type = RemoveExplod
trigger1 = (anim != 122) && (anim != 132) && (anim != 142) && (anim != 152)
trigger1 = NumExplod(125) >= 1
ID = 125

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=3675
ID = 3677

[State -3]
type = poweradd
trigger1 = var(9) = 1
value = -2

[state -3]
type = varset
trigger1 = var(9) = 1
trigger1 = power = 0
var(9) = 0

[state -3]
type = AttackMulSet
trigger1 = var(9) = 0
value = .5


;-------------------------------------------------
;GETHITS COSMO
;-------------------------------------------------
[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6000) = 0
trigger1 = anim =5000
anim =6000
id = 6000
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5000
ID = 6000

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6001) = 0
trigger1 = anim =5001
anim =6001
id = 6001
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5001
ID = 6001

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6002) = 0
trigger1 = anim =5002
anim =6002
id = 6002
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5002
ID = 6002

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6005) = 0
trigger1 = anim =5005
anim =6005
id = 6005
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5005
ID = 6005

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6006) = 0
trigger1 = anim =5006
anim =6006
id = 6006
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5006
ID = 6006

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6007) = 0
trigger1 = anim =5007
anim =6007
id = 6007
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5007
ID = 6007

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6010) = 0
trigger1 = anim =5010
anim =6010
id = 6010
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5010
ID = 6010

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6011) = 0
trigger1 = anim =5011
anim =6011
id = 6011
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5011
ID = 6011

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6012) = 0
trigger1 = anim =5012
anim =6012
id = 6012
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5012
ID = 6012

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6015) = 0
trigger1 = anim =5015
anim =6015
id = 6015
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5015
ID = 6015

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6016) = 0
trigger1 = anim =5016
anim =6016
id = 6016
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5016
ID = 6016

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6017) = 0
trigger1 = anim =5017
anim =6017
id = 6017
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5017
ID = 6017

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6020) = 0
trigger1 = anim =5020
anim =6020
id = 6020
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5020
ID = 6020

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6021) = 0
trigger1 = anim =5021
anim =6021
id = 6021
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5021
ID = 6021

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6022) = 0
trigger1 = anim =5022
anim =6022
id = 6022
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5022
ID = 6022

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6025) = 0
trigger1 = anim =5025
anim =6025
id = 6025
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5025
ID = 6025

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6026) = 0
trigger1 = anim =5026
anim =6026
id = 6026
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5026
ID = 6026

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6027) = 0
trigger1 = anim =5027
anim =6027
id = 6027
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5027
ID = 6027

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6030) = 0
trigger1 = anim =5030
anim =6030
id = 6030
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5030
ID = 6030

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6040) = 0
trigger1 = anim =5040
anim =6040
id = 6040
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5040
ID = 6040

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6050) = 0
trigger1 = anim =5050
anim =6050
id = 6050
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5050
ID = 6050

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6051) = 0
trigger1 = anim =5051
anim =6051
id = 6051
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5051
ID = 6051

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6061) = 0
trigger1 = anim =5061
anim =6061
id = 6061
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5061
ID = 6061

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6070) = 0
trigger1 = anim =5070
anim =6070
id = 6070
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5070
ID = 6070

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6080) = 0
trigger1 = anim =5080
anim =6080
id = 6080
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5080
ID = 6080

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6090) = 0
trigger1 = anim =5090
anim =6090
id = 6090
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5090
ID = 6090

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6100) = 0
trigger1 = anim =5100
anim =6100
id = 6100
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5100
ID = 6100

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6110) = 0
trigger1 = anim =5110
anim =6110
id = 6110
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5110
ID = 6110

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6120) = 0
trigger1 = anim =5120
anim =6120
id = 6120
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5120
ID = 6120

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6150) = 0
trigger1 = anim =5150
anim =6150
id = 6150
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5150
ID = 6150

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6160) = 0
trigger1 = anim =5160
anim =6160
id = 6160
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5160
ID = 6160

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6170) = 0
trigger1 = anim =5170
anim =6170
id = 6170
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5170
ID = 6170

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6200) = 0
trigger1 = anim =5200
anim =6200
id = 6200
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5200
ID = 6200

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6210) = 0
trigger1 = anim =5210
anim =6210
id = 6210
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5210
ID = 6210

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6300) = 0
trigger1 = anim =5300
anim =6300
id = 6300
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5300
ID = 6300

[State -3]
type = Explod
triggerall = var(9) = 1
triggerall = NumExplod(6301) = 0
trigger1 = anim =5301
anim =6301
id = 6301
pos =0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State -3,remove]
type = RemoveExplod
trigger1 = anim!=5301
ID = 6301
;---------------------------------------------------------
;recover energie and new state
[Statedef 2000]
type = S
movetype = I
physics = S
anim = 334000
poweradd = -3000
velset = 0
ctrl = 0
;-------------------
;NEW
;--------------------

[State 2000 , 2]
type = VarSet
trigger1 = time = 0
v = 1
value = 0

[State 2000, palfx]
type = PalFX
trigger1 = time = [0,1500]
time = 1500
add = 5,5,5
sinadd = 40,40,40,3

;cosmo standing remove
[State 2000,2]
type = RemoveExplod
trigger1 = 1
ID = 2

[State 2000, 0]
type = DisplayToClipboard
trigger1 = Time = 0
text="pegasus settimo senso"

[State 2000, 0]
type = AssertSpecial
trigger1 = Time = [0,9000]
flag = nomusic
persistent = 1

[State 2000 , 1]
type = NotHitBy
trigger1 = Time = 0
time = 5
value = SCA

[State 2000 , 2]
type = SuperPause
trigger1 = Time = 0
time = 20
anim = -1


[State 2000 , 3]
type = EnvShake
trigger1 = Time = 0
time = 50

[State 2000 , 3]
type = PlaySnd
trigger1 = Time = 4
value = 2008,1

[State 2000 , 3]
type = PlaySnd
trigger1 = Time = 4
value = 2100,1

[State 2000 , 4]
type = PlaySnd
trigger1 = Time = 4
value = 2000,0

[State 2000 , 5]
type = Explod
trigger1 = Time = 3
anim = 13000
sprpriority = 2
postype = p1
pos = 0,-0
supermove = 1
ownpal = 1
bindtime = 1

[State 2000 , 7]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,8

[State 2000 , 8]  ;atena aumenta la vida
type = LifeAdd
trigger1 = AnimElem = 3
value = 1000

;ultra power
[State 2000, 10]
type = AttackMulSet
trigger1 = time = [0,1500]
value = 1.7

;ultra defence
[State 2000, 11]
type = DefenceMulSet
trigger1 = time = [0,1500]
value = 1.9

[State 2000 , 12.1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;end of recover
;-------------------------------------------------------

[State -3 , blackdragon brother]
type = Explod
trigger1 = numexplod(2000)=0
trigger1 = stateno = 0
id =2000
anim = 4
sprpriority = 0
removetime =-1
postype =left
pos = 0,220
bindtime =0
ownpal = 1
supermove =1
ownpal = 1
supermove = 1
;-------------------------------------------------------
;Espinas carmesi 1
[Statedef 4201]
type = S
movetype = A
physics = S
velset = 0,0
poweradd = -2000
ctrl = 0
anim = 42001

[State 4201, 1]
type = PlaySnd
trigger1 = time = 0
value = 50800, 10

[State 4201, phoenix cosmo]
type = Explod
trigger1 = animelem= 2
anim = 8765
ID = 8765
pos = 0,0
postype = p1
sprpriority = 5
supermove = 1
removetime = 715
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 4201, phoenix cosmo disparition]
type = Explod
trigger1 = animelem= 2
anim = 8766
ID = 8766
pos = 0,0
postype = p1
sprpriority = 5
supermove = 1
removetime = 127
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0

[State 4201, star]
type = Explod
trigger1 = animelem = 7
anim = 40010
pos = -320,-0
postype = right
sprpriority = 1
supermove = 1
removetime = 350
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0

[State 4201, star]
type = Explod
trigger1 = Time = 1
anim = 102
pos = -320,-0
postype = right
sprpriority = -1
supermove = 1
removetime = 500
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0

[State 4201, 1]
type = hitdef
Trigger1=Animtime<=0
sprpriority = 6
forcestand = 1
attr = S, SP
projanim = 4200
projhitanim = 0
postype = p2
guardflag = MA
damage = 8,6
animtype = light
guardflag = 1
pausetime = 8,8
sparkno = 0
guard.sparkno = -1
hitsound   = S240,0
guardsound = S1000,2
ground.type = low
ground.slidetime = 0
ground.hittime  = 371
ground.velocity = -8
air.velocity = -1,0
palfx.time = 371
palfx.mul = 240,192,128
palfx.sinadd = 96,128,160,16
palfx.add = 224,128,64

[State 4201 , change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------
;Espinas carmesi 2
[Statedef 4200]
type = S
movetype = A
physics = S
velset = 0,0
poweradd = -2000
ctrl = 0
anim = 42000

[State 4200, 1]
type = PlaySnd
trigger1 = time = 0
value = 2008, 2

[State 4200, phoenix cosmo]
type = Explod
trigger1 = animelem= 2
anim = 8765
ID = 8765
pos = 0,0
postype = p1
sprpriority = 5
supermove = 1
removetime = 715
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 4200, phoenix cosmo disparition]
type = Explod
trigger1 = animelem= 2
anim = 8764
ID = 8764
pos = 0,0
postype = p1
sprpriority = 5
supermove = 1
removetime = 127
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0

[State 4200, star]
type = Explod
trigger1 = animelem = 7
anim = 40010
pos = -320,-0
postype = right
sprpriority = 1
supermove = 1
removetime = 350
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0


[State 4200, 1]
type = PlaySnd
trigger1 = ANIMELEM = 29
value = 1, 0

[State 4200, star]
type = Explod
trigger1 = Time = 1
anim = 102
pos = -320,-0
postype = right
sprpriority = -1
supermove = 1
removetime = 500
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0

[State 4200, 1]
type = hitdef
Trigger1=Animtime<=0
sprpriority = 6
forcestand = 1
attr = S, SP
projanim = 4200
projhitanim = 0
postype = p2
guardflag = MA
damage = 8,6
animtype = light
guardflag = 1
pausetime = 8,8
sparkno = 0
guard.sparkno = -1
hitsound   = S240,0
guardsound = S1000,2
ground.type = low
ground.slidetime = 0
ground.hittime  = 371
ground.velocity = -8
air.velocity = -1,0
palfx.time = 371
palfx.mul = 240,192,128
palfx.sinadd = 96,128,160,16
palfx.add = 224,128,64

[State 4013 , change state]
type = ChangeState
trigger1 = animelem = 29
value = 2210
ctrl = 0
;-------------------------------------------------
;golpe final de espinas carmesi

[Statedef 2210]
type = S
movetype = A
physics = S
anim = 8890
velset = 0
persistent = 0
sparkxy = -20,-20

[State 2220 , 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 10

[State 2210, 1]
type = Projectile
trigger1 = AnimElem = 1
attr = S, HP
projanim = 8888
projhitanim = -1
offset = 75,-105
velocity = 13
damage = 0
animtype = Hard
guardflag = -1
pausetime = 0,12
sparkno = -1;12
guard.sparkno = -1
hitsound   = s1,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = -5, -7
air.velocity = -2, -8
fall = 1
p1stateno = 8890
p2stateno = 8889
p2getp1state = 1

[State 2210 , 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------------------
;Super ryuseiken liv(3)hard must
[Statedef 2200]
type = S
movetype = A
physics = S
anim = 2200
poweradd = -0
velset = 0
ctrl = 0

[State 2200, 0]
type = AfterImage
trigger1 = Time = 0
time = 2

[State 2200,1]
type = AfterImageTime
trigger1 = Time = [2,10000]
time = 2

[State 2200, showgalaxian]
type = Explod
trigger1 = AnimElem = 1
anim = 3560
ID = 3560
pos = -320,0
postype = right
sprpriority = -2
supermove = 1
removetime = 550
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 2200, constellation]
type = Explod
trigger1 = AnimElem = 1
anim = 3750
ID = 3580
pos = -320,0
postype = right
sprpriority = -1
supermove = 1
removetime = 10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 2200 , 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 20

;remove showgalaxian
[State 2200,remove]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 3560

[state 2200,7]
type = ChangeState
Trigger1 = AnimTime = 0
value = 2210
ctrl = 0
;--------------------------------------------------------------------
;niebla roja
[Statedef 30020]
type    = S
movetype= A
physics = S
anim = 50800
velset = 0,0
poweradd = -2000
juggle = 0
ctrl = 0

[State 200, 2]
type = Playsnd
trigger1 = Animelem = 1
value = 50800,1

[State 735000, sfondo1]
type = Explod
triggerall = NumExplod(66001) = 0
trigger1 = AnimElem = 1
pos = -320,-0
anim = 66001
ID = 66001
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1000

[State 735000, eletrik]
type = Explod
trigger1 = AnimElem = 27
pos = 120 ,10
anim = 66001
sprpriority = -5
removetime= 100

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
trigger8 = AnimElem = 8
trigger9 = AnimElem = 9
trigger10 = AnimElem = 10
trigger11 = AnimElem = 11
trigger12 = AnimElem = 12
trigger13 = AnimElem = 13
trigger14 = AnimElem = 14
trigger15 = AnimElem = 15
trigger16 = AnimElem = 16
trigger17 = AnimElem = 17
trigger18 = AnimElem = 18
trigger19 = AnimElem = 19
trigger20 = AnimElem = 20
trigger21 = AnimElem = 21
trigger22 = AnimElem = 22
trigger23 = AnimElem = 23
trigger24 = AnimElem = 24
trigger25 = AnimElem = 25
trigger26 = AnimElem = 26
trigger27 = AnimElem = 27
trigger28 = AnimElem = 28
trigger29 = AnimElem = 29
attr = S, HA
animtype  = Hard
damage    = 10
guardflag = MA
pausetime = 12,12
sparkno = s80
sparkxy = 45,-130
hitsound   = S9,3
guardsound = S1000,2
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 1,0
air.velocity = -2.5,-4
envshake.time =  25
envshake.freq = 20
envshake.ampl = 5
envshake.phase = 5
;PalFX
palfx.time = 15
palfx.add = 255,160,220

[state 1200, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 210, 5]
type = ChangeState
trigger1 = time = 250
value = 30021
ctrl = 1

[Statedef 30021]
type    = S
movetype= A
physics = S
anim = 50800
velset = 0,0
poweradd = 200
juggle = 0
ctrl = 0

[state 1200, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 735000, remove spirale]
type = RemoveExplod
triggerall = NumExplod(50800) = 1
trigger1 = AnimElem = 1
ID = 50800

[State 735000, remove sfondo]
type = RemoveExplod
triggerall = NumExplod(66001) = 1
trigger1 = AnimElem = 1
ID = 66001

[State 735000, sfondo]
type = Explod
trigger1 = AnimElem = 1
pos = -320,-0
anim = 66001
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 50

[State 735000, spirale]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 50800
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------
;===========
;piso de rosas
;===========

;lanzando rosa

[Statedef 2600]
type = S
movetype = A
physics = N
poweradd = 100
velset = 0,0
ctrl = 0
anim = 2500

[State 2600, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 7004
pos = 0,0
postype = P1
supermovetime = -1
facing = 1
sprpriority = 3
removeongethit = 1


[State 2600, Helper]
type = Helper
trigger1 = AnimElem = 4
helpertype = Normal
postype = p1
pos = 0,0
stateno = 2601
ownpal = 1
keyctrl = 0

[State 2600, Helper]
type = Helper
trigger1 = AnimElem = 4
helpertype = Normal
postype = p1
pos = 0,0
stateno = 2602
Id = 2602
name = "Iced floor"
ownpal = 1
keyctrl = 0
sprpriority = -5

[State 2600, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------

;( O Projetil )

[Statedef 2601]
type = S
movetype = A
poweradd = 0
physics = N
juggle = 0
ctrl = 0
anim = 2550
sprpriority = 1

[State 1000, SND]
type = PlaySnd
trigger1 = Time = 1
value = 1,8

[State 2601, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 2601, ChangeAnim]
type = DestroySelf
trigger1 =  AnimTime = 0

;--------------------------

[Statedef 2602]
type = S
movetype = A
poweradd = 0
physics = N
juggle = 0
ctrl = 0
anim = 2600


[State 2602, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 2602, 2]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 2602, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Medium
damage    = 0,0
getpower = 0,0
givepower = 0,0
hitflag = MAF
pausetime = 0, 0
sparkno = -1
guard.sparkno = -1
hitsound   = -1
guardsound = 6,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
air.hittime = 0
air.fall = 0
numhits = 1
p2stateno = 006
kill = !var(58) || 1*p2stateno = 003

[State 2602, SND]
type = PlaySnd
trigger1 = Time = 1
value = 50800,2

[State 2602, 3]
type = Sprpriority
trigger1 = movehit
value = -9999

[State 2602, Destroy]
type = DestroySelf
trigger1 =  AnimTime = 0

;-----------------------

;====================
; P2 Custom States  *
;====================

; P2 sendo puxado
[Statedef 006]
movetype = H
velset = 0,0
ctrl = 0
anim = 5012
sprpriority = 2

[State 006, 3]
type = VelSet
trigger1 = time <= 89
x = 0.6
y = 0

[State 006, 3]
type = SelfState
trigger1 = Time = 95
ctrl = 1
value = 0
;--------------------------------------------------------
;rosa paralizzante
[Statedef 10100]
type = S
movetype = A
physics = S
anim = 22900
poweradd = -200
juggle = 5
ctrl = 0
velset = 0

[State 9750 , 5];voce
type = PlaySnd
trigger1 = AnimElem = 1
value = 5000,9
channel = 0

[State 1113,remanescence ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 20
PalContrast =  0,160,0
PalBright = 5,5,5
Trans = Add
palinvertall = 1
timegap = 1
framegap = 4
trans = add

[State 9750, luce]
type = Explod
trigger1 = AnimElem = 1
anim = 2
ID = 2
pos = 10, 0
postype = p1
sprpriority = -2
supermove = 1
removetime = 45
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 1010 , 3]
type = Projectile
trigger1 = AnimElem = 5
attr = S, SP
projanim = 37240
projhitanim = 37241
offset = 60, -105
velocity = 5
damage = 10
animtype = Hard
guardflag = MA
pausetime = 0,12
sparkno = -1
guard.sparkno = -1
hitsound   = S1000,1
guardsound = S200,1
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -10
air.velocity = -2.5,-5
p2stateno = 10040
palfx.time = 30
palfx.add = 50,50,50
;palfx.mul = 255,255,255
palinvertall = 1

[State 1010 , 4];voce
type = PlaySnd
trigger1 = AnimElem = 4
value = 50800,6
channel = 0

[State 405, 4]
type = AfterImage
trigger1 = time = 0
time = 20
length = 45
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add


[State 1010 , 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------
; paralisi state
[Statedef 10040]
type = S
movetype= H
physics = N
velset = 0,0

[State 1004, attempt]
type = Varset
trigger1 = time = 0
V = 23
Value = Anim

[State 1004, freeze in anim]
type = Changeanim
trigger1 = time != 0
value = Var(23)

[State 1004, Frosty color]
type = palFX
trigger1 = time != 0
add = 50,50,50
;mul = 125,125,125
time = 2

[State 1004, VELSET]
type = velset
trigger1 = time = 0
X = 0
Y = 0

[State 1004, CS]
type = SelfState
trigger1 = time = 700
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 1004, CZ]
type = ChangeState
trigger1 = time = 700
trigger1 = Pos Y < 0
value = 52
;-----------------------------------------
;rosa negra fuerte
[Statedef 31000]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1568
velset = 0

[State 31000, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 50800,12
channel = 0

[State 1251, projetil 1]
type = Projectile
trigger1 = AnimElem = 3
ProjAnim = 1567
ProjHitAnim = 1567
ProjRemAnim = 3503
projscale = 1,1
offset = -20, 70
velocity = 10, 0
remvelocity = .7, 0
accel = 0, 0
attr = S, SP
damage    =  230,50
animtype  = Medium
givepower = 30
guardflag = MA
pausetime = 0,24
sparkno = S1005
sparkxy = 130, -130
guard.sparkno = S1005
hitsound   = s240,1
guardsound = s300,2
ground.type = low
ground.slidetime = 30
ground.hittime  = 60
ground.velocity = .6,-8
airguard.velocity = -3.5
air.type = Low
air.velocity = -3
air.juggle = 3

[State 2210 , 7]
type = HitDef
trigger1 = AnimElem = 2
priority = 7
attr = S, HA
damage = 230,70
animtype = hard
guardflag = MA
sparkno =S8220
sparkxy = 30, -55
hitsound = S240,1
guardsound = S300,2
pausetime = 0,12
ground.hittime = 60
ground.slidetime = 30
ground.type = low
ground.velocity = .6,-8
air.velocity = -3
fall = 1
fallrecover = 0
falldamage = 30

[state 1200, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 2210 , 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------------------------------
;Rosas Aereas
[statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 43
ctrl = 0

[state 1100,1]
type = velset
trigger1 = time = 0
y = -5

[state 1100,2]
type = velset
trigger1 = time < 25
x = -2

[State 1100, 7]
type = ChangeState
trigger1 = time = 25
value = 1101
ctrl = 0

[statedef 1101]
type    = a
movetype= A
physics = a
juggle  = 4
poweradd= -2000
velset = 0,0
anim = 1570
ctrl = 0

[State 1101, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 50800,9
channel = 0

[state 1101, Screen]
type =  ScreenBound
trigger1 = StateNo = 1101
movecamera = 1, 1

[State 1101, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 30
anim = -1
movetime = 0

[State 1101, sound]
type = PlaySnd
trigger1 = Time = 0
value = 2,2
channel = 0

[state 1101,1]
type = velset
trigger1 = NumProjID(1101) > 0
y = 0.3

[state 1101, var]
Type = VarSet
trigger1 = time = 0
v = 1
value = Pos Y +65

[state 1101, var]
Type = VarSet
trigger1 = time = 0
v = 2
value = Pos Y +25

[state 1101, var]
Type = VarSet
trigger1 = time = 0
v = 3
value = Pos Y -15

[state 1101, var]
Type = VarSet
trigger1 = time = 0
v = 4
value = Pos Y -55

[state 1101, var]
Type = VarSet
trigger1 = time = 0
v = 5
value = Pos Y -95

[state 1101, 1]
type = projectile
trigger1 = time = 13
trigger2 = time = 26
trigger3 = time = 33
trigger4 = time = 45
trigger5 = time = 58
trigger6 = time = 63
trigger7 = time = 75
projID = 1101
projanim = 1101
projremove = 0
velocity = 16,4
projpriority = 3
projedgebound = 100
projstagebound = 100
offset = -20, var(1)
postype = back
attr = a,hp
animtype = diagup
guardflag = LA
damage = 45,5
pausetime = 9, 9
guard.pausetime = 0, 0
sparkno = S1103
hitsound = S1,0
ground.velocity = -1,-2
air.velocity = -2,-1
fall = 1
fall.recover = 0

[state 1101, 2]
type = projectile
trigger1 = time = 12
trigger2 = time = 25
trigger3 = time = 30
trigger4 = time = 47
trigger5 = time = 52
trigger6 = time = 68
trigger7 = time = 73
projID = 1569
projanim = 1569
projremove = 0
velocity = 18,4
projpriority = 3
projedgebound = 100
projstagebound = 100
offset = -20, var(5)
postype = back
attr = a,hp
animtype = diagup
guardflag = LA
damage = 35,5
pausetime = 9, 9
guard.pausetime = 0, 0
sparkno = S1103
hitsound = S1,0
ground.velocity = -1,-2
air.velocity = -2,-1
fall = 1
fall.recover = 0

[state 1101, 3]
type = projectile
trigger1 = time = 10
trigger2 = time = 22
trigger3 = time = 29
trigger4 = time = 42
trigger5 = time = 52
trigger6 = time = 66
trigger7 = time = 78
trigger8 = time = 14
projID = 1569
projanim = 1569
projremove = 0
velocity = 18,4
projpriority = 3
projedgebound = 100
projstagebound = 100
offset = -20, var(4)
postype = back
attr = a,hp
animtype = diagup
guardflag = LA
damage = 35,5
pausetime = 9, 9
guard.pausetime = 0, 0
sparkno = S1103
hitsound = S1,0
ground.velocity = -1,-2
air.velocity = -2,-1
fall = 1
fall.recover = 0

[state 1101, 4]
type = projectile
trigger1 = time = 14
trigger2 = time = 27
trigger3 = time = 36
trigger4 = time = 45
trigger5 = time = 51
trigger6 = time = 69
trigger7 = time = 74
projID = 1569
projanim = 1569
projremove = 0
velocity = 20,5
projpriority = 3
projedgebound = 100
projstagebound = 100
offset = -20, Var(3)
postype = back
attr = a,hp
animtype = diagup
guardflag = LA
damage = 35,5
pausetime = 9, 9
guard.pausetime = 0, 0
sparkno = S1103
hitsound = S1,0
ground.velocity = -1,-2
air.velocity = -2,-1
fall = 1
fall.recover = 0

[state 1101, 5]
type = projectile
trigger1 = time = 17
trigger2 = time = 25
trigger3 = time = 37
trigger4 = time = 47
trigger5 = time = 52
trigger6 = time = 67
trigger7 = time = 74
projID = 1569
projanim = 1569
projremove = 0
velocity = 18,4
projpriority = 3
projedgebound = 100
projstagebound = 100
offset = -20, var(2)
postype = back
attr = a,hp
animtype = diagup
guardflag = LA
damage = 35,5
pausetime = 9, 9
guard.pausetime = 0, 0
sparkno = S1103
hitsound = S1,0
ground.velocity = -1,-2
air.velocity = -2,-1
fall = 1
fall.recover = 0

[State 1101, 7]
type = ChangeState
trigger1 =   NumProjID(1569)= 0
trigger1 = time > 30
value = 50
ctrl = 1
;-------------------------------------------------------------
;helper de MISIL COHETE
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1100
poweradd = 200

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 1
value = 50800,11
channel = 0

[State 191, 2]
type = Helper
trigger1 = AnimElem = 1
id = 1003
name = "mis"
pos = 5, 0
postype = p1
stateno = 11011
helpertype = normal
keyctrl = 0

[State 210, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
Ctrl = 1

[statedef 11011];ミサイル初期微動
type = A
movetype = I
physics = N
anim = 1003

[state 11011]
type = MakeDust
trigger1 = time >= 0
pos = -10, 0

[state 11011]
type = Veladd
trigger1 = Time >= 0
X = 0.03

[State 11011]
type = Velset
trigger1 = Time >= 0
Y = 0.4

[state 11011]
type = changestate
trigger1 = animelem =2
value = 1102


[statedef 1102];ミサイル飛びます
type = A
movetype = A
physics = N
anim = 1004

[state 1102]
type = MakeDust
trigger1 = time >= 0
pos = -10, 0

[State 1102];下降
type = VelAdd
trigger1 = Pos Y >= -10
Y = -0.05



[State 1102];前進１
type = VelAdd
trigger1 = time > 60
trigger1 = time < 80
X = 0.2

[State 1102];前進２
type = Veladd
trigger1 = time = 80
X = 1

[State 1102]
type = Veladd
triggerall = Timemod = 20,0
triggerall = Time >= 60
trigger1 = P2Dist Y > 20
trigger1 = Vel Y < 3
Y = 4

[State 1102]
type = Velset
triggerall = Timemod = 20,10
triggerall = Time >= 60
trigger1 = P2Dist Y > 60
trigger1 = P2Dist Y < 20
;trigger2 = Pos Y >= 40
Y = 0

[State 1102]
type = Veladd
triggerall = Timemod = 20,0
triggerall = Time >= 60
trigger1 = P2Dist Y < 60
trigger1 = Vel Y > -3
trigger2 = Pos Y >= 40
Y = -4

[State 1102]
type = VelAdd
trigger1 = Pos Y >= 0
Y = -0.07


[State 1102]
type = VelAdd
trigger1 = time > 60
trigger1 = P2Dist X > 5
trigger2 = Vel X < -8
X = 0.1

[State 1102]
type = VelAdd
trigger1 = time > 60
trigger1 = P2Dist X < -5
trigger2 = Vel X > 8
X = -0.1

[State 1102]
type = AngleSet
Trigger1 = Time = 0
value = 0

[State 1102];監視
type = AngleAdd
trigger1 = Time >= 100
trigger1 = P2Dist Y < 20
trigger1 = P2Dist Y > -100
value = 0.8

[State 1102];監視
type = AngleAdd
trigger1 = Time >= 100
trigger1 = P2Dist Y > 60
trigger1 = P2Dist Y < 200
value = -0.8

[State 1102];監視
type = Angleset
trigger1 = P2Dist Y = 50
value = 0

[State 1102];回転
type = AngleDraw
aTrigger1 = Time >= 0
trigger1 = Pos Y <= 360
trigger1 = Pos Y >= -360

[State 1102];追い越し振り向き
type = turn
trigger1 = P2Dist X <= 0

[state 1102]
type = hitdef
trigger1 = animelem >= 1
attr = A,SA
damage = 20,3
animtype = light
hitsound = s0,1
guardsound = s0,1
guardflag = ma
pausetime = 0,10
ground.type = high
ground.slidetime = 5
ground.hittime = 5
ground.velocity = -4.5,0
air.velocity = -4.5,-2

[state 1102];ミサイル存在時間
type = destroyself
trigger1 = time = 460

[state 1102]
type = changestate
trigger1 = movecontact = 1
value = 1103

[statedef 1103];ヒートエンドォ（違
type = A
movetype = I
physics = N
anim = 1103
sprpriority = 2

[state 1103]
type = veladd
trigger1 = vel x > 0
x = -0.2

[state 1103]
type = veladd
trigger1 = vel x < 0
x = 0.2

[state 1103]
type = destroyself
trigger1 = animtime = 0
;-----------------------------------------------------------------
;-----------------------------------------------------------------
 ;shion helper
[Statedef 370]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 5121
poweradd = -1000

[State 370, pause]
type = SuperPause
triggerall = p2name != "sirio"
trigger1 = AnimElem = 2
time = 55
anim = -1
movetime = 20

[State 370, 3]
type = PlaySnd
trigger1 = AnimElem = 3
value = 72, 11
channel = 1

[State 370, 6]
type = helper
triggerall = p2name != "sirio"
trigger1 = p4name != "sirio"
trigger1 = AnimElem = 3
id = 1506
name = "Shiryu"
postype = p1
pos = 24, 6
stateno = 1506
helpertype = normal
keyctrl = 0
ownpal = 1

[State 370, 7]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Time = 400
value = 1509
ctrl = 1
;-------------------------------------------


;-----------------------------------------------------------
;                      SIRIO HELPER
;-----------------------------------------------------------

;shiryu(helper) state
[Statedef 1506]
type    = S
physics = S
ctrl = 0
anim = 1506

[State 1506, 0]
type = Sprpriority
trigger1 = time = 0
value = 1

[State 1506, 1]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 371


[State 1506, 0.1]
type = AfterImage
trigger1 = time = 4
time = 20
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1506, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1506, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1506, 3]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 1506, 4]
type = Helper
trigger1 = AnimElem = 18
pos = 0, 0
postype = p1
stateno = 1508
helpertype = player

[State 1506 , 5]
type = destroyself
trigger1 =animtime=0

[State 1506, 6]
type = PlaySnd
trigger1 = AnimElem = 1
value = 50800, 14
channel = 1

[State 1506, 8]
type = PlaySnd
trigger1 = AnimElem = 19
value = 50800, 15
channel = 1

[State 1506, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 1509
ctrl = 1
;-----------------------------------------------------------------------

[Statedef 1508];muro de cristal
type = S
movetype = A
physics = S
anim =1507
juggle = 0
velset = 0
ctrl = 0


[State 1508]
type = PlaySnd
trigger1 = AnimElem = 1
value = 50800, 13
channel = 1

[State 1508 , 1]
type = sprpriority
trigger1 =1
value =-5

[State 1508 , 2]
type = HitDef
trigger1 = time =0
priority = 5
attr = S, NA
damage = 100,10
getpower = 50
givepower = 30
animtype = hard
guardflag = HA
sparkxy = 45,-104
sparkno =-1
hitsound = S202,0
guardsound = S202,0
pausetime = 10,15
ground.hittime = 100
ground.type = hight
ground.slidetime = 120
ground.velocity = -10,-30
air.velocity = -40,-30

[State 1508 explod]
type = Explod
trigger1 = movehit=1
anim =1508
id =54
pos =3,-10
scale=1
postype = p1
sprpriority = 5
supermove =1
ontop =1
ignorehitpause = 0
ownpal = 1
bindtime =-1
persistent = 0

[State 1508 , 3]
type = destroyself
trigger1 = animtime = 0


[Statedef 1509];levantandose Albafica
type = S
movetype = A
physics = S
anim =1601
juggle = 0
velset = 0
ctrl = 0

[State 1509 , 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

