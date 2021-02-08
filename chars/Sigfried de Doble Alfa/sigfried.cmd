;-------------------------
;Hypers
;-------------------------
;dragon
[Command]
name = "dragon"
command = B, DB, D, DF, F, c
time = 40

;Epee d'odin
[Command]
name = "epee d'odin"
command = B, DB, D, DF, F, b
time = 30

;Enchainement infernal
[Command]
name = "COMBOII"
command = B, DB, D, DF, F, z
time = 30

;Slide kick
[command]
name = "slidekick"
command = ~D, DF, F, x

;Slide kick
[command]
name = "upperkick"
command = ~F, D, DF, z

;Multi Poings
[Command]
name = "multipoings"
command = B, DB, D, DF, F, y
time = 30

;-----------------------------
;Supers
;-----------------------------

;La charge de Siegfried
[Command]
name = "charge1"
command = ~D,DF,F, a

;Combo abdos
[Command]
name = "abdos"
command = ~D,DF,F, y

;Charge abdos
[Command]
name = "abdosII"
command = ~D,DF,F, b

;Charge grosse baffe
[Command]
name = "baffeII"
command = ~D,DB,B, x

;coup en diagonale
[Command]
name = "diagonale"
command = D, DF, F, z
;-----------------------------------
;La mort d'un Héros
;-----------------------------------
;Adieu Asgard
[Command]
name = "adieu"
command = F, a+c
time = 20
;---------------------------------
;-|Surprise du chef|----
[command]
name = "ac"			
command = b+y	
;-----------------------
;coups bonus
;-----------------------
;Défence de fer
[Command]
name = "defenceII"
command = c
time = 15

;Défence normale
[Command]
name = "defence"
command = b
time = 15

;Coup de pieds vers le sol
[Command]
name = "cpiedssol"
command = x+z
time = 45

;Dégage petit homme
[Command]
name = "dégage" 
command = /F, c
time = 10

;T'as pas compris BARRE TOI
[Command]
name = "barretoi"
command = /F, a
time = 1

;Dir + button
;----------------------
;----------------------

[Command]
name = "fwd_y"
command = /F, y
time = 1


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


time = 15
[Command]
name = "FF"
command = F, F
time = 10
[Command]
name = "BB"
command = B, F
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
[Command]
name = "UU"
command = B, a+b
time = 30


; =================================================================
[Statedef -1]

; Multi Poings
[State -1]
type = ChangeState
value = 3000
triggerall = command = "multipoings"
triggerall = power >= 1500 ;Level 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 201
trigger3 = movecontact
trigger4 = stateno = 202
trigger4 = movecontact
trigger5 = stateno = 203
trigger5 = movecontact
trigger6 = stateno = 204
trigger6 = movecontact
trigger7 = stateno = 205
trigger7 = movecontact
trigger8 = stateno = 206
trigger8 = movecontact
trigger9 = stateno = 705
trigger9 = movecontact
trigger10 = stateno = 221
trigger10 = movecontact

;=======================================================================
[state -1]
type = ChangeState
value = 1111
triggerall = command = "slidekick"
trigger1 = statetype = S
trigger1 = ctrl = 1

[state -1]
type = ChangeState
value = 1112
triggerall = command = "upperkick"
trigger1 = statetype = S
trigger1 = ctrl = 1


;Combo II enchainement aérien
[state -1]
type = ChangeState
value = 9990
triggerall = command = "COMBOII"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1


;Combo II reprise au vol
[state -1]
type = ChangeState
value = 9011
triggerall = command = "COMBOII"
triggerall = p2bodydist X > 80
triggerall = p2bodydist Y > 80
trigger1 = statetype = a
trigger1 = ctrl = 1
triggerall = power >= 1500
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 201
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 211
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 221
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 231
trigger9 = movecontact
trigger10 = stateno = 250
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 420
trigger13 = movecontact
trigger14 = stateno = 430
trigger14 = movecontact
;------------------------------------
;La charge de Siegfried
[State -1]
type = ChangeState
value = 2150
triggerall = command = "charge1"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4= stateno = 225
trigger4 = movecontact
trigger5 = stateno = 245
trigger5 = movecontact
trigger6 = stateno = 265
trigger6= movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact
trigger10 = stateno = 910
trigger10 = movecontact
trigger11 = stateno = 150 || stateno = 152
trigger11 = Var(8)
;----------------------------------
;dragon
[State -1]
type = ChangeState
value = 2100
triggerall = command = "dragon"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = P2statetype != A
trigger1 = P2stateno != 40
trigger1 = P2stateno != 5110
trigger1 = P2stateno != 5120
trigger1 = ctrl = 1

;-----------------------------------

; Epee d'odin
[State -1]
type = ChangeState
value = 6262
triggerall = command = "epee d'odin"
triggerall = power >= 2500
trigger1 = statetype != A
trigger1 = p2bodydist X > 190
trigger1 = ctrl = 1

;-------------------------------------------------

; Charge vers les abdos
[State -1]
type = ChangeState
value = 333
triggerall = command = "abdosII"
triggerall = power >= 50
trigger1 = statetype != A
trigger1 = p2bodydist X > 50
trigger1 = ctrl = 1

