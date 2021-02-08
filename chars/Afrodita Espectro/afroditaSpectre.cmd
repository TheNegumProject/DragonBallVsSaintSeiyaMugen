; Super Motions
;===========================================================================

[Command]
name = "rosarossa"
command = B, DB, D, DF, F, b
time = 30

[Command]
name = "rosabianca"
command = B, DB, D, DF, F, a
time = 30

[Command]
name = "rosanera"
command = B, DB, D, DF, F, c
time = 30

;Fireball
[command]
name = "fireball2"
command = ~D, DF, F, c
time = 40 

;Fireball
[command]
name = "fireball"
command = ~D, DF, F, b
time = 40 

;Onde Paralizzanti
[Command]
name = "onde"
command = D, DF, F, a
time = 25

[Command]
name = "wall1"
command = /a
time = 1
[Command]
name = "wall2"
command = /b
time = 1
;===========================================================================
; Special Motions
;===========================================================================

[Command]
name = "fwd_z"
command = F, z 


[Command]
name = "U"
command = U

[Command]                       
name = "Teleportation" 
command = a+b+c                                     

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

;reversaldef
[Command]
name = "cosmo"
command = b+c
time = 15

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

;reversal
[State -1]
type = ChangeState
value = 14000
triggerall = command = "cosmo"
trigger1 = statetype != A
trigger1 = ctrl = 1
;--------------------------------------

;stdust
[State -1, ]
type = ChangeState
value = 3010
triggerall = command = "rosabianca"
triggerall = power >= 1000 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (AnimElem = 4,>=3)

;stdust
[State -1, ]
type = ChangeState
value = 3000
triggerall = command = "rosarossa"
triggerall = power >= 2000 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (AnimElem = 4,>=3)

;stdust
[State -1, ]
type = ChangeState
value = 3020
triggerall = command = "rosanera"
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
      
;Fireball
[State -1]
type = ChangeState
value = 10120
triggerall = command = "fireball"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact
trigger9 = stateno = 255
trigger9 = movecontact
trigger10 = stateno = 300
trigger10 = movecontact
trigger11 = stateno = 310
trigger11 = movecontact
trigger12 = stateno = 320
trigger12 = movecontact
trigger13 = stateno = 330
trigger13 = movecontact
trigger14 = stateno = 340
trigger14 = movecontact

;Onde Paralizzanti
[State -1]
type = ChangeState
value = 10100
triggerall = command = "onde"
trigger1 = statetype != A
trigger1 = ctrl = 1

;Fireball
[State -1]
type = ChangeState
value = 101200
triggerall = command = "fireball2"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact
trigger9 = stateno = 255
trigger9 = movecontact
trigger10 = stateno = 300
trigger10 = movecontact
trigger11 = stateno = 310
trigger11 = movecontact
trigger12 = stateno = 320
trigger12 = movecontact
trigger13 = stateno = 330
trigger13 = movecontact
trigger14 = stateno = 340
trigger14 = movecontact

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
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = 210) && (movecontact))

;---------------------------------------------------------------------------
; Stand Y
[State -1, Stand Y]
type = ChangeState
value = 201
triggerall = ((command = "y") && (command != "holddown"))
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = 200) && (movecontact)) || ((stateno = 210) && (movecontact)) || ((stateno = 211) && (movecontact)) 

;---------------------------------------------------------------------------
; Stand Z (W/ Fwd)
[State -1, Stand Z 1]
type = ChangeState
value = 260
triggerall = ((command = "fwd_z") && (command != "holddown"))
trigger1 = ((statetype = S && ctrl = 1)) || ((stateno = [200,212]) && (movecontact)) 
;---------------------------------------------------------------------------
; Stand Z
[State -1, Stand Z 2]
type = ChangeState
value = 202
triggerall = ((command = "z") && (command != "holddown"))
trigger1 = ((statetype = S && ctrl = 1)) || ((stateno = [200,212]) && (movecontact)) 

;---------------------------------------------------------------------------
; Stand A
[State -1, Stand A]
type = ChangeState
value = 210
triggerall = ((command = "a") && (command != "holddown"))
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = 200) && (movecontact))

;---------------------------------------------------------------------------
; Stand B
[State -1, Stand B]
type = ChangeState
value = 211
triggerall = ((command = "b") && (command != "holddown"))
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = [201, 210]) && (movecontact))

;---------------------------------------------------------------------------
; Stand C
[State -1, Stand C]
type = ChangeState
value = 212
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = [201,211]) && (movecontact))

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
trigger1 = ((statetype = C) && (ctrl = 1)) || ((stateno = 410) && (movecontact))
 
;---------------------------------------------------------------------------
; Crouch Y
[State -1, Crouch Y]
type = ChangeState
value = 401
triggerall = ((command = "y") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1)) || ((stateno = 400) && (movecontact))|| ((stateno = 410) && (movecontact)) || ((stateno = 411) && (movecontact))  

;---------------------------------------------------------------------------
; Crouch Z
[State -1, Crouch Z]
type = ChangeState
value = 402
triggerall = ((command = "z") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1)) || ((stateno = [400,401]) && (movecontact))|| ((stateno = [410,411]) && (movecontact)) 

;---------------------------------------------------------------------------
; Crouch A
[State -1, Crouch A]
type = ChangeState
value = 410
triggerall = ((command = "a") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1)) || ((stateno = 400) && (movecontact))

;---------------------------------------------------------------------------
; Crouch B
[State -1, Crouch B]
type = ChangeState
value = 411
triggerall = ((command = "b") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1)) || ((stateno = 410) && (movecontact)) || ((stateno = [400,401]) && (movecontact))  

;---------------------------------------------------------------------------
; Crouch C
[State -1, Crouch C]
type = ChangeState
value = 412
triggerall = ((command = "c") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1))|| ((stateno = 400) && (movecontact))|| ((stateno = [410,411]) && (movecontact))|| ((stateno = [401,402]) && (movecontact))

;---------------------------------------------------------------------------
; Jump X
[State -1, Jump X]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (movecontact))

;---------------------------------------------------------------------------
; Jump Y
[State -1, Jump Y]
type = ChangeState
value = 601
triggerall = command = "y"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (movecontact)) 

;---------------------------------------------------------------------------
; Jump Z
[State -1, Jump Z]
type = ChangeState
value = 602
triggerall = command = "z"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (movecontact)) 

;---------------------------------------------------------------------------
; Jump A
[State -1, Jump A]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (movecontact)) 

;---------------------------------------------------------------------------
; Jump B
[State -1, Jump B]
type = ChangeState
value = 611
triggerall = command = "b"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (movecontact)) 

;---------------------------------------------------------------------------
; Jump C
[State -1, Jump C]
type = ChangeState
value = 612
triggerall = command = "c"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (movecontact)) 



