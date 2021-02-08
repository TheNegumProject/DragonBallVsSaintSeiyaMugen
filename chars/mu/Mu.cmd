; Super Motions
;===========================================================================

;---------------
;---------------

;Hechos Por arcadia

;Crystall wall
[Command]
name = "crystalwall"
command = D, DF, c
time = 50

[Command]
name = "cwall"
command = F, DF, D, DB, B, a
time = 30

;Stardust revolution
[Command]
name = "stardust"
command = B, DB, D, DF, F, z
time = 50

;Starlight extinction
[Command]
name = "starlight"
command =b+y
time = 30

;Cosmo
[Command]
name = "Cosmo"
command =b+c
time = 50

;---------------
;---------------

[Command]
name = "TripleKFPalm"
command = ~D, DB, B, x
time = 20

[Command]
name = "Combo"
command = ~D, DF, F, x
time = 20

[Command]
name = "TripleKFPalm3"
command = ~D, DB, B, y
time = 20

[Command]
name = "Trapasso"
command =  $D, DF, F, y
;---------------

[Command]
name = "Gekiretsukodan1"
command = B, DB, D, DF, F, a
time = 20

[Command]
name = "stdust"
command = B, DB, D, DF, F, b
time = 30

[Command]
name = "stdust2"
command = F, DF, D, DB, B, z
time = 30

[Command]
name = "wall1"
command = /a
time = 1
[Command]
name = "wall2"
command = /x
time = 1
;===========================================================================
; Special Motions
;===========================================================================

;Combo air
[Command]
name = "bbbddff_y"
command = a
time = 1

;Combo air
[Command]
name = "bbbddff_c"
command = b
time = 20

;Agarre Patada
[Command]
name = "Agarre1"
command = /F,y
time = 1

;Agarre Puño
[command]
name = "Agarre"			
command = b

;FIREBALL LIGHT
[Command]
name = "fireball"
command = ~D, B, a
time = 25

;FIREBALL MEDIUM
[Command]
name = "fireball2"
command = ~D, B, b
time = 25 

;FIREBALL STRONG
[Command]
name = "fireball3"
command = ~D, B, c
time = 25

[Command]
name = "fwd_z"
command = F, z 

[Command]
name = "fwd_ab"
command = F, a+b

[Command]
name = "back_ab"
command = B, a+b

[Command]
name = "back_b"
command = B, b

[Command]
name = "fwd_b"
command = F, b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "U"
command = U

[Command]                       
name = "Teleportation" 
command = y+z                                     

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
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

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
command = x
time = 1

[Command]
name = "b"
command = y
time = 1

[Command]
name = "c"
command = z
time = 1

[Command]
name = "x"
command = a
time = 1

[Command]
name = "y"
command = b
time = 1

[Command]
name = "z"
command = c
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

;-----------------------
;superguard
[Command]
name = "holdback3"
command = /$B   
time = 50
;------------------------

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\|State Entry|/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
[Statedef -1]
;===========================================================================
; Supers
;===========================================================================

;===========================================================================
; Specials
;===========================================================================
;--------------------------------| Description |----------------------------

;------------------------------------------
;------------------------------------------

;Hechos por arcadia

;Crystall Wall
[State -1]
type = ChangeState
value = 1404
triggerall = command = "crystalwall"  
triggerall = command != "holddown"
triggerall = power >= 350
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 405
trigger2 = MoveContact

;Crystall Wall
[State -1]
type = ChangeState
value = 1405
triggerall = command = "cwall"  
triggerall = command != "holddown"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 405
trigger2 = MoveContact

;Stardust Revolution
[State -1]
type = ChangeState
value = 1403
triggerall = command = "stardust"  
triggerall = command != "holddown"
triggerall = power >= 4000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 405
trigger2 = MoveContact

;Starlight Extinction
[State -1]
type = ChangeState
value = 3030
triggerall = command = "starlight"  
triggerall = command != "holddown"
triggerall = power >= 5000

trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 405
trigger2 = MoveContact

;Cosmo
[State -1]
type = ChangeState
value = 1402
triggerall = command = "Cosmo"
trigger1 = statetype != A
trigger1 = ctrl = 1

;------------------------------------------
;------------------------------------------

;Combo air
[State -1, Combo air]
type = ChangeState
value = 700
triggerall = statetype != C
triggerall = StateNo != 700
triggerall = command = "bbbddff_y"
trigger1 = power >= 500
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = statetype != S

;------------------------------------------

;Combo air
[State -1]
type = ChangeState
value = 1100
triggerall = command = "bbbddff_c"
trigger1 = power >= 500
trigger1 = statetype = A
trigger1 = ctrl = 1

;-----------------------------------------

