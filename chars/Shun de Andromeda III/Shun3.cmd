;--------------------------------------------------------------------------
;Created by:  Max"CodeKeeper"Ferrari
;and       :  Claudio"MiM"Ricci
;--------------------------------------------------------------------------
; Intelligence artificiel de Shun By Tof (ssga team)
[Command]
name = "AI1"
command = a, a, a
time = 1

[Command]
name = "AI2"
command = b, b, b
time = 1

[Command]
name = "AI3"
command = c, c, c
time = 1

[Command]
name = "AI4"
command = x, x, x
time = 1

[Command]
name = "AI5"
command = y, y, y
time = 1

[Command]
name = "AI6"
command = z, z, z
time = 1

[Command]
name = "AI7"
command = a, b, c
time = 1

[Command]
name = "AI8"
command = a, c, b
time = 1

[Command]
name = "AI9"
command = b, a, c
time = 1

[Command]
name = "AI10"
command = b, c, a
time = 1

[Command]
name = "AI11"
command = c, b, a
time = 1

[Command]
name = "AI12"
command = c, a, b
time = 1

[Command]
name = "AI13"
command = x, y, z
time = 1

[Command]
name = "AI14"
command = x, z, y
time = 1

[Command]
name = "AI15"
command = y, z, x
time = 1

[Command]
name = "AI16"
command = y, x, z
time = 1

[Command]
name = "AI17"
command = z, y, x
time = 1

[Command]
name = "AI18"
command = z, x, y
time = 1

[Command]
name = "AI19"
command = a, b, a
time = 1

[Command]
name = "AI20"
command = a, c, a
time = 1

[Command]
name = "AI21"
command = b, a, b
time = 1

[Command]
name = "AI22"
command = b, c, b
time = 1

[Command]
name = "AI23"
command = c, a, c
time = 1

[Command]
name = "AI24"
command = c, b, c
time = 1

[Command]
name = "AI25"
command = x, y, x
time = 1

[Command]
name = "AI26"
command = x, z, x
time = 1

[Command]
name = "AI27"
command = y, x, y
time = 1

[Command]
name = "AI28"
command = y, z, y
time = 1

[Command]
name = "AI29"
command = z, x, z
time = 1

[Command]
name = "AI30"
command = B, DB, D, z, y, z
time = 1

[Command]
name = "AI31"
command = B, DB, D, a, a, a
time = 1

[Command]
name = "AI32"
command = B, DB, D, b, b, b
time = 1

[Command]
name = "AI33"
command = B, DB, D, c, c, c
time = 1

[Command]
name = "AI34"
command = B, DB, D, x, x, x
time = 1

[Command]
name = "AI35"
command = B, DB, D, y, y, y
time = 1

[Command]
name = "AI36"
command = B, DB, D, z, z, z
time = 1

[Command]
name = "AI37"
command = B, DB, D, a, b, c
time = 1

[Command]
name = "AI38"
command = B, DB, D, a, c, b
time = 1

[Command]
name = "AI39"
command = B, DB, D, b, a, c
time = 1

[Command]
name = "AI40"
command = B, DB, D, DF, a, a, a
time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "dmmove1_x"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "dmmove1_y"
command = ~D, DF, F, D, DF, F, y
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


;Drago nascente
[Command]
name = "Drago nascente"
command = B, DB, D, DF, F, a
time = 30

;Apocalypse Nebulaire
[Command]
name = "StormZ"
command = F, B, DB, D, DF, F, c
time = 50

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
triggerall = power >= 2500 
trigger1 = P2Dist x <= 250
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 405
trigger2 = movecontact
;---------------------------------------------------------------------------
;Apocalypse Nebulaire
[State -1]
type = ChangeState
value = 3001
triggerall = command = "StormZ"  
triggerall = command != "holddown"
triggerall = power >= 3000 
triggerall = life <= 200 
trigger1 = P2Dist x <= 280
trigger1 = P2Dist x >= 100
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
value = 215
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240
trigger2 = movecontact
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






