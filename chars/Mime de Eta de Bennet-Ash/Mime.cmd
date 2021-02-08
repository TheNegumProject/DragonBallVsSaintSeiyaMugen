;--------------------------------------------------------------------------
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------
;Orfeo Comand File By TonyADV
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------

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

;------------------------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------
;-| Super Motions |------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------

;Death Trip Serenade
[Command]
name = "SP1"
command = B, DB, D, DF, F, x
time = 30
[Command]
name = "SP1"
command = B, DB, D, DF, F, y
time = 30
[Command]
name = "SP1"
command = B, DB, D, DF, F, z
time = 30

;Stringer Nocturne
[Command]
name = "SP2"
command = F, DF, D, DB, B, a
time = 30
[Command]
name = "SP2"
command = F, DF, D, DB, B, b
time = 30
[Command]
name = "SP2"
command = F, DF, D, DB, B, c
time = 30

;Stringer Fine - Melodia delle Tenebre
[Command]
name = "SP3"
command = B, DB, D, DF, F, a
time = 30
[Command]
name = "SP3"
command = B, DB, D, DF, F, b
time = 30
[Command]
name = "SP3"
command = B, DB, D, DF, F, c
time = 30

;------------------------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------
;-| Special Motions |----------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------

;Onda d'Urto Musicale (light)
[Command]
name = "Fireball"
command = ~D, DF, F, a
time = 25
;Onda d'Urto Musicale (Medium)
[Command]
name = "Fireball2"
command = ~D, DF, F, b
time = 25
;Onda d'Urto Musicale (Strong)
[Command]
name = "Fireball3"
command = ~D, DF, F, c
time = 25

;Combo Pugno Lira
[Command]
name = "Combo1"
command = ~D, DB, B, a
time = 25
[Command]
name = "Combo1"
command = ~D, DB, B, b
time = 25
[Command]
name = "Combo1"
command = ~D, DB, B, c
time = 25

;Ginocchiate
[Command]
name = "Combo2"
command = ~D, DF, F, x
time = 25
[Command]
name = "Combo2"
command = ~D, DF, F, y
time = 25
[Command]
name = "Combo2"
command = ~D, DF, F, z
time = 25

;Flash Kick
[Command]
name = "Combo3"
command = ~D, DB, B, x
time = 25
[Command]
name = "Combo3"
command = ~D, DB, B, y
time = 25
[Command]
name = "Combo3"
command = ~D, DB, B, z
time = 25

;Uppercut Kick
[Command]
name = "Combo4"
command = ~F, D, DF, x
time = 20
[Command]
name = "Combo4"
command = ~F, D, DF, y
time = 20
[Command]
name = "Combo4"
command = ~F, D, DF, z
time = 20

;---------------------------
;Carika cosmo
;---------------------------
[Command]
name = "charge"
command = /c
time= 1
[Command]
name = "charge 1"
command= /z
time= 1

;-| Double Tap |-------------------------------------------------
;Corsa Avanti
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

