;By Gouketsu and Tux
--------------------

;-| AI Command |------------------------------------------------------------

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
command = z, y, z
time = 1

; Button Remapping 
;---------------------------

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;Super Moves
;-------------------------

;Cosmo >= 1000 & vicino
;Spirale di Pegasus (Pegasus Rolling Crash)
[Command]
name = "spirale"
command = ~F, DF, D, DB, B, a
time = 40

;Cosmo >= 2000 & in volo
;Cometa di Pegasus (Pegasus Suiseken from Air)
[Command]
name = "bbbddff_c"
command = ~B, DB, D, DF, F, a
time = 40

;Cosmo >= 1000 
;Fulmine di Pegasus (Pegasus Ryuseiken)
[Command]
name = "charge_y"
command = ~D, DF, F, D, DF, F, a
time = 40

;Cosmo >= 2000
;Fulmine di Pegasus con Caricamento (Pegasus Ryuseiken with Charging)
[Command]
name = "ryuseiken"
command = ~D, DF, F, D, DF, F, b
time = 40

;Cosmo >= 2000
;Cometa Lucente (Pegasus Suiseken)
[Command]
name = "comet"
command = ~D, DF, F, D, DF, F, c
time = 40

;Cosmo >= 3000
;Fulmine di Pegasus Dorato (Golden Pegasus Ryuseiken)
[Command]
name = "ryuseikengold"
command = ~D, DF, F, D, DF, F, x
time = 40

