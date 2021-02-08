

;-| Super Motions |--------------------------------------------------------
[Command]
name = "meduse"
command =B. DB, D, DF, F, a      
time = 30

[Command]
name = "medusetentacle"
command =B, DB, D, DF, F, c    
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "medusepie"
command =D, DF, F, z    
time = 20

[Command]
name = "meduseupper"
command =D, DB, B, a
time = 20

[Command]
name = "medusedoble"
command =D, DB, B, x 
time = 20

[Command]
name = "meduseshield"
command =~40$B, $F, c
time = 20
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

;carga
[Command]
name = "wall1"
command = /b
time = 1
[Command]
name = "wall2"
command = /y
time = 1

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


;---------------------------------------------------------------------------
;meduse
[State -1]
type = ChangeState
value =22001
trigger1 = command = "meduse"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------

;meduse tentacle
[State -1]
type = ChangeState
value =25000
trigger1 = command = "medusetentacle"
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value =2600
trigger1 = command = "medusepie"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value =2700
trigger1 = statetype =A
trigger1 = command = "medusepie"
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value =2800
trigger1 = statetype =S
trigger1= numproj =0
trigger1 = command = "meduseshield"
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value =23000
trigger1 = statetype =S
trigger1= numproj =0
trigger1 = command = "medusedoble"
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value =1000
trigger1 = statetype =S
trigger1= numproj =0
trigger1 = command = "meduseupper"
trigger1 = ctrl = 1


;---------------------------------------------------------------------------


;charge
[State -1]
type = ChangeState
value = 30
triggerall = command = "wall1"
triggerall = command = "wall2"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1400
trigger1 = command = "holdback"
trigger1=command = "hold_c"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------



[State -1]
type = ChangeState
value = 240
triggerall = statetype = S
triggerall = command != "holddown"
triggerall = ctrl = 1
trigger1 = command = "a"
;-----------------------------------------------------


[State -1]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290
trigger2 = movecontact
;---------------------------------------------------------------------------


[State -1]
type = ChangeState
value = 260
triggerall = command = "c"   
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = movecontact







;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
----------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 244
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 230
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 244
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 410
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;
[State -1]
type = ChangeState
value = 440
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 440
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 605
triggerall = command = "a"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 640
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 605
triggerall = command = "a"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 605
triggerall = command = "b"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 640
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 605
triggerall = command = "b"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 640
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact

;---------------------------------------------------------------------------


[State -1]
type = ChangeState
value = 605
triggerall = command = "c"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 640
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 605
triggerall = command = "c"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 640
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 610
triggerall = command = "x"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 640
trigger2 = movecontact
trigger3 = stateno = 605
trigger3 = movecontact

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 610
triggerall = command = "x"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 640
trigger2 = movecontact
trigger3 = stateno = 605
trigger3 = movecontact

;---------------------------------------------------------------------------


[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 640
trigger2 = movecontact
trigger3 = stateno = 605
trigger3 = movecontact

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 640
trigger2 = movecontact
trigger3 = stateno = 605
trigger3 = movecontact
;---------------------------------------------------------------------------


[State -1]
type = ChangeState
value = 640
triggerall = command = "z"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 605
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact


;---------------------------------------------------------------------------
;Jump_Y (moving)
[State -1]
type = ChangeState
value = 640
triggerall = command = "z"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 605
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact

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