;Scatto indietro
[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1


;-| Dir + Button |------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |-----------------------------------------------
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
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------
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

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;==================================================================
;------------------------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------

;Potenziamento
[State -1]
type = ChangeState
value = 730000
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"

;------------------------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------

;melodia delle tenebre
[State -1]
type = ChangeState
value = 30000
triggerall = command = "SP3"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 290
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 290
trigger8 = movecontact
trigger9 = stateno = 500
trigger9 = movecontact
trigger10 = stateno = 501
trigger10 = movecontact
trigger11 = stateno = 502
trigger11 = movecontact

;onda d'urto
[State -1]
type = ChangeState
value = 30030
triggerall = command = "SP2"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 290
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 290
trigger8 = movecontact
trigger9 = stateno = 3020
trigger9 = movecontact

;Ninna Nanna
[State -1]
type = ChangeState
value = 30020
triggerall = command = "SP1"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 290
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 290
trigger8 = movecontact
trigger9 = stateno = 500
trigger9 = movecontact
trigger10 = stateno = 501
trigger10 = movecontact
trigger11 = stateno = 502
trigger11 = movecontact

;------------------------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------

;fireballx1
[State -1]
type = ChangeState
value = 500
triggerall = command = "Fireball"
trigger1 = statetype != A
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 290
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 290
trigger8 = movecontact

;fireballx2 
[State -1]
type = ChangeState
value = 501
triggerall = command = "Fireball2"
trigger1 = statetype != A
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 290
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 290
trigger8 = movecontact

;fireballx3 
[State -1]
type = ChangeState
value = 502
triggerall = command = "Fireball3"
trigger1 = statetype != A
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 290
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 290
trigger8 = movecontact

;ComboPugno
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Combo1"
trigger1 = statetype != A
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact

;ComboCalcio3 (uppercut)
[State -1]
type = ChangeState
value = 3030
triggerall = command = "Combo4"
trigger1 = statetype != A
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 290
trigger3 = movecontact
trigger4 = stateno = 250
trigger4 = movecontact
trigger5 = stateno = 290
trigger5 = movecontact

;ComboCalcio2
[State -1]
type = ChangeState
value = 3020
triggerall = command = "Combo3"
trigger1 = statetype != A
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 290
trigger3 = movecontact
trigger4 = stateno = 250
trigger4 = movecontact
trigger5 = stateno = 290
trigger5 = movecontact

;ComboCalcio1 (ginocchiate)
[State -1]
type = ChangeState
value = 3010
triggerall = command = "Combo2"
trigger1 = statetype != A
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 290
trigger3 = movecontact
trigger4 = stateno = 250
trigger4 = movecontact
trigger5 = stateno = 290
trigger5 = movecontact

;------------------------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------
;Corsa
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Scatto indietro
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------

;Pugno debole
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 290
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 290
trigger8 = movecontact

;Pugno medio
[State -1]
type = ChangeState
value = 215
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 290
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 290
trigger8 = movecontact

;Pugno hard
[State -1]
type = ChangeState
value = 201
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl = 1 
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 290
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 290
trigger8 = movecontact

;Calcio debole
[State -1]
type = ChangeState
value = 220
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl = 1 
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 290
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 290
trigger8 = movecontact

;Calcio medio
[State -1]
type = ChangeState
value = 290
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl = 1 
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 290
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 290
trigger8 = movecontact

;Calcio hard vicino
[State -1]
type = ChangeState
value = 293
triggerall = command = "z"
triggerall = P2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 290
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 290
trigger8 = movecontact

;Calcio hard
[State -1]
type = ChangeState
value = 250
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 290
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 290
trigger8 = movecontact

;------------------------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------
;pugno abbasato debole
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 410
trigger2 = movecontact
trigger3 = stateno = 420
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;pugno abbasato medio
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 420
trigger3 = movecontact
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;pugno abbasato forte
[State -1]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 410
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;calcio abbasato debole
[State -1]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 440
trigger2 = movecontact
trigger3 = stateno = 450
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact

;calcio abbasato forte
[State -1]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 450
trigger2 = movecontact
trigger3 = stateno = 430
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 420
trigger6 = movecontact
trigger7 = stateno = 440
trigger7 = movecontact

;calcio abbasato in scivolata
[State -1]
type = ChangeState
value = 450
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 430
trigger2 = movecontact
trigger3 = stateno = 440
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 420
trigger6 = movecontact
trigger7 = stateno = 450
trigger7 = movecontact

;------------------------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------

;pugno debole in salto
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 610
trigger2 = movecontact
trigger3 = stateno = 620
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact
trigger6 = stateno = 650
trigger6 = movecontact
trigger7 = stateno = 600
trigger7 = movecontact

;pugno medio in salto
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 620
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact
trigger6 = stateno = 650
trigger6 = movecontact
trigger7 = stateno = 610
trigger7 = movecontact

;pugno forte in salto
[State -1]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact
trigger6 = stateno = 650
trigger6 = movecontact
trigger7 = stateno = 620
trigger7 = movecontact

;calcio debole in salto
[State -1]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 640
trigger2 = movecontact
trigger3 = stateno = 650
trigger3 = movecontact
trigger4 = stateno = 600
trigger4 = movecontact
trigger5 = stateno = 610
trigger5 = movecontact
trigger6 = stateno = 620
trigger6 = movecontact
trigger7 = stateno = 630
trigger7 = movecontact

;calcio medio in salto
[State -1]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 630
trigger2 = movecontact
trigger3 = stateno = 650
trigger3 = movecontact
trigger4 = stateno = 600
trigger4 = movecontact
trigger5 = stateno = 610
trigger5 = movecontact
trigger6 = stateno = 620
trigger6 = movecontact
trigger7 = stateno = 630
trigger7 = movecontact

;calcio forte in salto
[State -1]
type = ChangeState
value = 650
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 630
trigger2 = movecontact
trigger3 = stateno = 640
trigger3 = movecontact
trigger4 = stateno = 600
trigger4 = movecontact
trigger5 = stateno = 610
trigger5 = movecontact
trigger6 = stateno = 620
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact

;------------------------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------

;provocazione
[State -1]
type = ChangeState
value = 195
trigger1 = command = "start"
trigger1 = statetype != A
trigger1 = stateno != 195
trigger1 = ctrl = 1

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

;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