;Agarre Patada
[State -1]
type = ChangeState
value = 800
triggerall = Var(50) != 1
trigger1 = statetype = S && ctrl = 1 && p2bodydist X < 10 ;Near P2
trigger1 = (command = "Agarre1") && stateno != 100 && (p2statetype = S || p2statetype = C) && p2movetype != H


;-----------------------------------------

;Agarre Puño
[State -1: 		Agarre]
type 			= ChangeState
value 		= 500
triggerall 		= (Command = "Agarre") && (Command = "holdfwd") && (StateNo != [100,105]) && (p2name != "DeathMask")
triggerall = StateNo != 520
trigger1		= (StateType = S) && (Ctrl)
;trigger2 = MoveContact

;------------------------------------------

;Trapasso
[State -1]
type = ChangeState
value = 2010
triggerall = command = "Trapasso"
triggerall = StateNo != 73000
triggerall = StateNo != 83000
triggerall = StateNo != 7377
triggerall = StateNo != 11330
triggerall = StateNo != 1340
triggerall = StateNo != 1350
triggerall = StateNo != 1360
triggerall = StateNo != 1370
triggerall = StateNo != 1380
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = stateno != 7377
trigger2 = stateno != 11330
trigger2 = movecontact

;Triple golpe
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3902
triggerall = StateNo != 73000
triggerall = StateNo != 83000
triggerall = StateNo != 7377
triggerall = StateNo != 11330
triggerall = StateNo != 1340
triggerall = StateNo != 1350
triggerall = StateNo != 1360
triggerall = StateNo != 1370
triggerall = StateNo != 1380
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = stateno != 7377
trigger2 = stateno != 11330
trigger2 = movecontact

;Combo
[State -1]
type = ChangeState
value = 30000
triggerall = StateNo != 73000
triggerall = StateNo != 83000
;triggerall = StateNo != 2203
;triggerall = StateNo != 2011
;triggerall = StateNo != 1800
;triggerall = StateNo != 2000
;triggerall = StateNo != 3100
triggerall = StateNo != 7377
triggerall = StateNo != 11330
triggerall = StateNo != 1340
triggerall = StateNo != 1350
triggerall = StateNo != 1360
triggerall = StateNo != 1370
triggerall = StateNo != 1380
triggerall = command = "Combo"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = stateno != 7377
trigger2 = stateno != 11330
trigger2 = movecontact

;Triple golpe 2
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 33333
triggerall = StateNo != 73000
triggerall = StateNo != 83000
triggerall = StateNo != 7377
triggerall = StateNo != 11330
triggerall = StateNo != 1340
triggerall = StateNo != 1350
triggerall = StateNo != 1360
triggerall = StateNo != 1370
triggerall = StateNo != 1380
triggerall = command = "TripleKFPalm3"
triggerall = power >= 2000
trigger1 = statetype = S
;trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = stateno != 7377
trigger2 = stateno != 11330
trigger2 = movecontact

;------------------------------------------

;Gekiretsukodan (Combination Mode)
[State -1: 		Gekiretsukodan]
type 			= ChangeState
value			= 3010
triggerall		= (var(51) = 0) && (!IsHelper) && (var(31) = 0) && (command = "Gekiretsukodan1")  && (power >= 1000)
trigger1		= (ctrl) || (stateno = 8171) || ((stateno = [100,105]) && (backedgebodydist > 0))
trigger2		= (stateno = 210 && movecontact && animelem = 2, < 5) || ((stateno = 220 || stateno = 221) && movecontact && animelem = 2, < 5) || (stateno = 240 && movecontact && animelem = 2, < 5) 
trigger3		= (stateno = 250 && movecontact && animelem = 2, < 5) || (stateno = 410 && movecontact && animelem = 2, < 5) || (stateno = 440 && movecontact && animelem = 2, < 5)

;------------------------------------------

;Fireball (light)
[State -1, [State -1]
type = ChangeState
value = 131200
triggerall = command = "fireball"
trigger1 = statetype != A
trigger1 = ctrl = 1

;Fireball (medium)
[State -1, [State -1]
type = ChangeState
value = 121200
triggerall = command = "fireball2"
trigger1 = statetype != A
trigger1 = ctrl = 1

;Fireball (Strong)
[State -1, [State -1]
type = ChangeState
value = 101200
triggerall = command = "fireball3"
trigger1 = statetype != A
trigger1 = ctrl = 1

;-----------------------------------------------------
;stdust2
[State -1, [State -1]
type = ChangeState
value = 70000
triggerall = command = "stdust2"
triggerall = power >= 5000
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;stdust
[State -1, ]
type = ChangeState
value = 3000
triggerall = command = "stdust"
triggerall = power >= 3000 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (AnimElem = 4,>=3)

;---------------------------------------------------------------------------

;Teleportation
[State -1]
type = ChangeState
value = 7777
triggerall = command = "Teleportation"
triggerall = power >= 25
triggerall = NumProjID(2001) = 0
triggerall = StateNo != [1090, 1098]
trigger1 = statetype = S         
trigger2 = stateno = 2000  


;---------------------------------------------------------------------------

;Crystal wall(preversiontest)
[State -1]
type = ChangeState
value = 1000
triggerall = command = "wall1"
triggerall = command = "wall2"
triggerall = power >= 50 
trigger1 = statetype != A
trigger1 = ctrl = 1
      


;===========================================================================
; Basics
;===========================================================================
;---------------------------------------------------------------------------
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
;--------------------------
; Stand X
[State -1, Stand X]
type = ChangeState
value = 200
triggerall = ((command = "x") && (command != "holddown"))
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = 210) && (MoveContact))

;---------------------------------------------------------------------------
; Stand Y
[State -1, Stand Y]
type = ChangeState
value = 201
triggerall = ((command = "y") && (command != "holddown"))
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = 200) && (MoveContact)) || ((stateno = 210) && (MoveContact)) || ((stateno = 211) && (MoveContact)) 

