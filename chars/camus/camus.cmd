;--------------------------------
[Command]
name = "Exclamacion"
command = ~B, DB, D, DF, F, z
time = 30

;--------------------------------
[Command]
name = "Tonnerre"
command = ~B, DB, D, DF, F, x
time = 30
;--------------------------------
;1° Cercueil de glace
[Command]
name = "charge_y"
command = B, DB, D, DF, F, b
time = 30

;Pugno volante
[Command]
name = "qcb_x"
command = D, DF, F, a
time = 25

;mini cometa
[Command]
name = "mini_cometa"
command = B, DB, D, DF, F, y
time = 20

;Vitesse de la lumière
[Command]
name = "velissime"
;command = B,F,a
command = F,a+c
time = 30

;Tu n'es qu'un jouet entre mes mains
[Command]
name = "nage"
command = z+a
time = 1

;Tu n'es qu'un jouet entre mes mains
[Command]
name = "change"
command = x+y
time = 1

;Tu n'es qu'un jouet entre mes mains
[Command]
name = "back_y"
command = /B,y
time = 1
;---------------------------------
;Button combination
;----------------------
;reversaldef
[Command]
name = "qcf_a"
command = c+z
time = 15

;petite poussière de diamant
[Command]
name = "fwd_a2"
command = a,a,a,a,a,a,a
time = 70

;charge
[Command]
name = "charge"
command = a+x
time = 30

;Calcio missile
[Command]
name = "super"
command = x+z
time = 45
;----------------------
;Dir + button
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
name = "fwd_z"
command = /F, z
time = 1

[Command]
name = "throw_2" 
command = /F, c
time = 10
;----------------------
;Single button
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
;-------------------------
;Special
;-------------------------
;1° fulmine di Pegasus
[State -1]
type = ChangeState
value = 1330
triggerall = command = "charge_y"
triggerall = power >= 2000 
trigger1 = statetype != A
trigger1 = ctrl = 1
;-------------------------------------------------
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
;Tonnerre de l'Aube
[State -1]
type = ChangeState
value = 1600
triggerall = PalNo < 7
triggerall = Var(20) = 0
triggerall = command = "Tonnerre" ;-------
triggerall = power >= 2000 ;Level 2
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [1104, 1105]);Cancel ground moves
trigger2 = movecontact
;-------------------------------------------------
;Exclamacion de Atena
[State -1]
type = ChangeState
value = 6262
triggerall = command = "Exclamacion" ;
triggerall = power >= 3000 ;Level 3
triggerall = life < 500
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [1104, 1105]);Cancel ground moves
trigger2 = movecontact
;-----------------------------------
;---------------------------------------------------------------------------
;seiya mini meteor 2(normal)
[State -1]
type = ChangeState
value = 225
triggerall = command = "mini_cometa"
triggerall = power >=1000
trigger1 = statetype != A
;trigger1 = statetype != C
trigger1 = ctrl = 1
;===========================================================================
; Le coup de lévitation
;===========================================================================
;Tu n'es qu'un jouet entre mes mains
[State -1]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = command != "change"
triggerall = Var(10) != 1
trigger1 = Var(1) != 3
trigger1 = command = "nage"
trigger2 = Var(1) != 3
trigger2 = command = "b"
trigger3 = Var(1) = 3
trigger3 = command = "fwd_y"
trigger3 = p2statetype = S
trigger3 = p2Movetype != H
trigger3 = p2bodydist X < 32
trigger4 = Var(1) = 3
trigger4 = command = "back_y"
trigger4 = p2statetype = S
trigger4 = p2Movetype != H
trigger4 = p2bodydist X < 32
;-------;Vitesse de la lumière
[State -1]
type = ChangeState
value = 8010
trigger1 = command = "velissime"
trigger1 = statetype = S
trigger1 = ctrl 
;-------------------------
;Button combination
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
trigger1 = statetype != A
trigger1 = statetype != C
trigger1 = ctrl = 1

;charge
[State -1]
type = ChangeState
value = 5555
triggerall = command = "charge"
trigger1 = statetype != A
trigger1 = ctrl = 1

;Calcio missile
[State -1]
type = ChangeState
value = 680
triggerall = command = "super"
trigger1 = statetype = A
trigger1 = ctrl = 1

;--------------------------
;dir + button
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
trigger2 = MoveContact
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
trigger2 = MoveContact

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
trigger2 = MoveContact

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
trigger2 = MoveContact
trigger3 = stateno = 220
trigger3 = MoveContact
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
trigger2 = MoveContact
trigger3 = stateno = 250
trigger3 = MoveContact
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
trigger3 = MoveContact
;----------------------------------------
;Calcio medio
[State -1]
type = ChangeState
value = 226
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 215
trigger3 = MoveContact
;----------------------------------------
;Calcio hard
[State -1]
type = ChangeState
value = 290
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = MoveContact
trigger3 = stateno = 201
trigger3 = MoveContact
;-----------------------------------------
[State -1]
type = VarAdd
v = 1
value = 1
trigger1 = command = "y"
trigger1 = stateno = 1525
;---------------------------------------
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
;----------------------------------

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[State -2, NoBar] 
type = AssertSpecial 
trigger1 = roundstate = [0,1] 
trigger2 = roundstate = 4 
trigger3 = Ctrl = 0 && Anim = 0 && MoveType != H 
flag = NoBarDisplay 
ignorehitpause = 1 

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
;                                   ALL SELFSTATE
;---------------------------------------------------------------------------
