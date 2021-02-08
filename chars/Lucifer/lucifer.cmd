;--------------------------------------------------------------------------
;Created by:  ChenHyokoto
;--------------------------------------------------------------------------

;-| Super Motions |--------------------------------------------------------
[Command]
name = "dmmove1_x"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "dmmove1_y"
command = ~D, DF, F, D,DF , F, y
time = 30

;-| Special Motions |------------------------------------------------------
;Spadata di libra
[Command]
name = "librasword"
command = B, DB, D, DF, F, b
time = 50

;drago nascente kick waterfall
[Command]
name = "dragonkick"
command = F, DF, D, DB, B,  x
time = 50

;lighting hit
[Command]
name = "qcb_x"
command = D, DF, F, c
time = 25

;Drago nascente
[Command]
name = "Drago nascente"
command = B, DB, D, DF, F, a
time = 30

;Combo finta
[Command]
name = "Combo"
command = D, DF, F, z
time = 30

[Command]
name = "uppercut_y"
command = ~F, D, DF, y

[Command]
name = "scorch_a"
command = ~F, D, DF, a

[Command]
name = "scorch_b"
command = ~F, D, DF, b

[Command]
name = "fire_x"
command = ~D, DF, F, x

[Command]
name = "fire_y"
command = ~D, DF, F, y

[Command]
name = "2_punch_x"
command = ~D, DB, B, x

[Command]
name = "3_punch_x"
command = ~D, DB, B, x

[Command]
name = "1_punch_y"
command = ~D, DB, B, y

[Command]
name = "2_punch_y"
command = ~D, DB, B, y

[Command]
name = "3_punch_y"
command = ~D, DB, B, y

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10
---------------------------------------------------------------------------

;-| 2/3 Button Combination |-----------------------------------------------

;Calcio volante diagonale
[Command]
name = "dragon_kick"
command = ~D,DF,F, y
time = 8

;Recover
[Command]
name = "recover"
command = a+x
time = 30
---------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = ~D,DF,F, y      ;a+b+c;B+z
time = 50
;[Command]
;name = "recovery";Extra recovery commands (optional)
;command = y+z
;time = 1
;[Command]
;name = "recovery";Extra recovery commands (optional)
;command = x+z
;time = 15
;megablock
[Command]
name = "mega_block"
command = c
time = 50


[Command]
name = "qcf_a"
command = c
time = 15

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "yz"
command = y+z
time = 1

