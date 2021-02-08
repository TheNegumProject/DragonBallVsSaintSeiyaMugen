; Command file for Radamanthys by Tux
;--------------------------------------------------------------------------

;-| AI Command |-----------------------------------------------------------

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

;-| Hyper Moves |------------------------------------------------------

;Occhi della Viverna / Wyvern Eyes (Cosmo = 1000)
[Command]
name = "occhi"
command = ~D, DF, F, D, DF, F, a
time = 40

;Monito Supremo con Viverna / Greatest Caution with Wyvern (Cosmo = 2000)
[Command]
name = "greatest1"
command = ~D, DF, F, D, DF, F, b
time = 40

;Monito Supremo con Sfera / Greatest Caution with Sphere (Cosmo = 3000)
[Command]
name = "greatest2"
command = ~D, DF, F, D, DF, F, c
time = 40

Strati di Spirito / Sekishiki Meikahia (Cosmo = 3000, Fatality)
[Command]
name = "strati"
command = ~D, DF, F, D, DF, F, x
time = 40

;-| Special Moves |--------------------------------------------------------

;Soffio del Dragone dell’Ade / Wyvern Breath
[Command]
name = "soffio"
command = ~D, DB, B, a
time = 25
[Command]
name = "soffio"
command = ~D, DB, B, b
time = 25
[Command]
name = "soffio"
command = ~D, DB, B, c
time = 25

;Volo della Viverna / Wyvern Flight
[Command]
name = "volo"
command = ~D, DB, B, x
time = 25
[Command]
name = "volo"
command = ~D, DB, B, y
time = 25
[Command]
name = "volo"
command = ~D, DB, B, z
time = 25

;Strangolamento / Strangling
[Command]
name = "strangola"
command = ~D, DF, F, c
time = 25

;Calcio Volante / Flying Kick
[Command]
name = "calcio_volante"
command = ~D, DF, F, x
time = 25
[Command]
name = "calcio_volante"
command = ~D, DF, F, y
time = 25
[Command]
name = "calcio_volante"
command = ~D, DF, F, z
time = 25

;Combo / Combo
[Command]
name = "combo"
command = ~D, DF, F, a
time = 25
[Command]
name = "combo"
command = ~D, DF, F, b
time = 25

;Teletrasporto / Teleport
[Command]
name = "teleport"
command = ~D, D, x
time = 15
[Command]
name = "teleport"
command = ~D, D, y
time = 15
[Command]
name = "teleport"
command = ~D, D, z
time = 15

;-| 2/3 Button Combination |-----------------------------------------------

;Super Parata (Scaglie della Viverna) / Ultra Guard (Wyvern Plate)
[Command]
name = "super_parata"
command = c
time = 1

;Carica Cosmo con Terremoto / Cosmo Charging with Earthquake
;Carikamento
[Command]
name = "carica_a"
command = /c
time= 1
[Command]
name = "carica_b"
command= /z
time= 1

;Schivata / Dodge
[Command]
name = "dodge"
command = a+x
time = 1

[Command]
name = "recovery"	;Required (do not remove)
command = x+y
time = 1

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
name = "start"
command = s
time = 1

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| Hold Dir |--------------------------------------------------------------

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

;---------------------------------------------------------------------------

[Statedef -1]

;Occhi della Viverna / Wyvern Eyes
[State -1]
type = ChangeState
value = 3200
triggerall = command ="occhi"
triggerall = power >= 1000 
trigger1 = statetype != A
trigger1 = ctrl = 1

;Monito Supremo con Viverna / Greatest Caution with Wyvern
[State -1]
type = ChangeState
value = 3100
triggerall = command ="greatest1"
triggerall = power >= 2000 
trigger1 = statetype != A
trigger1 = ctrl = 1

;Monito Supremo con Sfera / Greatest Caution with Sphere
[State -1]
type = changestate
value = 3000
triggerall = command = "greatest2"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

