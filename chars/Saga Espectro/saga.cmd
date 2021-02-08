;Criado no Z-CharCAD
;www.zcharcad.kit.net
;zmugen@yahoo.com.br
;----------------------------------

;Criado no Z-CharCAD
;www.zcharcad.kit.net
;zmugen@yahoo.com.br
;----------------------------------
;Command File for Kanon by TonyADV
;===========================================================================
; Super Motions
;===========================================================================
;---------------------------------------------------------------------------
;------------------------- Combos agregado ---------------------------------
[Command]
name = "Trapasso"
command = ~D, DF, F, y

[Command]
name = "TripleKFPalm3"
command = ~D, DB, B, y
time = 20

[Command]
name = "TripleKFPalm"
command = ~D, DB, B, x
time = 20

[Command]
name = "Combo"
command = ~D, DF, F, x
time = 20
;------------------------------ Exclamacion de Atena --------------------------------------


; exclamacion de Atena
[Command]
name = "Exclamacion"
command = ~B, DB, D, DF, F, z
time = 30

;--------------------------------

;RELANPAGO
[Command]
name = "RELANPAGO"
command = F, DF, D, DB, B, a
time = 30

;--------------------------------

;TRIANGOLO D'ORO
[Command]
name = "Triangolo"
command = F, DF, D, DB, B, c
time = 30

;--------------------------------


;1000 PUGNI
[Command]
name = "1000pugni"
command = B, DB, D, DF, F, b
time = 30

;POTERE DEL DRAGONE
[Command]
name = "dragon power"
command = B, DB, D, DF, F, a
time = 30

;GEMINI CLOTH ESPLOSIONE GALATICA
[Command]
name = "mega esplosione galactica"
command = B, DB ,D, DF, F, b
time = 30

;ESPLOSIONE GALATICA
[Command]
name = "esplosione galactica A"
command = B, DB ,D, DF, F, c
time = 30

;KANON ESPLOSIONE GALATICA
[Command]
name = "esplosione galactica B"
command = B, DB ,D, DF, F, a
time = 30

;APOCALISE
[Command]
name = "apocalise"
command = B, DB ,D, DF, F, c
time = 30

;===========================================================================
; Special Motions
;===========================================================================
;FIREBALL LIGHT
[Command]
name = "fireball"
command = ~D, DF, F, a
time = 25

;FIREBALL MEDIUM
[Command]
name = "fireball2"
command = ~D, DF, F, b
time = 25

;FIREBALL STRONG
[Command]
name = "fireball3"
command = ~D, DF, F, c
time = 25

;AIR FIREBALL A
[Command]
name = "AIRfireball"
command = ~D, DF, F, a
time = 20

;AIR FIREBALL B
[Command]
name = "AIRfireball"
command = ~D, DF, F, b
time = 20

;AIR FIREBALL C
[Command]
name = "AIRfireball"
command = ~D, DF, F, c
time = 20

;100 Calci
[Command]
name = "100calci"
command = ~D, DB, B, a
time = 20

;100 Calci
[Command]
name = "100calci"
command = ~D, DB, B, b
time = 20

;100 Calci
[Command]
name = "100calci"
command = ~D, DB, B, c
time = 20

;===========================================================================
; Double Tap Motions
;===========================================================================
[Command]
name = "FF"
command = F, F
time = 10


[Command]
name = "BB"
command = B, B
time = 10

;===========================================================================
; 2/3 button combinations
;===========================================================================

;--------------

[Command]
name = "fwd_c"
command = /F,z
time = 1

[Command]
name = "fwd_d"
command = /F,c
time = 1

;---------------

[Command]
name = "recovery"
command = 
time = 1

;CARICA COSMO
[Command]
name = "charge"
command = /b
time = 1

;Settimo Senso
[Command]
name = "recover"
command = 
time = 1


[Command]
name = "charge 1"
command = /c
time = 1

;SUPER GUARD
[Command]
name = "mega_block"
command = c
time = 50

;===========================================================================
; Directions + Buttons
;===========================================================================
[Command]
name = "down_a"
command = /$D,a
time = 1


[Command]
name = "down_b"
command = /$D,b
time = 1

;===========================================================================
; Singular Buttons
;===========================================================================
[Command]
name = "a"
command = x
time = 1


[Command]
name = "b"
command = y
time = 1


[Command]
name = "c"
command = z
time = 1


[Command]
name = "x"
command = a
time = 1


[Command]
name = "y"
command = b
time = 1


[Command]
name = "z"
command = c
time = 1

;PROVOCAZIONE
[Command]
name = "start"
command = s
time = 1

;===========================================================================
; Hold Direction
;===========================================================================
[Command]
name = "DU"
command = D, U
time = 10


[Command]
name = "UF"
command = UF
time = 1


[Command]
name = "UB"
command = UB
time = 1


