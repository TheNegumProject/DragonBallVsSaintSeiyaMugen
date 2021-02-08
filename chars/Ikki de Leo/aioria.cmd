;---------------------------
;Charge
[Command]
name = "char1"
command = /b
time = 1
[Command]
name = "char2"
command = /y
time = 1
;---------------------------
barrera
[Command]
name = "wall1"
command = /a
time = 1
[Command]
name = "wall2"
command = /x
time = 1
;---------------------------
[Command]
name = "rayo"
command = DF, z
time = 30
:---------------------------
[Command]
name = "remov"
command = DB, DF, a
time = 30
;---------------------------
[Command]
name = "remoh"
command = DB, DF, c 
time = 30
:---------------------------
[Command]
name = "goldu"
command = DB, DF, x
time = 30
:---------------------------
[Command]
name = "furia"
command = DB, DF, y
time = 30
:---------------------------
[Command]
name = "qcbp2"
command = a+b+c+x+y+z
time = 30
[Command]
name = "qcbp2"
command = a+c
time = 30
;---------------------------
;helper
[Command]
name = "helper"
command = F, x+y+z
time = 30
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

;Cometa lucente
[Command]
name = "bbbddff_c"
command = B, DB, D, DF, F, c
time = 20





;2?fulmine di Pegasus
[Command]
name = "ryuseiken"
command = DB, DF, b
time = 30

Pugno volante
[Command]
name = "qcf_b"
command = F, DF, D, a
time = 50

;Pugno volante
[Command]
name = "qcb_x"
command = D, DF, F, D, DF, F, c
time = 25

;mini cometa
[Command]
name = "mini_cometa"
command = D, DF, F, a
time = 20

;mini bola
[Command]
name = "mini_bola"
command = DB, DF, s
time = 30
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


;seiya mini meteor
[Command]
name = "fwd_a2"
command = a,a,a,a,a,a,a
time = 70

;Recover
[Command]
name = "recover"
command = a+x
time = 30

;golpe especial
[Command]
name = "rdp_a"
command = a+b
time = 15

;combo finta
[Command]
name = "hcf_x"
command = b+y
time = 15


;Calcio missile
[Command]
name = "super"
command = x+z
time = 45


;Dir + button
;----------------------
;----------------------

[Command]
name = "fwd_a"
command = /F, a
time = 1

[Command]
name = "fwd_y"
command = /F, y
time = 1

[Command]
name = "fwd_x"
command = /F, x
time = 1

[Command]
name = "fwd_z"
command = /F, z
time = 1

[Command]
name = "rdp_b"
command = ~30$F, B, z
time = 10

[Command]
name = "throw_2" 
command = /F, c
time = 10








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
;sirio striker
[Command]
name = "holdback2"
command = B      
time = 1
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


[State -1]
type = ChangeState
value = 2050
trigger1 = command = "qcbp2"
trigger1 = power >= 3000
trigger1 = life <= 170
trigger1 = statetype != A
trigger1 = statetype != C
trigger1 = ctrl = 1


;Special
;-------------------------
;-------------------------

;Calcio volante alato
[State -1]
type = ChangeState
value = 660
triggerall = command = "ddff_z"
trigger1 = statetype = A
trigger1 = ctrl = 1
;-----------------------------------

;Cometa lucente
[State -1]
type = ChangeState
value = 1100
triggerall = command = "bbbddff_c"
trigger1 = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl = 1
;----------------------------------
;----------------------------------
;New Special Attacks
;----------------------------------
;----------------------------------
;Remolinovertical
[State -1]
type = ChangeState
value = 9920
triggerall = command = "remov"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1


;-----------------------------------
;Remolinohorizontal
[State -1]
type = ChangeState
value = 9922
triggerall = command = "remoh"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1


;-------------------------------------------------
;Golduppercut
[State -1]
type = ChangeState
value = 9924
triggerall = command = "goldu"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1


;-------------------------------------------------
;Furiafenix
[State -1]
type = ChangeState
value = 9926
triggerall = command = "furia"
triggerall = power >= 3000
triggerall = life <= 500
trigger1 = statetype != A
trigger1 = ctrl = 1


;--------------------------------------------------
;Rayo de Poder
[State -1]
type = ChangeState
value = 9928
triggerall = command = "rayo"
trigger1 = statetype != A
trigger1 = ctrl = 1
;-------------------------------------------------
;barrera
[State -1]
type = ChangeState
value = 4444
triggerall = command = "wall1"
triggerall = command = "wall2"
triggerall = power >= 50 
trigger1 = statetype != A
trigger1 = ctrl = 1
;--------------------------------------------------
;Charge
[State -1]
type = ChangeState
value = 9938
triggerall = command = "char1"
triggerall = command = "char2"
trigger1 = statetype != A
trigger1 = ctrl = 1


