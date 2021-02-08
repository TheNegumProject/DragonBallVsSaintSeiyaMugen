;COMMAND FILE FOR BAIAN-CAVALLO DEL MARE FOR POSEIDON PROJECT
;--------------------------------------------------------------
;-----------------------------
;-----------------------------
;COMANDI
;-----------------------------
;-----------------------------

;Vortice del Pacifico
[Command]
name = "vorticedelpacifico"
command = B, DB, D, DF, F, a
time = 50

;Fluttui degli Abissi
[Command]
name = "fluttuidegliabissi"
command = B, DB, D, DF, F, b
time = 35

;Super Fluttui degli Abissi
[Command]
name = "fluttuidegliabissi2"
command = B, DB, D, DF, F, c
time = 50

;Super Combo TV
[Command]
name = "tv"
command = B, DB, D, DF, F, z
time = 50

;Fireball
[command]
name = "fireball"
command = ~D, DF, F, b
time = 40 

;Onde Paralizzanti
[Command]
name = "onde"
command = D, DF, F, a
time = 25

;Barriera Difensiva
[Command]
name = "barriera"
command = ~D, DB, B, a

;Combo Aerea
[Command]
name = "comboaerea"
command = ~D, DB, B, z

;Ginocchiata
[command]
name = "ginocchiata"
command = D, DF, F, z
time = 30

;Flash Punch
[Command]
name = "flashpunch"
command = D, DF ,F, c
time = 15

;Teletrasporto
[Command]                       
name = "teletrasporto" 
command = a+b+c
time = 30

;Presa
[Command]
name = "presa" 
command = F, c
time = 10

;Carica Cosmo
[Command]
name = "cosmo"
command = b+c
time = 15

;Settimo Senso
[Command]
name = "recover"
command = a+x
time = 1

;Corsa Avanti
[Command]
name = "FF"
command = F, F
time = 10

;Scatto Indietro
[Command]
name = "BB"
command = B, B
time = 10

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


;Insulti
[Command]
name = "recovery"
command = c+z
time = 1

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

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B      
time = 1

[Command]
name = "holdback3"
command = /$B   
time = 50

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = 


;-----------------------------------------------
;-----------------------------------------------
[Statedef -1]
;-----------------------------------------------
;-----------------------------------------------
;Button combination
;-----------------------------------------------
;-----------------------------------------------

;Teletrasporto
[State -1]
type = ChangeState
value = 7777
trigger1 = command = "teletrasporto"
trigger1 = statetype = S
trigger1 = ctrl

;Carica Cosmo
[State -1]
type = ChangeState
value = 14000
triggerall = command = "cosmo"
triggerall = power < 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

;Settimo Senso
[State -1]
type = ChangeState
value = 2000
triggerall = command = "recover"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

;Presa
[State -1, Standing Throw]
type = ChangeState
value = 700
triggerall = p2bodydist X < 20
triggerall = command = "presa" 
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = (p2statetype = S) 
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 30

;Fluttui degli Abissi
[State -1]
type = ChangeState
value = 9750
triggerall = command = "fluttuidegliabissi"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = P2statetype != A
trigger1 = ctrl = 1

;Super Fluttui degli Abissi 
[State -1]
type = ChangeState
value = 2011
triggerall = command = "fluttuidegliabissi2"
trigger1 = statetype != A
triggerall = power >= 3000
trigger1 = ctrl = 1

;Vortice del Pacifico
[State -1]
type = ChangeState
value = 2100
triggerall = command = "vorticedelpacifico"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = P2statetype != A
trigger1 = ctrl = 1

;Combo come nel cartone
[State -1]
type = ChangeState
value = 77777
trigger1 = command = "tv"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = P2statetype != A
trigger1 = ctrl = 1

;Fireball
[State -1]
type = ChangeState
value = 10120
triggerall = command = "fireball"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 215
trigger4 = movecontact = 1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 225
trigger6 = movecontact = 1
trigger7 = stateno = 230
trigger7 = movecontact = 1
trigger8 = stateno = 240
trigger8 = movecontact = 1
trigger9 = stateno = 255
trigger9 = movecontact = 1
trigger10 = stateno = 300
trigger10 = movecontact = 1
trigger11 = stateno = 310
trigger11 = movecontact = 1
trigger12 = stateno = 320
trigger12 = movecontact = 1
trigger13 = stateno = 330
trigger13 = movecontact = 1
trigger14 = stateno = 340
trigger14 = movecontact = 1

;Onde Paralizzanti
[State -1]
type = ChangeState
value = 10100
triggerall = command = "onde"
trigger1 = statetype != A
trigger1 = ctrl = 1

;Combo Aerea
[State -1]
type = ChangeState
value = 9998
triggerall = command = "comboaerea"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact
[State -1]
type = ChangeState
value = 9999
triggerall = command = "comboaerea"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact

;Barriera Difensiva
[State -1]
type = ChangeState
value = 1000
triggerall = command = "barriera"
trigger1 = statetype != A
trigger1 = ctrl = 1

;Ginocchiata
[State -1]
type = ChangeState
value = 1113
triggerall = command = "ginocchiata"
triggerall = ctrl = 1
trigger1 = statetype != A


;-----------------------------------------------
;-----------------------------------------------
;single button
;-----------------------------------------------
;-----------------------------------------------

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
value = 430
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Scivolata z
[State -1]
type = ChangeState
value = 430
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = ctrl = 1

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

[State -1]
type = ChangeState
value = 420
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 400
triggerall = statetype = C 
triggerall = ctrl = 1
trigger1 = command = "b"
trigger2 = command = "c"

;corsa avanti
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

,scatto indietro
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3675
triggerall = StateType != A
triggerall = StateType != C
;triggerall = P2StateNo = 1330
trigger1 = command = "holdback3"
trigger1 = statetype = S
trigger1 = command = "c"
trigger1 = command != "holddown"
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 1200
triggerall = command = "flashpunch"
trigger1 = statetype != C
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 199
trigger1 = command = "s"
trigger1 = statetype != A
trigger1 = stateno != 199
trigger1 = ctrl = 1

[State -1,Pugno debole]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,Pugno forte]
type = ChangeState
value = 210
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,Pugno medio]
type = ChangeState
value = 220
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Calcio debole
[State -1]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1

[State -1,Calcio medio]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

[State -1,Calcio forte]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

[State -1]
type = ChangeState
value = 260
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = P2bodydist X <= 15
trigger1 = command != "holddown"
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 260
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = P2bodydist X <= 15
trigger1 = command != "holddown"
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 260
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = P2bodydist X <= 15
trigger1 = command != "holddown"
trigger1 = ctrl = 1

[State -1,Provocazione]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1,Pugno debole da seduto]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1,Pugno medio da seduto]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1,Pugno forte da seduto]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)


[State -1,Calcio debole da seduto]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)


[State -1,Calcio Medio da seduto]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1,Calcio Forte da seduto]
type = ChangeState
value = 450
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)


[State -1,Pugno debole in aria]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7


[State -1,Pugno medio in aria]
type = ChangeState
value = 600
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

[State -1,Pugno forte in aria]
type = ChangeState
value = 600
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

[State -1,Calcio debole in aria]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1,Calcio medio in aria]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

[State -1,Calcio forte in aria]
type = ChangeState
value = 650
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact


;---------------Boohh-------------------------------
[State -1]
type = ChangeState
value = 800
triggerall = command = "y"
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

[State -1]
type = ChangeState
value = 800
triggerall = command = "y"
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
;---------------------------------------------------