;Cosmo >= 3000 
;Spada Balmung di Odino (Odino's Sword)
[Command]
name = "odino"
command = ~D, DF, F, D, DF, F, y
time = 40

;Cosmo >= 3000 & life <= 250
;Cosmo dell'Amicizia (Cosmo of Friendship)
[Command]
name = "friends"
command = ~D, DF, F, D, DF, F, z
time = 40

;Cosmo >= 3000 & p2life <= 250
;Freccia di Sagitter (Sagitter Arrow)
[Command]
name = "bdbddff_2"
command = ~D, DB, B, D, DB, B, a
time = 40

;Helpers
;-------------------------

;Cosmo >= 2000 
;Tisifone Helper - Artigli del Cobra (First Shania's Helper)
[Command]
name = "sheena"
command = /F, x+y
time = 1

;Cosmo >= 1000 
;Tisifone Helper - Cobra Incantatore (Second Shania's Helper)
[Command]
name = "shena"
command = /B, x+y
time = 1

;Special Moves
;-------------------------

;Mini Comete (Small Suisekens)
[Command]
name = "mini_cometa"
command = ~D,DF,F,a
time = 20

;Mini Cometa (Small Suiseken)
[Command]
name = "qcb_x"
command = ~D,DF,F,b
time = 25

;Mini Meteore (Small Meteors)
[Command]
name = "fwd_a2"
command = ~D,DF,F,c
time = 25

;Pugno Volante (Flying Punch)
[Command]
name = "qcf_b"
command = ~F,D,DF,a
time = 25
;Pugno volante
[Command]
name = "qcf_b"
command = ~F,D,DF,b
time = 25
;Pugno volante
[Command]
name = "qcf_b"
command = ~F,D,DF,c
time = 25

;Ali di Pegasus (Pegasus Wings)
[Command]
name = "ddff_z"
command = ~D,DF,F,x
time = 15
[Command]
name = "ddff_z"
command = ~D,DF,F,y
time = 15
[Command]
name = "ddff_z"
command = ~D,DF,F,z
time = 15

;Gomitata (Elbow Dash)
[Command]
name = "rdp_a"
command = ~D,DF,F,y
time = 25

;Combo Doppia (Double Combo)
[Command]
name = "hcf_x"
command = ~D,DF,F,z
time = 25

;Calcio Multiplo (Multiple Kick)
[Command]
name = "rdp_b"
command = ~D,DB,B,x
time = 25
[Command]
name = "rdp_b"
command = ~D,DB,B,y
time = 25
[Command]
name = "rdp_b"
command = ~D,DB,B,z
time = 25

;Presa (Throw)
[Command]
name = "throw_2"
command = /F, c
time = 10

;Combo Pugni (Combo Punches)
[Command]
name = "dp_y"
command = x
time = 1
[Command]
name = "dp_y"
command = y
time = 1

;Button combination
;---------------------

;Super Parata (Reversal Defense)
[Command]
name = "qcf_a"
command = c
time = 1

;Schivata / Dodge
[Command]
name = "dodge"
command = a+x
time = 1

;Carica Cosmo (Cosmo Charge)
[Command]
name = "charge"
command = /c
time = 1

;Carica Cosmo (Cosmo Charge)
[Command]
name = "charge1"
command = /z
time = 1

;Acquisizione del Settimo Senso (Recover)
[Command]
name = "recover"
command = b+y
time = 1

[Command]
name = "recovery"
command = x+y
time = 10

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

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
name = "fwd_b"
command = /F, b
time = 1

;Single button
;----------------------

;Provoking
[Command]
name = "s"
command = s
time = 1

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

;Hold button
;----------------------

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

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B      
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D 
time = 1

;--------------------
;prova per superguard
[Command]
name = "holdback3"
command = /$B   
time = 50

;---------------------

;prova salto altissimo
[Command]
name = "UU"
command = B, a+b
time = 30

;--------------------------------------------------
;Commads
;--------------------------------------------------
[Statedef -1]

;Dodge
[State -1]
type = ChangeState
value = 998
triggerall = command = "dodge"
trigger1 = statetype != A
trigger1 = ctrl = 1

;Special
;-------------------------
;-------------------------
;Calcio volante alato
[State -1, [State -1]
type = ChangeState
value = 660
triggerall = command = "ddff_z"
trigger1 = statetype = A
trigger1 = ctrl = 1


;-----------------------------------
;Cometa lucente in volo
[State -1, [State -1]
type = ChangeState
value = 1100
triggerall = command = "bbbddff_c"
trigger1 = power >= 2000
trigger1 = statetype = A
trigger1 = ctrl = 1


;----------------------------------
;Cometa lucente
[State -1, [State -1]
type = ChangeState
value = 9800
triggerall = command = "comet"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1


;----------------------------------
;Freccia di Sagitter
[State -1, [State -1]
type = ChangeState
value = 2100
triggerall = command = "bdbddff_2"
triggerall = power >= 3000
triggerall = p2life <= 250
trigger1 = statetype != A
trigger1 = P2statetype != A
trigger1 = ctrl = 1


;-----------------------------------
;1° fulmine di Pegasus
[State -1, [State -1]
type = ChangeState
value = 1330
triggerall = command = "charge_y"
triggerall = power >= 1000 
trigger1 = statetype != A
trigger1 = ctrl = 1

;shena
[State -1, [State -1]
type = ChangeState
value = 8600
triggerall = command = "sheena"
triggerall = power >= 1000 
trigger1 = numhelper(86000) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1

;shena2
[State -1, [State -1]
type = ChangeState
value = 8700
triggerall = command = "shena"
triggerall = power >= 2000 
trigger1 = numhelper(87000) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1


;odino
[State -1, [State -1]
type = ChangeState
value = 8000
triggerall = command = "odino"
triggerall = power >= 3000 
trigger1 = statetype != A
trigger1 = ctrl = 1


;dorato
[State -1, dorato]
type = ChangeState
value = 88
triggerall = command = "ryuseikengold"
triggerall = Power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1


;2° fulmine di pegasus
[State -1, [State -1]
type = ChangeState
value = 2199
triggerall = command = "ryuseiken"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1

;Cosmo of Friendship
[State -1, [State -1]
type = ChangeState
value = 8002
triggerall = command = "friends"
triggerall = command != "hcf_x"
triggerall = power >= 3000
triggerall = life <= 250
trigger1 = statetype = S
trigger1 = ctrl = 1

;----------------------------------------------
;Pugno volante
[State -1, [State -1]
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
[State -1, [State -1]
type = ChangeState
value = 1000
triggerall = command = "qcb_x"
triggerall = command != "ryuseiken"
trigger1 = statetype != A
trigger1 = ctrl = 1


;---------------------------------------------
;seiya mini meteor 2(normal)
[State -1, [State -1]
type = ChangeState
value = 225
triggerall = command = "mini_cometa"
triggerall = command != "charge_y"
trigger1 = statetype != A
trigger1 = statetype != C
trigger1 = ctrl = 1


;-----------------------------------------
;spirale
[State -1, Standing Throw]
type = ChangeState
value = 800
triggerall = command = "spirale"
triggerall = power >= 1000
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 50
trigger1 = (p2statetype = S) 
trigger1 = p2movetype != H


;----------------------------------------
;Button combination
;-------------------------
;-------------------------
;reversal
[State -1, [State -1]
type = ChangeState
value = 1400
triggerall = command = "qcf_a"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl = 1


;seiya mini meteor "multi"
[State -1, [State -1]
type = ChangeState
value = 229
triggerall = command = "fwd_a2"
triggerall = command != "comet"
triggerall = P2BodyDist X < 190
trigger1 = statetype != A
trigger1 = statetype != C
trigger1 = ctrl = 1


;recover
[State -1, [State -1]
type = ChangeState
value = 2000
trigger1 = Var(1) != 1
triggerall = command = "recover"
trigger1 = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1


;gomitata
[State -1, [State -1]
type = ChangeState
value = 1200
triggerall = command = "rdp_a"
triggerall = command != "odino"
trigger1 = statetype != C
trigger1 = statetype != A
trigger1 = ctrl = 1


;combo finta
[State -1, [State -1]
type = ChangeState
value = 1600
triggerall = command = "hcf_x"
trigger1 = statetype = S
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
;dir + button
;-------------------------
;-------------------------
;Pugno ravvicinato
[State -1, [State -1]
type = ChangeState
value = 280
triggerall = command = "fwd_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------
;Calcio alto
[State -1, [State -1]
type = ChangeState
value = 240
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 260
trigger2 = movecontact


;-----------------------------------------
;Calcio capovolto
[State -1, [State -1]
type = ChangeState
value = 270
triggerall = command = "fwd_z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = P2bodydist X <= 65
trigger1 = ctrl = 1


;-----------------------------------------
;Pugno in volo a
[State -1, [State -1]
type = ChangeState
value = 640
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1


;Pugno in volo b
[State -1, [State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1


;Pugno in volo c
[State -1, [State -1]
type = ChangeState
value = 640
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1


;Pugno basso debole
[State -1, [State -1]
type = ChangeState
value = 460
triggerall = command = "c"
trigger1 = statetype = C
trigger1 = ctrl = 1


;Pugno basso debole
[State -1, [State -1]
type = ChangeState
value = 460
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl = 1


;---------------------------------------------
;Pugno basso medio
[State -1, [State -1]
type = ChangeState
value = 400
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl = 1


;--------------------------------------------
;Calcio in volo x
[State -1, [State -1]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact


;Calcio in volo y
[State -1, [State -1]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1


;Calcio in volo z
[State -1, [State -1]
type = ChangeState
value = 600
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 630
trigger2 = movecontact


;Scivolata x
[State -1, [State -1]
type = ChangeState
value = 440
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl = 1


;Scivolata y
[State -1, [State -1]
type = ChangeState
value = 440
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl = 1


;Scivolata z
[State -1, [State -1]
type = ChangeState
value = 440
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = ctrl = 1


;------------------------------------
;Combo air(parte dalla standing)
[State -1, [State -1]
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
triggerall = p2bodydist X < 50
triggerall = command = "throw_2" 
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) 
trigger1 = p2movetype != H


;-----------------------------------------------
;single button
;--------------------------
;--------------------------
;Pugno debole
[State -1, [State -1]
type = ChangeState
value = 200
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1


;---------------------------------------
;Pugno medio
[State -1, [State -1]
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
[State -1, [State -1]
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
[State -1, [State -1]
type = ChangeState
value = 230
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = P2bodydist X <= 15
trigger1 = command != "holddown"
trigger1 = ctrl = 1


;Ginocchiata y
[State -1, [State -1]
type = ChangeState
value = 230
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = P2bodydist X <= 15
trigger1 = command != "holddown"
trigger1 = ctrl = 1


;Ginocchiata z
[State -1, [State -1]
type = ChangeState
value = 210
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = P2bodydist X <= 15
trigger1 = command != "holddown"
trigger1 = ctrl = 1


;------------------------------------------
;Calcio debole
[State -1, [State -1]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger3 = stateno = 200
trigger3 = movecontact

;charge
[State -1, [State -1]
type = ChangeState
value = 8500
triggerall = command = "charge1"
triggerall = command = "charge"
triggerall = power < 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

;----------------------------------------
;Calcio medio
[State -1, [State -1]
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
[State -1, [State -1]
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

[State -1, [State -1]
type = VarAdd
value = 1
v = 1
trigger1 = command = "y"
trigger1 = stateno = 1525

;------------------------------------------

[State -1, [State -1]
type = ChangeState
value = 420
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1, [State -1]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1, [State -1]
type = ChangeState
value = 620
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = Vel X = 0
trigger1 = ctrl = 1

[State -1, [State -1]
type = ChangeState
value = 199
trigger1 = command = "s"
trigger1 = statetype != A
trigger1 = stateno != 199
trigger1 = ctrl = 1

[State -1, [State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, [State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1

;-----------------------------
;prova superguard
[State -1, [State -1]
type = ChangeState
value = 3675
triggerall = StateType != A
triggerall = StateType != C
triggerall = P2StateNo = 1330
trigger1 = command = "holdback3"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1


;-----------------------------

[State -1]
type = ChangeState
value = 1525
triggerall = command = "dp_y"
trigger1 = statetype  = A
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

;---------------------------------------------------------------------------
;-| AI Variabile |----------------------------------------------------------
;---------------------------------------------------------------------------

[State -1, AI]
type = Varset
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"
v = 59
value = 1

;-----------------------------------
; ------ AI Standing Guard ---------
;-----------------------------------
[State -1]
type = ChangeState
triggerall = var(59) = 1 
triggerall = Statetype != A 
triggerall = P2statetype != C 
triggerall = Statetype = S 
triggerall = P2Movetype = A 
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 999 
value = 130
[State -1]
type = ChangeState 
triggerall = (Var(30) = 59) && (StateType = S) && (Pos Y = 0) && (P2BodyDist Y <= 0) 
triggerall = (P2BodyDist Y = -120) && (P2StateType != C) && (P2MoveType = A) 
trigger1 = (P2BodyDist X <= 120) && (Random <= 799) && (Ctrl) 
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105]) 
value = 130 

;-----------------------------------
; ------ AI Standing Guard ---------
;-----------------------------------
; AI Stand to Crouch Guard Transition
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

; AI Crouching Guard
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 900
value = 131
[State -1]
type = ChangeState 
triggerall = (Var(30) = 59) && (StateType != A) && (Pos Y = 0) && (P2BodyDist Y <= 0) 
triggerall = (P2BodyDist Y = -50) && (P2StateType = C) && (P2MoveType = A) 
trigger1 = (P2BodyDist X <= 120) && (Random <= 799) && (Ctrl) 
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105]) 
value = 131

;-----------------------------------
; ------- AI Aerial Guard ---------
;-----------------------------------

; AI Crouch to Stand Guard Transition
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

;AI Aerial Guard
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = random <= 900
value = 132
[State -1]
type = ChangeState 
triggerall = (Var(30) = 59) && (StateType = A) && (Pos Y = 0)  && (P2BodyDist Y = -120) 
triggerall = (StateType = A) && (P2MoveType = A) 
trigger1 = ((P2BodyDist X <= 120) && (Ctrl)) || (StateNo = [140, 155]) 
value = 132 

;-----------------------------------
; ------ Special Guard ---------
;-----------------------------------
[State -1]
type = ChangeState
triggerall = var(59) = 1 
triggerall = Statetype != A 
triggerall = P2statetype != C 
triggerall = Statetype = S 
triggerall = P2Movetype = A 
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 949 
value = 1400
[State -1]
type = ChangeState 
triggerall = (Var(30) = 59) && (StateType = S) && (Pos Y = 0) && (P2BodyDist Y <= 0) 
triggerall = (P2BodyDist Y = -120) && (P2StateType != C) && (P2MoveType = A) 
trigger1 = (P2BodyDist X <= 120) && (Random <= 799) && (Ctrl) 
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105]) 
value = 1400 

;-----------------------------------
; ------ Dodge ---------
;-----------------------------------
[State -1]
type = ChangeState
triggerall = var(59) = 1 
triggerall = Statetype != A 
triggerall = P2statetype != C 
triggerall = Statetype = S 
triggerall = P2Movetype = A 
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 999 
value = 998
[State -1]
type = ChangeState 
triggerall = (Var(30) = 59) && (StateType = S) && (Pos Y = 0) && (P2BodyDist Y <= 0) 
triggerall = (P2BodyDist Y = -120) && (P2StateType != C) && (P2MoveType = A) 
trigger1 = (P2BodyDist X <= 120) && (Random <= 799) && (Ctrl) 
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105]) 
value = 998