;-------------------------------------------------
;-------------------------------------------------
;End New Specials
;-------------------------------------------------
;-------------------------------------------------

2?fulmine di pegasus
[State -1]
type = ChangeState
value = 8887
triggerall = command = "ryuseiken"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1

;----------------------------------------------

;Pugno volante
[State -1]
type = ChangeState
value = 1425
triggerall = command = "qcf_b"
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

;-------------------------------
;lighting cometa standing
[State -1]
type = ChangeState
value = 1000
triggerall = command = "qcb_x"
trigger1 = statetype != A
triggerall = power >= 500
trigger1 = ctrl = 1

;---------------------------------------------

;seiya mini meteor 2(normal)
[State -1]
type = ChangeState
value = 225
triggerall = command = "mini_cometa"
trigger1 = statetype != A
trigger1 = statetype != C
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

;seiya mini meteor "multi"
[State -1]
type = ChangeState
value = 229
triggerall = command = "fwd_a2"
triggerall = P2BodyDist X < 190
trigger1 = statetype != A
trigger1 = statetype != C
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

;golpe especial
[State -1]
type = ChangeState
value = 1200
triggerall = command = "rdp_a"
triggerall = power >= 1000
trigger1 = P2BodyDist X < 190
trigger1 = statetype != C
trigger1 = statetype != A
trigger1 = ctrl = 1


;combo finta
[State -1]
type = ChangeState
value = 1600
triggerall = command = "hcf_x"
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl = 1


;Calcio missile
[State -1]
type = ChangeState
value = 680
triggerall = command = "super"
trigger1 = statetype = A
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






;dir + button
;-------------------------
;-------------------------

;Pugno ravvicinato
[State -1]
type = ChangeState
value = 215
triggerall = command = "mini_bola"
triggerall = power >= 3000
triggerall = life <= 500
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------

;Calcio alto
[State -1]
type = ChangeState
value = 240
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 260
trigger2 = movecontact = 1

;Calcio medio
[State -1]
type = ChangeState
value = 13400
triggerall = command = "fwd_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 260
trigger2 = movecontact = 1
;-----------------------------------------
[State -1, Standing Throw]
type = ChangeState
value = 700
triggerall = p2bodydist X < 20
triggerall = command = "throw_2" 
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = (p2statetype = S) 
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 30


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
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Pugno in volo c
[State -1]
type = ChangeState
value = 640
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1


;Pugno basso debole
[State -1]
type = ChangeState
value = 400
triggerall = command = "c"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Pugno basso debole
[State -1]
type = ChangeState
value = 400
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
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1

;Calcio in volo y
[State -1]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Calcio in volo z
[State -1]
type = ChangeState
value = 600
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 630
trigger2 = movecontact = 1


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
value = 440
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Scivolata z
[State -1]
type = ChangeState
value = 440
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = ctrl = 1

;------------------------------------

;Combo air(parte dalla standing)
[State -1]
type = ChangeState
value = 1230
triggerall = command = "rdp_b"
trigger1 = statetype = S
trigger1 = ctrl = 1

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
value = 280
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

;Ginocchiata  x
[State -1]
type = ChangeState
value = 230
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = P2bodydist X <= 15
trigger1 = command != "holddown"
trigger1 = ctrl = 1

;Ginocchiata y
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = P2bodydist X <= 15
trigger1 = command != "holddown"
trigger1 = ctrl = 1

;Ginocchiata z
[State -1]
type = ChangeState
value = 210
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = P2bodydist X <= 15
trigger1 = command != "holddown"
trigger1 = ctrl = 1
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

;Calcio hard
[State -1]
type = ChangeState
value = 290
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1
;-----------------------------------------




[State -1]
type = ChangeState
value = 2150
triggerall = command = "qcfp2"
triggerall = power >= 3000
triggerall = life <= 170
trigger1 = statetype != A
trigger1 = P2statetype != A
trigger1 = P2bodydist X < 30
trigger1 = P2stateno != 40
trigger1 = P2stateno != 5110
trigger1 = P2stateno != 5120
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


;------------------------------------




;shiryu helper
[State -1]
type = ChangeState
value = 370
;triggerall = p2name != "sirio" 
;triggerall = p4name != "sirio" 
triggerall = NumHelper(545) = 0 
triggerall = command = "helper"
triggerall = command = "holdfwd"
triggerall = life <= 500
trigger1 = statetype != A
trigger1 = P2statetype != A
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
value = 2250
triggerall = command = "qcbhcfp"
triggerall = power >= 3000
triggerall = life <= 170
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

;----------------------------------
;---------------------------------------















;super meteor double kick
;[State -1]
;type = ChangeState
;value = 241
;triggerall = command = "fwd_y"
;trigger1 = P2statetype = A
;trigger1 = statetype = S
;trigger1 = command != "holddown"
;trigger1 = ctrl = 1

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
