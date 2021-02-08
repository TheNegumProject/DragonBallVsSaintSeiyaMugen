[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| AI |--------------------------------------------------------FIDO A
[Command]
name = "ai"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai1"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai2"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai3"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai4"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai5"
command = x,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai6"
command = x,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai7"
command = x,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai8"
command = y,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai9"
command = y,y,y,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai10"
command =  y,y,F,F,F,y,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai11"
command = F,F,x,z,a,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai12"
command = a,F,F,F,x,F,F,F,b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai13"
command = b,b,b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai14"
command = F,F,b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai15"
command = F,b,F,F,b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai16"
command = F,F,c,c,c,F,F,F,F,F,F,F,c,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai17"
command = c,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,c,c,F,a+b
time = 1
[Command]
name = "ai18"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,c,F,F,F,F,F,F,F,c,c,a+b
time = 1
[Command]
name = "ai19"
command = c,F,F,z,F,F,a,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai20"
command = c,F,F,F,F,b,F,F,F,F,a,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai21"
command = a,F,F,F,F,F,F,z,F,F,F,F,F,b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai22"
command = b,a,z,x,c,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai23"
command = x,c,x,x,x,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai24"
command = x,x,x,z,z,z,z,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai25"
command = z,z,z,z,z,z,z,z,a,a,a,a,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai26"
command = a,a,a,a,a,a,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai27"
command = a,a,a,F,F,F,F,F,a,a,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai28"
command = a+b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai29"
command =  z+b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1

;-| HYPER Motions |--------------------------------------------------------
[Command]
name = "MUSIC_EX"
command = ~D, F, D, F, y+b
time = 30

;-| Super Motions |--------------------------------------------------------
[Command]
name = "MUSIC"
command = ~D, F, D, F, x
time = 20
[Command]
name = "MUSIC"
command = ~D, F, D, F, y
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "spec_03A"
command = ~F, D, DF, x
time = 15
[Command]
name = "spec_03B"
command = ~F, D, DF, y
time = 15

[Command]
name = "spec_01A"
command = ~D, DF, F, x
time = 15
[Command]
name = "spec_01A"
command = ~D, DF, F, y
time = 15

[Command]
name = "spec_02A"
command = ~D, DB, B, x
time = 15
[Command]
name = "spec_02B"
command = ~D, DB, B, y
time = 15
[Command]
name = "spec_02C"
command = ~D, DB, B, a
time = 15
[Command]
name = "spec_02D"
command = ~D, DB, B, b
time = 15

[Command]
name = "spec_04A"
command = ~D, DF, F, a
time = 15
[Command]
name = "spec_04B"
command = ~D, DF, F, b
time = 15

;SHORT JUMP
[Command]
name ="shortjump" 
command = ~D, D, a
time = 15
[Command]
name ="shortjump" 
command = ~D, D, b
time = 15
[Command]
name ="shortjump" 
command = ~D, D, x
time = 15
[Command]
name ="shortjump" 
command = ~D, D, y
time = 15

[Command]
name = "block_air"
command = ~$D~
time = 15

;-| System |------------------------------------------------------
;seiya jump system
[Command]
name ="longjump" 
command = D, $U
time = 18

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"			;Required (do not remove)
command = x+y
time = 1

[Command]
name = "rolling"			;Required (do not remove)
command = x+a
time = 1

[Command]
name = "skyattack"			;Required (do not remove)
command = y+b
time = 1

[Command]
name = "comso"			;Required (do not remove)
command = y+a
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

;skyattack_jump
[Command]
name = "skyattack_jump"
command = /$U
time = 1

[Command]
name = "block_air"
command = ~$D~
time = 15

;===========================================================================
;---------------------------------------------------------------------------
[Statedef -1]
;AI
[State -1]
type = VarSet
trigger1 = Command = "ai"
trigger2 = Command = "ai1"
trigger3 = Command = "ai2"
trigger4 = Command = "ai3"
trigger5 = Command = "ai4"
trigger6 = Command = "ai5"
trigger7 = Command = "ai6"
trigger8 = Command = "ai7"
trigger9 = Command = "ai8"
trigger10 = Command = "ai9"
trigger11 = Command = "ai10"
trigger12 = Command = "ai11"
trigger13 = Command = "ai12"
trigger14 = Command = "ai13"
trigger15 = Command = "ai14"
trigger16 = Command = "ai15"
trigger17 = Command = "ai16"
trigger18 = Command = "ai17"
trigger19 = Command = "ai18"
trigger20 = Command = "ai19"
trigger21 = Command = "ai20"
trigger22 = Command = "ai21"
trigger23 = Command = "ai22"
trigger24 = Command = "ai23"
trigger25 = Command = "ai24"
trigger26 = Command = "ai25"
trigger27 = Command = "ai26"
trigger28 = Command = "ai27"
trigger29 = Command = "ai28"
trigger30 = Command = "ai29"
ignorehitpause = 1
var(25) = 1

;AI
[State -1]
type = VarSet
trigger1 = Command = "ai"
trigger2 = Command = "ai1"
trigger3 = Command = "ai2"
trigger4 = Command = "ai3"
trigger5 = Command = "ai4"
trigger6 = Command = "ai5"
trigger7 = Command = "ai6"
trigger8 = Command = "ai7"
trigger9 = Command = "ai8"
trigger10 = Command = "ai9"
trigger11 = Command = "ai10"
trigger12 = Command = "ai11"
trigger13 = Command = "ai12"
trigger14 = Command = "ai13"
trigger15 = Command = "ai14"
trigger16 = Command = "ai15"
trigger17 = Command = "ai16"
trigger18 = Command = "ai17"
trigger19 = Command = "ai18"
trigger20 = Command = "ai19"
trigger21 = Command = "ai20"
trigger22 = Command = "ai21"
trigger23 = Command = "ai22"
trigger24 = Command = "ai23"
trigger25 = Command = "ai24"
trigger26 = Command = "ai25"
trigger27 = Command = "ai26"
trigger28 = Command = "ai27"
trigger29 = Command = "ai28"
trigger30 = Command = "ai29"
ignorehitpause = 1
var(26) = 1

;-----------------------------------------------------------------
;music EXj
[State -1, MUSIC EX]
type = ChangeState
value = 3000
triggerall = command = "MUSIC_EX"
triggerall = statetype != A
trigger1 = ctrl && power >= 1000 && var(20) > 0
trigger2 = ctrl && power >= 2000
;
trigger3 = movecontact && power >= 2000 && stateno = [200,230]
trigger4 = movecontact && power >= 2000 && stateno = [300,330]
;
trigger5 = movecontact && power >= 1000 && var(20) > 0 && stateno = [200,330]
;
trigger6 = movecontact && power >= 2000 && var(20) > 0
trigger6 = stateno = 1000 || stateno = 1010 || stateno = 1200 || stateno = 1201 || stateno = 1210 || stateno = 1211 || stateno = 1220 || stateno = 1221 || stateno = 1230 || stateno = 1231  

;-----------------------------------------------------------------
;musicj
[State -1, MUSIC]
type = ChangeState
value = 2000
triggerall = command = "MUSIC"
triggerall = statetype != A
trigger1 = ctrl && power >= 1000
trigger2 = ctrl && var(20) > 0
;
trigger3 = movecontact && power >= 1000 && stateno = [200,230]
trigger4 = movecontact && power >= 1000 && stateno = [300,330]
;
trigger5 = movecontact && var(20) > 0 && stateno = [200,330]
;
trigger6 = movecontact && power >= 1000 && var(20) > 0
trigger6 = stateno = 1000 || stateno = 1010 || stateno = 1200 || stateno = 1201 || stateno = 1210 || stateno = 1211 || stateno = 1220 || stateno = 1221 || stateno = 1230 || stateno = 1231  


;===========================================================================
;SPECIAL MOVE:
;hit air
[State -1]
type = ChangeState
value = 1230
triggerall = command = "spec_03A" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && stateno = [200,230]
trigger3 = movecontact && stateno = [300,330]
;
trigger4 = movecontact && var(20) > 0
trigger4 = stateno = 1200 || stateno = 1201 || stateno = 1000
trigger5 = movecontact && var(20) > 0
trigger5 = movecontact && stateno = [240,270]

[State -1]
type = ChangeState
value = 1231
triggerall = command = "spec_03B" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && stateno = [200,230]
trigger3 = movecontact && stateno = [300,330]
;
trigger4 = movecontact && var(20) > 0
trigger4 = stateno = 1200 || stateno = 1201 || stateno = 1000
trigger5 = movecontact && var(20) > 0
trigger5 = movecontact && stateno = [240,270]

;ROUND ATTACK
[State -1]
type = ChangeState
value = 1000
triggerall = command = "spec_01A" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && stateno = [200,230]
trigger3 = movecontact && stateno = [300,330]
;
trigger4 = movecontact && var(20) > 0
trigger4 = stateno = 1200 || stateno = 1201 || stateno = 1230 || stateno = 1231 
trigger5 = movecontact && var(20) > 0
trigger5 = movecontact && stateno = [240,270]

;2 ATTACK x 1
[State -1]
type = ChangeState
value = 1200
triggerall = command = "spec_02A" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && stateno = [200,230]
trigger3 = movecontact && stateno = [300,330]
;
trigger4 = movecontact && var(20) > 0
trigger4 = stateno = 1230 || stateno = 1231 || stateno = 1000
trigger5 = movecontact && var(20) > 0
trigger5 = movecontact && stateno = [240,270]

[State -1]
type = ChangeState
value = 1201
triggerall = command = "spec_02B" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && stateno = [200,230]
trigger3 = movecontact && stateno = [300,330]
;
trigger4 = movecontact && var(20) > 0
trigger4 = stateno = 1230 || stateno = 1231 || stateno = 1000
trigger5 = movecontact && var(20) > 0
trigger5 = movecontact && stateno = [240,270]

[State -1]
type = ChangeState
value = 1300
triggerall = command = "spec_04A" && statetype != A
trigger1 = ctrl && var(20) <= 0 && NumProjID(1320) = 0
trigger2 = ctrl && var(20) > 0
;
trigger3 = movecontact && stateno = [200,230]
trigger4 = movecontact && stateno = [300,330]
trigger5 = movecontact && var(20) > 0
trigger5 = stateno = [240,270]
trigger6 = movecontact && var(20) > 0
trigger6 = stateno = 1000 || stateno = 1010 || stateno = 1200 || stateno = 1201 || stateno = 1210 || stateno = 1211 || stateno = 1220 || stateno = 1221 || stateno = 1230 || stateno = 1231   
[State -1]
type = ChangeState
value = 1380
triggerall = command = "spec_04B" && statetype != A
trigger1 = ctrl && var(20) <= 0 && NumProjID(1320) = 0
trigger2 = ctrl && var(20) > 0
;
trigger3 = movecontact && stateno = [200,230]
trigger4 = movecontact && stateno = [300,330]
trigger5 = movecontact && var(20) > 0
trigger5 = stateno = [240,270]
trigger6 = movecontact && var(20) > 0
trigger6 = stateno = 1000 || stateno = 1010 || stateno = 1200 || stateno = 1201 || stateno = 1210 || stateno = 1211 || stateno = 1220 || stateno = 1221 || stateno = 1230 || stateno = 1231  
;===========================================================================
;SYSTEM:
;short jump
[State -1]
type = ChangeState
value = 700
triggerall = command = "shortjump" && statetype != A && power >= 500
trigger1 = movecontact && stateno = [200,399]

; ATTACKING DASH FRONT
[State -1]
type = ChangeState
value = 670
triggerall = command = "rolling" && statetype != A
triggerall = command != "holdback" && movecontact && power >= 500
trigger1 = stateno = [200,399]

; GUARD ATTACK
[State -1]
type = ChangeState
value = 620
triggerall = command = "skyattack" && statetype != A
triggerall = power >= 1000
trigger1 = stateno = [150,152]

; DASH BACK
[State -1]
type = ChangeState
value = 640
triggerall = command = "rolling" && statetype = S
trigger1 = command = "holdback" && ctrl
trigger2 = (stateno = 150 || stateno = 152) && command != "holdfwd" && power >= 1000

; DASH FRONT
[State -1]
type = ChangeState
value = 630
triggerall = command = "rolling" && statetype = S
trigger1 = command = "holdfwd" && command != "holdback" && ctrl
trigger2 = ctrl
trigger3 = (stateno = 150 || stateno = 152) && command != "holdback" && power >= 1000

;comso
[State -1]
type = ChangeState
value = 660
triggerall = var(20) > 0
triggerall = statetype != A && ctrl = 1 && var(21) = 0 && power >= 1000
trigger1 = command = "comso"

[State -1]
type = ChangeState
value = 650
triggerall = var(21) <= 0
triggerall = statetype != A && var(20) = 0 && command = "comso"
trigger1 = ctrl && power >= 1000
;
trigger2 = power >= 2000
trigger2 = movecontact && stateno = [200,499]

; SKY ATTACK
[State -1]
type = ChangeState
value = 610
triggerall = command = "skyattack" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && var(20) > 0
trigger2 = stateno = [200,499]

;big jump
[State -1]
type = ChangeState
value = 730
triggerall = command = "skyattack_jump" && statetype != A
trigger1 = time <= 30 && movecontact && stateno = 610
trigger2 = movehit && stateno = 330
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;DASH BACK
[State -1, DASH BACK]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; power charge
[State -1]
type = ChangeState
value = 680
triggerall = ctrl = 1 && statetype = S
triggerall =power <= 2999
trigger1 = command = "hold_x"
trigger1 = command = "hold_y"

;---------------------------------------------------------------------------
;throw

;===========================================================================
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;
trigger2 = movecontact && stateno = 320
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 310
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;
trigger2 = movecontact && stateno = 300
trigger3 = movecontact && stateno = 320
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 320
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 330
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Near Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = statetype = S && command = "x" && command != "holddown"
triggerall = P2bodydist X <= 30
trigger1 = ctrl
;
trigger2 = movecontact && stateno = 200
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = statetype = S && command = "y" && command != "holddown"
triggerall = P2bodydist X <= 30
trigger1 = ctrl
;
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 220
;
trigger4 = movecontact && stateno = 300
trigger5 = movecontact && stateno = 320
;---------------------------------------------------------------------------
;Stand Light KICK
[State -1, Stand Light KICK]
type = ChangeState
value = 220
triggerall = statetype = S && command = "a" && command != "holddown"
triggerall = P2bodydist X <= 30
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong KICK
[State -1, Stand Strong KICK]
type = ChangeState
value = 230
triggerall = statetype = S && command = "b" && command != "holddown"
triggerall = P2bodydist X <= 30
trigger1 = ctrl
;
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 220
;---------------------------------------------------------------------------
;Stand Light Punch FAR
[State -1, Stand Light Punch]
type = ChangeState
value = 240
triggerall = statetype = S && command = "x" && command != "holddown"
triggerall = P2bodydist X > 30
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong Punch FAR
[State -1, Stand Strong Punch]
type = ChangeState
value = 250
triggerall = statetype = S && command = "y" && command != "holddown"
triggerall = P2bodydist X > 30
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light KICK FAR
[State -1, Stand Light KICK]
type = ChangeState
value = 260
triggerall = statetype = S && command = "a" && command != "holddown"
triggerall = P2bodydist X > 30
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong KICK FAR
[State -1, Stand Strong KICK]
type = ChangeState
value = 270
triggerall = statetype = S && command = "b" && command != "holddown"
triggerall = P2bodydist X > 30
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 400
triggerall = command = "x" && statetype = A
trigger1 = ctrl
;
;stateno = 740, then air attack
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y" && statetype = A
trigger1 = ctrl
;
;stateno = 740, then air attack 
trigger2 = var(4) = 1 && movecontact && stateno = 400
trigger3 = var(4) = 1 && movecontact && stateno = 420
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 420
triggerall = command = "a" && statetype = A
trigger1 = ctrl
;
;stateno = 740, then air attack
trigger2 = var(4) = 1 && movecontact && stateno = 400
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 430
triggerall = command = "b" && statetype = A
trigger1 = ctrl
;
;stateno = 740, then air attack
trigger2 = var(4) = 1 && movecontact && stateno = 410

;===================================================================================;===================================================================================;Auto Guard ¤@¯ë­n©ñ¦b state -1 ªº³Ì¤W¦ì¸m
[State -1];³o¬O¥Î¨Ó±±¨î¤Hª«ÃÛ¤U¾×ªº
type = ChangeState
triggerall = statetype != A && var(25) = 1 && movetype != H && ctrl = 1 && P2MoveType = A
triggerall = P2BodyDist X <= 200 && P2statetype = S						;¶ZÂ÷©¼ªñ®É
;
trigger1 = PrevStateNo != 151									;¦Ó¤§«e¤S¤£¬O¾×
trigger2 = PrevStateNo != 152
trigger3 = PrevStateNo != 153
value = 120											;´N¹w³Æ¨¾¿m

[State -1];³o¬O¥Î¨Ó±±¨î¤Hª«ÃÛ¤U¾×ªº
type = ChangeState
triggerall = statetype != A && var(25) = 1 && movetype != H && ctrl = 1 && P2MoveType = A
triggerall = P2BodyDist X <= 200 && P2statetype = C						;¶ZÂ÷©¼ªñ®É
;
trigger1 = PrevStateNo != 151									;¦Ó¤§«e¤S¤£¬O¾×
trigger2 = PrevStateNo != 152
trigger3 = PrevStateNo != 153
value = 121											;´NÃÛ¤U¹w³Æ¨¾¿m
;
;120       Start guarding (stand)
;121       Start guarding (crouch)
;122       Start guarding (air)

;walk AI
[state -1]
type = ChangeState
triggerall = var(25) = 1
triggerall = ctrl = 1 && movetype != H
trigger1 = P2bodyDist X != [60,100]		;³q±`·|¦b­n¦b¥Ø¼Ð¦ì¸m¥[´î 10-20 §@¬°ªÅ¶¡
trigger1 = Anim != 5
trigger1 = StateNo = 0
trigger1 = Pos Y = 0				;½T«O¬O¦b¦a¤W
value = 20

[state -1]
type = ChangeState
triggerall = var(25) = 1
triggerall = ctrl = 1 && movetype != H
trigger1 = P2bodyDist X = [160,200]		;³q±`·|¦b­n¦b¥Ø¼Ð¦ì¸m¥[´î 10-20 §@¬°ªÅ¶¡
trigger1 = Anim != 5
trigger1 = StateNo = 0
trigger1 = Pos Y = 0				;½T«O¬O¦b¦a¤W
value = 20