;---------------------------------------------------------------------------
; Stand Z (W/ Fwd)
[State -1, Stand Z 1]
type = ChangeState
value = 260
triggerall = ((command = "fwd_z") && (command != "holddown"))
trigger1 = ((statetype = S && ctrl = 1)) || ((stateno = [200,212]) && (MoveContact)) 
;---------------------------------------------------------------------------
; Stand Z
[State -1, Stand Z 2]
type = ChangeState
value = 202
triggerall = ((command = "z") && (command != "holddown"))
trigger1 = ((statetype = S && ctrl = 1)) || ((stateno = [200,212]) && (MoveContact)) 

;---------------------------------------------------------------------------
; Stand A
[State -1, Stand A]
type = ChangeState
value = 210
triggerall = ((command = "a") && (command != "holddown"))
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = 200) && (MoveContact))

;---------------------------------------------------------------------------
; Stand B
[State -1, Stand B]
type = ChangeState
value = 211
triggerall = ((command = "b") && (command != "holddown"))
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = [201, 210]) && (MoveContact))

;---------------------------------------------------------------------------
; Stand C
[State -1, Stand C]
type = ChangeState
value = 212
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = [201,211]) && (MoveContact))

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = ((statetype != A) && (ctrl = 1))

;---------------------------------------------------------------------------
; Crouch X
[State -1, Crouch X]
type = ChangeState
value = 400
triggerall = ((command = "x") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1)) || ((stateno = 410) && (MoveContact))
 
;---------------------------------------------------------------------------
; Crouch Y
[State -1, Crouch Y]
type = ChangeState
value = 401
triggerall = ((command = "y") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1)) || ((stateno = 400) && (MoveContact))|| ((stateno = 410) && (MoveContact)) || ((stateno = 411) && (MoveContact))  

;---------------------------------------------------------------------------
; Crouch Z
[State -1, Crouch Z]
type = ChangeState
value = 402
triggerall = ((command = "z") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1)) || ((stateno = [400,401]) && (MoveContact))|| ((stateno = [410,411]) && (MoveContact)) 

;---------------------------------------------------------------------------
; Crouch A
[State -1, Crouch A]
type = ChangeState
value = 410
triggerall = ((command = "a") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1)) || ((stateno = 400) && (MoveContact))

;---------------------------------------------------------------------------
; Crouch B
[State -1, Crouch B]
type = ChangeState
value = 411
triggerall = ((command = "b") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1)) || ((stateno = 410) && (MoveContact)) || ((stateno = [400,401]) && (MoveContact))  

;---------------------------------------------------------------------------
; Crouch C
[State -1, Crouch C]
type = ChangeState
value = 412
triggerall = ((command = "c") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1))|| ((stateno = 400) && (MoveContact))|| ((stateno = [410,411]) && (MoveContact))|| ((stateno = [401,402]) && (MoveContact))

;---------------------------------------------------------------------------
; Jump X
[State -1, Jump X]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (MoveContact))

;---------------------------------------------------------------------------
; Jump Y
[State -1, Jump Y]
type = ChangeState
value = 601
triggerall = command = "y"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (MoveContact)) 

;---------------------------------------------------------------------------
; Jump Z
[State -1, Jump Z]
type = ChangeState
value = 602
triggerall = command = "z"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (MoveContact)) 

;---------------------------------------------------------------------------
; Jump A
[State -1, Jump A]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (MoveContact)) 

;---------------------------------------------------------------------------
; Jump B
[State -1, Jump B]
type = ChangeState
value = 611
triggerall = command = "b"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (MoveContact)) 

;---------------------------------------------------------------------------
; Jump C
[State -1, Jump C]
type = ChangeState
value = 612
triggerall = command = "c"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (MoveContact)) 



;stdust
[State -1, ]
type = ChangeState
value = 3000
triggerall = command = "stdust"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (AnimElem = 4,>=3)
