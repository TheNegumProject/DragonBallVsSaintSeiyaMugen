;--------------------------------------------------------------------------
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------
;Shadir Comand File By TonyADV
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------

;-| Super Motions |--------------------------------------------------------

;Iper Pugno d'Acciaio
[Command]
name = "IperPugno"
command = B, DB, D, DF, F, a
time = 30

;Mitragliatore
[Command]
name = "Mitraglia"
command = B, DB, D, DF, F, b
time = 30

;Big Fireball
[Command]
name = "BigFireball"
command = B, DB, D, DF, F, c
time = 30

;Uragano d'Acciaio
[Command]
name = "Tornado"
command = B, DB, D, DF, F, x
time = 30

;Uragano d'Acciaio
[Command]
name = "Tornado2"
command = B, DB, D, DF, F, y
time = 30

;Uragano d'Acciaio help trio
[Command]
name = "Tornado3"
command = B, DB, D, DF, F, z
time = 30

;-| Special Motions |------------------------------------------------------


;Pugno d'Acciaio
[Command]
name = "ComboPugno"
command = ~D, DF, F, a
time = 25

;Fireball Light
[Command]
name = "Fireball"
command = ~D, DF, F, b
time = 25

;Fireball Strong
[Command]
name = "Fireball2"
command = ~D, DF, F, c
time = 25

;Air Kick
[Command]
name = "Air Kick"
command = ~D, DF, F, z
time = 30


;---------------------------
;Potenziamento
;---------------------------

[Command]
name = "charge"
command = /b
time= 1

[Command]
name = "charge 1"
command= /c
time= 1

;-| Double Tap |-----------------------------------------------------------
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

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "mega_block"
command = c
time = 50

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================

;Potenziamento
[State -1]
type = ChangeState
value = 730000
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"

;
[State -1]
type = ChangeState
value = 30000
triggerall = command = "IperPugno"
triggerall = command != "holddown"
triggerall = power >= 1000
trigger1 = statetype = S || statetype != A
trigger1 = ctrl

;
[State -1]
type = ChangeState
value = 30010
triggerall = command = "Tornado2"
triggerall = power >= 3000
triggerall = stateno != 1700
triggerall = numprojid(1700) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA

;
[State -1]
type = ChangeState
value = 30110
triggerall = command = "Tornado"
triggerall = power >= 2000
;triggerall = power >= 1000
;triggerall = power <= 2999
triggerall = stateno != 1700
triggerall = numprojid(1700) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA

;
[State -1]
type = ChangeState
value = 70000
triggerall = command = "Tornado3"
triggerall = power >= 3000
triggerall = stateno != 1700
triggerall = numprojid(1700) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA

:
[State -1]
type = ChangeState
value = 30020
triggerall = command = "Mitraglia"
triggerall = power >= 2000
triggerall = stateno != 1700
triggerall = numprojid(1700) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA

;
[State -1]
type = ChangeState
value = 30030
triggerall = command = "BigFireball"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

; 
[State -1]
type = ChangeState
value = 500
triggerall = command = "Fireball"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

; 
[State -1]
type = ChangeState
value = 505
triggerall = command = "Fireball2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;ComboPugno
[State -1]
type = ChangeState
value = 540
triggerall = command = "ComboPugno"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact

;Air Kick
[State -1]
type = ChangeState
value = 2000
triggerall = command = "Air Kick"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;Mega block
[State -1]
type = ChangeState
value = 1400
triggerall = command = "mega_block"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
;Pugno debole
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
;Calcio medio
[State -1]
type = ChangeState
value = 290
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1

;---------------------------------------------------------------------------

;Calcio hard
[State -1]
type = ChangeState
value = 250
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;provocazione
[State -1]
type = ChangeState
value = 195
trigger1 = command = "start"
trigger1 = statetype != A
trigger1 = stateno != 195
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;pugno abbasato debole
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;pugno abbasato medio
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;pugno abbasato forte
[State -1]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;calcio abbasato debole
[State -1]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;calcio abbasato forte
[State -1]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;calcio abbasato in scivolata
[State -1]
type = ChangeState
value = 450
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;pugno debole in salto
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;pugno medio in salto
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;pugno forte in salto
[State -1]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;calcio debole in salto
[State -1]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;calcio medio in salto
[State -1]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;calcio forte in salto
[State -1]
type = ChangeState
value = 650
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------