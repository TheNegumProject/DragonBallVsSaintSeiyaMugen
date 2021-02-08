;========[Silver Mode - Specials from BuYu Retsudan)

; Energy Laser
[Statedef 1100]
type = U
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0

[State 1000, Helper]
type = Helper
trigger1 = !time
trigger1 = prevstateno = [150,153]
postype = p1
pos = 0,0
stateno = 999
bindtime = -1
ownpal = 1
name = "counter fx"
ID = 999


[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 246
pos = 56,-66
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = !time
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1200
value = 1200

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,10
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,14
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =5
postype = p1
pos = 56,-66
stateno = 1105
bindtime = 1
ownpal = 1
name = "Laser"
ID = 11000


[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 0
ctrl = 1

; Energy Laser Med
[Statedef 1101]
type = U
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0

[State 1000, Helper]
type = Helper
trigger1 = !time
trigger1 = prevstateno = [150,153]
postype = p1
pos = 0,0
stateno = 999
bindtime = -1
ownpal = 1
name = "counter fx"
ID = 999


[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 246
pos = 56,-66
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = !time
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1200
value = 1200

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,10
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,14
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =5
postype = p1
pos = 56,-66
stateno = 1105
bindtime = 1
ownpal = 1
name = "Laser"
ID = 11000

[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 0
ctrl = 1




; Energy Laser Strong
[Statedef 1102]
type = U
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0

[State 1000, Helper]
type = Helper
trigger1 = !time
trigger1 = prevstateno = [150,153]
postype = p1
pos = 0,0
stateno = 999
bindtime = -1
ownpal = 1
name = "counter fx"
ID = 999


[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 246
pos = 56,-66
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = !time
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1200
value = 1200

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,10
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,14
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =5
postype = p1
pos = 56,-66
stateno = 1105
bindtime = 1
ownpal = 1
name = "Laser"
ID = 11000

[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 0
ctrl = 1



; The Energy Shot
[Statedef 1105]
type = S
movetype = A
physics = N
velset = ifelse(parent, stateno =1100,6,ifelse(parent,stateno=1101,9,12)),0
anim = 1201
sprpriority = 2
juggle = 2
ctrl = 0

[State 0, 1]
type = ParentVarAdd
trigger1 = !time
v =  9
value = -100

[State 4001, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 3031, 1]
type = AfterImage
trigger1 = Time = 0
time = 9999
PalBright   =   0,  0,  0
PalContrast = 120,120,120
PalAdd      =  0,0,0 ;29, 29, 29
PalMul      = .77,.77,.77
trans = add
timegap =2
framegap = 2




[State 4001, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype = Hard
damage = 60,5
hitflag = MAFD
guardflag = MA
pausetime = 0, 9
sparkno = 3
sparkxy = 0,0
hitsound = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 26
ground.velocity = -4,-4
guard.velocity = -2
air.velocity = -4,-4
airguard.velocity = -2,-1
down.velocity = -4,-4
down.hittime = 26
palfx.color = 0
fall = 1
fall.recover = 0
envshake.time = 10
fall.envshake.time = 0

[State 4001, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 4001, HitOverride]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 4001, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 2512, Helper Hits Count Too]
type = ParentVarSet ; Only works for helpers.
trigger1 = UniqHitCount != Var(20)
v = 19
value = 1

[State 2512, Helper Hits Count Too]
type = VarSet
trigger1 = UniqHitCount != Var(20)
v = 20
value = UniqHitCount

[State 4001, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -70 || time = 80

; Energy Claw
[Statedef 1110]
type = U
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0

[State 1000, Helper]
type = Helper
trigger1 = !time
trigger1 = prevstateno = [150,153]
postype = p1
pos = 0,0
stateno = 999
bindtime = -1
ownpal = 1
name = "counter fx"
ID = 999


[State 0, 1]
type = Explod
trigger1 = AnimElem = 8
anim = 225
pos = 0,-0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = animelem = 8
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1210
value = 1210

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1,8
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =9
postype = p1
pos = 0,-0
stateno = 1115
bindtime = 1
ownpal = 1
name = "Ground Wave"
ID = 11000


[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 0
ctrl = 1

; Energy Laser Med
[Statedef 1111]
type = U
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0

[State 1000, Helper]
type = Helper
trigger1 = !time
trigger1 = prevstateno = [150,153]
postype = p1
pos = 0,0
stateno = 999
bindtime = -1
ownpal = 1
name = "counter fx"
ID = 999


[State 0, 1]
type = Explod
trigger1 = AnimElem = 8
anim = 225
pos = 0,-0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = animelem = 8
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1210
value = 1210

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1,8
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =9
postype = p1
pos = 0,-0
stateno = 1115
bindtime = 1
ownpal = 1
name = "Ground Wave"
ID = 11000

[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 0
ctrl = 1




; Energy Laser Strong
[Statedef 1112]
type = U
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0

[State 1000, Helper]
type = Helper
trigger1 = !time
trigger1 = prevstateno = [150,153]
postype = p1
pos = 0,0
stateno = 999
bindtime = -1
ownpal = 1
name = "counter fx"
ID = 999


[State 0, 1]
type = Explod
trigger1 = AnimElem = 8
anim = 225
pos = 0,-0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = animelem = 8
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1210
value = 1210

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1,8
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =9
postype = p1
pos = 0,-0
stateno = 1115
bindtime = 1
ownpal = 1
name = "Ground Wave"
ID = 11000

[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 0
ctrl = 1



; The Energy Shot
[Statedef 1115]
type = S
movetype = A
physics = N
velset = 12,0
anim = 1007
sprpriority = 2
juggle = 2
ctrl = 0

[State 0, 1]
type = ParentVarAdd
trigger1 = !time
v =  9
value = -150

[State 4001, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 3031, 1]
type = AfterImage
trigger1 = Time = 0
time = 9999
PalBright   =   0,  0,  0
PalContrast = 120,120,120
PalAdd      =  0,0,0 ;29, 29, 29
PalMul      = .77,.77,.77
trans = add
timegap =1
framegap = 2




[State 4001, HitDef]
type = HitDef
trigger1 = Uniqhitcount = 0
attr = S, SP
animtype = Hard
damage = 90,5
hitflag = MAFD
guardflag = MA
pausetime = 0, 9
sparkno = 3
sparkxy = 0,-30
hitsound = s5,9
guardsound = 6,0
ground.type = Low
ground.slidetime = 13
ground.hittime = 26
ground.velocity = -12
guard.velocity = -2
air.velocity = -12,-2
airguard.velocity = -2,-1
down.velocity = -12,-4
down.hittime = 26
palfx.color = 0
air.fall = 1
fall.recover = 0
envshake.time = 10
fall.envshake.time = 0

[State 4001, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 4001, HitOverride]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1037
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 4001, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 2512, Helper Hits Count Too]
type = ParentVarSet ; Only works for helpers.
trigger1 = UniqHitCount != Var(20)
v = 19
value = 1

[State 2512, Helper Hits Count Too]
type = VarSet
trigger1 = UniqHitCount != Var(20)
v = 20
value = UniqHitCount

[State 4001, ChangeState]
type = ChangeState
trigger1 = MoveContact = 1
value = 1037

[State 4001, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -70

; Triple Shot
[Statedef 1120]
type = U
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0

[State 1000, Helper]
type = Helper
trigger1 = !time
trigger1 = prevstateno = [150,153]
postype = p1
pos = 0,0
stateno = 999
bindtime = -1
ownpal = 1
name = "counter fx"
ID = 999

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2 || AnimElem = 10 || AnimElem = 18
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2 || AnimElem = 10 || AnimElem = 18
anim = 1005
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1220
value = 1220

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,7
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 13
value = 1,10
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 21
value = 1,11
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem =5 || AnimElem = 13 || Animelem = 21
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =5 || AnimElem = 13 
postype = p1
pos = 47,-56
stateno = 1125
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 11000

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = Animelem = 21
postype = p1
pos = 47,-56
stateno = 1126
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 11000

[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 0
ctrl = 1



; The Energy Shot
[Statedef 1125]
type = S
movetype = A
physics = N
velset = 9,0
anim = 1001
sprpriority = 2
juggle = 2
ctrl = 0

[State 0, 1]
type = ParentVarAdd
trigger1 = !time
v =  9
value = -100

[State 4001, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 3031, 1]
type = AfterImage
trigger1 = Time = 0
time = 9999
PalBright   =   0,  0,  0
PalContrast = 120,120,120
PalAdd      =  0,0,0 ;29, 29, 29
PalMul      = .77,.77,.77
trans = add
timegap =1
framegap = 2

[State 0, 1]
type = Explod
trigger1 = time%5 = 0
anim = 993
postype = p1
pos = -20,0
sprpriority = 3
supermove = 1
ownpal = 1
random = 0,20
vel = -.5,ifelse(random <500,.5,-.5)


[State 4001, HitDef]
type = HitDef
trigger1 = UniqHitCount = 0
trigger1 = p2stateno != 5070
trigger1 = p2stateno != 5071
attr = S, SP
animtype = Medium
damage = 50,3
hitflag = MAFD
guardflag = MA
pausetime = 0, 9
sparkno = -1
sparkxy = 0,-35
hitsound = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 26
ground.velocity = -12,0
guard.velocity = -6
air.velocity = -12,-2
airguard.velocity = -6,-1
down.velocity = -12,0
down.hittime = 26
envshake.time = 10

[State 4001, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 4001, HitOverride]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 4001, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 2512, Helper Hits Count Too]
type = ParentVarSet ; Only works for helpers.
trigger1 = UniqHitCount != Var(20)
v = 19
value = 1

[State 2512, Helper Hits Count Too]
type = VarSet
trigger1 = UniqHitCount != Var(20)
v = 20
value = UniqHitCount

[State 4001, ChangeState]
type = ChangeState
trigger1 = MoveContact = 1
trigger2 = Pos Y > -10
value = 1006

[State 4001, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -70

; The Energy Shot
[Statedef 1126]
type = S
movetype = A
physics = N
velset = 9,0
anim = 1001
sprpriority = 2
juggle = 2
ctrl = 0

[State 0, 1]
type = ParentVarAdd
trigger1 = !time
v =  9
value = -150

[State 4001, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 3031, 1]
type = AfterImage
trigger1 = Time = 0
time = 9999
PalBright   =   0,  0,  0
PalContrast = 120,120,120
PalAdd      =  0,0,0 ;29, 29, 29
PalMul      = .77,.77,.77
trans = add
timegap =1
framegap = 2

[State 0, 1]
type = Explod
trigger1 = time%5 = 0
anim = 993
postype = p1
pos = -20,0
sprpriority = 3
supermove = 1
ownpal = 1
random = 0,20
vel = -.5,ifelse(random <500,.5,-.5)


[State 4001, HitDef]
type = HitDef
trigger1 = UniqHitCount = 0
trigger1 = p2stateno != 5070
trigger1 = p2stateno != 5071
attr = S, SP
animtype = Medium
damage = 65,5
hitflag = MAFD
guardflag = MA
pausetime = 0, 9
sparkno = -1
sparkxy = 0,-35
hitsound = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 26
ground.velocity = -12,0
guard.velocity = -6
air.velocity = -12,-2
airguard.velocity = -6,-1
down.velocity = -12,0
down.hittime = 26
palfx.color = 0
fall = 1
fall.recover = 0
envshake.time = 10

[State 4001, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 4001, HitOverride]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 4001, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 2512, Helper Hits Count Too]
type = ParentVarSet ; Only works for helpers.
trigger1 = UniqHitCount != Var(20)
v = 19
value = 1

[State 2512, Helper Hits Count Too]
type = VarSet
trigger1 = UniqHitCount != Var(20)
v = 20
value = UniqHitCount

[State 4001, ChangeState]
type = ChangeState
trigger1 = MoveContact = 1
trigger2 = Pos Y > -10
value = 1006

[State 4001, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -70

;Palm Smack
[Statedef 1130]
type = A
physics = N
ctrl = 0
anim = 105

[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = -10
y = -4

[State 1331, AfterImage]
type = AfterImage
trigger1 = !Time 
time = 20
length = 12
timegap = 2
framegap = 1
trans = add
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 140,140,140
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 0.65,0.65,0.65


[State 0, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 4

[State 106, 2]
type = PlaySnd
trigger1 = Time = 0 
value = 0,5
channel = 2

[State 106, 3]
type = veladd
trigger1 = time = 10
x = .06

[State 106, 3]
type = VelAdd
trigger1 = Time > 1
y = 1

[State 106, 4]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1131

;Palm Smash
[Statedef 1131]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 1230
poweradd = 40

[State 1331, AfterImage]
type = AfterImage
trigger1 = !Time 
time = 20
length = 12
timegap = 2
framegap = 1
trans = add
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 140,140,140
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 0.65,0.65,0.65

[State 0, ]
type = PosSet
trigger1 = !time
y = 0
;ignorehitpause = 0
;persistent = 1



[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 7
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 2

[State 100, 1]
type = MakeDust
trigger1 = AnimElemTime(3) < 0
pos = 0, 0
spacing = 1

[State 410, 1]
type = VelSet
trigger1 = AnimElemTime(3) < 0
x = 8

[State 0, 1]
type = Explod
trigger1 = AnimElem = 3
anim = 246
pos = 55,-65
postype = p1
facing = 1
vfacing = 1
bindtime = -1
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 4001, HitDef]
type = HitDef
trigger1 = !time
attr = S, SA
animtype = Back
damage = 85,5
hitflag = MAFD
guardflag = MA
pausetime = 0, 9
sparkno = 3
sparkxy = 0,-68
hitsound = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 23
ground.hittime = 26
ground.velocity = -15,-2
guard.velocity = -4
air.velocity = -15,-2
airguard.velocity = -4,-2
down.velocity = -3,-1
down.hittime = 26
getpower = 0
envshake.time = 10
fall.envshake.time = 10
fall = 1
fall.recover = 0
sprpriority = 5


[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Palm Smack
[Statedef 1132]
type = A
physics = N
ctrl = 0
anim = 105

[State 1331, AfterImage]
type = AfterImage
trigger1 = !Time 
time = 20
length = 12
timegap = 2
framegap = 1
trans = add
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 140,140,140
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 0.65,0.65,0.65

[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = -10
y = -4


[State 0, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 4

[State 106, 2]
type = PlaySnd
trigger1 = Time = 0 
value = 0,5
channel = 2

[State 106, 3]
type = veladd
trigger1 = time = 10
x = .06

[State 106, 3]
type = VelAdd
trigger1 = Time > 1
y = 1

[State 106, 4]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1133

;Palm Smash
[Statedef 1133]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 1230
poweradd = 40

[State 1331, AfterImage]
type = AfterImage
trigger1 = !Time 
time = 20
length = 12
timegap = 2
framegap = 1
trans = add
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 140,140,140
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 0.65,0.65,0.65

[State 0, ]
type = PosSet
trigger1 = !time
y = 0
;ignorehitpause = 0
;persistent = 1



[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 7
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 2

[State 100, 1]
type = MakeDust
trigger1 = AnimElemTime(3) < 0
pos = 0, 0
spacing = 1

[State 410, 1]
type = VelSet
trigger1 = AnimElemTime(3) < 0
x = 12

[State 0, 1]
type = Explod
trigger1 = AnimElem = 3
anim = 246
pos = 55,-65
postype = p1
facing = 1
vfacing = 1
bindtime = -1
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 4001, HitDef]
type = HitDef
trigger1 = !time
attr = S, SA
animtype = Back
damage = 85,5
hitflag = MAFD
guardflag = MA
pausetime = 0, 9
sparkno = 3
sparkxy = 0,-68
hitsound = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 23
ground.hittime = 26
ground.velocity = -15,-2
guard.velocity = -4
air.velocity = -15,-2
airguard.velocity = -4,-2
down.velocity = -3,-1
down.hittime = 26
getpower = 0
envshake.time = 10
fall.envshake.time = 10
fall = 1
fall.recover = 0
sprpriority = 5


[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Palm Smack
[Statedef 1134]
type = A
physics = N
ctrl = 0
anim = 105
[State 1331, AfterImage]
type = AfterImage
trigger1 = !Time 
time = 20
length = 12
timegap = 2
framegap = 1
trans = add
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 140,140,140
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 0.65,0.65,0.65


[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = -10
y = -4


[State 0, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 4

[State 106, 2]
type = PlaySnd
trigger1 = Time = 0 
value = 0,5
channel = 2

[State 106, 3]
type = veladd
trigger1 = time = 10
x = .06

[State 106, 3]
type = VelAdd
trigger1 = Time > 1
y = 1

[State 106, 4]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1135

;Palm Smash
[Statedef 1135]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 1230
poweradd = 40

[State 1331, AfterImage]
type = AfterImage
trigger1 = !Time 
time = 20
length = 12
timegap = 2
framegap = 1
trans = add
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 140,140,140
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 0.65,0.65,0.65


[State 0, ]
type = PosSet
trigger1 = !time
y = 0
;ignorehitpause = 0
;persistent = 1



[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 7
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 2

[State 100, 1]
type = MakeDust
trigger1 = AnimElemTime(3) < 0
pos = 0, 0
spacing = 1

[State 410, 1]
type = VelSet
trigger1 = AnimElemTime(3) < 0
x = 16

[State 0, 1]
type = Explod
trigger1 = AnimElem = 3
anim = 246
pos = 55,-65
postype = p1
facing = 1
vfacing = 1
bindtime = -1
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 4001, HitDef]
type = HitDef
trigger1 = !time
attr = S, SA
animtype = Back
damage = 105,5
hitflag = MAFD
guardflag = MA
pausetime = 0, 9
sparkno = 3
sparkxy = 0,-68
hitsound = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 23
ground.hittime = 26
ground.velocity = -15,-2
guard.velocity = -4
air.velocity = -15,-2
airguard.velocity = -4,-2
down.velocity = -3,-1
down.hittime = 26
getpower = 0
envshake.time = 10
fall.envshake.time = 10
fall = 1
fall.recover = 0
sprpriority = 5


[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;Headbutt
[Statedef 1140]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1240
poweradd = 40



[State 0, 1]
type = VelSet
trigger1 = Animelemtime(2) < 0
x = 1
y = -1
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = VelSet
trigger1 = Animelem = 2
x = 0
y = 0



[State 0, 1]
type = VelSet
trigger1 = AnimElem = 5
x = 8




[State 1331, AfterImage]
type = AfterImage
trigger1 = AnimElem = 5 
time = 20
length = 12
timegap = 2
framegap = 1
trans = add
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 140,140,140
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 0.65,0.65,0.65


[State 0, ]
type = PosSet
trigger1 = !time
y = 0
;ignorehitpause = 0
;persistent = 1



[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 7
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0, 2

[State 4001, HitDef]
type = HitDef
trigger1 = !time
attr = S, SA
animtype = Back
damage = 75,5
hitflag = MA
guardflag = MA
pausetime = 0, 9
sparkno = 3
sparkxy = 0,-68
hitsound = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 15
air.hittime = 30
;guard.ctrltime = 0
;guard.dist = 
yaccel = 0.4
ground.velocity = -20,-0
guard.velocity = -6
air.velocity = -20,-0
airguard.velocity = -3,-3
fall = 1
fall.recover = 0
getpower = 40,20
givepower = 10,40
envshake.time = 10
fall.envshake.time = 10
p2stateno = 1146
p2facing = 1

[State 1510, 5]
type = Varset
trigger1 = !time && Var(0)
var(0) = 0
[State 0, 1]
type = ChangeState
trigger1 = Time = 30 || movehit
value = 1145

;Headbutt
[Statedef 1141]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1241
poweradd = 40

[State 1510, 5]
type = Varset
trigger1 = !time && Var(0)
var(0) = 0

[State 0, 1]
type = VelSet
trigger1 = Animelemtime(2) < 0
x = 1.5
y = -.75
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = VelSet
trigger1 = Animelem = 2
x = 0
y = 0



[State 0, 1]
type = VelSet
trigger1 = AnimElem = 5
x = 12




[State 1331, AfterImage]
type = AfterImage
trigger1 = AnimElem = 5 
time = 20
length = 12
timegap = 2
framegap = 1
trans = add
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 140,140,140
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 0.65,0.65,0.65


[State 0, ]
type = PosSet
trigger1 = !time
y = 0
;ignorehitpause = 0
;persistent = 1



[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 7
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0, 2

[State 4001, HitDef]
type = HitDef
trigger1 = !time
attr = S, SA
animtype = Back
damage = 75,5
hitflag = MA
guardflag = MA
pausetime = 0, 9
sparkno = 3
sparkxy = 0,-68
hitsound = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 15
air.hittime = 30
;guard.ctrltime = 0
;guard.dist = 
yaccel = 0.4
ground.velocity = -20,-0
guard.velocity = -6
air.velocity = -20,-0
airguard.velocity = -3,-3
fall = 1
fall.recover = 0
getpower = 40,20
givepower = 10,40
envshake.time = 10
fall.envshake.time = 10
p2stateno = 1146
p2facing = 1


[State 0, 1]
type = ChangeState
trigger1 = Time = 35 || movehit
value = 1145

;Headbutt
[Statedef 1142]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1242
poweradd = 40


[State 0, 1]
type = VelSet
trigger1 = Animelemtime(2) < 0
x = 1
y = -1
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = VelSet
trigger1 = Animelem = 2
x = 0
y = 0



[State 0, 1]
type = VelSet
trigger1 = AnimElem = 7
x = 15




[State 1331, AfterImage]
type = AfterImage
trigger1 = AnimElem = 7 
time = 20
length = 12
timegap = 2
framegap = 1
trans = add
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 140,140,140
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 0.65,0.65,0.65


[State 0, ]
type = PosSet
trigger1 = !time
y = 0
;ignorehitpause = 0
;persistent = 1



[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1, 7
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0, 2

[State 4001, HitDef]
type = HitDef
trigger1 = !time
attr = S, SA
animtype = Back
damage = 125,5
hitflag = MA
guardflag = MA
pausetime = 0, 9
sparkno = 3
sparkxy = 0,-68
hitsound = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 26
ground.velocity = -30,-2
guard.velocity = -4
air.velocity = -30,-2
airguard.velocity = -4,-2
down.velocity = -30,-1
down.hittime = 26
fall = 1
fall.recover = 0
getpower = 40,20
givepower = 10,40
envshake.time = 10
fall.envshake.time = 10
p2stateno = 3025
p2facing = 1

[State 1510, 5]
type = Varset
trigger1 = movehit
var(0) = 1

[State 1510, 5]
type = Screenbound
trigger1 = var(0) 
value = 0
movecamera = 0,0


[State 1510, 5]
type = Varset
trigger1 = !time && Var(0)
var(0) = 0

[State 0, 1]
type = ChangeState
trigger1 = Time = 45 || movehit
value = 1145


;Headbutt land
[Statedef 1145]
type = A
physics = N
ctrl = 0
anim = 1245

[State 1510, 5]
type = Screenbound
trigger1 = var(0) 
value = 0
movecamera = 0,0

[State 1000, ChangeState]
type = ChangeState
trigger1 = backedgedist < -10 
value = 3021

[State 0, 1]
type = VelSet
trigger1 = Vel X > 0
x = 0
;y = 
;ignorehitpause = 0
;persistent = 1



[State 105, 1]
type = VelSet
trigger1 = Vel X < 0
x = 0



[State 0, 1]
type = StateTypeSet
trigger1 = Animelem = 3, 5
physics = A
;ignorehitpause = 0
;persistent = 1



;[State 0, ]
;type = Gravity
;trigger1 = Animelem = 3, 5
;;ignorehitpause = 0
;persistent = 1

; Wira Attack
[Statedef 1146]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1025, Anim] ;Custom animation
type = ChangeAnim
trigger1 = 1
value = 5012

[State 1025, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1147

;------------------
; Hit by Fast Kung Fu Palm - flying through the air
; (a custom gethit state)
[Statedef 1147]
type    = A
movetype= H
physics = N

[State 1026, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1



[State 1026, No scroll]
type = ScreenBound
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1026, Hit wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 1148

[State 1026, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 1148]
type    = A
movetype= H
physics = N

[State 1027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1027, Anim]
type = ChangeAnim
trigger1 = Time = 0
value = 5030

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F5,4

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0 || time >= 5
value = 1149

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 1149]
type    = A
movetype= H
physics = N

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -10

[State 1028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 3.6

[State 1028, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)


[State 0, 2]
type = Gravity
trigger1 = 1
;ignorehitpause = 0
;persistent = 1



[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100


;Low attack
[Statedef 1150]
type = S
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0
anim = 1054
juggle = 4

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,9
volume = 255
channel = 0

[State 1331, AfterImage]
type = AfterImage
trigger1 = Time = 11
time = 20
length = 12
timegap = 2
framegap = 1
trans = add
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 140,140,140
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 0.65,0.65,0.65

[State 106, 2]
type = PlaySnd
trigger1 = Time = 11
value = 0,9
channel = 2

[State 0, 1]
type = PosAdd
trigger1 = animtime = 0 
x = P2dist X - 150 

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1151

;Strong Slide
[Statedef 1151]
type = C
movetype = A
physics = C
velset = 0
ctrl = 0
anim = 440
poweradd = 10
juggle = 6

[State 210, 1]
type = PlaySnd
trigger1 = Time = 4
value = 2, 1

[State 210, 1]
type = PlaySnd
trigger1 = Time = 4
value = 0, 10

[State 100, 1]
type = MakeDust
trigger1 = AnimElemTime(1) >=0 && AnimElemTime(4) < 0
pos = 0, 0
spacing = 1

[State 410, 1]
type = VelSet
trigger1 = AnimElemTime(1) >=0 && AnimElemTime(4) < 0
x = 9

[State 430, 1]
type = HitDef
trigger1 = Time = 0
attr = C, SA
damage    = 70, 4
animtype = Medium
guardflag = LA
hitflag = MAFD
hitsound = s5,9
guardsound = 6,0
pausetime = 14,14
sparkno = 3
sparkxy = -10,-25
ground.type = Trip
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -3.5,-8.4
air.velocity = -3.5,-8.4
guard.velocity = -7
fall = 1
fall.recover = 0
yaccel = 0.6

[State 430, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;Aerial Dance
[Statedef 1160]
type =A
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0
juggle =4
anim = 1260


[State 0, 1]
type = VelSet
trigger1 = AnimElemtime(3) >= 0
x = 8
y = 8
persistent = 1


[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,7
volume = 255
channel = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 3 
value = 0,2
persistent = 0

[State 0, 2]
type = HitDef
trigger1 = AnimElem = 3 
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = High
priority = 5,Hit
damage = 25,4
pausetime = 10,10
sparkno = 3
sparkxy = 10,-10
hitsound = s0,8
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 10
ground.hittime = 15
guard.hittime = 15
air.hittime = 20
yaccel = 0.5
ground.velocity = -5
guard.velocity = -6
air.velocity = -3,-3
airguard.velocity = -4
guard.cornerpush.veloff = 0
sprpriority = 3
fall = 1
fall.recover = 0
envshake.time = 10
fall.envshake.time = 10
p1stateno = 1161
kill = 0

[State 0, 1]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52
ignorehitpause = 1

;Finish
[Statedef 1161]
type = A
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0
anim = 1261



[State 0, 1]
type = TargetBind
trigger1 = !time 
time = 1
;ID = -1
pos = 10,0
;ignorehitpause = 0
;persistent = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = 1,7
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 10
value = 1,8
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 || Animelem = 10
value = 0,2
volume = 255



[State 0, ]
type = VelSet
trigger1 = AnimTime = 0
x = -5
y = -6
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = HitDef
trigger1 = animelem = 2
attr = a,sa
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = Hard
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 25,3
pausetime = 10,25
;guard.pausetime = 0,0
sparkno = 3
;guard.sparkno = 
sparkxy = -10,-30
hitsound = s0,8 
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 15
air.hittime = 30
;guard.ctrltime = 0
;guard.dist = 
;yaccel = 0
ground.velocity = -5
guard.velocity = -6
air.velocity = -3,3
airguard.velocity = -5,-3
air.fall = 1
fall.recover = 0
getpower = 20,40
givepower = 10,40
envshake.time = 5
fall.envshake.time = 10
kill = 0

[State 0, 1]
type = HitDef
trigger1 = animelem = 10
attr = a,sa
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = Hard
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 40,5
pausetime = 10,10
;guard.pausetime = 0,0
sparkno = 3
;guard.sparkno = 
sparkxy = -10,-45
hitsound = s5,9 
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 15
air.hittime = 30
;guard.ctrltime = 0
;guard.dist = 
;yaccel = 0
ground.velocity = -10,-3
guard.velocity = -6
air.velocity = -10,-3
airguard.velocity = -3,-3
fall = 1
fall.recover = 0
getpower = 40,20
givepower = 10,40
envshake.time = 10
fall.envshake.time = 10


[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50


;========[Gold Mode - Specials from Shin Butoden 3)

; Destructo Disc
[Statedef 1300]
type = U
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0
anim = 1300

[State 1000, Helper]
type = Helper
trigger1 = !time
trigger1 = prevstateno = [150,153]
postype = p1
pos = 0,0
stateno = 999
bindtime = -1
ownpal = 1
name = "counter fx"
ID = 999


[State 0, 1]
type = Explod
trigger1 = AnimElem = 1
anim = 1305
pos = -18,-86
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ID = 1305
scale = .1,.1
removetime = 30

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 1305
pos = -17,-54
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ID = 1305
scale = .5,.5
removetime = 2



[State 0, 1]
type = ModifyExplod
trigger1 = AnimElemtime(2)<0
scale = .1+(time*.02),.1+(time*.02)
ID = 1305

[State 0, 1]
type = Explod
trigger1 = AnimElem = 3
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1



[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,16
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,18
volume = 255
channel = 2
loop = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,17
volume = 255
channel = 2

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =3
postype = p1
pos = 7,-51
stateno = 1305
bindtime = 1
ownpal = 1
name = "D. Disc"
ID = 11000
size.xscale = .5
size.yscale = .5

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 225
pos = 0,-0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 0
ctrl = 1

; Destructo Disc Med
[Statedef 1301]
type = U
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0
anim = 1300

[State 1000, Helper]
type = Helper
trigger1 = !time
trigger1 = prevstateno = [150,153]
postype = p1
pos = 0,0
stateno = 999
bindtime = -1
ownpal = 1
name = "counter fx"
ID = 999


[State 0, 1]
type = Explod
trigger1 = AnimElem = 1
anim = 1305
pos = -18,-86
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ID = 1305
scale = .1,.1
removetime = 30

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 1305
pos = -17,-54
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ID = 1305
scale = .5,.5
removetime = 2



[State 0, 1]
type = ModifyExplod
trigger1 = AnimElemtime(2)<0
scale = .1+(time*.02),.1+(time*.02)
ID = 1305

[State 0, 1]
type = Explod
trigger1 = AnimElem = 3
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1



[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,16
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,18
volume = 255
channel = 2
loop = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,17
volume = 255
channel = 2

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =3
postype = p1
pos = 7,-51
stateno = 1305
bindtime = 1
ownpal = 1
name = "D. Disc"
ID = 11000
size.xscale = .5
size.yscale = .5

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 225
pos = 0,-0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 0
ctrl = 1




; Destructo Disc Strong
[Statedef 1302]
type = U
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0
anim = 1300

[State 1000, Helper]
type = Helper
trigger1 = !time
trigger1 = prevstateno = [150,153]
postype = p1
pos = 0,0
stateno = 999
bindtime = -1
ownpal = 1
name = "counter fx"
ID = 999


[State 0, 1]
type = Explod
trigger1 = AnimElem = 1
anim = 1305
pos = -18,-86
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ID = 1305
scale = .1,.1
removetime = 30

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 1305
pos = -17,-54
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ID = 1305
scale = .5,.5
removetime = 2



[State 0, 1]
type = ModifyExplod
trigger1 = AnimElemtime(2)<0
scale = .1+(time*.02),.1+(time*.02)
ID = 1305

[State 0, 1]
type = Explod
trigger1 = AnimElem = 3
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1



[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,16
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,18
volume = 255
channel = 2
loop = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,17
volume = 255
channel = 2

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =3
postype = p1
pos = 7,-51
stateno = 1305
bindtime = 1
ownpal = 1
name = "D. Disc"
ID = 11000
size.xscale = .5
size.yscale = .5

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 225
pos = 0,-0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 0
ctrl = 1

; The Kienzan Disc
[Statedef 1305]
type = S
movetype = A
physics = N
anim = 1305
sprpriority = 2
juggle = 2
ctrl = 0



[State 0, 1]
type = ParentVarAdd
trigger1 = !time
v =  9
value = -150
;ignorehitpause = 0
;persistent = 1



[State 4001, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 3031, 1]
type = AfterImage
trigger1 = Time = 0
time = 9999
PalBright   =   0,  0,  0
PalContrast = 120,120,120
PalAdd      =  0,0,0 ;29, 29, 29
PalMul      = .77,.77,.77
trans = add
timegap =1
framegap = 2
length = 12

[State 2601, Fade In]
type = VelSet
trigger1 = !time 
x = ifelse(parent, stateno = 1300,11,ifelse(parent, stateno = 1301,13,15))*(ifelse(p2dist X<0,-1,1)*(p2dist X/(abs(p2dist X)+abs(p2dist Y-(p2statetype !=L*50)))))
y = ifelse(parent, stateno = 1300,11,ifelse(parent, stateno = 1301,13,15))*((p2dist Y-(p2statetype !=L*50))/(abs(p2dist X)+abs(p2dist Y-(p2statetype !=L*50))))



[State 4001, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype = Hard
damage = 105,5
hitflag = MAFD
guardflag = MA
pausetime = 0, 9
sparkno = 12
sparkxy = 0,0
hitsound = s5,7
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 26
ground.velocity = -15,-3
guard.velocity = -2
air.velocity = -15,-3
airguard.velocity = -2,-1
down.velocity = -4,-4
down.hittime = 26
palfx.color = 0
fall = 1
fall.recover = 0
envshake.time = 10
fall.envshake.time = 10

[State 4001, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 4001, HitOverride]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 4001, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 2512, Helper Hits Count Too]
type = ParentVarSet ; Only works for helpers.
trigger1 = UniqHitCount != Var(20)
v = 19
value = 1

[State 2512, Helper Hits Count Too]
type = VarSet
trigger1 = UniqHitCount != Var(20)
v = 20
value = UniqHitCount

[State 4001, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -70 || time = 80

;Slap Happy
[Statedef 1310]
type = S
movetype = A
physics = S
velset = 4, 0
ctrl = 0
anim = 1310

[State 1331, AfterImage]
type = AfterImage
trigger1 = !Time 
time = 20
length = 12
timegap = 2
framegap = 1
trans = add
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 140,140,140
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 0.65,0.65,0.65

[State 106, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,2
channel = 2


[State 0, 1]
type = HitDef
trigger1 = animelem = 3
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 10,5
pausetime = 10,10
snap = 40,0,0
sparkno = 3
sparkxy = -10,-60
hitsound = s0,8 
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 15
air.hittime = 30
ground.velocity = -5
guard.velocity = -6
air.velocity = -3,3
airguard.velocity = -5,-3
getpower = 40,20
givepower = 10,40
envshake.time = 5
fall.envshake.time = 10
p1stateno = 1311
p2stateno = 1315
p2getp1state = 1
kill = 0
guard.kill = 0


[State 1000, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


; The Smackdown
[Statedef 1311]
type    = S
movetype= A 
physics = S
velset = 0,0
ctrl = 0
anim = 1311



[State 0, 1]
type = PlayerPush
trigger1 = 1
value = 0
;ignorehitpause = 0
;persistent = 1



[State 202, 1]
type = HitDef
trigger1 = Animelem = 3 || Animelem = 5 || Animelem = 7 || Animelem = 9 || Animelem = 11 || Animelem = 13 
trigger2 = Animelem = 15 || Animelem = 17 || Animelem = 19 || Animelem = 21 || Animelem = 23 || Animelem = 25
trigger3 = Animelem = 27 || Animelem = 29 || Animelem = 31 || Animelem = 33 
attr = S, SA   
damage = 7,1
animtype = Heavy
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 4,4
sparkno = 0
sparkxy = 0,-55
hitsound = s0,8
guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -15,-4
air.velocity = -15,-4
fall = 1
fall.recover = 0
yaccel = .55
envshake.time = 20
fall.envshake.time = 10
p2stateno = 1315
kill = 0

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 38
attr = S, NA
damage   = 35
priority = 3
guardflag = MA
pausetime = 10,10
sparkno = 3
sparkxy =  0,-63
hitsound   = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 11
ground.hittime  = 11
ground.velocity = -15,-6
air.velocity = -15,-6
airguard.velocity = -3
envshake.time = 10
fall.envshake.time = 10
fall = 1
fall.recover = 0 
   

[State 0, ]
type = VelSet
trigger1 = AnimElem = 37
x = 9




[State 1475, 4.5]
type = Width
trigger1 = 1
edge = 50, 0

[State 0, 1]
type = PlaySnd
trigger1 = Animelem = 3 || Animelem = 5 || Animelem = 7 || Animelem = 9 || Animelem = 11 || Animelem = 13 
trigger2 = Animelem = 15 || Animelem = 17 || Animelem = 19 || Animelem = 21 || Animelem = 23 || Animelem = 25
trigger3 = Animelem = 27 || Animelem = 29 || Animelem = 31 || Animelem = 33 
value = 0,(random%3)
volume = 255

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 38 
value = 1,10

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA
value2 =
;time = 1
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = TargetBind
trigger1 = !time
time = 1
;ID = -1
pos = 40,0
;ignorehitpause = 0
;persistent = 1


[State 0, 1]
type = ChangeState
trigger1 = animTime = 0 
value = 0
ctrl =1


;Grounder-(Grounds opponent if hit in air)
[Statedef 1315]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 0, 1]
type = ChangeAnim2
trigger1 = !Time
value = 1059

[State 0, 2]
type = posset
trigger1 = 1
y = 0

[State 0, 2]
type = velset
trigger1 = Time = 0
y = 0

[State 0, 2]
type = HitFallSet
trigger1 = Time = 0
value = 0

[State 0, 3]
type = SelfState
trigger1 = time >= 40
value = 5000

;Rising Buster2
[Statedef 1320]
type =S
movetype = A
physics = S
poweradd = 40
velset = 0, 0
ctrl = 0
juggle =4
anim = 1320

[State 1000, Helper]
type = Helper
trigger1 = !time
trigger1 = prevstateno = [150,153]
postype = p1
pos = 0,0
stateno = 999
bindtime = -1
ownpal = 1
name = "counter fx"
ID = 999


[State 0, 1]
type = Explod
trigger1 = !time
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1


[State 0, 1]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = A
;movetype =
physics = N
;ignorehitpause = 0
persistent = 0

[State 0, 1]
type = NotHitBy
trigger1 = !time
value = SCA
time = 10

[State 0, 1]
type = VelSet
trigger1 = Anim = 1320 && AnimElem = 2
x = 2
y = -9.5
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = VelSet
trigger1 = time = 20
x = -.1
y = -.1


[State 0, 1]
type = VelSet
trigger1 = Vel X < 0
x = 0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = VelAdd
trigger1 = Anim = 44
y = .3
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = PlaySnd
trigger1 = Anim= 1320 && AnimElem = 2
value = 1,8
volume = 255
channel = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 0,7
persistent = 0

[State 0, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = DiagUp
priority = 5,Hit
damage = 115,10
pausetime = 10,10
sparkno = 3
sparkxy = 0,-100
hitsound = s5,9
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 10
ground.hittime = 15
guard.hittime = 15
air.hittime = 20
yaccel = 0.5
ground.velocity = -3,-10
guard.velocity = -6
air.velocity = -3,-10
airguard.velocity = -2
guard.cornerpush.veloff = -6
sprpriority = 3
fall = 1
fall.recover = 0
envshake.time = 10
fall.envshake.time = 10



[State 0, 1]
type = Explod
trigger1 = Animelem = 2
anim = 1015
ID = 1015
pos = 22,-87
postype = p1
bindtime = -1
sprpriority = 5
ignorehitpause = 1
removeongethit = 1
ownpal = 1
persistent = 0
scale = .5,.5

[State 0, 1]
type = ChangeAnim
trigger1 = time = 20
value = 44




[State 0, 1]
type = ChangeState
trigger1 = Vel Y >0 && Pos Y >= 0
value = 52
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

;Rising Buster2
[Statedef 1321]
type =S
movetype = A
physics = S
poweradd = 40
velset = 0, 0
ctrl = 0
juggle =4
anim = 1320

[State 1000, Helper]
type = Helper
trigger1 = !time
trigger1 = prevstateno = [150,153]
postype = p1
pos = 0,0
stateno = 999
bindtime = -1
ownpal = 1
name = "counter fx"
ID = 999


[State 0, 1]
type = Explod
trigger1 = !time
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1


[State 0, 1]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = A
;movetype =
physics = N
;ignorehitpause = 0
persistent = 0

[State 0, 1]
type = NotHitBy
trigger1 = !time
value = SCA
time = 15

[State 0, 1]
type = VelSet
trigger1 = Anim = 1320 && AnimElem = 2
x = 3
y = -11
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = VelSet
trigger1 = time = 20
x = -.1
y = -.1


[State 0, 1]
type = VelSet
trigger1 = Vel X < 0
x = 0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = VelAdd
trigger1 = Anim = 44
y = .5
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = PlaySnd
trigger1 = Anim= 1320 && AnimElem = 2
value = 1,8
volume = 255
channel = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 0,7
persistent = 0

[State 0, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = DiagUp
priority = 5,Hit
damage = 115,10
pausetime = 10,10
sparkno = 3
sparkxy = 0,-100
hitsound = s5,9
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 10
ground.hittime = 15
guard.hittime = 15
air.hittime = 20
yaccel = 0.5
ground.velocity = -3,-10
guard.velocity = -6
air.velocity = -3,-10
airguard.velocity = -2
guard.cornerpush.veloff = -6
sprpriority = 3
fall = 1
fall.recover = 0
envshake.time = 10
fall.envshake.time = 10



[State 0, 1]
type = Explod
trigger1 = Animelem = 2
anim = 1015
ID = 1015
pos = 22,-87
postype = p1
bindtime = -1
sprpriority = 5
ignorehitpause = 1
removeongethit = 1
ownpal = 1
persistent = 0
scale = .5,.5

[State 0, 1]
type = ChangeAnim
trigger1 = time = 25
value = 44




[State 0, 1]
type = ChangeState
trigger1 = Vel Y >0 && Pos Y >= 0
value = 52
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1


;Rising Buster2
[Statedef 1322]
type =S
movetype = A
physics = S
poweradd = 40
velset = 0, 0
ctrl = 0
juggle =4
anim = 1320

[State 1000, Helper]
type = Helper
trigger1 = !time
trigger1 = prevstateno = [150,153]
postype = p1
pos = 0,0
stateno = 999
bindtime = -1
ownpal = 1
name = "counter fx"
ID = 999


[State 0, 1]
type = Explod
trigger1 = !time
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1


[State 0, 1]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = A
;movetype =
physics = N
;ignorehitpause = 0
persistent = 0

[State 0, 1]
type = NotHitBy
trigger1 = !time
value = SCA
time = 10

[State 0, 1]
type = VelSet
trigger1 = Anim = 1320 && AnimElem = 2
x = 4
y = -12.5
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = VelSet
trigger1 = time = 20
x = -.1
y = -.1


[State 0, 1]
type = VelSet
trigger1 = Vel X < 0
x = 0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = VelAdd
trigger1 = Anim = 44
y = .7
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = PlaySnd
trigger1 = Anim= 1320 && AnimElem = 2
value = 1,8
volume = 255
channel = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 0,7
persistent = 0

[State 0, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = DiagUp
priority = 5,Hit
damage = 115,10
pausetime = 10,10
sparkno = 3
sparkxy = 0,-100
hitsound = s5,9
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 10
ground.hittime = 15
guard.hittime = 15
air.hittime = 20
yaccel = 0.5
ground.velocity = -3,-10
guard.velocity = -6
air.velocity = -3,-10
airguard.velocity = -2
guard.cornerpush.veloff = -6
sprpriority = 3
fall = 1
fall.recover = 0
envshake.time = 10
fall.envshake.time = 10



[State 0, 1]
type = Explod
trigger1 = Animelem = 2
anim = 1015
ID = 1015
pos = 22,-87
postype = p1
bindtime = -1
sprpriority = 5
ignorehitpause = 1
removeongethit = 1
ownpal = 1
persistent = 0
scale = .5,.5

[State 0, 1]
type = ChangeAnim
trigger1 = time = 30
value = 44




[State 0, 1]
type = ChangeState
trigger1 = Vel Y >0 && Pos Y >= 0
value = 52
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

;Android Rush
[Statedef 1330]
type = S
movetype = A
physics = N
poweradd = 40
velset = -8, 0
ctrl = 0
anim = 1330
juggle = 4

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,9
volume = 255
channel = 0

[State 1331, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 20
length = 12
timegap = 2
framegap = 1
trans = add
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 140,140,140
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 0.65,0.65,0.65

[State 106, 2]
type = PlaySnd
trigger1 = Time = 0
value = 0,9
channel = 2

[State 0, 1]
type = PosAdd
trigger1 = animtime = 0 
x = 60 
y = -140

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1331

;Suprise 
[Statedef 1331]
type =A
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0
juggle =4
anim = 1260


[State 0, 1]
type = VelSet
trigger1 = AnimElemtime(3) >= 0
x = 6
y = 10.5
persistent = 1


[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,7
volume = 255
channel = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 3 
value = 0,7
persistent = 0

[State 0, 1]
type = Explod
trigger1 = Animelem = 3
anim = 1015
pos = 32,0
postype = p1
bindtime = -1
sprpriority = 5
ignorehitpause = 1
removeongethit = 1
ownpal = 1
persistent = 0
vfacing = -1
id = 1020

[State 0, 2]
type = HitDef
trigger1 = AnimElem = 3 
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = High
priority = 5,Hit
damage = 85,4
pausetime = 20,20
sparkno = 3
sparkxy = 10,-10
hitsound = s5,9
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 10
ground.hittime = 15
guard.hittime = 15
air.hittime = 20
yaccel = 0.5
ground.velocity = -7,7
guard.velocity = -6
air.velocity = -7,-7
airguard.velocity = -4
guard.cornerpush.veloff = 0
sprpriority = 3
fall = 1
fall.recover = 0
envshake.time = 20
fall.envshake.time = 10

[State 0, 1]
type = VelSet
trigger1 = movecontact
x = -5
y = -6
ignorehitpause = 1
;persistent = 1

[State 0, 1]
type = ChangeState
trigger1 = movecontact
value = 50
ignorehitpause = 1

[State 0, 1]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52
ignorehitpause = 1

;Android Rush
[Statedef 1332]
type = S
movetype = A
physics = N
poweradd = 40
velset = -8, 0
ctrl = 0
anim = 1330
juggle = 4

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,9
volume = 255
channel = 0

[State 1331, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 20
length = 12
timegap = 2
framegap = 1
trans = add
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 140,140,140
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 0.65,0.65,0.65

[State 106, 2]
type = PlaySnd
trigger1 = Time = 0
value = 0,9
channel = 2

[State 0, 1]
type = PosAdd
trigger1 = animtime = 0 
x = 120 
y = -140

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1333

;Suprise 
[Statedef 1333]
type =A
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0
juggle =4
anim = 1260


[State 0, 1]
type = VelSet
trigger1 = AnimElemtime(3) >= 0
x = 6
y = 10.5
persistent = 1


[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,7
volume = 255
channel = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 3 
value = 0,7
persistent = 0

[State 0, 1]
type = Explod
trigger1 = Animelem = 3
anim = 1015
pos = 32,0
postype = p1
bindtime = -1
sprpriority = 5
ignorehitpause = 1
removeongethit = 1
ownpal = 1
persistent = 0
vfacing = -1
id = 1020

[State 0, 2]
type = HitDef
trigger1 = AnimElem = 3 
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = High
priority = 5,Hit
damage = 85,4
pausetime = 20,20
sparkno = 3
sparkxy = 10,-10
hitsound = s5,9
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 10
ground.hittime = 15
guard.hittime = 15
air.hittime = 20
yaccel = 0.5
ground.velocity = -7,7
guard.velocity = -6
air.velocity = -7,-7
airguard.velocity = -4
guard.cornerpush.veloff = 0
sprpriority = 3
fall = 1
fall.recover = 0
envshake.time = 20
fall.envshake.time = 10

[State 0, 1]
type = VelSet
trigger1 = movecontact
x = -4
y = -6
ignorehitpause = 1
;persistent = 1

[State 0, 1]
type = ChangeState
trigger1 = movecontact
value = 50
ignorehitpause = 1

[State 0, 1]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52
ignorehitpause = 1


;Android Rush
[Statedef 1334]
type = S
movetype = A
physics = N
poweradd = 40
velset = -8, 0
ctrl = 0
anim = 1330
juggle = 4

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,9
volume = 255
channel = 0

[State 1331, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 20
length = 12
timegap = 2
framegap = 1
trans = add
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 140,140,140
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 0.65,0.65,0.65

[State 106, 2]
type = PlaySnd
trigger1 = Time = 0
value = 0,9
channel = 2

[State 0, 1]
type = PosAdd
trigger1 = animtime = 0 
x = 180 
y = -140

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1335

;Suprise 
[Statedef 1335]
type =A
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0
juggle =4
anim = 1260


[State 0, 1]
type = VelSet
trigger1 = AnimElemtime(3) >= 0
x = 6
y = 10.5
persistent = 1


[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,7
volume = 255
channel = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 3 
value = 0,7
persistent = 0

[State 0, 1]
type = Explod
trigger1 = Animelem = 3
anim = 1015
pos = 32,0
postype = p1
bindtime = -1
sprpriority = 5
ignorehitpause = 1
removeongethit = 1
ownpal = 1
persistent = 0
vfacing = -1
id = 1020

[State 0, 2]
type = HitDef
trigger1 = AnimElem = 3 
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = High
priority = 5,Hit
damage = 85,4
pausetime = 20,20
sparkno = 3
sparkxy = 10,-10
hitsound = s5,9
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 10
ground.hittime = 15
guard.hittime = 15
air.hittime = 20
yaccel = 0.5
ground.velocity = -7,7
guard.velocity = -6
air.velocity = -7,-7
airguard.velocity = -4
guard.cornerpush.veloff = 0
sprpriority = 3
fall = 1
fall.recover = 0
envshake.time = 20
fall.envshake.time = 10

[State 0, 1]
type = VelSet
trigger1 = movecontact
x = -5
y = -6
ignorehitpause = 1
;persistent = 1

[State 0, 1]
type = ChangeState
trigger1 = movecontact
value = 50
ignorehitpause = 1

[State 0, 1]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52
ignorehitpause = 1
