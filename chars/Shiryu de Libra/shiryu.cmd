; Super Motions
;===========================================================================

[Command]
name = "colere"
command = B, DB, D, DF, F, a
time = 30

[Command]
name = "100dragones"
command = B, DB, D, DF, F, z
time = 45

[Command]
name = "librasword"
command = B, DB, D, DF, F, b
time = 50

[Command]
name = "bdbddff_2"
command = B, DB, D, DF, F, c
time = 40

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
command = a+b      

[Command]
name = "qcb_x"
command = D, DF, F, c
time = 25                               

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


;Colera del dragon
[State -1]
type = ChangeState
value = 321
triggerall = command = "colere"
triggerall = power >= 2000 
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------
;Excalibur
[State -1] 
type = ChangeState 
value = 2100 
triggerall = command = "bdbddff_2" 
triggerall = life <= 200 
triggerall = power >= 3000 
trigger1 = statetype != A 
trigger1 = P2statetype != A 
trigger1 = ctrl = 1 
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 4000
triggerall = command = "100dragones"
triggerall = life <= 400 
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = power >=3000

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

;-----------------------------------------------------------------------------
;La espada de libra
[State -1]
type = ChangeState
value = 3000
triggerall = command = "librasword"  
triggerall = command != "holddown"
triggerall = power >= 3000 
trigger1 = P2Dist x <= 250
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 405
trigger2 = MoveContact
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

;---------------------------------------------------------------------------
      
;lighting hit
[State -1]
type = ChangeState
value = 1010
triggerall = command = "qcb_x"
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------

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
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = 210) && (movecontact = 1))

;---------------------------------------------------------------------------
; Stand Y
[State -1, Stand Y]
type = ChangeState
value = 201
triggerall = ((command = "y") && (command != "holddown"))
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = 200) && (movecontact = 1)) || ((stateno = 210) && (movecontact = 1)) || ((stateno = 211) && (movecontact = 1)) 

;---------------------------------------------------------------------------
; Stand Z (W/ Fwd)
[State -1, Stand Z 1]
type = ChangeState
value = 260
triggerall = ((command = "fwd_z") && (command != "holddown"))
trigger1 = ((statetype = S && ctrl = 1)) || ((stateno = [200,212]) && (movecontact = 1)) 
;---------------------------------------------------------------------------
; Stand Z
[State -1, Stand Z 2]
type = ChangeState
value = 202
triggerall = ((command = "z") && (command != "holddown"))
trigger1 = ((statetype = S && ctrl = 1)) || ((stateno = [200,212]) && (movecontact = 1)) 

;---------------------------------------------------------------------------
; Stand A
[State -1, Stand A]
type = ChangeState
value = 210
triggerall = ((command = "a") && (command != "holddown"))
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = 200) && (movecontact = 1))

;---------------------------------------------------------------------------
; Stand B
[State -1, Stand B]
type = ChangeState
value = 211
triggerall = ((command = "b") && (command != "holddown"))
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = [201, 210]) && (movecontact = 1))

;---------------------------------------------------------------------------
; Stand C
[State -1, Stand C]
type = ChangeState
value = 212
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = [201,211]) && (movecontact = 1))

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 197
triggerall = command = "start"
trigger1 = ((statetype != A) && (ctrl = 1))

;---------------------------------------------------------------------------
; Crouch X
[State -1, Crouch X]
type = ChangeState
value = 400
triggerall = ((command = "x") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1)) || ((stateno = 410) && (movecontact = 1))
 
;---------------------------------------------------------------------------
; Crouch Y
[State -1, Crouch Y]
type = ChangeState
value = 401
triggerall = ((command = "y") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1)) || ((stateno = 400) && (movecontact = 1))|| ((stateno = 410) && (movecontact = 1)) || ((stateno = 411) && (movecontact = 1))  

;---------------------------------------------------------------------------
; Crouch Z
[State -1, Crouch Z]
type = ChangeState
value = 402
triggerall = ((command = "z") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1)) || ((stateno = [400,401]) && (movecontact = 1))|| ((stateno = [410,411]) && (movecontact = 1)) 

;---------------------------------------------------------------------------
; Crouch A
[State -1, Crouch A]
type = ChangeState
value = 410
triggerall = ((command = "a") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1)) || ((stateno = 400) && (movecontact = 1))

;---------------------------------------------------------------------------
; Crouch B
[State -1, Crouch B]
type = ChangeState
value = 411
triggerall = ((command = "b") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1)) || ((stateno = 410) && (movecontact = 1)) || ((stateno = [400,401]) && (movecontact = 1))  

;---------------------------------------------------------------------------
; Crouch C
[State -1, Crouch C]
type = ChangeState
value = 412
triggerall = ((command = "c") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1))|| ((stateno = 400) && (movecontact = 1))|| ((stateno = [410,411]) && (movecontact = 1))|| ((stateno = [401,402]) && (movecontact = 1))

;---------------------------------------------------------------------------
; Jump X
[State -1, Jump X]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (movecontact = 1))

;---------------------------------------------------------------------------
; Jump Y
[State -1, Jump Y]
type = ChangeState
value = 601
triggerall = command = "y"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (movecontact = 1)) 

;---------------------------------------------------------------------------
; Jump Z
[State -1, Jump Z]
type = ChangeState
value = 602
triggerall = command = "z"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (movecontact = 1)) 

;---------------------------------------------------------------------------
; Jump A
[State -1, Jump A]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (movecontact = 1)) 

;---------------------------------------------------------------------------
; Jump B
[State -1, Jump B]
type = ChangeState
value = 611
triggerall = command = "b"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (movecontact = 1)) 

;---------------------------------------------------------------------------
; Jump C
[State -1, Jump C]
type = ChangeState
value = 612
triggerall = command = "c"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (movecontact = 1)) 