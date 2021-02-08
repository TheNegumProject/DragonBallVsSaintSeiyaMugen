
;Command File for Kanon by TonyADV

;===========================================================================
; Super Motions
;===========================================================================

;CAMBIA STATO
[Command]
name = "switch"
command = c+z
time = 1

;RI-CAMBIA STATO
[Command]
name = "switch"
command = c+z
time = 1


;1000 PUGNI
[Command]
name = "1000pugni"
command = D,B,c
time = 30

;TRIANGOLO D'ORO
[Command]
name = "Triangolo"
command = B,D,c
time = 30

;POTERE DEL DRAGONE
[Command]
name = "dragon power"
command = F,D,c
time = 30

;GEMINI CLOTH ESPLOSIONE GALATICA
[Command]
name = "mega esplosione galactica"
command =  F,D,a
time = 30

;ESPLOSIONE GALATICA
[Command]
name = "esplosione galactica A"
command =  B,D,a
time = 30

;KANON ESPLOSIONE GALATICA
[Command]
name = "esplosione galactica B"
command = D,B,a
time = 30

;APOCALISE
[Command]
name = "apocalise"
command =  D,b
time = 30

;===========================================================================
; Special Motions
;===========================================================================

;FIREBALL LIGHT
[command]
name = "fireball"
command = ~D, DF, F, a
time = 25 

;FIREBALL MEDIUM
[command]
name = "fireball2"
command = ~D, DF, F, b
time = 25 

;FIREBALL STRONG
[command]
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
command = ~D, DF, F, x
time = 20

;100 Calci
[Command]
name = "100calci"
command = ~D, DF, F, y
time = 20

;100 Calci
[Command]
name = "100calci"
command = ~D, DF, F, z
time = 20

;===========================================================================
; Double Tap Motions
;===========================================================================
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;===========================================================================
; 2/3 button combinations
;===========================================================================
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;CARICA COSMO
[Command]
name = "charge"
command = /b
time= 1

;Settimo Senso
[Command]
name = "recover"
command = a+x
time = 1

[Command]
name = "charge 1"
command= /c
time= 1

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

;blademodeon
[State -1]
type = changestate
value = 500
triggerall = command = "switch"
triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
      
;blademodeoff
[State -1]
type = changestate
value = 501
triggerall = command = "switch"
triggerall = var(1) = 1
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------

;1000 pugni
[state -1]
type = changestate
value = 32000
triggerall = var(1) = 0
triggerall = (command = "1000pugni") && (power >= 2000)
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = [200,500]) && (MoveContact)) || ((stateno = [1000,2000]) && (MoveContact))
trigger1 = statetype != A
;time = 45

;-------------------------------

;tringolo d'oro
[State -1]
type = ChangeState
value = 70000
triggerall = command = "Triangolo"
triggerall = var(1) = 1
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

;-------------------------------

;Potere del Dragone
[State -1]
type = ChangeState
value = 40000
triggerall = command = "dragon power"
triggerall = var(1) = 0
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1

;------------------------------

;explosion galactica A
[State -1]
type = ChangeState
value = 65000
triggerall = command = "esplosione galactica A"
triggerall = var(1) = 0
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

;------------------------------

;explosion galactica B
[State -1]
type = ChangeState
value = 60000
triggerall = command = "esplosione galactica B"
triggerall = var(1) = 1
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1


;------------------------------

; mega explosion galactica
[State -1]
type = ChangeState
value = 80000
triggerall = command = "mega esplosione galactica"
triggerall = var(1) = 1
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1


;------------------------------

;Apocalise
[State -1]
type = ChangeState
value = 65500
triggerall = command = "apocalise"
triggerall = var(1) = 1
triggerall = life <= 500
triggerall = p2life >=500
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1



;===========================================================================
; SUPER
;===========================================================================
;--------------------------------| Description |----------------------------
 
;ricarica cosmo A
[State -1]
type = ChangeState
value = 730000
triggerall = var(1) = 0
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"

;ricarica cosmo B
[State -1]
type = ChangeState
value = 730001
triggerall = var(1) = 1
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"

;Settimo Senso A
[State -1]
type = ChangeState
value = 29990
triggerall = var(1) = 0
triggerall = command = "recover"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

;Settimo Senso B
[State -1]
type = ChangeState
value = 29999
triggerall = var(1) = 1
triggerall = command = "recover"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1


;Fireball Air (Strong)
[State -1]
type            = ChangeState
value           = 1110
triggerall      = command = "AIRfireball"
;triggerall      = Var(4) != 1
triggerall = var(1) = 0
triggerall      = statetype = A
trigger1        = ctrl = 1
trigger2        = (stateno = [600,690]) && (Movecontact)
trigger3        = (stateno = 50) && (time > 15)