;Strati di Spirito / Sekishiki Meikahia
[State -1]
type = changestate
value = 3300
triggerall = command = "strati"
triggerall = power >= 3000
triggerall = p2life <= 250
trigger1 = statetype != A
trigger1 = ctrl = 1

;Soffio del Dragone dell’Ade / Wyvern Breath
[State -1]
type = ChangeState
value = 1000
triggerall = command = "soffio"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Volo della Viverna / Wyvern Flight
[State -1]
type = ChangeState
value = 1100
triggerall = command = "volo"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Calcio	Volante / Flying Kick
[State -1]
type = ChangeState
value = 1200
triggerall = command = "calcio_volante"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Strangolamento / Strangling
[State -1]
type = ChangeState
value = 1300
triggerall = command = "strangola"
triggerall = command != "greatest2"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Super Parata (Scaglie della Viverna) / Ultra Guard (Wyvern Plate)
[State -1]
type = ChangeState
value = 1400
triggerall = command = "super_parata"
triggerall = command = "holdback"
trigger1 = statetype != A

;Teletrasporto / Teleport
[State -1]
type = ChangeState
value = 1500
triggerall = command = "teleport"
trigger1 = statetype != A
trigger1 = ctrl = 1

;Combo / Combo
[State -1]
type = ChangeState
value = 1600
triggerall = command = "combo"
triggerall = command != "occhi"
triggerall = command != "greatest1"
triggerall = P2BodyDist X <= 70
trigger1 = statetype != A
trigger1 = ctrl = 1

;Carica Cosmo con Terremoto / Cosmo Charging with Earthquake
[State -1]
type = ChangeState
value = 1700
triggerall = statetype = S
triggerall = Power < 6000
triggerall = ctrl = 1
trigger1 = command = "carica_a"
trigger1 = command = "carica_b"

;Schivata / Dodge
[State -1]
type = ChangeState
value = 1800
triggerall = command = "dodge"
trigger1 = statetype != A
trigger1 = ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;Pugno debole / Light punch
[State -1, Stand A]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;Pugno medio / Medium punch
[State -1, Stand B]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;Pugno forte / Hard punch
[State -1, Stand C]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 

;---------------------------------------------------------------------------

;Calcio debole / Light kick
[State -1, Stand X]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 

;---------------------------------------------------------------------------

;Calcio medio / Medium kick
[State -1, Stand Y]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 

;---------------------------------------------------------------------------

;Calcio forte / Hard Kick
[State -1, Stand Z]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 

;---------------------------------------------------------------------------

;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = ((statetype != A) && (ctrl = 1))

;---------------------------------------------------------------------------

;Pugno debole a terra / Crouching light punch
[State -1, Crouch A]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------

;Pugno medio a terra / Crouching medium punch
[State -1, Crouch B]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------

;Pugno forte a terra / Crouching hard punch
[State -1, Crouch C]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------

;Calcio debole a terra / Crouching light kick
[State -1, Crouch X]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------

;Calcio medio a terra / Crouching medium kick
[State -1, Crouch Y]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------

;Calcio forte a terra / Crouching hard kick
[State -1, Crouch Z]
type = ChangeState
value = 450
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------

;Pugno debole in volo / Air light punch
[State -1, Jump A]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Pugno medio in volo / Air medium punch
[State -1, Jump B]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Pugno forte in volo / Air hard punch
[State -1, Jump C]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Calcio debole in volo / Air light kick
[State -1, Jump X]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Calcio medio in volo / Air medium kick
[State -1, Jump Y]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Calcio forte in volo / Air hard kick
[State -1, Jump Z]
type = ChangeState
value = 650
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

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
value = 1800
[State -1]
type = ChangeState 
triggerall = (Var(30) = 59) && (StateType = S) && (Pos Y = 0) && (P2BodyDist Y <= 0) 
triggerall = (P2BodyDist Y = -120) && (P2StateType != C) && (P2MoveType = A) 
trigger1 = (P2BodyDist X <= 120) && (Random <= 799) && (Ctrl) 
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105]) 
value = 1800
