; Super Motions
;===========================================================================

[command]
name = "cosmo"
command = a+x

[Command]
name = "Teleportation"
command = a+b

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;Recover
[Command]
name = "recover"
command = D, y+z
time = 30

[Command]
name = "helper"
command = D, D, D, x
time = 35

;Niebla roja
[Command]
name = "Niebla roja"
command = b+y
time = 30

[command]
name = "misil"
command = F, c

[Command]
name = "IcedFloor"
command = ~D, DF ,F , b
time = 10

[Command] 
name = "comb-agarre"  
command = B ,F , y
time = 20

;Bloody Rose  blanca
[Command]
name = "rose"
command = D, D, c;B, DB, D, DF, F, c
time = 20

;-- Rosas Negras --
[Command]
name = "noir"
command = B, b;B, DB, D, DF, F, b
time = 20

;-- Rosas Aereas
[Command]
name = "rosas-ataq1"
command = B, DB, D, DF, F, z
time = 30

;-- Rosas Rojas --
[Command]
name = "rouge"
command = B, a;B, DB, D, DF, F, a
time = 20

[Command]
name = "TripleCombo"
command = B, DB, D, DF, F, x
time = 20

;Espinas Carmesi 1
[Command]
name = "ryuseiken1"
command = B, D, B, c
time = 30

;2ｰ Espinas Carmesi fuerte
[Command]
name = "ryuseiken"
command = B, D, D, b
time = 30

;===========================================================================
; Special Motions
;===========================================================================
[Command]
name = "U"
command = U

[Command]
name = "hold_c"
command = /$b
time = 1

[Command]
name = "hold_b"
command = /$c
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

;[Command]
;name = "agarre"
;command = /F, y
;time = 15

;ROSA MEDIUM
[Command]
name = "fireball2"
command = ~D, DB, B, a
time = 25

;ROSA STRONG
[Command]
name = "fireball3"
command = D, DF, F, c
time = 25

[Command]
name = "onde"
command = D, DF, F, a
time = 25

;Cometa Pegaso (Pegasus Suiseken)
[Command]
name = "Suiseken"
command = D, DF, F, z
time = 25

[Command]
name = "wall1"
command = /a
time = 1
[Command]
name = "wall2"
command = /x
time = 1
;===========================================================================
; Double Tap Motions
;===========================================================================
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10
;===========================================================================
; 2/3 button combinations
;===========================================================================

;megablock
[Command]
name = "mega_block"
command = c
time = 50
;===========================================================================
; Directions + Buttons
;===========================================================================
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;===========================================================================
; Singular Buttons
;===========================================================================
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

;===========================================================================
; Hold Direction
;===========================================================================
[Command]
name = "DU"
command = D, U
time = 10

[Command]
name = "UF"
command = UF
time = 1

[Command]
name = "UB"
command = UB
time = 1

[Command]
name = "DUF"
command = D, UF
time = 10

[Command]
name = "DUB"
command = D, UB
time = 10

[Command]
name = "up"
command = U
time = 1
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
;-------------------------------------------------------------

;superguard
[Command]
name = "holdback3"
command = /$B   
time = 50
;------------------------
[Statedef -1]
;===========================================================================
; Supers
;===========================================================================

; アウトバースト
[State -1]
type = ChangeState
value = 1200
triggerall = command = "misil"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger1 = Var(20) = 0
trigger2 = stateno = [200,210]
trigger2 = movecontact
trigger3 = stateno = [120,159]
trigger4 = Var(20) != 0
trigger4 = p2bodydist X < 40
trigger4 = ctrl = 1

;Niebla roja
[State -1]
type = ChangeState
value = 30020
triggerall = command = "Niebla roja"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1


;shion helper
[State -1]
type = ChangeState
value = 370
;triggerall = p2name != "shion"
;triggerall = p4name != "shion"
triggerall = power >= 1000
triggerall = NumHelper(545) = 0
triggerall = command = "helper"
;triggerall = command = "holdfwd"
;triggerall = life <= 500
trigger1 = statetype != A
trigger1 = P2statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 250
trigger4 = MoveContact
trigger5 = stateno = 270
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 440
trigger7 = MoveContact
trigger8 = stateno = 460
trigger8 = MoveContact

[State -1,ICED FLOOR]
type = ChangeState
value = 2600
triggerall = command = "IcedFloor"
trigger1 =  numhelper = 0
trigger1 = statetype = S
trigger2 =(stateno = [200,440]) && (stateno !=[600,640])
trigger1 = ctrl

[state -1]
type = ChangeState
value = 1300
triggerall = statetype != A
triggerall = ctrl
triggerall = command = "comb-agarre"
trigger1 = power >= 1000

;Rosas Aereas
[state -1]
type = ChangeState
value = 1101
triggerall = statetype = A
triggerall = ctrl
triggerall = Pos Y < -75
trigger1 = command = "rosas-ataq1"
trigger1 = power >= 2000

;Rosas Rojas
[State -1, ]
type = ChangeState
value = 3001
triggerall = command = "rouge"
triggerall = power >= 1500 
trigger1 = statetype != A
trigger1 = ctrl = 1

;Rosas Negras
[State -1, ]
type = ChangeState
value = 6100
triggerall = command = "noir"
triggerall = power >= 2000 
trigger1 = statetype != A
trigger1 = ctrl = 1

;Triple Combo
[State -1]
type = ChangeState
value = 6000
triggerall = command = "TripleCombo"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = movecontact

;Bloody Rose
[State -1]
type = ChangeState
value = 8887
triggerall = command = "rose"
triggerall = power >= 2500
trigger1 = statetype != A
trigger1 = ctrl = 1

;Espinas carmesi  1
[State -1]
type = ChangeState
value = 4201
triggerall = command = "ryuseiken1"
triggerall = power >= 2900
trigger1 = statetype != A
trigger1 = ctrl = 1

;Espinas carmesi  2
[State -1]
type = ChangeState
value = 4200
triggerall = command = "ryuseiken"
triggerall = power >= 2900
trigger1 = statetype != A
trigger1 = ctrl = 1

;===========================================================================
; Specials
;===========================================================================
;Recarga de Cosmo
[State -1: 		Ki Charge]
type 			= ChangeState
value 		= 7040
triggerall = PalNo = [1, 6]
triggerall = p2stateno < 99999
triggerall 		= (Command = "hold_b") && (Command = "hold_c") && (Command != "holdfwd") && (Command != "holdback") && (Var(2) <= 0)
trigger1		= (StateType = S) && (Ctrl)
trigger2 = stateno = 2000

[State -1]
type = ChangeState
value = 1000
triggerall = command = "wall1"
triggerall = command = "wall2"
triggerall = power >= 50
trigger1 = statetype != A
trigger1 = ctrl = 1

;Teleportation
[State -1]
type = ChangeState
value = 6500
triggerall = command = "Teleportation"
triggerall = power >= 25
triggerall = NumProjID(2001) = 0
triggerall = StateNo != [1090, 1098]
trigger1 = statetype = S         
trigger2 = stateno = 2000  

;recover
[State -1]
type = ChangeState
value = 2000
trigger1 = Var(1) != 1
triggerall = command = "recover"
trigger1 = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

;Agarres
;[State -1]
;type = ChangeState
;value = 900
;triggerall = statetype != A && p2bodydist X < 15 && ctrl
;triggerall = p2stateno != [140,153]
;triggerall = command = "agarre"
;triggerall = (command = "holdfwd" || command = "holdback") && command != "holddown"
;trigger1 = stateno != 100 && p2statetype != A && p2movetype != H
;trigger1 = p2stateno != 5120

;ROSA (medium)
[State -1, [State -1]
type = ChangeState
value = 121200
triggerall = command = "fireball2"
trigger1 = statetype != A
trigger1 = ctrl = 1

;ROSA (Strong)
[State -1, [State -1]
type = ChangeState
value = 101200
triggerall = command = "fireball3"
trigger1 = statetype != A
trigger1 = ctrl = 1

;Onde Paralizzanti
[State -1]
type = ChangeState
value = 10100
triggerall = command = "onde"
trigger1 = statetype != A
trigger1 = ctrl = 1

;Cometa Pegaso (Pegasus Suiseken)
[State -1]
type = ChangeState
value = 31000
triggerall = command = "Suiseken"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

;===========================================================================
; Basics
;===========================================================================
; RunFwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = ((command = "FF") && (statetype = S) && (ctrl = 1))
;---------------------------------------------------------------------------
; Hop Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = ((command = "BB") && (statetype = S) && (ctrl = 1))
;---------------------------------------------------------------------------
;Mega block
[State -1]
type = ChangeState
value = 1400
triggerall = command = "mega_block"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl = 1
;------------------------------------------
;Stand A
[State -1, Standing Light Punch]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Stand B
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230
trigger2 = movecontact = 1

;Stand C
[State -1, Standing Strong Punch]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = movecontact = 1
;----------------------------------
;Stand X
[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1

;Standing Y
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 210
trigger2 = movecontact = 1

;Standing Z
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 240 || stateno = 220
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;--------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Crouching A
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Crouching B
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Crouching C
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching X
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact = 1

;Crouching Y
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact = 1

;Crouching Z
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 400 || stateno = 430 || stateno = 410
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Jump A
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1 
trigger2 = stateno = 640
trigger2 = movehit = 1

;Jump B
[State -1, Jump Medium Punch]
type = ChangeState
value = 600
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1 
trigger2 = stateno = 600
trigger2 = movecontact = 1


;Jump C
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630  || stateno = 640 
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump X
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 
trigger2 = movecontact

;Jump Y
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 
trigger2 = movecontact

;Jump Z
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 || stateno = 630
trigger2 = movecontact
;---------------------------------------------------------

