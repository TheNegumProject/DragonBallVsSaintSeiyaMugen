[Command]
name = "qcbp2"
command = a+b+c+x+y+z
time = 30
[Command]
name = "qcbp2"
command = a+c
time = 30
;---------------------------

;-----------------------------
[Command]
name = "qcfp2"
command = a+y
time = 30
[Command]
name = "qcbhcfp"
command = ~D, DF, F, a+z
time = 45
[Command]
name = "qcb_y"
command = b+x
time = 15
[Command]
name = "charge_x"
command = c+x
time = 15
;-------------


;Special
;-------------------------
;-------------------------
;Calcio volante alato
[Command]
name = "ddff_z"
command = D, DF, F, z
time = 15

[Command]
name = "cadena"
command =DB D, DF, F, y
time = 30


[Command]
name = "tempestadlevel1"
command =DB D, DF, F, z
time = 30

[Command]
name = "tempestad"
command =DB D, DF, F, c
time = 30



;mini cometa
[Command]
name = "mini_cometa"
command = D, DF, F, a
time = 20
;-----------------------------------
;prese
;-----------------------------------

;---------------------------------

;Button combination
-----------------------
;----------------------


;reversaldef
[Command]
name = "qcf_a"
command = c
time = 15




;Recover
[Command]
name = "recover"
command = a+x
time = 30





;Dir + button
;----------------------
;----------------------








;Single button
;----------------------
;----------------------

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


;[Command]
;name = "dp_x"
;command = x+z
time = 15
[Command]
name = "dp_y"
command = F,a+b
time = 15
[Command]
name = "hcf_y"
command = ~B, DB, D, DF, F, y
time = 15

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "dodge"
command = x+a
time = 1

;----------------------

;----------------------


[Command]
name = "fwd_b"
command = /F, b
time = 1


[Command]
name = "hold_a"
command = /$a
time = 1


[Command]
name = "hold_b"
command = /$b
time = 1



[Command]
name = "hold_x"
command = /$x
time = 1


;-------------------------
[Command]
name = "hold_y"
command = /$y
time = 1


[Command]
name = "hold_z"
command = /$z
time = 1

;boh
[Command]
name = "s"
command = s
time = 1


[Command]
name = "holdfwd_x"
command = /$F, x
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1
[Command]
name = "holdback"
command = /$B      
time = 1
;--------------------


;--------------------
;prova per superguard
[Command]
name = "holdback3"
command = /$B   
time = 50
;---------------------

[Command]
name = "holdup"
command = /$U
time = 1
[Command]
name = "holddown"
command = 
;prova salto altissimo
[Command]
name = "UU"
command = B, a+b
time = 30


;--------------------------------------------------
;Commads
;--------------------------------------------------
[Statedef -1]
;--------------------








;Special
;-------------------------


cadena de andromeda
[State -1]
type = ChangeState
value = 48
triggerall = command = "cadena"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = P2Bodydist X >= 150


tempestad nebular
[State -1]
type = ChangeState
value = 4400
triggerall = command = "tempestad"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1




tempestad nebular
[State -1]
type = ChangeState
value = 4401
triggerall = command = "tempestadlevel1"
triggerall = power >= 3000
triggerall = life <= 500
trigger1 = statetype != A
trigger1 = ctrl = 1


;----------------------------------------
;Button combination
;-------------------------
;-------------------------

;reversal
[State -1]
type = ChangeState
value = 1400
triggerall = command = "qcf_a"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl = 1





;recover
[State -1]
type = ChangeState
value = 2000
trigger1 = Var(1) != 1
triggerall = command = "recover"
trigger1 = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1




;Standing hard kick
;[State -1]
;type = ChangeState
;value = 260
;triggerall = command = "shk"
;trigger1 = statetype = S
;trigger1 = P2bodydist X <= 15
;trigger1 = command != "holddown"
;trigger1 = ctrl = 1


;--------------------------


-----------------------------------------






;-------------------------
;-------------------------


;---------------------------------------

;Calcio alto
[State -1]
type = ChangeState
value = 260
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1


;-----------------------------------------



;-----------------------------------------

;Pugno in volo a
[State -1]
type = ChangeState
value = 640
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Pugno in volo b
[State -1]
type = ChangeState
value = 650
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Pugno in volo c
[State -1]
type = ChangeState
value = 660
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1


;Pugno basso debole
[State -1]
type = ChangeState
value = 460
triggerall = command = "c"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Pugno basso debole
[State -1]
type = ChangeState
value = 401
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------

;Pugno basso medio
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl = 1



;--------------------------------------------

;Calcio in volo x
[State -1]
type = ChangeState
value = 670

triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Calcio in volo y
[State -1]
type = ChangeState
value = 680
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Calcio in volo z
[State -1]
type = ChangeState
value = 690
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1


;Scivolata x
[State -1]
type = ChangeState
value = 440
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Scivolata y
[State -1]
type = ChangeState
value = 450
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Scivolata z
[State -1]
type = ChangeState
value = 4700
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = ctrl = 1

;------------------------------------



;---------------------------------------


;-----------------------------------------------

;single button
;--------------------------
;--------------------------

;Pugno debole
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1

;---------------------------------------

;Pugno medio
[State -1]
type = ChangeState
value = 215
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 220
trigger3 = movecontact = 1
;-----------------------------------------

;Pugno hard
[State -1]
type = ChangeState
value = 201
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = movecontact = 1
trigger3 = stateno = 250
trigger3 = movecontact = 1
;----------------------------------------




;------------------------------------------


;Calcio debole
[State -1]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
;----------------------------------------

;Calcio medio
[State -1]
type = ChangeState
value = 250
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1
;----------------------------------------


;-----------------------------------------






;------------------------------------








;-----------------------------------------










[State -1]
type = ChangeState
value = 1140
triggerall = command = "qcb_y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = MoveContact = 1
trigger3 = stateno = 620
trigger3 = MoveContact = 1
trigger4 = stateno = 630
trigger4 = MoveContact = 1
trigger5 = stateno = 640
trigger5 = MoveContact = 1
trigger6 = stateno = 660
trigger6 = MoveContact = 1
trigger7 = stateno = 226
trigger7 = MoveHit = 1




;--------------------------------------




;--------------------------------------

;-----------------------------------------








[State -1]
type = ChangeState
value = 1650
triggerall = command = "hcf_y"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = MoveContact = 1
trigger3 = stateno = 230
trigger3 = MoveContact = 1
trigger4 = stateno = 250
trigger4 = MoveContact = 1
trigger5 = stateno = 270
trigger5 = MoveContact = 1
trigger6 = stateno = 400
trigger6 = MoveContact = 1
trigger7 = stateno = 440
trigger7 = MoveContact = 1
trigger8 = stateno = 460
trigger8 = MoveContact = 1







[State -1]
type = ChangeState
value = 1300
triggerall = command = "charge_x"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = MoveContact = 1
trigger3 = stateno = 230
trigger3 = MoveContact = 1
trigger4 = stateno = 250
trigger4 = MoveContact = 1
trigger5 = stateno = 270
trigger5 = MoveContact = 1
trigger6 = stateno = 400
trigger6 = MoveContact = 1
trigger7 = stateno = 440
trigger7 = MoveContact = 1
trigger8 = stateno = 460
trigger8 = MoveContact = 1
















;[State -1]
;type = ChangeState
;value = 1500
;triggerall = command = "dp_x"
;trigger1 = statetype != A
;trigger1 = ctrl = 1
;trigger2 = stateno = 200
;trigger2 = MoveContact = 1
;trigger3 = stateno = 230
;trigger3 = MoveContact = 1
;trigger4 = stateno = 250
;trigger4 = MoveContact = 1
;trigger5 = stateno = 270
;trigger5 = MoveContact = 1
;trigger6 = stateno = 400
;trigger6 = MoveContact = 1
;trigger7 = stateno = 440
;trigger7 = MoveContact = 1
;trigger8 = stateno = 460
;trigger8 = MoveContact = 1







[State -1]
type = ChangeState
value = 1525
triggerall = command = "dp_y"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = MoveContact = 1
trigger3 = stateno = 230
trigger3 = MoveContact = 1
trigger4 = stateno = 250
trigger4 = MoveContact = 1
trigger5 = stateno = 270
trigger5 = MoveContact = 1
trigger6 = stateno = 400
trigger6 = MoveContact = 1
trigger7 = stateno = 440
trigger7 = MoveContact = 1
trigger8 = stateno = 460
trigger8 = MoveContact = 1







[State -1]
type = VarAdd
v = 1
value = 1
trigger1 = command = "y"
trigger1 = stateno = 1525


;------------------------------------------



[State -1]
type = ChangeState
value = 420
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl = 1



[State -1]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1


[State -1]
type = ChangeState
value = 620
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = Vel X = 0
trigger1 = ctrl = 1




[State -1]
type = ChangeState
value = 199
trigger1 = command = "s"
trigger1 = statetype != A
trigger1 = stateno != 199
trigger1 = ctrl = 1



[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1

;-----------------------------
;prova superguard
[State -1]
type = ChangeState
value = 3675
triggerall = StateType != A
triggerall = StateType != C
triggerall = P2StateNo = 1330
trigger1 = command = "holdback3"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1
;----------------------------------------------






;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
;                                   ALL SELFSTATE
;---------------------------------------------------------------------------















