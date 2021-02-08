;--------------------------------------------------------------------------
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------
;Kyra Comand File
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------

;-| Super Motions |--------------------------------------------------------

;Zanne del Lupo
[Command]
name = "lupo"
command = D, D, a
time = 30

;Puntura della libellula
[Command]
name = "mosca"
command = D, D, b
time = 30

;ali del vampiro
[Command]
name = "vampiri"
command = D, D, c
time = 30

;Volo dell'acquila possente
[Command] 
name = "aquila" 
command = D, D, x
time = 30

;Spire del serpente
[Command] 
name = "serpente" 
command = D, D, y
time = 30

;Artigli dell'Orso
[Command]
name = "orso"
command = D, D, z
time = 30

;Gorgo di scylla
[Command]
name = "gorgo"
command = c+z
time = 5

;-| Special Motions |------------------------------------------------------

;----------------------------
;fireball
[Command]
name = "QCF_x"
command = ~D, DF, F, a

[Command]
name = "QCF_y"
command = ~D, DF, F, b

[Command]
name = "QCF_y"
command = ~D, DF, F, c

[Command]
name = "AQCF_x"
command = ~D, DF, F, a

[Command]
name = "AQCF_y"
command = ~D, DF, F, b

[Command]
name = "AQCF_y"
command = ~D, DF, F, c
;----------------------------

;----------------------------
;Calcio volante
[Command]
name = "Flyingkick"
command = ~D, DB, B, x

[Command]
name = "Flyingkick"
command = ~D, DB, B, y

[Command]
name = "Flyingkick"
command = ~D, DB, B, z

;----------------------------


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1


;----------------------
;CARICA COSMO
[Command]
name = "charge"
command = /b
time= 1

[Command]
name = "charge 1"
command= /c
time= 1
;----------------------

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

;ricarica cosmo
[State -1]
type = ChangeState
value = 730000
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"

[State -1]
type = ChangeState
value = 31000
triggerall = command = "vampiri"
triggerall = power >= 1000 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (AnimElem = 4,>=3)

[State -1]
type = ChangeState
value = 9998
triggerall = command = "orso"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact
[State -1]
type = ChangeState
value = 9999
triggerall = command = "orso"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact

[State -1]
type = ChangeState
value = 1330
triggerall = command = "lupo"
triggerall = power >= 1000 
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 8887
triggerall = command = "mosca"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 17700
triggerall = command = "serpente"
triggerall = power >= 1000
triggerall = stateno != 1700
triggerall = numprojid(1700) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA

[State -1]
type = ChangeState
value = 20200
triggerall = command = "aquila"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact

[State -1]
type = ChangeState
value = 9750
triggerall = command = "gorgo"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = P2statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Slow Fireball
[State -1, Slow Fireball]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;Fast Fireball
[State -1, Slow Fireball]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;Aerial Fireball (left arm)
[State -1, Aerial Fireball (left arm)]
type = ChangeState
value = 1100
triggerall = command = "AQCF_x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact

;Aerial Fireball (right arm)
[State -1, Aerial Fireball (right arm)]
type = ChangeState
value = 1110
triggerall = command = "AQCF_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact

;Flying flaming kick
[State -1, Flying flaming kick]
type = ChangeState
value = 1200
triggerall = command = "Flyingkick"
trigger1 = statetype = S
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
;presa
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
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
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact

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
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact


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
trigger3 = movecontact

;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
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
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;pugno abbasato medio
[State -1, Crouching Strong Punch]
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
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;calcio abbasato debole
[State -1, Crouching Strong Kick]
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
[State -1, Crouching Strong Kick]
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
[State -1, Crouching Strong Kick]
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
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;pugno medio in salto
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;pugno forte in salto
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;calcio debole in salto
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;calcio medio in salto
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;calcio forte in salto
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