;Fireball Air B (Strong)
[State -1]
type            = ChangeState
value           = 1111
triggerall      = command = "AIRfireball"
;triggerall      = Var(4) != 1
triggerall = var(1) = 1
triggerall      = statetype = A
trigger1        = ctrl = 1
trigger2        = (stateno = [600,690]) && (Movecontact)
trigger3        = (stateno = 50) && (time > 15)


;Fireball (light)
[State -1]
type = ChangeState
value = 131200
triggerall = command = "fireball"
triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1

;Fireball B (light)
[State -1]
type = ChangeState
value = 131210
triggerall = command = "fireball"
triggerall = var(1) = 1
trigger1 = statetype != A
trigger1 = ctrl = 1


;Fireball (medium)
[State -1]
type = ChangeState
value = 121200
triggerall = command = "fireball2"
triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1

;Fireball B (medium)
[State -1]
type = ChangeState
value = 121210
triggerall = command = "fireball2"
triggerall = var(1) = 1
trigger1 = statetype != A
trigger1 = ctrl = 1


;Fireball (Strong)
[State -1]
type = ChangeState
value = 101200
triggerall = command = "fireball3"
triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1

;Fireball B (Strong)
[State -1]
type = ChangeState
value = 101210
triggerall = command = "fireball3"
triggerall = var(1) = 1
trigger1 = statetype != A
trigger1 = ctrl = 1
     

;100 calci
[State -1]
type = ChangeState
value = 14505
triggerall = var(1) = 0
triggerall = command = "100calci"
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = stateno = 230
trigger2 = MoveContact
trigger3 = stateno = 235
trigger3 = MoveContact
trigger4 = stateno = 240
trigger4 = MoveContact
trigger5 = stateno = 245
trigger5 = MoveContact
trigger6 = stateno = 430
trigger6 = MoveContact
trigger7 = stateno = 440
trigger7 = MoveContact

;100 calci
[State -1]
type = ChangeState
value = 14506
triggerall = var(1) = 1
triggerall = command = "100calci"
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = stateno = 230
trigger2 = MoveContact
trigger3 = stateno = 235
trigger3 = MoveContact
trigger4 = stateno = 240
trigger4 = MoveContact
trigger5 = stateno = 245
trigger5 = MoveContact
trigger6 = stateno = 430
trigger6 = MoveContact
trigger7 = stateno = 440
trigger7 = MoveContact

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
[State -1]
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
trigger1 = ((statetype = S && ctrl = 1)) || ((stateno = [201,210]) && (MoveContact)) 

[State -1, Stand X]
type = ChangeState
value = 201
triggerall = var(1) = 1 
triggerall = ((command = "x") && (command != "holddown"))
trigger1 = ((statetype = S && ctrl = 1)) || ((stateno = [201,210]) && (MoveContact)) 
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
trigger1 = ((statetype = S && ctrl = 1)) || ((stateno = [200,212]) && (MoveContact)) 

[State -1, Stand Z 2]
type = ChangeState
value = 221
triggerall = var(1) = 1 
triggerall = ((command = "z") && (command != "holddown"))
trigger1 = ((statetype = S && ctrl = 1)) || ((stateno = [200,212]) && (MoveContact)) 

;---------------------------------------------------------------------------
; Stand A
[State -1, Stand A]
type = ChangeState
value = 230
triggerall = var(1) = 0 
triggerall = ((command = "a") && (command != "holddown"))
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = 200) && (MoveContact))

; Stand A
[State -1, Stand A]
type = ChangeState
value = 231
triggerall = var(1) = 1 
triggerall = ((command = "a") && (command != "holddown"))
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = 200) && (MoveContact))


;---------------------------------------------------------------------------
; Stand B
[State -1, Stand B]
type = ChangeState
value = 240
triggerall = var(1) = 0 
triggerall = ((command = "b") && (command != "holddown"))
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = [201, 210]) && (MoveContact))

; Stand B
[State -1, Stand B]
type = ChangeState
value = 241
triggerall = var(1) = 1 
triggerall = ((command = "b") && (command != "holddown"))
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = [201, 210]) && (MoveContact))

;---------------------------------------------------------------------------
; Stand C
[State -1, Stand C]
type = ChangeState
value = 250
triggerall = var(1) = 0 
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = [201,211]) && (MoveContact))

; Stand C
[State -1, Stand C]
type = ChangeState
value = 251
triggerall = var(1) = 1 
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = ((statetype = S) && (ctrl = 1)) || ((stateno = [201,211]) && (MoveContact))

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
trigger1 = ((statetype = C) && (ctrl = 1)) || ((stateno = [400,401]) && (MoveContact))|| ((stateno = [410,411]) && (MoveContact)) 

; Crouch Z
[State -1, Crouch Z]
type = ChangeState
value = 421
triggerall = var(1) = 1
triggerall = ((command = "z") && (command = "holddown"))
trigger1 = ((statetype = C) && (ctrl = 1)) || ((stateno = [400,401]) && (MoveContact))|| ((stateno = [410,411]) && (MoveContact))
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
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (MoveContact)) 

 

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
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (MoveContact)) 


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