[Command]
name = "DUF"
command = D, UF
time = 10


[Command]
name = "DUB"
command = D, UB
time = 10


[Command]
name = "up"
command = U
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

;-----------------------
;superguard
[Command]
name = "holdback3"
command = /$B   
time = 50

;------------------------
;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\|State Entry|/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
[Statedef -1]

;===========================================================================
; SPECIAL
;===========================================================================
;------------------- Combos Agregados --------------------------------------
;Trapasso
[State -1]
type = ChangeState
value = 2010
triggerall = command = "Trapasso"
triggerall = StateNo != 73000
triggerall = StateNo != 83000
triggerall = StateNo != 7377
triggerall = StateNo != 11330
triggerall = StateNo != 1340
triggerall = StateNo != 1350
triggerall = StateNo != 1360
triggerall = StateNo != 1370
triggerall = StateNo != 1380
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = stateno != 7377
trigger2 = stateno != 11330
trigger2 = movecontact
;--------------------
;Triple golpe
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = StateNo != 73000
triggerall = StateNo != 83000
triggerall = StateNo != 7377
triggerall = StateNo != 11330
triggerall = StateNo != 1340
triggerall = StateNo != 1350
triggerall = StateNo != 1360
triggerall = StateNo != 1370
triggerall = StateNo != 1380
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = stateno != 7377
trigger2 = stateno != 11330
trigger2 = movecontact


;--------------------
;Combo
[State -1]
type = ChangeState
value = 30000
triggerall = StateNo != 73000
triggerall = StateNo != 83000
;triggerall = StateNo != 2203
;triggerall = StateNo != 2011
;triggerall = StateNo != 1800
;triggerall = StateNo != 2000
;triggerall = StateNo != 3100
triggerall = StateNo != 7377
triggerall = StateNo != 11330
triggerall = StateNo != 1340
triggerall = StateNo != 1350
triggerall = StateNo != 1360
triggerall = StateNo != 1370
triggerall = StateNo != 1380
triggerall = command = "Combo"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = stateno != 7377
trigger2 = stateno != 11330
trigger2 = movecontact
;-----------------------
;Triple golpe
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 33333
triggerall = StateNo != 73000
triggerall = StateNo != 83000
triggerall = StateNo != 7377
triggerall = StateNo != 11330
triggerall = StateNo != 1340
triggerall = StateNo != 1350
triggerall = StateNo != 1360
triggerall = StateNo != 1370
triggerall = StateNo != 1380
triggerall = command = "TripleKFPalm3"
triggerall = power >= 2000
trigger1 = statetype = S
;trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = stateno != 7377
trigger2 = stateno != 11330
trigger2 = movecontact


;recharge du cosmos
;[State -1]
;type = ChangeState
;value = 2222
;triggerall = command = "cosmos"
;trigger1 = power <= 6000
;trigger1 = statetype != A
;trigger1 = ctrl = 1
;----------------------------- Exclamacion de Atena ---------------------------------

;Exclamacion de Atena
[State -1]
type = ChangeState
value = 6262
triggerall = command = "Exclamacion" ;
triggerall = power >= 6000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [1104, 1105]);Cancel ground moves
trigger2 = movecontact
;-----------------------------------
;RELANPAGO
[State -1]
type = ChangeState
value = 38100
triggerall = command = "RELANPAGO"
triggerall = var(1) = 0
triggerall = power >= 4000
trigger1 = statetype != A
trigger1 = ctrl = 1


;-----------------------------------


;---------------------------
;1000 pugni
[State -1, [state -1]
type = changestate
value = 32000
triggerall = var(1) = 0
triggerall = (command = "1000pugni") && (power >= 2000)
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = [200,500]) && (movecontact)) || ((stateno = [1000,2000]) && (movecontact))
trigger1 = statetype != A


