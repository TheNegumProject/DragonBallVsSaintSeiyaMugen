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
; LOSE (Time over)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0,0

[State 193, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,15


[State 170, 1]
type = VarSet
trigger1 = Time = 0
v = 5
value = 1
;---------------------------------------------------------------------------
; WIN1
[Statedef 180]
type = S
ctrl = 0
velset = 0,0,0

[State 193, 2]
type = PlaySnd
trigger1 = !time && WinPerfect
value = 6,3


;[State 180, 1]; Win Screen
;type = Helper
;trigger1 = !NumHelper(9991)
;trigger1 = MatchOver
;stateno = 9991
;postype = p1
;pos = 0,0
;name = "Win Screen"
;id = 9991


[State 0, 1]
type = ChangeState
trigger1 = 1
value = 181 +(random%3)

; WIN1
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0,0

[State 193, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,0



;---------------------------------------------------------------------------
; WIN2
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0,0
sprpriority = 2

[State 182, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1



[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 12
value = 1,6
volume = 255
channel = 0

; WIN1
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0,0

[State 193, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,12

; INTRO
[Statedef 191]
type = S
physics = N
ctrl = 0
anim = 100
velset = 0,0,0

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro



[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = PosAdd
trigger1 = !time
x = -300
;y = 
;ignorehitpause = 0
;persistent = 1



[State 106, 2]
type = PlaySnd
trigger1 = Time = 30
value = 0,6
channel = 2

[State 100, 1]
type = velset
trigger1 = time >= 30
x = 10

[State 0, 1]
type = Explod
triggerall = time >= 30
trigger1 = time%3=0
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1
scale = .5,.5

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = ChangeState
trigger1 = Time = 60
value = 194

[Statedef 194]
type = S
ctrl = 0
anim = 190
velset = 0,0,0

[State -3, Landing Sound]
type = GameMakeAnim
trigger1 = AnimElem = 6
value = 60
pos = 0,0
under = 1

[State -3, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 55, 2


[State 193, 2]
type = PlaySnd
trigger1 = AnimElem = 12
value = 1,1
channel = 0
volume = 255


[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = AnimTime != 0
flag = Intro


[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = ChangeState
trigger1 = AnimTime = 0
value = 0

; INTRO
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0,0


[State 193, 2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1,1
channel = 0
volume = 255


[State 191, 2] 
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Power Up
[Statedef 198]
type = S
movetype = A
physics = S
anim = 199
ctrl = 0
velset = 0,0

[State 0, 1]
type = BGPalFX
trigger1 = AnimElemtime(2) >=0 
trigger1 = time%(1+random%90)=0
mul = 800,640,255
add = 25,25,25
time =2
ignorehitpause = 1

[State 0, 1]
type = PalFX
trigger1 = AnimElemtime(2) >=0 
trigger1 = time%4=0
mul = 800,640,255
add = 50,50,50
time =2
ignorehitpause = 1

[State 0, 1]
type = Explod
trigger1 = AnimElemtime(2) >= 0
trigger1 = time%7 = 0
anim = 198
postype = p1
pos = 0,0
sprpriority = 2
supermove = 1
ownpal = 1
random = 200,0
removeongethit = 1
vel = 0, (IfElse(Random < 200,-0.5,(IfElse(Random < 250,-1.0,(IfElse(Random < 333,-1.5,(IfElse(Random < 500,-2.0,-2.5))))))))

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1
facing = -1

[State 0, ]
type = Explod
trigger1 = AnimElemtime(2) >= 0 
trigger1 = time% 18 = 0
anim = 196
pos = 0,0
postype = p1
under = 1
ownpal = 1
removeongethit = 1

[State 0, ]
type = Explod
trigger1 = AnimElem = 2,0 
anim = 197
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 1
ID = 197
removetime = -1

[State 0, 1]
type = PowerAdd
trigger1 = AnimElemtime(2) >= 0
trigger1 = time%2 = 0 
value = 10
;ignorehitpause = 0
;persistent = 1



[State 0, ]
type = EnvShake
trigger1 = AnimElemtime(2) >= 0 
trigger1 = time% 10 = 0
time = 10
;freq = 60
;ampl = -4
;phase = 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = PlaySnd
trigger1 = AnimElemtime(2) >=0 
trigger1 = time%20 = 0
value = 0,4
volume = 255
channel = 3

[State 0, 1]
type = PlaySnd
trigger1 = AnimElemtime(2) = 0
value = 0,3
volume = 255
channel = 2

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,4
volume = 255
channel = 0

[State 195, 2]
type = ChangeState
trigger1 = !(command = "holdz" && command = "holdc")
trigger1 = AnimElemtime(2) > 0
trigger2 = power = 3000 
value = 199

; Power Up
[Statedef 199]
type = S
movetype = A
physics = S
anim = 47
ctrl = 0
velset = 0,0

[State 0, 8]
type = StopSnd
trigger1 = !time
channel = 0 && 2


[State 0, 1]
type = RemoveExplod
trigger1 = !time
ID = 197
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = Explod
trigger1 = !time
anim = 194
postype = p1
pos = 0,0
sprpriority = 2
supermove = 1
ownpal = 1



[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Standing Light Punch 
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 10
ctrl = 0
anim = ifelse(p2bodydist X < 3 && prevstateno !=200,201,200)
velset = 0

[State 200, 2]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage   = 12
priority = 3
guardflag = MA
pausetime = 8,8
sparkno = 0
sparkxy =  0,-63
hitsound   = s5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 11
ground.hittime  = 11
ground.velocity = -3.5
air.velocity = -2,-3
airguard.velocity = -3     

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,0

[State 200, 7]
type = Playsnd
trigger1 = time = 2 && random <= 300
value = 2,0

[State 200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Standing Medium Punch 
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 10
ctrl = 0
anim = ifelse(p2bodydist X < 5,211,210)
velset = 0,0,0




[State 0, 1]
type = Explod
trigger1 = AnimElem = 3 && Anim = 210
anim = 215
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0
;persistent = 1
ID = 210

[State 0, 1]
type = Explod
trigger1 = AnimElem = 1 && Anim = 211
anim = 225
pos = 0,-15
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0
;persistent = 1
scale = .75, .75
ID = 210


[State 230, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage   = 22
animtype = Med
guardflag = MA
pausetime = 8,10
sparkno = 1
sparkxy =  0,-65
hitsound   = s5,1
guardsound = 6,0
ground.type = Hi
ground.slidetime = 3
ground.hittime  = 17
ground.velocity = -6
air.velocity = -3.1,-3.3
airguard.velocity = -3.5     


[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,1    

[State 200, 7]
type = Playsnd
trigger1 = time = 2 && random <= 400
value = 2,1

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Heavy Punch 
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 10
ctrl = 0
anim = 220
velset = 0,0

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2 && Anim = 220
anim = 225
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0
;persistent = 1
ID = 220

[State 250, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype = hard
damage = 41
givepower  = 38,55
guardflag = MA
pausetime = 12,12
sparkno = 2
sparkxy = 0,-60
hitsound = s5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 20
ground.hittime = 20
guard.velocity = -8.2
ground.velocity = -8.2
air.velocity = -6,-5.5
airguard.velocity = -1.5 

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,2    

[State 200, 7]
type = Playsnd
trigger1 = time = 2 && random <= 500
value = 2,2

[State 250, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;Standing Light Kick 
[Statedef 230]
number = 6
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 10
ctrl = 0
anim = ifelse(p2bodydist X < 5 && prevstateno !=230,231,230)
velset = 0

[State 210, 1]
type = HitDef
trigger1 = Time = 3              ;Time to activate controller
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 12                    ;Damage that move inflicts
guardflag = MA                   ;Flags on how move is to be guarded against
;hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3                     ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 10,10                ;Time attacker pauses, time opponent shakes
sparkno = 0                   ;Spark image group and no
sparkxy = 0,-20                  ;X-offset for the "hit spark" rel. to p2,
                                 ;Y-offset for the spark rel. to p1
hitsound = s5,3                   ;Sound to play on hit
guardsound = 6,0                 ;Sound to play on guard
; mindist  = 0,0,0                 ;Min distance of p2 from p1 when hit
; maxdist  = 0,0,0                 ;Max distance of p2 from p1 when hit
ground.type = High               ;Type (refer to testp.h)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 15             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
; guard.slidetime = 5              ;Values for guarded attack (def: ground.slidetime)
; guard.hittime  = 15              ; (def: ground.hittime)
; guard.velocity = -4              ; (def: ground.velocity)
; guard.ctrltime = 7               ;Time to regain control after guard (def: guard.slidetime)
; airguard.velocity = -2.6         ;Guard velocity in air (def: (air.xvel*2              
; airguard.ctrltime = 7            ;Time to regain control after air guard (def: ground.ctrltime)
air.type = High                  ;Type (refer to testp.h)
air.velocity = -1.3,-1           ;X-velocity at which victim is pushed,
                                 ;Y-velocity at which victim is pushed
fall = 0                         ;1 to cause opponent to fall. If omitted, assumed 0.

[State 200, 7]
type = Playsnd
trigger1 = time = 2
value = 0,0

[State 200, 7]
type = Playsnd
trigger1 = time = 2 && random <= 300
value = 2,0

[State 210, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;Standing Medium Kick 
[Statedef 240]
type    = S     
movetype= A     
physics = S     
juggle  = 1     
velset = 0,0
ctrl = 0  
anim = ifelse(p2bodydist X < 10,241,240)
poweradd = 10

[State 202, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA   
damage = 35
animtype = Heavy
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = 1
sparkxy = 0,-60
hitsound = s5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -6
air.velocity = -4,-4

[State 0, 1]
type = Explod
trigger1 = AnimElem = 4 && Anim = 240
anim = 245
pos = 92,-54
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0
;persistent = 1
ID = 240


[State 200, 7]
type = Playsnd
trigger1 = time = 2 && random <= 400
value = 2,1

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,1

[State 202, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Heavy Kick 
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 10
ctrl = 0
velset = 1,0,0
anim = 250

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2 && Anim = 250
anim =  255
pos =0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0
;persistent = 1
ID = 250

[State 240, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype = hard
damage = 53
givepower  = 38,55
guardflag = MA
pausetime = 12,12
sparkno = 2
sparkxy = 0,-60
hitsound = s5,5
guardsound = 6,0
ground.type = high
ground.slidetime = 20
ground.hittime = 20
guard.velocity = -8.2
ground.velocity = -8.2
air.velocity = -6,-5.5
airguard.velocity = -1.5 

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 1
value = 0,2 

[State 200, 7]
type = Playsnd
trigger1 = time = 2 && random <= 500
value = 2,3 

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Weak Punch
[Statedef 400]
type = C
movetype = A
physics = C
velset = 0
ctrl = 0
anim = 400
poweradd = 10

[State 400, 1]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 35
animtype = Light
getpower = 25
givepower = 15
guardflag = M
hitflag = MA
hitsound = s5,0
guardsound = 6,0
pausetime = 8,8
sparkxy = -10,-50
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4
air.velocity = -3,-2
air.cornerpush.veloff = -6

[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 400, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Strong Punch
[Statedef 410]
type = C
movetype = A
physics = C
velset = 0
ctrl = 0
anim = 410
poweradd = 10

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2 && Anim = 410
anim = 415
pos = 46,-46
postype = p1
facing = 1
vfacing = -1
bindtime = -1
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0
;persistent = 1
id = 410

[State 410, 1]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 38
animtype = Medium
getpower = 90
givepower = 30
guardflag = M
hitflag = MA
hitsound = s5,1
guardsound = 6,0
pausetime = 14,14
sparkxy = -5,-65
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -7
air.velocity = -4,-3

[State 210, 1]
type = PlaySnd
trigger1 = Time = 4
value = 0, 1

[State 210, 1]
type = PlaySnd
trigger1 = Time = 4
value = 2, 2

[State 410, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;Strong Punch
[Statedef 420]
type = C
movetype = A
physics = C
velset = 0
ctrl = 0
anim = 420
poweradd = 10

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2 && Anim = 420
anim = 425
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0
;persistent = 1
id = 420

[State 410, 1]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 48
animtype = Medium
getpower = 90
givepower = 30
guardflag = M
hitflag = MA
hitsound = s5,2
guardsound = 6,0
pausetime = 14,14
sparkxy = -5,-65
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -7
air.velocity = -4,-3

[State 210, 1]
type = PlaySnd
trigger1 = Time = 4
value = 0, 1

[State 210, 1]
type = PlaySnd
trigger1 = Time = 4
value = 2, 2

[State 410, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Weak Slide
[Statedef 430]
type = C
movetype = A
physics = C
velset = 0
ctrl = 0
anim = 430
poweradd = 10

[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 2, 0


[State 420, 1]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 35
animtype = Light
getpower = 45
givepower = 15
guardflag = L
hitflag = MA
hitsound = s5,3
guardsound = 6,0
pausetime = 13,13
sparkxy = -10,-10
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,-2

[State 420, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Strong Slide
[Statedef 440]
type = C
movetype = A
physics = C
velset = 0
ctrl = 0
anim = 440
poweradd = 10

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
trigger1 = AnimElemTime(3) >=0 && AnimElemTime(4) < 0
pos = 0, 0
spacing = 1

[State 410, 1]
type = VelSet
trigger1 = AnimElemTime(3) >=0 && AnimElemTime(4) < 0
x = 9

[State 410, 1]
type = VelSet
trigger1 = AnimElem=4
x = 0

[State 430, 1]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 58
animtype = Medium
getpower = 90
givepower = 30
guardflag = L
hitflag = MA
hitsound = s5,4
guardsound = 6,0
pausetime = 14,14
sparkxy = -10,-25
ground.type = Trip
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -3.5,-8.4
air.velocity = -3.5,-8.4
guard.velocity = -7
fall = 1
air.fall = 1
fall.recover = 0
yaccel = 0.6

[State 430, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;Strong Slide
[Statedef 450]
type = C
movetype = A
physics = C
velset = 0,0
ctrl = 0
anim = 450
poweradd = 10



[State 0, 1]
type = PosAdd
trigger1 = AnimElem = 2
x = 40
;ignorehitpause = 0
;persistent = 1


[State 210, 1]
type = PlaySnd
trigger1 = Time = 4
value = 2, 2

[State 210, 1]
type = PlaySnd
trigger1 = Time = 4
value = 0, 2

[State 430, 1]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 58
animtype = Up
getpower = 90
givepower = 30
guardflag = L
hitflag = MA
hitsound = s5,5
guardsound = 6,0
pausetime = 14,14
sparkxy = -10,-25
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -1.5,-10.4
air.velocity = -1.5,-10.4
guard.velocity = -7
fall = 1
air.fall = 1
fall.recover = 0

[State 430, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;Jumping Lp
[Statedef 600]
type    = A
movetype= A
physics = A
poweradd= 10
ctrl = 0
anim = ifelse(vel X =0 || Var(4)>1,601,600)

[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 11
getpower  = 10
givepower = 10
guardflag = HA
priority = 3
pausetime = 8,8
sparkxy = -10,-58
hitsound   = s5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,0

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2 && random <= 550
value = 2,0

[State 630, 4]
type = ChangeState
trigger1 = AnimTime = 0 && Anim = 601
value = ifelse(Var(4)>1,902,50)

;---------------------------------------------------------------------------
;Jumping Medium Punch (neutral)
[Statedef 610]
type    = A
movetype= A
physics = A
poweradd= 10
ctrl = 0
anim = 610

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2 && Anim = 610
anim = 426
pos = 34,-30
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0
;persistent = 1
id = 610

[State 630, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 14
getpower  = 10
givepower = 10
guardflag = HA
priority = 3
pausetime = 7,8
sparkxy = -10,-58
hitsound   = s5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,1

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2 && random <= 550
value = 2,1


[State 630, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(Var(4)>1,902,50)

;---------------------------------------------------------------------------
;Jumping Heavy Punch (neutral)
[Statedef 620]
type    = A
movetype= A
physics = A
poweradd= 10
ctrl = 0
anim = 620

[State 661, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 39
getpower  = 10
givepower = 10
guardflag = HA
priority = 3
pausetime = 8,8
sparkxy = -10,-58
hitsound   = s5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -4
air.velocity = -12,12
air.fall = 1
fall.recover = 0
envshake.time = 5
fall.envshake.time = 10

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2 && Anim = 620
anim = 215
pos = 0,-110
postype = p1
facing = 1
vfacing = -1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0
;persistent = 1
id = 620


[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 3
value = 0,2

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 3 && random <= 550
value = 2,3

[State 661, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(Var(4)>1,902,50)

;Jumping Light Kick (neutral)
[Statedef 630]
type    = A
movetype= A
physics = A
poweradd= 10
ctrl = 0
anim = ifelse(vel X = 0,631,630)

[State 610, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 11
getpower  = 10
givepower = 10
guardflag = HA
priority = 3
pausetime = 7,8
sparkxy = -10,-58
hitsound   = s5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,0

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2 && random <= 550
value = 2,0


[State 610, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(Var(4)>1,902,50)

;---------------------------------------------------------------------------
;Jumping Medium Kick (neutral)
[Statedef 640]
type    = A
movetype= A
physics = A
poweradd= 10
ctrl = 0
anim = ifelse(vel x = 0,641,640)

[State 640, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20
getpower  = 25
givepower = 25
guardflag = HA
priority = 3
pausetime = 9,10
sparkxy = -10,-51
hitsound   = s5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -4
air.velocity = -1.3,-3

[State 0, 1]
type = Explod
trigger1 = AnimElem = 3 && Anim = 641
anim = 245
pos = 92,-54
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0
;persistent = 1
id = 640


[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,1
[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2 && random <= 550
value = 2,1


[State 640, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(Var(4)>1,902,50)
ctrl = 1

;---------------------------------------------------------------------------
;Jumping Heavy Kick (neutral)
[Statedef 650]
type    = A
movetype= A
physics = A
poweradd= 10
ctrl = 0
anim = ifelse(vel X = 0,640,650)

[State 0, 1]
type = Explod
trigger1 = AnimElem = 3 && Anim = 650
anim = 215
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = -20,20
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0
;persistent = 1
id = 650

[State 670, 2]
type = HitDef
trigger1 = AnimElem = 3 || AnimElem = 4
attr = A, NA
animtype = hard
damage = 33
givepower  = 25,48
guardflag = HA
pausetime = 12,12
sparkxy = -25,-53
hitsound = s5,5
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 15
guard.velocity = -7.5
ground.velocity = -7.5
air.velocity = -5,-1.2
airguard.velocity = -0.7     
air.hittime = 20

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,2

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2 && random <= 550
value = 2,2


[State 670, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(Var(4)>1,902,50)

;Flip Over Toss
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
hitsound = s5,10
sprpriority = 1       ;Draw in front of p2
p1facing = 1
p2facing = 1          ;Force p2 to face KFM
p1stateno = 801       ;On success, KFM changes to state 810
p2stateno = 805       ;If hit, p2 changes to state 820 in KFM's cns
fall = 1 

[State 800, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Throw P2
[Statedef 801]
type    = A
movetype= A
physics = N
anim = 801
poweradd = 60

[State 0, 1]
type = VarSet
triggerall = Time = [0,10]
trigger1 = target, command = "recovery"
trigger2 = command = "start"
var(7) = 1

[State 0, 1]
type = ChangeState
trigger1 = var(7) = 1
value = 890

[State 1475, 0.2]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,3
channel = 0

[State 1475, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 1475, 2]
type = VelSet
trigger1 = Time >= 0
x = 0

[State 1475, 3]
type = TargetBind
trigger1 = Time >= 0
trigger1 = AnimElem = 1
pos = 30, 0

[State 1475, 4]
type = BindtoTarget
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 6, < 0
pos = 0,0,head

[State 1475, 5]
type = TargetBind
trigger1 = AnimElem = 6, 0
pos = 0, 0
time = 2



[State 0, ]
type = PosAdd
trigger1 = animelem = 7
x = 39
y = 78
;ignorehitpause = 0
;persistent = 1



[State 1475, 5]
type = TargetBind
trigger1 = AnimElem = 7, 0
pos = 20, -69
time = 5
[State 1475, 5]
type = TargetBind
trigger1 = AnimElem = 8, 0
pos = 23, -21
time = 1

[State 1475, 4.5]
type = Width
trigger1 = AnimElem = 2, <0
edge = 70, 0

[State 1475, 10]
type = TargetVelSet
trigger1 = AnimElem = 8,2
x=-7
y=15



[State 0, 1]
type = PlaySnd
trigger1 = target, stateno = 806
trigger1 = target, statetime = 1
value = 5,6
;volume = 0
;channel = -1
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1



[State 1475, 12]
type = ChangeState
Trigger1 = AnimTime = 0
value = 802

; Crashing
[Statedef 802]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
anim = 802


[State 0, 1]
type = VelSet
trigger1 = time = 0
x = -3
y = -7

[State 1950, 5]
type = VelAdd
Trigger1 = AnimElem = 1,>0
y = 0.40

[State 1960, 5]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y > 0
value = 52

;---------------------------------------------------------------------------
; Throw (hit by, on ground)
[Statedef 805]
type    = A
movetype= H ;Get hit
physics = N
velset = 0,0
ctrl = 0

[State 1485, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 805

[State 1485, 2]
type = HitBy
Trigger1 = Time >= 0
value = SCA
time = 1

[State 0, 1]
type = SprPriority
trigger1 = AnimElem = 3
value = 3

[State 1485, 3]
type = ChangeState
trigger1 = Vel Y >0 && pos Y >= 0
trigger1 = AnimElem =3, >0
value = 806

[State 1485, 3]
type = SelfState
trigger1 = time = 60
value = 5100
;---------------------------------------------------------------------------
; Throw (hit by, into air)
[Statedef 806]
type    = A
movetype= H ;Get hit
physics = N
ctrl = 0
velset = 0,0



[State 0, ]
type = LifeAdd
trigger1 = !time
value = -125
;kill = 1
;absolute = 0
;ignorehitpause = 0
;persistent = 1



[State 1486, 2] ;Gravity
type = VelAdd
trigger1 = Time = 3
x = -3
y = -15

[State 0, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 192, 0]
type = GameMakeAnim
trigger1 = time = 0
pos = -5,0
value = 62



[State 0, ]
type = PlaySnd
trigger1 = !time
value = F7,1
volume = 255
;channel = -1
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1



[State 1485, 1]
type = ChangeAnim
trigger1 = Time = 3
value = ifelse(SelfAnimExist(5035),5035,5050)

[State 1486, 2] ;Gravity
type = VelAdd
trigger1 = Time > 3
y = .65

[State 1486, 3]
type = EnvShake
trigger1 = time = 0
time = 25
ampl = -3
freq = 90
phase = 90

[State 1486, 5] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;Flip Over Toss
[Statedef 810]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
hitsound = s5,10
sprpriority = 1       ;Draw in front of p2
p1facing = 1
p2facing = 1          ;Force p2 to face KFM
p1stateno = 811       ;On success, KFM changes to state 810
p2stateno = 815       ;If hit, p2 changes to state 820 in KFM's cns
fall = 1 

[State 800, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Throw P2
[Statedef 811]
type    = A
movetype= A
physics = N
anim = 811
poweradd = 60

[State 0, 1]
type = VarSet
triggerall = Time = [0,10]
trigger1 = target, command = "recovery"
trigger2 = command = "start"
var(7) = 1

[State 0, 1]
type = ChangeState
trigger1 = var(7) = 1
value = 890

[State 1475, 0.2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 0


[State 1475, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 1475, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 1475, 3]
type = TargetBind
trigger1 = Time >= 0
trigger1 = AnimElem = 1
pos = 94, -54



[State 0, ]
type = Turn
trigger1 = AnimElem = 2
;ignorehitpause = 0
;persistent = 1

[State 1475, 5]
type = TargetBind
trigger1 = AnimElem = 2, 0
pos = -14, -86
time = 5

[State 1475, 5]
type = TargetBind
trigger1 = AnimElem = 3, 0
pos = 29, -53
time = 5

[State 1475, 5]
type = TargetBind
trigger1 = AnimElem = 4, >=0
pos = 22, 0
time = 1

[State 1475, 4.5]
type = Width
trigger1 = AnimElem = 2, <0
edge = 60, 60



[State 0, ]
type = VelSet
trigger1 = AnimElem = 2
x = 1
y = -5.5
;ignorehitpause = 0
;persistent = 1



[State 0, ]
type = VelAdd
trigger1 = AnimElem = 2, >0
y = .65
;ignorehitpause = 0
;persistent = 1

[State 1475, 12]
type = ChangeState
Trigger1 = Vel y >0  && Pos Y >= 0
value = 812

; Crashing
[Statedef 812]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
anim = 812



[State 0, ]
type = TargetState
trigger1 = !time
value = 816
;ID = 
;ignorehitpause = 0
;persistent = 1

[State 106, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,5
channel = 2

[State 0, ]
type = PlaySnd
trigger1 = !time 
value = 5,6


[State 0, 1]
type = VelSet
trigger1 = AnimElem = 3
x = -4
y = -7

[State 1950, 5]
type = VelAdd
Trigger1 = AnimElem = 3,>0
y = .55

[State 1960, 5]
type = ChangeState
Trigger1 = AnimElem = 3,>0
trigger1 = command = "QCFx" || command = "QCFy" || command = "QCFz" 
value = 813

[State 1960, 5]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y > 0
value = 52


; Energy Blast Follow-up
[Statedef 813]
type = A
movetype = A
physics = A
poweradd = 100
ctrl = 0


[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1030
value = 1030

[State 0, 1]
type = Explod
trigger1 = AnimElem = 1
anim = 1031
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4


[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,11
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =3
postype = p1
pos = 10,-41
stateno = 1033
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 11000

[State 670, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50


;---------------------------------------------------------------------------
; Throw (hit by, on ground)
[Statedef 815]
type    = A
movetype= H ;Get hit
physics = N
velset = 0,0
ctrl = 0

[State 1485, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 815

[State 1485, 2]
type = HitBy
Trigger1 = Time >= 0
value = SCA
time = 1

[State 1485, 3]
type = SelfState
trigger1 = time = 40
value = 5100
;---------------------------------------------------------------------------
; Throw (hit by, into air)
[Statedef 816]
type    = L
movetype= H ;Get hit
physics = N
ctrl = 0
velset = 0,0

[State 0, ]
type = LifeAdd
trigger1 = !time
value = -85
;kill = 1
;absolute = 0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 192, 0]
type = GameMakeAnim
trigger1 = time = 0
pos = -5,0
value = 62

[State 0, ]
type = PlaySnd
trigger1 = !time
value = F7,1
volume = 255
;channel = -1
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1



[State 1485, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 5080

[State 1485, 1]
type = ChangeAnim
trigger1 = Time = 5
value = 5110

[State 1486, 3]
type = EnvShake
trigger1 = time = 0
time = 25
ampl = -3
freq = 90
phase = 90

[State 1486, 5] ;Hit ground
type = SelfState
trigger1 = time = 60
value = 5110 ;Hit ground

; Hyper Battle
[Statedef 890]
type    = S
movetype= I 
physics = N
velset = 0,0
anim = 201
ctrl = 0

[State 0, 1]
type = VelSet
trigger1 = Var(10) > Var(11)
x = .55

[State 0, 1]
type = VelSet
trigger1 = Var(11) > Var(10)
x = -.55

[State 0, 1]
type = VelSet
trigger1 = Var(10) = Var(11)
x = 0




[State 1475, 4.5]
type = Width
trigger1 = 1
edge = 40, 40


[State 0, 1]
type = AssertSpecial
trigger1 = 1
flag = NoFG
flag2 = NoBarDisplay
flag3= TimerFreeze

[State 0, 1]
type = PlaySnd
trigger1 = time%15 = 0
value = 0,8
volume = 255
freqmul = .7+((random%5)*.1)

[State 0, 1]
type = PlaySnd
trigger1 = time%10 = 0
value = 0,(random%3)
volume = 255

[State 154, Guard Push Spark]
type = Explod
trigger1 = time%8 = 0
anim = 8012
postype = p1
pos = 40,-40
bindtime = -1
sprpriority = ifelse(random<500,-1,2)
ownpal = 1
random = 60,60

[State 154, Guard Push Spark]
type = Explod
trigger1 = time%6 = 0
anim = F3
postype = p1
pos = 40,-40
bindtime = -1
ontop = 1
ownpal = 1
random = 60,60

[State 0, 1]
type = AllPalFX
trigger1 = time = 0
time = 2
invertall = 1
color = 0

[State 0, 1]
type = Explod
trigger1 = time%20=0
anim = 990
postype = p1
pos = 30,0
sprpriority = 5
supermove = 1
ownpal = 1


[State 0, 1]
type = Explod
trigger1 = time%20=0
anim = 990
postype = p1
pos = 30,0
sprpriority = 5
supermove = 1
ownpal = 1
facing = -1

[State 0, 1]
type = Explod
trigger1 = !time
anim = 8011
postype = left
pos = 0,0
sprpriority = -3
supermove = 1
ownpal = 1
bindtime = -1
removetime = 500
ID = 992

[State 0, 1]
type = Explod
trigger1 = !time
anim = 992
postype = left
pos = 160,120
ontop = 1
supermove = 1
ownpal = 1
bindtime = -1
removetime = 500
ID = 992

[State 0, 1]
type = TargetState
trigger1 = time = 0
value = 895

[State 0, 1]
type = VarSet
trigger1 = time = 0
v = 7
value = 0

[State 0, 1]
type = VarSet
trigger1 = time = 0
v = 10
value = 0

[State 0, 1]
type = VarSet
trigger1 = time = 0
v = 11
value = 0

[State 0, 1]
type = VarAdd
trigger1 = command = "a" || command = "b" || command = "c"
trigger2 = command = "x" || command = "y" || command = "z"
v = 10
value = 1

[State 0, 1]
type = VarAdd
trigger1 = target, command = "a" || target, command = "b" || target, command = "c"
trigger2 = target, command = "x" || target, command = "y" || target, command = "z"
v = 11
value = 1

[State -2]; Sorrowedge's Speed Up Code
type = changeanim
trigger1 = animelemtime(animelemno(0)+1) < 0 && anim >= 200 && (anim != [800,1009]) && (anim !=[1060,1069]) && Anim < 3000
trigger1 = animelemtime(animelemno(0)) > floor((animelemtime(animelemno(0))-animelemtime(animelemno(0)+1))/4)
ignorehitpause = 0
value = anim
elem = animelemno(0)+1


[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [0,50]
value = 200

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [51,100]
value = 210

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [101,150]
value = 220

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [151,200]
value = 230

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [201,250]
value = 240

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [251,300]
value = 250

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [301,350]
value = 400

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [351,400]
value = 410

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [401,450]
value = 420

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [451,500]
value = 430

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [501,550]
value = 440

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [551,600]
value = 450

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [601,650]
value = 600

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [651,700]
value = 610

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [701,750]
value = 620

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [751,800]
value = 630

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [801,850]
value = 640

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [851,900]
value = 650

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [901,950]
value = 201

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [951,999]
value = 231



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
trigger1 = 1
time = 1
;ID = -1
pos = 40,0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = ChangeState
trigger1 = var(10) >=30
trigger2 = Time >= 300 && Var(10) > Var(11)
trigger3 = roundstate !=2 && Var(10) > Var(11)
value = 891

[State 0, 1]
type = ChangeState
trigger1 = var(11) >=30
trigger2 = Time >= 300 && Var(11) > Var(10)
trigger3 = roundstate !=2 && Var(11) > Var(10)
value = 892

[State 0, 1]
type = ChangeState
trigger1 = Time >= 300 && Var(11) = Var(10)
trigger2 = roundstate !=2 && Var(11) = Var(10)
value = 893


;Standing Medium Kick 
[Statedef 891]
type    = S     
movetype= A     
physics = S     
juggle  = 1     
velset = 0,0
ctrl = 0  
anim = 240
poweradd = 100

[State 0, 1]
type = TargetState
trigger1 = !time
value = 897

[State 0, 1]
type = RemoveExplod
trigger1 = !time
ID = 992

[State 202, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA   
damage = 65
animtype = Heavy
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 20,20
sparkno = 1
sparkxy = 0,-60
hitsound = s55,1
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


[State 0, 1]
type = Explod
trigger1 = AnimElem = 4 && Anim = 240
anim = 245
pos = 92,-54
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0
;persistent = 1


[State 200, 7]
type = Playsnd
trigger1 = time = 2 && random <= 400
value = 2,1

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,1

[State 202, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Lost! 
[Statedef 892]
type    = S     
movetype= H     
physics = S     
juggle  = 1     
velset = -2,0
ctrl = 0  
anim = 5001
poweradd = -40

[State 0, 1]
type = RemoveExplod
trigger1 = !time
ID = 992

[State 0, ]
type = TargetState
trigger1 = !time
value = 896
;ID = 
;ignorehitpause = 0
;persistent = 1



[State 200, 7]
type = Playsnd
trigger1 = time = 2 
value = 3,1



[State 202, 7]
type = ChangeState
trigger1 = Time = 45
value = 0
ctrl = 1

;Lost! 
[Statedef 893]
type    = S     
movetype= H     
physics = S     
juggle  = 1     
velset = -2,0
ctrl = 0  
anim = 5001
poweradd = -40

[State 0, 1]
type = RemoveExplod
trigger1 = !time
ID = 992

[State 0, ]
type = TargetState
trigger1 = !time
value = 897
;ID = 
;ignorehitpause = 0
;persistent = 1



[State 200, 7]
type = Playsnd
trigger1 = time = 2 
value = 3,1



[State 202, 7]
type = ChangeState
trigger1 = Time = 25
value = 0
ctrl = 1


; TECH HIT!!!!
[Statedef 895]
type    = S
movetype= H 
physics = S
velset = 0,0
ctrl = 0
anim = 200

[State -2]; Sorrowedge's Speed Up Code
type = changeanim
trigger1 = animelemtime(animelemno(0)+1) < 0 
trigger1 = animelemtime(animelemno(0)) > floor((animelemtime(animelemno(0))-animelemtime(animelemno(0)+1))/4)
ignorehitpause = 0
value = anim
elem = animelemno(0)+1


[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime || Animelemtime(animelemno(0)) > 5
trigger1 = random = [0,50]
trigger1 = SelfAnimExist(200)
value = 200

[State 0, 1]
type = ChangeAnim
triggerall = time = 0 || animtime = 0 || Animelemtime(animelemno(0)) > 5
trigger1 = random = [51,100]
trigger1 = SelfAnimExist(210)
value = 210

[State 0, 1]
type = ChangeAnim
triggerall = time = 0 || animtime = 0 || Animelemtime(animelemno(0)) > 5
trigger1 = random = [101,150]
trigger1 = SelfAnimExist(220)
value = 220

[State 0, 1]
type = ChangeAnim
triggerall = time = 0 || animtime = 0 || Animelemtime(animelemno(0)) > 5
trigger1 = random = [151,200]
trigger1 = SelfAnimExist(230)
value = 230

[State 0, 1]
type = ChangeAnim
triggerall = time = 0 || animtime = 0 || Animelemtime(animelemno(0)) > 5
trigger1 = random = [201,250]
trigger1 = SelfAnimExist(240)
value = 240

[State 0, 1]
type = ChangeAnim
triggerall = time = 0 || animtime = 0 || Animelemtime(animelemno(0)) > 5
trigger1 = random = [251,300]
trigger1 = SelfAnimExist(250)
value = 250

[State 0, 1]
type = ChangeAnim
triggerall = time = 0 || animtime = 0 || Animelemtime(animelemno(0)) > 5
trigger1 = random = [301,350]
trigger1 = SelfAnimExist(400)
value = 400

[State 0, 1]
type = ChangeAnim
triggerall = time = 0 || animtime = 0 || Animelemtime(animelemno(0)) > 5
trigger1 = random = [351,400]
trigger1 = SelfAnimExist(410)
value = 410

[State 0, 1]
type = ChangeAnim
triggerall = time = 0 || animtime = 0 || Animelemtime(animelemno(0)) > 5
trigger1 = random = [401,450]
trigger1 = SelfAnimExist(420)
value = 420

[State 0, 1]
type = ChangeAnim
triggerall = time = 0 || animtime = 0 || Animelemtime(animelemno(0)) > 5
trigger1 = random = [451,500]
trigger1 = SelfAnimExist(430)
value = 430

[State 0, 1]
type = ChangeAnim
triggerall = time = 0 || animtime = 0 || Animelemtime(animelemno(0)) > 5
trigger1 = random = [501,550]
trigger1 = SelfAnimExist(440)
value = 440

[State 0, 1]
type = ChangeAnim
triggerall = time = 0 || animtime = 0 || Animelemtime(animelemno(0)) > 5
trigger1 = random = [551,600]
trigger1 = SelfAnimExist(450)
value = 450

[State 0, 1]
type = ChangeAnim
triggerall = time = 0 || animtime = 0 || Animelemtime(animelemno(0)) > 5
trigger1 = random = [601,650]
trigger1 = SelfAnimExist(600)
value = 600

[State 0, 1]
type = ChangeAnim
triggerall = time = 0 || animtime = 0 || Animelemtime(animelemno(0)) > 5 
trigger1 = random = [651,700]
trigger1 = SelfAnimExist(610)
value = 610

[State 0, 1]
type = ChangeAnim 
triggerall = time = 0 || animtime = 0 || Animelemtime(animelemno(0)) > 5
trigger1 = random = [701,750]
trigger1 = SelfAnimExist(620)
value = 620

[State 0, 1]
type = ChangeAnim
triggerall = time = 0 || animtime = 0 || Animelemtime(animelemno(0)) > 5
trigger1 = random = [751,800]
trigger1 = SelfAnimExist(630)
value = 630

[State 0, 1]
type = ChangeAnim
triggerall = time = 0 || animtime = 0 || Animelemtime(animelemno(0)) > 5
trigger1 = random = [801,850]
trigger1 = SelfAnimExist(640)
value = 640

[State 0, 1]
type = ChangeAnim
triggerall = time = 0 || animtime = 0 || Animelemtime(animelemno(0)) > 5
trigger1 = random = [851,900]
trigger1 = SelfAnimExist(650)
value = 650

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA

;Leggo 
[Statedef 896]
type    = S     
movetype= I     
physics = S     
juggle  = 1     
velset = 0,0
ctrl = 0  
anim = 200
poweradd = 100



[State 202, 7]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Lost! 
[Statedef 897]
type    = S     
movetype= H     
physics = S     
juggle  = 1     
velset = -2,0
ctrl = 0  
anim = 5002
poweradd = -40



[State 202, 7]
type = SelfState
trigger1 = Time = 25
value = 0
ctrl = 1

;Roman Cancel Effect.
[Statedef 997]
type = A
movetype = I
physics = N
anim = 9997
ctrl = 0

[State 0, 1]
type = PalFX
trigger1 = Time >= 10
time = 1
mul = 255-((time-10)*10),255-((time-10)*10),255-((time-10)*10)
ignorehitpause = 1

[State 0, 2]
type = ModifyExplod
trigger1 = Time >= 0
ID = 997
scale = (time*.08),(time*.08)
ignorehitpause = 1

[State 0, ]
type = Explod
trigger1 = time = 0
Pos = 0,0
Postype = p1
anim = 997
ID = 997
persistent = 0
ignorehitpause = 1
bindtime = -1
sprpriority = 2
removeongethit = 1
pausemovetime = 99999999999999
supermovetime = 99999999999999
supermove = 1
scale = .06, .06

[State 0, ]
type = RemoveExplod
trigger1 = parent, movetype = H
trigger2 = time = 30
ID = 997

[State 0, ]
type = DestroySelf
trigger1 = parent, movetype = H
trigger2 = time = 30


;Roman Cancel
[Statedef 998]
type = U
physics = U
poweradd = -1000

[State -2, Finish SFX]
type = PalFX
trigger1 = !time
add = 255,255,255
sinadd = -255,-255,-255,75
persistent = 0
time =20
ignorehitpause = 1


[State 1000, Helper]
type = Helper
trigger1 = !time
postype = p1
pos = 0,-45
stateno = 997
bindtime = -1
ownpal = 1
name = "r.cancel fx"
ID = 997


[State 200, 7]
type = Playsnd
trigger1 = !time 
value = 6,1
volume =255

[State 202, 7]
type = ChangeState
trigger1 = !Time 
value = ifelse(statetype = A,(ifelse(Var(4)>1,902,50)),0)
ctrl = 1


;Guard Cancel Effect.
[Statedef 999]
type = A
movetype = I
physics = N
anim = 9997
ctrl = 0
poweradd = -1500

[State 200, 7]
type = Playsnd
trigger1 = !time 
value = 6,2
volume =255

[State 0, 1]
type = BindToParent
trigger1 = Time >= 0
facing = 1
pos = 0,0

[State 0, 1]
type = PalFX
trigger1 = Time >= 0
time = 1
mul = 255-time*16,255-time*16,255-time*16
ignorehitpause = 1

[State 0, 2]
type = ModifyExplod
trigger1 = Time >= 0
ID = 999
scale = 1+(time*.01),1+(time*.01)
ignorehitpause = 1

[State 0, ]
type = Explod
trigger1 = time = 0
Pos = 0,0
Postype = p1
anim = (parent, anim)+10000
ID = 999
persistent = 0
ignorehitpause = 1
bindtime = -1
sprpriority = 2
removeongethit = 1
pausemovetime = 99999999999999
supermovetime = 99999999999999
supermove = 1

[State 0, ]
type = RemoveExplod
trigger1 = parent, movetype = H
trigger2 = time = 16
ID = 999

[State 0, ]
type = DestroySelf
trigger1 = parent, movetype = H
trigger2 = time = 16

;---------------------------------------------------------------------------


; Energy Ball
[Statedef 1000]
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
trigger1 = Time = 0 && Anim != 1000
value = 1000

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,10
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =5
postype = p1
pos = 47,-56
stateno = 1005
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 11000


[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 0
ctrl = 1

; Energy Blast Med
[Statedef 1001]
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
trigger1 = !time
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
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
trigger1 = Time = 0 && Anim != 1000
value = 1000

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,10
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =5
postype = p1
pos = 47,-56
stateno = 1005
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 11000


[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 0
ctrl = 1




; Energy Blast Strong
[Statedef 1002]
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
trigger1 = !time
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
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
trigger1 = Time = 0 && Anim != 1000
value = 1000

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,10
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =5
postype = p1
pos = 47,-56
stateno = 1005
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
[Statedef 1005]
type = S
movetype = A
physics = N
velset = ifelse(parent, stateno =1000,3,ifelse(parent,stateno=1001,5,7)),0
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
damage = 87,5
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
fall = (time < 5)
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

; Ball Hits
[Statedef 1006]
type = S
movetype = A
physics = N
velset = 2,0
anim = 1002
sprpriority = 2
ctrl = 0


[State 4022, 0]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoShadow

[State 4022, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 4022, 2]
type = DestroySelf
trigger1 = AnimTime = 0

;Rising Buster
[Statedef 1010]
type =S
movetype = A
physics = S
poweradd = 40
velset = 0, 0
ctrl = 0
juggle =4
anim = 1010

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
trigger1 = AnimElem = 4
statetype = A
;movetype =
physics = N
;ignorehitpause = 0
persistent = 0



[State 0, 1]
type = VelSet
trigger1 = Anim = 1010 && AnimElem = 4
x = 3
y = -6.5
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = VelSet
trigger1 = Anim = 1011 && AnimElem = 1
x = 1
y = -2


[State 0, 1]
type = VelAdd
trigger1 = Anim = 1011 && Vel X > 0
x = -.3
;ignorehitpause = 0
;persistent = 1


[State 0, 1]
type = VelSet
trigger1 = Vel X < 0
x = 0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = VelAdd
trigger1 = AnimElemtime(4) >= 0 || Anim = 1011
y = .3
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = PlaySnd
trigger1 = Anim= 1010 && AnimElem = 3
value = 1,8
volume = 255
channel = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 4 
value = 0,7
persistent = 0

[State 0, 2]
type = HitDef
trigger1 = AnimElem = 3 && !movecontact
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


[State 0, 2]
type = HitDef
trigger1 = AnimElem = 4 && !movecontact
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = DiagUp
priority = 5,Hit
damage = 75,10
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
trigger1 = Animelem = 4
anim = 1015
ID = 1015
pos = 27,-97
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
trigger1 = time = 22
value = 1011




[State 0, 1]
type = ChangeState
trigger1 = Vel Y >0 && Pos Y >= 0
value = 52
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

;Rising Buster
[Statedef 1011]
type =S
movetype = A
physics = S
poweradd = 40
velset = 0, 0
ctrl = 0
juggle =4
anim = 1010

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
trigger1 = AnimElem = 4
statetype = A
;movetype =
physics = N
;ignorehitpause = 0
persistent = 0



[State 0, 1]
type = VelSet
trigger1 = Anim = 1010 && AnimElem = 4
x = 5
y = -10
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = VelSet
trigger1 = Anim = 1011 && AnimElem = 1
x = 1
y = -2


[State 0, 1]
type = VelAdd
trigger1 = Anim = 1011 && Vel X > 0
x = -.3
;ignorehitpause = 0
;persistent = 1


[State 0, 1]
type = VelSet
trigger1 = Vel X < 0
x = 0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = VelAdd
trigger1 = AnimElemtime(4) >= 0 || Anim = 1011
y = .4
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = PlaySnd
trigger1 = Anim= 1010 && AnimElem = 3
value = 1,8
volume = 255
channel = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 4 
value = 0,7
persistent = 0

[State 0, 2]
type = HitDef
trigger1 = AnimElem = 3 && !movecontact
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


[State 0, 2]
type = HitDef
trigger1 = AnimElem = 4 && !movecontact
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = DiagUp
priority = 5,Hit
damage = 75,10
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
trigger1 = Animelem = 4
anim = 1015
ID = 1015
pos = 27,-97
postype = p1
bindtime = -1
sprpriority = 5
ignorehitpause = 1
removeongethit = 1
ownpal = 1
persistent = 0
scale = .75,.75

[State 0, 1]
type = ChangeAnim
trigger1 = time = 22
value = 1011




[State 0, 1]
type = ChangeState
trigger1 = Vel Y >0 && Pos Y >= 0
value = 52
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

;Rising Buster
[Statedef 1012]
type =S
movetype = A
physics = S
poweradd = 40
velset = 0, 0
ctrl = 0
juggle =4
anim = 1010

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
trigger1 = AnimElem = 4
statetype = A
;movetype =
physics = N
;ignorehitpause = 0
persistent = 0



[State 0, 1]
type = VelSet
trigger1 = Anim = 1010 && AnimElem = 4
x = 8
y = -13.5
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = VelSet
trigger1 = Anim = 1011 && AnimElem = 1
x = 1
y = -2


[State 0, 1]
type = VelAdd
trigger1 = Anim = 1011 && Vel X > 0
x = -.3
;ignorehitpause = 0
;persistent = 1


[State 0, 1]
type = VelSet
trigger1 = Vel X < 0
x = 0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = VelAdd
trigger1 = AnimElemtime(4) >= 0 || Anim = 1011
y = .5
;ignorehitpause = 0
;persistent = 1




[State 0, 1]
type = PlaySnd
trigger1 = Anim= 1010 && AnimElem = 3
value = 1,8
volume = 255
channel = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 4 
value = 0,7
persistent = 0

[State 0, 2]
type = HitDef
trigger1 = AnimElem = 3 && !movecontact
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


[State 0, 2]
type = HitDef
trigger1 = AnimElem = 4 && !movecontact
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = DiagUp
priority = 5,Hit
damage = 75,10
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
trigger1 = Animelem = 4
anim = 1015
ID = 1015
pos = 27,-97
postype = p1
bindtime = -1
sprpriority = 5
ignorehitpause = 1
removeongethit = 1
ownpal = 1
persistent = 0
scale = 1,1

[State 0, 1]
type = ChangeAnim
trigger1 = time = 22
value = 1011




[State 0, 1]
type = ChangeState
trigger1 = Vel Y >0 && Pos Y >= 0
value = 52
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1


;Falling Driver
[Statedef 1020]
type =A
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0
juggle =4
anim = 1020


[State 0, 1]
type = VelSet
trigger1 = AnimElemtime(3) >= 0
x = 6
y = 10.5
persistent = 1
.




[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,7
volume = 255
channel = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 4 
value = 0,7
persistent = 0

[State 0, 2]
type = HitDef
trigger1 = AnimElem = 3 || AnimElem = 4 || AnimElem = 5 || AnimElem = 6
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = High
priority = 5,Hit
damage = 25,4
pausetime = 10,10
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
ground.velocity = -5
guard.velocity = -6
air.velocity = -3,-3
airguard.velocity = -4
guard.cornerpush.veloff = 0
sprpriority = 3
air.fall = 1
fall.recover = 0
envshake.time = 10
fall.envshake.time = 10



[State 0, 1]
type = Explod
trigger1 = Animelem = 4
anim = 1015
pos = 32,0
postype = p1
bindtime = -1
sprpriority = 5
ignorehitpause = 1
removeongethit = 1
ownpal = 1
persistent = 0
scale = .75,.75
vfacing = -1
id = 1020

[State 0, 1]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52
ignorehitpause = 1

; Energy Blast Straight
[Statedef 1030]
type = A
movetype = A
physics = N
poweradd = 40
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
type = VelSet
trigger1 = Var(4) > 1
x = 0
y = 0


[State 0, 1]
type = PosFreeze
trigger1 = AnimElem = 5, < 0
value = 1
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = StateTypeSet
trigger1 = AnimElem = 5 && Var(4) <= 1
physics = A
;ignorehitpause = 0
persistent = 0


[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1030
value = 1030

[State 0, 1]
type = Explod
trigger1 = AnimElem = 1
anim = 1031
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4


[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,10
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =3
postype = p1
pos = 10,-41
stateno = 1005
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 11000

[State 670, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(Var(4)>1,902,50)

; Energy Blast Diagonal
[Statedef 1031]
type = A
movetype = A
physics = N
poweradd = 40
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
type = VelSet
trigger1 = Var(4) > 1
x = 0
y = 0



[State 0, 1]
type = PosFreeze
trigger1 = AnimElem = 5, < 0
value = 1
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = StateTypeSet
trigger1 = AnimElem = 5 && Var(4) <= 1
physics = A
;ignorehitpause = 0
persistent = 0


[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1030
value = 1030

[State 0, 1]
type = Explod
trigger1 = AnimElem = 1
anim = 1031
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4


[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,10
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =3
postype = p1
pos = 10,-41
stateno = 1033
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 11000

[State 670, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(Var(4)>1,902,50)

; Energy Blast Straight
[Statedef 1032]
type = A
movetype = A
physics = N
poweradd = 40
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
type = VelSet
trigger1 = Var(4) > 1
x = 0
y = 0


[State 0, 1]
type = StateTypeSet
trigger1 = AnimElem = 5 && Var(4) <= 1
physics = A
;ignorehitpause = 0
persistent = 0


[State 0, 1]
type = PosFreeze
trigger1 = AnimElem = 5, < 0
value = 1
;ignorehitpause = 0
;persistent = 1


[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1030
value = 1030

[State 0, 1]
type = Explod
trigger1 = AnimElem = 1
anim = 1031
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4


[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,10
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =3
postype = p1
pos = 10,-41
stateno = 1035
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 11000
size.xscale = .75
size.yscale = .75

[State 670, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(Var(4)>1,902,50)



; The Energy Shot
[Statedef 1033]
type = S
movetype = A
physics = N
velset = 5,5
anim = 1003
sprpriority = 2
juggle = 2
ctrl = 0

[State 0, 1]
type = ParentVarAdd
trigger1 = !time
v =  9
value = -100

[State 0, 1]
type = Explod
trigger1 = time%5 = 0
anim = 993
postype = p1
pos = -10,-10
sprpriority = 3
supermove = 1
ownpal = 1
random = 10,10
vel = -.5,-.5
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
trigger1 = UniqHitCount = 0
trigger1 = p2stateno != 5070
trigger1 = p2stateno != 5071
attr = S, SP
animtype = Medium
damage = 87,5
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
air.velocity = -12,12
airguard.velocity = -6,-1
down.velocity = -12,0
down.hittime = 26
palfx.color = 0
fall = (time < 5)
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
stateno = 1034
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
value = 1034

[State 4001, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -70

; Ball Hits
[Statedef 1034]
type = S
movetype = A
physics = N
velset = 2,2
anim = 1004
sprpriority = 2
ctrl = 0


[State 4022, 0]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoShadow

[State 4022, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 4022, 2]
type = DestroySelf
trigger1 = AnimTime = 0

; The Energy Shot
[Statedef 1035]
type = S
movetype = A
physics = N
velset = 3,6
anim = 1006
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
pos = -10,-10
sprpriority = 3
supermove = 1
ownpal = 1
random = 10,10
vel = -.3,-.6

[State 4001, HitDef]
type = HitDef
trigger1 = UniqHitCount = 0
trigger1 = p2stateno != 5070
trigger1 = p2stateno != 5071
attr = S, SP
animtype = Medium
damage = 87,5
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
fall = (time < 5)
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
stateno = 1034
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
value = 1034

[State 4001, ChangeState]
type = ChangeState
trigger1 = Pos Y > -10
value = 1036


[State 4001, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -70

; Rolling Shot
[Statedef 1036]
type = S
movetype = A
physics = N
velset = 5,0
anim = 1007
sprpriority = 2
juggle = 2
ctrl = 0



[State 0, ]
type = PosSet
trigger1 = !time
;x = 
y = 0
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
framegap = 1


[State 4001, HitDef]
type = HitDef
trigger1 = UniqHitCount = 0
trigger1 = p2stateno != 5070
trigger1 = p2stateno != 5071
attr = S, SP
animtype = Hard
damage = 87,5
hitflag = MAFD
guardflag = LA
pausetime = 0, 9
sparkno = -1
sparkxy = 0,-35
hitsound = s5,9
guardsound = 6,0
ground.type = Low
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

; Ball Hits
[Statedef 1037]
type = S
movetype = A
physics = N
velset = 2,0
anim = 1002
sprpriority = 2
ctrl = 0



[State 0, 1]
type = PosAdd
trigger1 = !time
y = -10
;ignorehitpause = 0
;persistent = 1




[State 4022, 0]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoShadow

[State 4022, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 4022, 2]
type = DestroySelf
trigger1 = AnimTime = 0

;Overhead Smash
[Statedef 1040]
type = S
movetype = A
physics = S
velset = 0
ctrl = 0
anim = 1040
poweradd = 40



[State 0, 1]
type = PosAdd
trigger1 = AnimElem = 4
x = 46
;y = 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = Width
trigger1 = AnimElemTime(2) >=0 && AnimElemTime(4) < 0
;edge = 0,0
player = 50,0
;ignorehitpause = 0
;persistent = 1



[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 7
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0, 2

[State 100, 1]
type = MakeDust
trigger1 = AnimElemTime(2) >=0 && AnimElemTime(6) < 0
pos = 0, 0
spacing = 1

[State 410, 1]
type = VelSet
trigger1 = AnimElemTime(2) >=0 && AnimElemTime(6) < 0
x = 3

[State 4001, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
animtype = Hard
damage = 60,3
hitflag = MAF
guardflag = HA
pausetime = 10, 10
sparkno = 3
sparkxy = 0,-35
hitsound = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 26
ground.velocity = -5,0
guard.velocity = -6
air.velocity = -12,12
airguard.velocity = -6,-1
down.velocity = -12,0
down.hittime = 26
envshake.time = 10
air.fall = 1
fall.recover = 0
fall.envshake.time = 10

[State 0, 1]
type = Explod
trigger1 = AnimElem = 4
anim = 1043
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = -1
ownpal = 0
sprpriority = 4
scale = .75, .75
removeongethit = 1



[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1045

;Overhead Smash
[Statedef 1041]
type = S
movetype = A
physics = S
velset = 0
ctrl = 0
anim = 1041
poweradd = 40

[State 0, 1]
type = PosAdd
trigger1 = AnimElem = 4
x = 46

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 7
channel = 0

[State 0, 1]
type = Width
trigger1 = AnimElemTime(2) >=0 && AnimElemTime(4) < 0
;edge = 0,0
player = 50,0

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0, 2

[State 100, 1]
type = MakeDust
trigger1 = AnimElemTime(2) >=0 && AnimElemTime(6) < 0
pos = 0, 0
spacing = 1

[State 410, 1]
type = VelSet
trigger1 = AnimElemTime(2) >=0 && AnimElemTime(6) < 0
x = 6

[State 4001, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
animtype = Hard
damage = 60,3
hitflag = MAF
guardflag = HA
pausetime = 10, 10
sparkno = 3
sparkxy = 0,-35
hitsound = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 26
ground.velocity = -5,0
guard.velocity = -6
air.velocity = -12,12
airguard.velocity = -6,-1
down.velocity = -12,0
down.hittime = 26
envshake.time = 10
air.fall = 1
fall.recover = 0
fall.envshake.time = 10

[State 0, 1]
type = Explod
trigger1 = AnimElem = 4
anim = 1043
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
scale = .75, .75
removeongethit = 1



[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1045

;Overhead Smash
[Statedef 1042]
type = S
movetype = A
physics = S
velset = 0
ctrl = 0
anim = 1042
poweradd = 40

[State 0, 1]
type = PosAdd
trigger1 = AnimElem = 4
x = 46

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 7
channel = 0

[State 0, 1]
type = Width
trigger1 = AnimElemTime(2) >=0 && AnimElemTime(4) < 0
;edge = 0,0
player = 50,0

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0, 2

[State 100, 1]
type = MakeDust
trigger1 = AnimElemTime(2) >=0 && AnimElemTime(6) < 0
pos = 0, 0
spacing = 1

[State 410, 1]
type = VelSet
trigger1 = AnimElemTime(2) >=0 && AnimElemTime(6) < 0
x = 10

[State 4001, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
animtype = Hard
damage = 60,3
hitflag = MAF
guardflag = HA
pausetime = 10, 10
sparkno = 3
sparkxy = 0,-35
hitsound = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 26
ground.velocity = -5,0
guard.velocity = -6
air.velocity = -12,12
airguard.velocity = -6,-1
down.velocity = -12,0
down.hittime = 26
envshake.time = 10
air.fall = 1
fall.recover = 0
fall.envshake.time = 10

[State 0, 1]
type = Explod
trigger1 = AnimElem = 4
anim = 1043
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
scale = .75, .75
removeongethit = 1



[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1045

;Overhead Smash
[Statedef 1045]
type = A
movetype = A
physics = S
velset = 10,0
ctrl = 0
anim = 1045


[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 8
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 2


[State 4001, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
animtype = Up
damage = 60,3
hitflag = MAF
guardflag = MA
pausetime = 4, 4
sparkno = 3
sparkxy = 0,-55
hitsound = s5,9
guardsound = 6,0
ground.type = High
sparkxy = -10,-25
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -1.5,-10.4
air.velocity = -1.5,-10.4
guard.velocity = -7
fall = 1
fall.recover = 0
envshake.time = 10
fall.envshake.time = 10

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 1046
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1



[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Android Rush
[Statedef 1050]
type = S
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0
anim = 1050
juggle = 4

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,9
volume = 255
channel = 0

[State 106, 2]
type = PlaySnd
trigger1 = Time = 11
value = 0,6
channel = 2

[State 100, 1]
type = velset
trigger1 = animelem = 2
x = 10

[State 0, 1]
type = Explod
triggerall = AnimElemTime(2) >=0
trigger1 = time%3=0
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1
scale = .5,.5

[State 0, 1]
type = HitDef
trigger1 = animelem = 2
attr = S, SA
hitflag = MAF
guardflag = HA
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
p1stateno = 1060
p2stateno = 1065
kill = 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = moveguarded
value = 1056
ignorehitpause = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = time = 40
value = 1055

;Android Rush
[Statedef 1051]
type = S
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0
anim = 1052
juggle = 4

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,9
volume = 255
channel = 0

[State 106, 2]
type = PlaySnd
trigger1 = Time = 15
value = 0,10
channel = 2

[State 100, 1]
type = velset
trigger1 = animelem = 2
x = 10

[State 0, 1]
type = Explod
triggerall = AnimElemTime(2) >=0
trigger1 = time%3=0
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1
scale = .5,.5

[State 0, 1]
type = HitDef
trigger1 = animelem = 2
attr = S, SA
hitflag = MAF
guardflag = LA
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
p1stateno = 1060
p2stateno = 1065
kill = 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = moveguarded
value = 1056
ignorehitpause = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = time = 40
value = 1055

;Android Rush
[Statedef 1052]
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
trigger1 = animtime = 0 && command = "holdback"
x = P2dist X - 150 

[State 0, 1]
type = PosAdd
trigger1 = animtime = 0 && command != "holdback"
x = P2dist X + 150 

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1053


;Part Two.
[Statedef 1053]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 1055
facep2 = 1



[State 0, ]
type = ScreenBound
trigger1 = AnimElem = 11, <0
value = 0
movecamera = 0,1
;ignorehitpause = 0
;persistent = 1



[State 106, 2]
type = PlaySnd
trigger1 = Time = 11
value = 0,6
channel = 2

[State 100, 1]
type = velset
trigger1 = 1
x = 10

[State 0, 1]
type = Explod
trigger1 = time%3=0
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1
scale = .5,.5

[State 0, 1]
type = HitDef
trigger1 = animelem = 2
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
p1stateno = 1060
p2stateno = 1065
p2getp1state = 1
kill = 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = moveguarded
value = 1056
ignorehitpause = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = time = 20
value = 1055

; Missed 
[Statedef 1055]
type = S
physics = S
ctrl = 0
anim = 105

[State 0, 1]
type = Explod
trigger1 = time=0
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1


[State 106, 4]
type = ChangeState
trigger1 = time = 15
value = 0
ctrl = 1

; Denied
[Statedef 1056]
type = A
physics = N
ctrl = 0
anim = 1057

[State 105, 1]
type = VelSet
trigger1 = AnimElem = 2
x = -2
y = -4

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
trigger1 = Time > 2
y = .29

[State 106, 4]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52


; The Smackdown
[Statedef 1060]
type    = S
movetype= A 
physics = N
velset = .75,0
anim = 201
ctrl = 0



[State 0, 1]
type = PlayerPush
trigger1 = 1
value = 0
;ignorehitpause = 0
;persistent = 1



[State 202, 1]
type = HitDef
trigger1 = time % 3 = 0
attr = S, NA   
damage = 7,1
animtype = Heavy
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 2,2
sparkno = -1
sparkxy = 0,-60
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
p2stateno = 1065
kill = 0


[State 1475, 4.5]
type = Width
trigger1 = 1
edge = 70, 0

[State 0, 1]
type = PlaySnd
trigger1 = time%10 = 0
value = 0,(random%3)
volume = 255

[State 154, Guard Push Spark]
type = Explod
trigger1 = time%6 = 0
anim = F1
postype = p1
pos = 40,-40
bindtime = -1
ontop = 1
ownpal = 1
random = 60,60

[State 0, 1]
type = Explod
trigger1 = time%20=0
anim = 990
postype = p1
pos = 30,0
sprpriority = 5
supermove = 1
ownpal = 1


[State 0, 1]
type = Explod
trigger1 = time%20=0
anim = 990
postype = p1
pos = 30,0
sprpriority = 5
supermove = 1
ownpal = 1
facing = -1


[State -2]; Sorrowedge's Speed Up Code
type = changeanim
trigger1 = animelemtime(animelemno(0)+1) < 0 && anim >= 200 && (anim != [800,1009]) && (anim !=[1060,1069]) && Anim < 3000
trigger1 = animelemtime(animelemno(0)) > floor((animelemtime(animelemno(0))-animelemtime(animelemno(0)+1))/4)
ignorehitpause = 0
value = anim
elem = animelemno(0)+1


[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [0,50]
value = 200

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [51,100]
value = 210

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [101,150]
value = 220

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [151,200]
value = 230

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [201,250]
value = 240

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [251,300]
value = 250

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [301,350]
value = 400

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [351,400]
value = 410

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [401,450]
value = 420

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [451,500]
value = 430

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [501,550]
value = 440

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [551,600]
value = 450

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [601,650]
value = 600

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [651,700]
value = 610

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [701,750]
value = 620

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [751,800]
value = 630

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [801,850]
value = 640

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [851,900]
value = 650

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [901,950]
value = 201

[State 0, 1]
type = ChangeAnim
triggerall = !time || !Animtime
trigger1 = random = [951,999]
value = 231



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
trigger1 = 1
time = 1
;ID = -1
pos = 40,0
;ignorehitpause = 0
;persistent = 1


[State 0, 1]
type = ChangeState
trigger1 = Time >= 60 
value = 1061

;Standing Medium Kick 
[Statedef 1061]
type    = S     
movetype= A     
physics = S     
juggle  = 1     
velset = 0,0
ctrl = 0  
anim = 1056


[State 1475, 4.5]
type = Width
trigger1 = 1
player = 45, 0

[State 0, ]
type = VelSet
trigger1 = AnimElem = 6
x = 5
;y = 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = TargetState
trigger1 = !time
value = 897

[State 0, 1]
type = RemoveExplod
trigger1 = !time
ID = 992

[State 202, 1]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA   
damage = 50
animtype = Heavy
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 1
sparkxy = 0,-60
hitsound = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -15,0
fall = 1
fall.recover = 0
yaccel = .55
envshake.time = 10
fall.envshake.time = 10
p2stateno = 1066


[State 0, 1]
type = Explod
trigger1 = AnimElem = 4 && Anim = 240
anim = 245
pos = 92,-54
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0
;persistent = 1


[State 200, 7]
type = Playsnd
trigger1 = time = 2 
value = 1,10

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 5
value = 0,1

[State 202, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Grounder-(Grounds opponent if hit in air)
[Statedef 1065]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 0, 1]
type = ChangeAnim2
trigger1 = !Time
value = ifelse(random < 500,1059,1058)

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


; Wira Attack
[Statedef 1066]
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
value = 1067

;------------------
; Hit by Fast Kung Fu Palm - flying through the air
; (a custom gethit state)
[Statedef 1067]
type    = A
movetype= H
physics = N

[State 1026, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 1026, Hit wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 1068

[State 1026, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 1068]
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
value = 1069

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 1069]
type    = A
movetype= H
physics = N

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = 4

[State 1028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 6

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

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;Forward Dash
[Statedef 100]
type    = S
physics = S
velset = 0,0
ctrl = 1
anim = 100

[State 106, 2]
type = PlaySnd
trigger1 = Time = 0
value = 0,6
channel = 2

[State 105 , 1]
type = AssertSpecial
trigger1 = 1
flag=NoWalk

[State 100, 1]
type = velset
trigger1 = 1
x = 10

[State 0, 1]
type = Explod
trigger1 = time%4=0
anim = 101
postype = p1
pos = 0,0
sprpriority = 4
supermove = 1
ownpal = 1
bindtime = -1
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = time%3=0
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1
scale = .5,.5

[State 100, 3]
type = ChangeState
trigger1 = command !="holdfwd"
value = 0
ctrl = 1

;Aerial Dash
[Statedef 101]
type    = A
physics = N
velset = 9,0
ctrl = 1

[State 106, 2]
type = PlaySnd
trigger1 = Time = 0
value = 0,6
channel = 2

[State 0, 1]
type = Explod
trigger1 = time%4=0
anim = 101
postype = p1
pos = 0,0
sprpriority = 4
supermove = 1
ownpal = 1
bindtime = -1
removeongethit = 1

[State 105 , 1]
type = AssertSpecial
trigger1 = 1
flag=NoWalk


[State 105 , 1]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 100
value = 100

[State 105 , 2]
type = ChangeState
trigger1 = time = 20
value = ifelse(Var(4) > 1,902,50)
ctrl = 1


;---------------------------------------------------------------------------
; Back Dash 
[Statedef 105]
type = A
physics = N
ctrl = 0
anim = 105

[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 106, 2]
type = PlaySnd
trigger1 = Time = 0 
value = 0,5
channel = 2

[State 193, 2]
type = PlaySnd
trigger1 = !time && random < 300
value = 1,13
channel = 0

[State 106, 3]
type = veladd
trigger1 = time = 10
x = .06

[State 106, 3]
type = VelAdd
trigger1 = Time > 2
y = .79

[State 106, 4]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52

;Aerial Reverse Dash
[Statedef 106]
type    = A
physics = N
velset = -10,0
ctrl = 1

[State 106, 2]
type = PlaySnd
trigger1 = Time = 0
value = 0,6
channel = 2

[State 0, 1]
type = Explod
trigger1 = time%4=0
anim = 101
postype = p1
pos = 0,0
sprpriority = 4
supermove = 1
ownpal = 1
bindtime = -1
removeongethit = 1
facing = -1

[State 105 , 1]
type = AssertSpecial
trigger1 = 1
flag=NoWalk


[State 105 , 1]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 105
value = 105

[State 105 , 2]
type = ChangeState
trigger1 = time = 20
value = ifelse(Var(4)>1,902,50)
ctrl = 1

; Fly Start
[Statedef 900]
type = A
movetype = I
physics = N
velset = 0,0
anim = 5200
ctrl = 0

[State 0, 1]
type = Explod
trigger1 = time%2=1
Anim = 49
pos = 0, 0
random = 60,30
ontop = 1
accel = 0,-0.3 
scale = 0.5,1

[State -3, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 16
volume = 255

[State 0, 2]
type = VelSet
trigger1 = AnimElem = 1, = 1
y = -7

[State 0, 3]
type = VelAdd
trigger1 = Vel Y < 0
y = .25

[State 0, 4]
type = VelSet
trigger1 = !AnimTime
y = 0

[State 0, 5]
type = VarSet
trigger1 = AnimElem = 6
var(4) = 600

[State 0, 5]
type = VarAdd
trigger1 = AnimElem = 6
var(5) = 200

[State 0, 6]
type = ChangeState
trigger1 = AnimElem = 6
value = 902

;---------------------------------------------------------------------------
; Fly Start (Air)
[Statedef 901]
type = A
movetype = I
physics = N
velset = 0,0
anim = 5200
ctrl = 0

[State -3, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 16
volume = 255

[State 0, 1]
type = Explod
trigger1 = time%2=1
Anim = 49
pos = 0, 0
random = 60,30
ontop = 1
accel = 0,-0.3 
scale = 0.5,1


[State 0, 2]
type = VelSet
trigger1 = AnimElem = 1, = 1
y = -4

[State 0, 3]
type = VelAdd
trigger1 = Vel Y < 0
y = .25

[State 0, 4]
type = VelSet
trigger1 = !AnimTime
y = 0

[State 0, 5]
type = VarSet
trigger1 = AnimElem = 6
var(4) = 600

[State 0, 5]
type = VarAdd
trigger1 = AnimElem = 6
var(5) = 200

[State 0, 6]
type = ChangeState
trigger1 = AnimElem = 6
value = 902

;---------------------------------------------------------------------------
; Flying State
[Statedef 902]
type = A
movetype = I
physics = N
velset = 0,0
;anim = 0
ctrl = 1

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 1
trigger1 = !Vel X
trigger1 = !Vel Y
value = 1

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 41
trigger1 = Vel X = 0
trigger1 = Vel Y < 0
value = 41

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 41
trigger1 = Vel X = 0
trigger1 = Vel Y > 0
value = 41

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 30
trigger1 = Vel X > 0
value = 30

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 31
trigger1 = Vel X < 0
value = 31

[State 0, 2]
type = ChangeState
trigger1 = command = "FF"
value = 101

[State 0, 2]
type = ChangeState
trigger1 = command = "BB"
value = 106

[State 0, 3]
type = Turn
trigger1 = p2dist X < 0 ;facing = enemyNear, facing
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holddown"
trigger1 = command != "holdup"

[State 0, ]
type = VelSet
triggerall = command = "holdfwd"
trigger1 = command = "holdup"
trigger2 = command = "holddown"
x = 4

[State 0, ]
type = VelSet
triggerall = command = "holdback"
trigger1 = command = "holdup"
trigger2 = command = "holddown"
x = -4

[State 0, ]
type = VelSet
triggerall = command = "holddown"
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
y = 4

[State 0, ]
type = VelSet
triggerall = command = "holdup"
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
y = -4

[State 0, VelSet]
type = VelSet
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = command = "holdfwd"
x = 4.5

[State 0, ]
type = VelSet
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = command = "holdback"
x = -4.5

[State 0, ]
type = VelSet
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command = "holddown"
y = 4.5

[State 0, ]
type = VelSet
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command = "holdup"
y = -4.5

[State 0, ]
type = ChangeState
trigger1 = var(4) = 1
value = 50
ctrl = 1

; HITA_RECOV (recovering in air, not falling)
[Statedef 5040]
type    = A
movetype= H
physics = N

[State 5040, 1]
type = ChangeState
trigger1 = !Alive
value = 5050

[State 5040, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim != 5040
trigger2 = Time = 0
trigger2 = Anim != 5035
value = 5040

[State 5040, 3]
type = CtrlSet
trigger1 = HitOver
value = 1

[State 5040, 4]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5040, 5]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5040, 6]
type = ChangeState
triggerall = var(4)< 2
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMPLAND

[State 5040, 6] ;Stay in air if flying.
type = ChangeState
triggerall = var(4)>1
trigger1 = HitOver
value = 902 ;JUMPLAND

; AirJump Start
[Statedef 45]
type    = A
physics = N
ctrl = 0
velset = 0,0

[State 5040, 6] ;Stay in air if flying.
type = ChangeState
trigger1 = var(4)>1
value = 902 

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

; AIR GUARD (guarding)
[Statedef 132]
type    = A
physics = N

[State 132, 1]
type = ChangeAnim
trigger1 = Anim != 132
value = 132

[State 132, 2]
type = VelAdd
trigger1 = Var(4) < 2
y = Const(movement.yaccel)

[State 132, 3]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 132, 4]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, 4]
type = VelSet
trigger1 = var(4) > 1
x = 0
y = 0


[State 132, 5]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, 6]
type = ChangeState
trigger1 = var(4) > 1
trigger1 = command != "holdback"
value = 902


[State 132, 6]
type = ChangeState
trigger1 = sysvar(0) 
trigger1 = command != "holdback"
value = 52

[State 132, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 130

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
trigger1 = Time = 0 && statetype = A && Var(4) < 2 
physics = A

[State 140, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A && Var(4) > 1
physics = N


[State 140, 5] ;Implemented within engine
type = ChangeState
trigger1 = statetype = A && AnimTime = 0
value = ifelse(Var(4)>1,902,50)

; AGUARDHIT2 (knocked away)
[Statedef 155]
type    = A
movetype= H
physics = N
anim = 152

[State 155, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 155, 2]
type = VelAdd
trigger1 = Var(4) < 2
y = Const(movement.yaccel)

[State 155, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 132, 6]
type = ChangeState
triggerall = ctrl = 1
trigger1 = var(4) > 1
value = 902


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
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State -2, Recover]
type = PlaySnd
triggerall = RoundState = 2
trigger1 = (stateno = 5201) && (time = 1)
trigger2 = (stateno = 5210) && (time = 1)
value = 1,14
ignorehitpause = 1

[State -2, NoKoSlow]
type = AssertSpecial
trigger1 = stateno = [3000,3999]
flag = NoKoSlow
persistent = 1
ignorehitpause = 1

[State -2, 0]
type = Pause
triggerall = var(17) > 0 && roundstate = 2
trigger1 = (gametime%2) = 0 
time = 1
movetime = 0
ignorehitpause = 1


[State 0, 1]
type = RemoveExplod
trigger1 = prevstateno = [200,699]
trigger2 = prevstateno = 1020
ID = prevstateno
;ignorehitpause = 0

[State -2, 8]
type = StopSnd
trigger1 = movetype = H 
channel = 2 

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
value = 55, 2

[State -3, Landing Sound]
type = GameMakeAnim
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
value = 60
pos = 0,0
under = 1

; Play "ow" sound when hit
[State -3, Ow Sound]
type = PlaySnd
triggerall = Time = 1
triggerall = alive && (random <= 500)
trigger1 = stateno = 5001 || stateno = 5011
trigger2 = stateno = 5040 || stateno = 5050
value = 3,0+(random<=500)
channel = 1

[State -3, Ow Sound]
type = PlaySnd
triggerall = Time = 1
triggerall = alive
trigger1 = stateno = 5070
value = 3,2
channel = 1
lowpriority = 1


;Air Dash Restrictor
[State -2, Air Dash Restrict]
type = VarAdd
triggerall = time = 1 && Var(4) = 0
trigger1 = stateno =101
trigger2 = stateno = 106
var(2) = 1

[State -2, Air Dash Restrict]
type = VarSet
trigger1 = statetype !=A && Var(2) !=0
var(2) = 0

;-[ Flying ]-
[State -2]
type = VarSet
triggerall = var(4) > 1
trigger1 = StateType != A
trigger2 = RoundState != 2
trigger3 = command = "Flying"
trigger3 = StateType = A
trigger4 = movetype = H
trigger4 = pos y > -10
var(4) = 1

[State -2]
type = VarSet
trigger1 = StateType = S
trigger1 = StateNo != 900
var(4) = 0

[State -2]
type = VarAdd
trigger1 = var(4) > 1
var(4) = -1

[State -2]
type = VarAdd
trigger1 = var(4) > 1
trigger1 = Gametime%2=0
var(5) = 3

[State -2]
type = VarAdd
trigger1 = var(5) > 0 && !var(4)
var(5) = -1
ignorehitpause = 1

[State 0, 1]
type = Explod
triggerall = roundstate = 2
trigger1 = var(5) = 1 && !var(4)
anim = 991
pos = 0,-10
postype = p1
facing = facing
bindtime = -1
ontop = 1
;removeongethit = 0
ignorehitpause = 1

[State 0, 2]
type = PlaySnd
triggerall = roundstate = 2
trigger1 = var(5) = 1 && !var(4) 
value = 6,0
volume = 255
ignorehitpause = 1

[State 0, 1]
type = PalFX
triggerall = roundstate = 2
trigger1 = var(5) = 1 && !var(4) 
mul = 255,255,800
add = 50,50,50
color = 0
time =4
ignorehitpause = 1

[State -2]
type = VelAdd
trigger1 = var(4) > 1 && movetype !=H
trigger1 = Vel X > 0
trigger1 = command != "holdfwd"
trigger2 = var(4) > 1 && stateno = 155
trigger2 = Vel X > 0
x = -.25

[State -2]
type = VelAdd
trigger1 = var(4) > 1 && movetype !=H
trigger1 = Vel X < 0
trigger1 = command != "holdback"
trigger2 = var(4) > 1 && stateno = 155
trigger2 = Vel X < 0
x = .25

[State -2]
type = VelAdd
trigger1 = var(4) > 1 && movetype !=H
trigger1 = Vel Y > 0
trigger1 = command != "holddown"
trigger2 = var(4) > 1 && stateno = 155
trigger2 = Vel Y > 0
y = -.25

[State -2]
type = VelAdd
trigger1 = var(4) > 1 && movetype !=H
trigger1 = Vel Y < 0
trigger1 = command != "holdup"
trigger2 = var(4) > 1 && stateno = 155
trigger2 = Vel Y < 0
y = .25

[State -2]
type = PosSet
trigger1 = var(4) > 1 && movetype !=H
trigger1 = Pos Y < -320
y = -320
ignorehitpause = 1

[State -2]
type = PosSet
triggerall = movetype !=H 
trigger1 = var(4) > 1 && stateno != 1020 && stateno != 1160
trigger1 = Pos Y > -10
y = -10
ignorehitpause = 1

[State -2]
type = StateTypeSet
triggerall = var(4) > 1
trigger1 = stateno = [600,699] 
trigger2 = stateno = [1030,1032]
physics = N

[State 0, 1]
type = PalFX
trigger1 = Var(4) = [2,120]
trigger1 = time%4=0
mul = 800,255,255
add = 50,50,50
color = 0
time =2
ignorehitpause = 1

[State 0,1]
type = Helper
triggerall = (WinKO) && (Var(51) !=1) && !NumHelper(9994)
trigger1 = stateno = [3000,3089]
pos = 35, 0
postype = p1
stateno = 9994
helpertype = normal
name = "Super Finish BG"
keyctrl = 0
ownpal = 1
ID = 9994
ignorehitpause = 1



[State -2,1]
type = RemoveExplod
trigger1 = NumHelper(9994) 
ID = 999
ignorehitpause = 1

[State 0, 1]
type = AssertSpecial
trigger1 =  NumHelper(9994) 
ignorehitpause = 1
flag = NoFG
flag2 = NoBarDisplay
flag3= NoMusic

[State -2, 1]
type = EnvShake
trigger1 = (WinKO) && (Var(51) !=1) 
time = 10
ignorehitpause = 1
persistent = 0

[State -2, Super Var 2]
type = VarSet
trigger1 = (WinKO) && (Var(51) !=1) 
v = 51
value = 1
ignorehitpause = 1

[State -2, Super Var 2]
type = VarSet
trigger1 = (LoseKO) && (Var(52) !=1) 
v = 52
value = 1
ignorehitpause = 1

[State -2, 0]
type = VarSet
triggerall = roundstate = 2
trigger1 = NumHelper(11002) = 1
trigger1 = (helper(11002), MoveHit) && (P2MoveType = H) && (Enemy, Time = 0) && (Var(17) = 0)
trigger2 = NumHelper(3022) = 1
trigger2 = (helper(3022), MoveHit) && (P2MoveType = H) && (Enemy, Time = 0) && (Var(17) = 0)
trigger3 = NumHelper(3061) = 1
trigger3 = (helper(3061), MoveHit) && (P2MoveType = H) && (Enemy, Time = 0) && (Var(17) = 0)
v = 17
value = 30
ignorehitpause = 1

[State -2, 0]
type = Varadd
trigger1 = Var(17) > 0
v = 17
value = -1
ignorehitpause = 1


;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

;[Statedef -3]

; Super Finish Effect
[Statedef 9994]
type = S
ctrl = 0
anim = 9997
velset = 0,0
sprpriority = 4

[State -2, Finish SFX]
type = AllPalFX
trigger1 = !time
add = 255,255,255
time =2
ignorehitpause = 1


[State 0, 1]
type = AssertSpecial
trigger1 = 1 
ignorehitpause = 1
flag = NoFG
flag2 = NoBarDisplay
flag3= NoMusic


[State 0, 1]
type = SuperPause
trigger1 = !time
time = 150
anim = -1
pos = 0,0
movetime = 150


[State -2,1]
type = PlaySnd
trigger1 = !time 
persistent = 0
value = 9,0
volume =455
ignorehitpause = 1
abspan = 0

[State 3510, 4]
type = explod
trigger1 = time = 0
anim = 8010
pos = 160,120
postype = left
sprpriority = -10
supermove = 1
removetime = 150
bindtime = 150
ID = 9996
ignorehitpause = 1

[State 2090, 7]
type = ModifyExplod
trigger1 = Time >= 75
ID = 9996
scale = 1+(0.66*(time-75)),1+(0.66*(time-75))

[State -2, Finish SFX]
type = AllPalFX
trigger1 = time = 75
sinadd = 255,255,255,225
persistent = 0
time =75
ignorehitpause = 1


[State 7001, 2]
type = DestroySelf
trigger1 = time =150


[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

; Super Finish Effect 2
[Statedef 9995]
type = S
ctrl = 0
anim = 9997
velset = 0,0
sprpriority = 4

[State -2, Finish SFX]
type = AllPalFX
trigger1 = !time
add = 255,255,255
time =2
ignorehitpause = 1


[State 0, 1]
type = AssertSpecial
trigger1 = 1 
ignorehitpause = 1
flag = NoFG
flag2 = NoBarDisplay
flag3= NoMusic


[State 0, 1]
type = SuperPause
trigger1 = !time
time = 150
anim = -1
pos = 0,0
movetime = 150


[State -2,1]
type = PlaySnd
trigger1 = !time 
persistent = 0
value = 9,0
volume =455
ignorehitpause = 1
abspan = 0

[State 3510, 4]
type = explod
trigger1 = time = 0
anim = 8013
pos = 160,120
postype = left
sprpriority = -10
supermove = 1
removetime = 150
bindtime = 150
ID = 9996
ignorehitpause = 1

[State 2090, 7]
type = ModifyExplod
trigger1 = 1
ID = 9996
scale = 1+(0.0005*time),1+(0.0005*time)

[State 7001, 2]
type = DestroySelf
trigger1 = time =150


[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------