;-----------------------------------------
;Adieu Asgard
[State -1]
type = ChangeState
value = 8111
triggerall = command = "adieu"
;triggerall = life <= 100
triggerall = power>=1000
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 20
trigger1 = (p2statetype = S) 
trigger1 = p2movetype != H

;-----------------------------------

;Coup en diagonale
[State -1]
type = ChangeState
value = 1100
triggerall = command = "diagonale"
trigger1 = statetype = A
trigger1 = ctrl = 1
;------------------------------------
;------------------------------------

; Charge grosse baffe
[State -1]
type = ChangeState
value = 334
triggerall = command = "baffeII"
triggerall = power >= 50
trigger1 = statetype != A
trigger1 = p2bodydist X > 50
trigger1 = ctrl = 1

;-----------------------------------
;-----------------------------------
;-----------------------------------
;La surprise du chef
[State -1]
type = ChangeState
value = 9990
triggerall = command = "ac"
triggerall = power >= 500
trigger1 = stateno = [150,153]

;-----------------------------------
;Button combination
;-------------------------
;-------------------------

;Défence de fer
[State -1]
type = ChangeState
value = 1400
triggerall = command = "defenceII"
triggerall = command = "holdback"
triggerall = P2name != "shiryuII"
triggerall = P2name != "shiryu"
triggerall = P2stateno != 200
triggerall = P2stateno != 333
triggerall = P2stateno != 3333
trigger1 = statetype != A
trigger1 = ctrl = 1

;Défence
[State -1]
type = ChangeState
value = 1444
triggerall = command = "defence"
triggerall = command = "holdback"
triggerall = P2stateno != 200
triggerall = P2stateno != 333
triggerall = P2stateno != 3333
trigger1 = statetype != A
trigger1 = ctrl = 1


;Coup de pied de haut en bas vers le sol.....
[State -1]
type = ChangeState
value = 680
triggerall = command = "cpiedssol"
trigger1 = statetype = A
trigger1 = ctrl = 1

;dir + button
;-------------------------

;Poing qui envoie au lointain
[State -1]
type = ChangeState
value = 280
triggerall = command = "barretoi"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------
;coup de pieds abdomen
[State -1]
type = ChangeState
value = 260
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 260
trigger2 = movecontact
;-----------------------------------------
;combo abdomen
[State -1]
type = ChangeState
value = 1710
triggerall = command = "abdos"
triggerall = power >= 100
trigger1 = p2bodydist X < 20
trigger1 = statetype != A
trigger1 = ctrl = 1

;===========================================================================

;Poing volant simple 
[State -1]
type = ChangeState
value = 640
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Poing volant simple
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Poing volant spécial
[State -1]
type = ChangeState
value = 406
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1


;Poing fort accroupi
[State -1]
type = ChangeState
value = 460
triggerall = command = "c"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Poing moyen accroupi
[State -1]
type = ChangeState
value = 400
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------

;Poing faible accroupi
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl = 1

;--------------------------------------------

;coup de pied aérien retourné
[State -1]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact

;coup de pied aérien retourné
[State -1]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;coup de pied aérien retourné II
[State -1]
type = ChangeState
value = 600
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 630
trigger2 = movecontact


;coup de pied faible accroupi
[State -1]
type = ChangeState
value = 440
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl = 1

;coup de pied moyen accroupi
[State -1]
type = ChangeState
value = 440
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl = 1

;coup de pied fort accroupi
[State -1]
type = ChangeState
value = 480
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = ctrl = 1


;Va voir ailleurs
[State -1]
type = ChangeState
value = 700
triggerall = p2bodydist X < 20
triggerall = command = "dégage" 
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = command = "holdfwd"
trigger1 = command != "holddown"
trigger1 = ctrl = 1
;-----------------------------------------------

;single button
;--------------------------
;--------------------------

;poing faible
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1

;---------------------------------------

;poing moyen
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

;poing fort
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

;Coup de genoux
[State -1]
type = ChangeState
value = 230
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = P2bodydist X <= 15
trigger1 = command != "holddown"
trigger1 = ctrl = 1

;Coup de genoux
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = P2bodydist X <= 15
trigger1 = command != "holddown"
trigger1 = ctrl = 1

;Coup de genoux II
[State -1]
type = ChangeState
value = 210
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = P2bodydist X <= 15
trigger1 = command != "holddown"
trigger1 = ctrl = 1
;------------------------------------------
;coup de pieds
[State -1]
type = ChangeState
value = 260
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger3 = stateno = 200
trigger3 = movecontact
;----------------------------------------

;Coup de pieds II
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

;coup pieds fort
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
type = VarAdd
v = 1
value = 1
trigger1 = command = "y"
trigger1 = stateno = 1525


;[State -1]
;type = ChangeState
;value = 420
;triggerall = command = "a"
;trigger1 = statetype = C
;trigger1 = ctrl = 1

;[State -1]
;type = ChangeState
;value = 600
;trigger1 = command = "x"
;trigger1 = statetype = A
;trigger1 = ctrl = 1


;[State -1]
;type = ChangeState
;value = 620
;trigger1 = command = "a"
;trigger1 = statetype = A
;trigger1 = Vel X = 0
;trigger1 = ctrl = 1


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
value = 111
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