;time = 45
;-------------------------------
;tringolo d'oro
[State -1, [State -1]
type = ChangeState
value = 70000
triggerall = command = "Triangolo"
triggerall = var(1) = 0
triggerall = power >= 5000
trigger1 = statetype != A
trigger1 = ctrl = 1


;-------------------------------
;Potere del Dragone
[State -1, [State -1]
type = ChangeState
value = 40000
triggerall = command = "dragon power"
triggerall = var(1) = 0
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1


;------------------------------
;explosion galactica A
[State -1, [State -1]
type = ChangeState
value = 65000
triggerall = command = "esplosione galactica A"
triggerall = var(1) = 0
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1


;------------------------------
;explosion galactica B
[State -1, [State -1]
type = ChangeState
value = 60000
triggerall = command = "esplosione galactica B"
triggerall = var(1) = 1
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1


;------------------------------
; mega explosion galactica
[State -1, [State -1]
type = ChangeState
value = 80000
triggerall = command = "mega esplosione galactica"
triggerall = var(1) = 1
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1


;------------------------------
;Apocalise
[State -1, [State -1]
type = ChangeState
value = 65500
triggerall = command = "apocalise"
triggerall = var(1) = 1
triggerall = life <= 500
triggerall = p2life >=500
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1
 


;ricarica cosmo A
[State -1, [State -1]
type = ChangeState
value = 730000
triggerall = var(1) = 0
triggerall = statetype = S
triggerall = Power < 6000
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"


;ricarica cosmo B
[State -1, [State -1]
type = ChangeState
value = 730001
triggerall = var(1) = 1
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"


;Settimo Senso A
[State -1, [State -1]
type = ChangeState
value = 29990
triggerall = var(1) = 0
triggerall = command = "recover"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1


;Settimo Senso B
[State -1, [State -1]
type = ChangeState
value = 29999
triggerall = var(1) = 1
triggerall = command = "recover"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1


;Fireball Air (Strong)
[State -1, [State -1]
type = ChangeState
value = 1110
triggerall      = command = "AIRfireball"
triggerall = var(1) = 0
triggerall      = statetype = A
trigger1        = ctrl = 1
trigger2        = (stateno = [600,690]) && (Movecontact)
trigger3        = (stateno = 50) && (time > 15)


;Fireball Air B (Strong)
[State -1, [State -1]
type = ChangeState
value = 1111
triggerall      = command = "AIRfireball"
triggerall = var(1) = 1
triggerall      = statetype = A
trigger1        = ctrl = 1
trigger2        = (stateno = [600,690]) && (Movecontact)
trigger3        = (stateno = 50) && (time > 15)


;Fireball (light)
[State -1, [State -1]
type = ChangeState
value = 131200
triggerall = command = "fireball"
triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1


;Fireball B (light)
[State -1, [State -1]
type = ChangeState
value = 131210
triggerall = command = "fireball"
triggerall = var(1) = 1
trigger1 = statetype != A
trigger1 = ctrl = 1


;Fireball (medium)
[State -1, [State -1]
type = ChangeState
value = 121200
triggerall = command = "fireball2"
triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1


;Fireball B (medium)
[State -1, [State -1]
type = ChangeState
value = 121210
triggerall = command = "fireball2"
triggerall = var(1) = 1
trigger1 = statetype != A
trigger1 = ctrl = 1


;Fireball (Strong)
[State -1, [State -1]
type = ChangeState
value = 101200
triggerall = command = "fireball3"
triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1


;Fireball B (Strong)
[State -1, [State -1]
type = ChangeState
value = 101210
triggerall = command = "fireball3"
triggerall = var(1) = 1
trigger1 = statetype != A
trigger1 = ctrl = 1
     


;100 calci
[State -1, [State -1]
type = ChangeState
value = 14505
triggerall = var(1) = 0
triggerall = command = "100calci"
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = stateno = 235
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 245
trigger5 = movecontact
trigger6 = stateno = 430
trigger6 = movecontact
trigger7 = stateno = 440
trigger7 = movecontact


;100 calci
[State -1, [State -1]
type = ChangeState
value = 14506
triggerall = var(1) = 1
triggerall = command = "100calci"
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = stateno = 235
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 245
trigger5 = movecontact
trigger6 = stateno = 430
trigger6 = movecontact
trigger7 = stateno = 440
trigger7 = movecontact

;--------------
;C THROW (close dir+Strong Punch)
[State -1]
type = ChangeState
value = 800
triggerall = Var(50) != 1
trigger1 = statetype = S && ctrl = 1 && p2bodydist X < 10 ;Near P2
trigger1 = (command = "fwd_c") && stateno != 100 && (p2statetype = S || p2statetype = C) && p2movetype != H

;D THROW (close dir+Strong Kick)
[State -1]
type = ChangeState
value = 850
triggerall = Var(50) != 1
trigger1 = statetype = S && ctrl = 1 && p2bodydist X < 10 ;Near P2
trigger1 = (command = "fwd_d") && stateno != 100 && (p2statetype = S || p2statetype = C)  && p2movetype != H


;===========================================================================
; Basics
;===========================================================================
;---------------------------------------------------------------------------
; RunFwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = ((command = "FF") && (statetype = S) && (ctrl = 1))


;---------------------------------------------------------------------------
; Hop Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = ((command = "BB") && (statetype = S) && (ctrl = 1))


;---------------------------------------------------------------------------
;Mega block
[State -1, [State -1]
type = ChangeState
value = 1400
triggerall = command = "mega_block"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl = 1


;--------------------------
; Stand X
[State -1, Stand X]
type = ChangeState
value = 200
triggerall = var(1) = 0 
triggerall = ((command = "x") && (command != "holddown"))
trigger1 = ((statetype = S && ctrl = 1)) || ((stateno = [201,210]) && (movecontact)) 



[State -1, Stand X]
type = ChangeState
value = 201
triggerall = var(1) = 1 
triggerall = ((command = "x") && (command != "holddown"))
trigger1 = ((statetype = S && ctrl = 1)) || ((stateno = [201,210]) && (movecontact)) 


;---------------------------------------------------------------------------
; Stand Y
[State -1, Stand Y]
type = ChangeState
value = 210
triggerall = var(1) = 0 
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 201) ||(stateno = 221)
trigger2 = movecontact&& time > 8



[State -1, Stand Y]
type = ChangeState
value = 211
triggerall = var(1) = 1 
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 201) ||(stateno = 221)
trigger2 = movecontact&& time > 8


;---------------------------------------------------------------------------
; Stand Z
[State -1, Stand Z 2]
type = ChangeState
value = 220
triggerall = var(1) = 0 
triggerall = ((command = "z") && (command != "holddown"))
trigger1 = ((statetype = S && ctrl = 1)) || ((stateno = [200,212]) && (movecontact)) 



[State -1, Stand Z 2]
type = ChangeState
value = 221
triggerall = var(1) = 1 
triggerall = ((command = "z") && (command != "holddown"))
trigger1 = ((statetype = S && ctrl = 1)) || ((stateno = [200,212]) && (movecontact)) 


;---------------------------------------------------------------------------
; Stand A
[State -1, Stand A]
type = ChangeState
value = 230
triggerall = var(1) = 0 
triggerall = ((command = "a") && (command != "holddown"))
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = 200) && (movecontact))


; Stand A
[State -1, Stand A]
type = ChangeState
value = 231
triggerall = var(1) = 1 
triggerall = ((command = "a") && (command != "holddown"))
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = 200) && (movecontact))


;---------------------------------------------------------------------------
; Stand B
[State -1, Stand B]
type = ChangeState
value = 240
triggerall = var(1) = 0 
triggerall = ((command = "b") && (command != "holddown"))
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = [201, 210]) && (movecontact))


; Stand B
[State -1, Stand B]
type = ChangeState
value = 241
triggerall = var(1) = 1 
triggerall = ((command = "b") && (command != "holddown"))
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = [201, 210]) && (movecontact))


;---------------------------------------------------------------------------
; Stand C
[State -1, Stand C]
type = ChangeState
value = 250
triggerall = var(1) = 0 
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = [201,211]) && (movecontact))


; Stand C
[State -1, Stand C]
type = ChangeState
value = 251
triggerall = var(1) = 1 
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = [201,211]) && (movecontact))


;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = ((statetype != A) && (ctrl = 1))


;---------------------------------------------------------------------------
; Crouch X
[State -1, Crouch X]
type = ChangeState
value = 400
triggerall = var(1) = 0 
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


; Crouch X
[State -1, Crouch X]
type = ChangeState
value = 401
triggerall = var(1) = 1 
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
; Crouch Y
[State -1, Crouch Y]
type = ChangeState
value = 410
triggerall = var(1) = 0 
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


; Crouch Y
[State -1, Crouch Y]
type = ChangeState
value = 411
triggerall = var(1) = 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
; Crouch Z
[State -1, Crouch Z]
type = ChangeState
value = 420
triggerall = var(1) = 0 
triggerall = ((command = "z") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1)) || ((stateno = [400,401]) && (movecontact))|| ((stateno = [410,411]) && (movecontact)) 


; Crouch Z
[State -1, Crouch Z]
type = ChangeState
value = 421
triggerall = var(1) = 1
triggerall = ((command = "z") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1)) || ((stateno = [400,401]) && (movecontact))|| ((stateno = [410,411]) && (movecontact))


;---------------------------------------------------------------------------
; Crouch A
[State -1, Crouch A]
type = ChangeState
value = 430
triggerall = var(1) = 0 
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl



[State -1, Crouch A]
type = ChangeState
value = 431
triggerall = var(1) = 1 
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
; Crouch B
[State -1, Crouch B]
type = ChangeState
value = 440
triggerall = var(1) = 0 
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl



[State -1, Crouch B]
type = ChangeState
value = 441
triggerall = var(1) = 1 
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
; Crouch C
[State -1, Crouch C]
type = ChangeState
value = 450
triggerall = var(1) = 0 
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl



[State -1, Crouch C]
type = ChangeState
value = 451
triggerall = var(1) = 1 
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
; Jump X
[State -1, Jump X]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (movecontact)) 
 


;---------------------------------------------------------------------------
; Jump Y
[State -1, Jump Y]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
; Jump Z
[State -1, Jump Z]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (movecontact)) 


;---------------------------------------------------------------------------
; Jump A
[State -1, Jump A]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
; Jump B
[State -1, Jump B]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
; Jump C
[State -1, Jump C]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl


