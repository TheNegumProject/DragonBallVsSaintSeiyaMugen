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

;Coup de poing volant
[Command]
name = "ddff_c"
command = D, DF, F, c
time = 15

;ikkihelper
[Command]
name = "ikkihelper"
command = B, DB, D, DF, F, x
time = 30

;hyogahelper
[Command]
name = "hyogahelper"
command = B, DB, D, DF, F, y
time = 30

;Cometa lucente
[Command]
name = "bbbddff_c"
command = B, DB, D, DF, F, c
time = 20

;ultime comete
[Command]
name = "bdbddff_2"
command = B, DB, D, DF, F, c
time = 40
triggerall = life <= 100 


;2° meteores de pegase
[Command]
name = "meteores de pegase"
command = B, DB, D, DF, F, b
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

;teleportation
[Command]                       
name = "teleportation" 
command = a+b+c
time = 30

;-----------------------------------
;prese
;-----------------------------------
;spirale
[Command]
name = "spirale"
command = F, a+c
time = 20

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

;Arayashiki
[Command]
name = "recover"
command = a+x
time = 30
triggerall = life <= 300

;Gomitata
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

;-------------------------

;Coup de poing volant
[State -1]
type = ChangeState
value = 13000
triggerall = command = "ddff_c"
trigger1 = statetype = A
trigger1 = ctrl = 1

;-----------------------------------

;ikkihelper
[State -1]
type = ChangeState
value = 4018
triggerall = command = "ikkihelper"
triggerall = power >= 1000 
trigger1 = statetype != A
trigger1 = ctrl = 1
;------------------------------------

;hyogahelper
[State -1]
type = ChangeState
value = 3430
triggerall = command = "hyogahelper"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1
;------------------------------------

;teleportation
[State -1]
type = ChangeState
value = 7777
trigger1 = command = "teleportation"
trigger1 = statetype = S
trigger1 = ctrl 

;------------------------------------

;Cometa lucente
[State -1]
type = ChangeState
value = 1100
triggerall = command = "bbbddff_c"
trigger1 = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl = 1
;----------------------------------

;ultime comete
[State -1] 
type = ChangeState 
value = 2100 
triggerall = command = "bdbddff_2" 
triggerall = life <= 200 
triggerall = power >= 3000 
trigger1 = statetype != A 
trigger1 = P2statetype != A 
trigger1 = ctrl = 1 

;-----------------------------------

2° meteores de pegase
[State -1]
type = ChangeState
value = 2199
triggerall = command = "meteores de pegase"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1

;-------------------------------------------------

;8è sens
[State -1]
type = ChangeState
value = 2000
trigger1 = Var(1) != 1
triggerall = command = "recover"
triggerall = life <= 300
trigger1 = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

;--------------------------------------------------

;Pugno volante
[State -1]
type = ChangeState
value = 1425
triggerall = command = "qcf_b"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 250
trigger4 = movecontact
trigger5 = stateno = 270
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 440
trigger7 = movecontact
trigger8 = stateno = 460
trigger8 = movecontact

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

;-----------------------------------------
;spirale
[State -1, Standing Throw]
type = ChangeState
value = 800
triggerall = command = "spirale" 
triggerall = power>=1000
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X > 200
trigger1 = (p2statetype = S) 
trigger1 = p2movetype != H

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

;gomitata
[State -1]
type = ChangeState
value = 1200
triggerall = command = "rdp_a"
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
value = 280
triggerall = command = "fwd_a"
triggerall = command != "holddown"
trigger1 = statetype = S
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
trigger2 = movecontact
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
value = 460
triggerall = command = "c"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Pugno basso debole
[State -1]
type = ChangeState
value = 460
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
trigger2 = movecontact

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
trigger2 = movecontact


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

;placcaggio
;2nd throw
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
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact
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
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
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
trigger3 = movecontact
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
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
;----------------------------------------

;Calcio hard
[State -1]
type = ChangeState
value = 290
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = movecontact
trigger3 = stateno = 201
trigger3 = movecontact
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
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 250
trigger4 = movecontact
trigger5 = stateno = 270
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 440
trigger7 = movecontact
trigger8 = stateno = 460
trigger8 = movecontact


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
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 250
trigger4 = movecontact
trigger5 = stateno = 270
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 440
trigger7 = movecontact
trigger8 = stateno = 460
trigger8 = movecontact







[State -1]
type = ChangeState
value = 2250
triggerall = command = "qcbhcfp"
triggerall = power >= 3000
triggerall = life <= 170
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 250
trigger4 = movecontact
trigger5 = stateno = 270
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 440
trigger7 = movecontact
trigger8 = stateno = 460
trigger8 = movecontact







;-----------------------------------------










[State -1]
type = ChangeState
value = 1140
triggerall = command = "qcb_y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 620
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact
trigger6 = stateno = 660
trigger6 = movecontact
trigger7 = stateno = 226
trigger7 = movehit




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
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 250
trigger4 = movecontact
trigger5 = stateno = 270
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 440
trigger7 = movecontact
trigger8 = stateno = 460
trigger8 = movecontact







[State -1]
type = ChangeState
value = 1300
triggerall = command = "charge_x"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 250
trigger4 = movecontact
trigger5 = stateno = 270
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 440
trigger7 = movecontact
trigger8 = stateno = 460
trigger8 = movecontact
















;[State -1]
;type = ChangeState
;value = 1500
;triggerall = command = "dp_x"
;trigger1 = statetype != A
;trigger1 = ctrl = 1
;trigger2 = stateno = 200
;trigger2 = movecontact
;trigger3 = stateno = 230
;trigger3 = movecontact
;trigger4 = stateno = 250
;trigger4 = movecontact
;trigger5 = stateno = 270
;trigger5 = movecontact
;trigger6 = stateno = 400
;trigger6 = movecontact
;trigger7 = stateno = 440
;trigger7 = movecontact
;trigger8 = stateno = 460
;trigger8 = movecontact







[State -1]
type = ChangeState
value = 1525
triggerall = command = "dp_y"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 250
trigger4 = movecontact
trigger5 = stateno = 270
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 440
trigger7 = movecontact
trigger8 = stateno = 460
trigger8 = movecontact







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