;rozan
[Command]
name = "abc"
command = a+b+c
time = 5

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 15
[Command]
name = "fwd_b"
command = /F,b
time = 1
[Command]
name = "fwd_x"
command = /F,x
time = 10
;--------------------
;Calcio alto
[Command]
name = "fwd_y"
command = /F,y
time = 1
;--------------------
[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1
[Command]
name = "back_b"
command = /B,b
time = 1
[Command]
name = "back_c"
command = /B,c
time = 1
[Command]
name = "back_x"
command = /B,x
time = 1
[Command]
name = "back_y"
command = /B,y
time = 1
[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_a"
command = /D,a
time = 1
[Command]
name = "down_b"
command = /D,b
time = 1
[Command]
name = "down_c"
command = /D,c
time = 1
[Command]
name = "down_x"
command = /D,x
time = 1
[Command]
name = "down_y"
command = /D,y
time = 1
[Command]
name = "down_z"
command = /D,z
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1
[Command]
name = "fwd_bc"
command = /F, b+c
time = 1

[Command]
name = "fwd_xy"
command = /F, x+y
time = 1
[Command]
name = "fwd_yz"
command = /F, y+z
time = 1

[Command]
name = "back_xy"
command = /B, x+y
time = 1
[Command]
name = "back_yz"
command = /B, y+z
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1
[Command]
name = "back_bc"
command = /B, b+c
time = 1



;-| Single Button |---------------------------------------------------------
;Pugno semplice
[Command]
name = "a"
command = a
time = 1

;Pugno medio
[Command]
name = "b"
command = b
time = 1

;Pugno hard
[Command]
name = "c"
command = c
time = 1

[Command]
name = "launcher"
command = D,DB,B, y                   
time = 30


;Calcio semplice
[Command]
name = "x"
command = x
time = 1

;Calcio medio
[Command]
name = "y"
command = y
time = 1

;Calcio hard
[Command]
name = "z"
command = z
time = 1

;provocazione
[Command]
name = "s"
command = s
time = 1


;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1
;-----------------------
;prova per superguard
[Command]
name = "holdback3"
command = /$B   
time = 50
;------------------------
[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1


;===========================================================================
;---------------------------------------------------------------------------
; Commands
[Statedef -1]


;Combo aerea
[State -1]
type = ChangeState
value = 40
triggerall = command = "holdup"
trigger1 = movecontact
trigger1 = stateno = 405

;-----------------------------------
;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunB
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

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

;Calcio alto
[State -1]
type = ChangeState
value = 244
triggerall = command = "fwd_y"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1


;dragon geyser
[State -1]
type = ChangeState
value = 405
triggerall = command = "launcher"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = stateno = 3000
trigger2 = movecontact

;---------------------------------------------------------------------------
;Drago nascente
[State -1]
type = ChangeState
value = 200
triggerall = command = "Drago nascente"
triggerall = command != "holddown"
triggerall = power >= 1000 
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 405
trigger2 = movecontact

;---------------------------------------------------------------------------
;Combo finta
[State -1]
type = ChangeState
value = 350
triggerall = command = "Combo"
triggerall = p2dist x <= 200
trigger1 = statetype != A
trigger1 = ctrl = 1
---------------------------------------------------------------------------
;Spadata di libra
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
trigger2 = movecontact
;---------------------------------------------------------------------------
;Drago nascente kick waterfall
[State -1]
type = ChangeState
value = 3710
triggerall = command = "dragonkick"  
triggerall = command != "holddown"
triggerall = power >= 3000 
trigger1 = statetype = S
trigger1 = p2statetype = S
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
;recover
[State -1]
type = ChangeState
value = 2000
triggerall = command = "recover"
trigger1 = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------

;Pugno semplice
[State -1]
type = ChangeState
value = 290
triggerall = statetype = S
triggerall = command != "holddown"
triggerall = ctrl = 1
trigger1 = command = "a"
;-----------------------------------------------------

;Pugno medio
[State -1]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290
trigger2 = movecontact
;---------------------------------------------------------------------------

;Pugno hard
[State -1]
type = ChangeState
value = 220
triggerall = command = "c"   
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = movecontact
;---------------------------------------------------------------------------




;Ginochiata x
[State -1]
type = ChangeState
value = 250
triggerall = command = "x" 
triggerall = command != "holddown"
triggerall = P2BodyDist X < 25
trigger1 = statetype = S
trigger1 = ctrl = 1


;Ginochiata y
[State -1]
type = ChangeState
value = 250
triggerall = command = "y" 
triggerall = command != "holddown"
triggerall = P2BodyDist X < 25
trigger1 = statetype = S
trigger1 = ctrl = 1

;Ginochiata z
[State -1]
type = ChangeState
value = 250
triggerall = command = "z" 
triggerall = command != "holddown"
triggerall = P2BodyDist X < 20
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;Calcio semplice
[State -1]
type = ChangeState
value = 260
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
----------------------------------------------------------------------------
;Calcio medio
[State -1]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 244
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact

;---------------------------------------------------------------------------
;Calcio hard
[State -1]
type = ChangeState
value = 240
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 244
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
;---------------------------------------------------------------------------
;DA COPIARE
;----------------

;Crouch_a
[State -1]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_c
[State -1]
type = ChangeState
value = 410
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;FINE COPIA
;-----------------

;---------------------------------------------------------------------------
;Calcio basso x
[State -1]
type = ChangeState
value = 440
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Calcio basso y
[State -1]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Calcio basso z
[State -1]
type = ChangeState
value = 440
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;pugno in volo a
[State -1]
type = ChangeState
value = 605
triggerall = command = "a"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;pugno in volo a(moving)
[State -1]
type = ChangeState
value = 605
triggerall = command = "a"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;pugno in volo b
[State -1]
type = ChangeState
value = 605
triggerall = command = "b"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;pugno in volo b(moving)
[State -1]
type = ChangeState
value = 605
triggerall = command = "b"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;pugno in volo c
[State -1]
type = ChangeState
value = 605
triggerall = command = "c"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;pugno in volo c(moving)
[State -1]
type = ChangeState
value = 605
triggerall = command = "c"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1




;---------------------------------------------------------------------------
;Calcio volante diagonale
[State -1]
type = ChangeState
value = 630
triggerall = command = "dragon_kick"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Calcio volante diagonale(moving)
[State -1]
type = ChangeState
value = 630
triggerall = command = "dragon_kick"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Calcio volante x
[State -1]
type = ChangeState
value = 610
triggerall = command = "x"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Calcio volante x(moving)
[State -1]
type = ChangeState
value = 610
triggerall = command = "x"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;Calcio volante y
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Calcio volante y(moving)
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;Calcio volante hard
[State -1]
type = ChangeState
value = 640
triggerall = command = "z"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 610


;---------------------------------------------------------------------------
;Jump_Y (moving)
[State -1]
type = ChangeState
value = 640
triggerall = command = "z"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;-----------------------------------

[State -1]
type = ChangeState
value = 199
trigger1 = command = "s"
trigger1 = statetype != A
trigger1 = stateno != 199
trigger1 = ctrl = 1

;----------------------------------
;wall jump
[State -1, WallJump]
type = ChangeState 
value = 45
triggerall = (statetype = A) && (ctrl) 
trigger1 = ((command = "holdup") && (command = "holdfwd") && (backedgebodydist <= 10) && (backedgebodydist > -10))
trigger2 = ((command = "holdup") && (command = "holdback") && (frontedgebodydist <= 10) && (frontedgebodydist > -10))








