     ____________________________________________
;   |                                            |   ;
;  ||                                            ||  ;
; |||                                            ||| ;
;||||                                            ||||;
; |||                                            ||| ;
;  ||                                            ||  ;
;   |____________________________________________|   ;


;-| Super Motions |--------------------------------------------------------
[Command]
name = "Super 1"
command = ~D, DF, F, D, DF, F, x
time = 25

[Command]
name = "Hyper 1"
command = ~D, DF, F, D, DF, F, y
time = 25

[Command]
name = "Hyper 2"
command = ~D, DF, F, D, DF, F, b
time = 25

[Command]
name = "Super 3"
command = ~D, DB, B, D, DF, F, y
time = 35

;-| Special Motions |------------------------------------------------------

[Command]
name = "Ataque 1"
command = ~D, DF, F, y

[Command]
name = "Ataque 2"
command = ~D, DB, B, y

[Command]
name = "Ataque 3"
command = ~D, DB, B, b

[Command]
name = "Ataque 4"
command = ~F, D, DF, y

[Command]
name = "Striker 1"
command = a+y

[Command]
name = "Striker 2"
command = b+x

[Command]
name = "Arremesso"
command = /F, y

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

[Statedef -1]

;Hyper 2
[State -1, Hyper 2]
type = ChangeState
value = 1600
triggerall = command = "Hyper 2"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = NumHelper(11) = 0
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;Super 1
[State -1, Super 1]
type = ChangeState
value = 1010
triggerall = command = "Super 1"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;Hyper 1
[State -1, Hyper 1]
type = ChangeState
value = 1020
triggerall = command = "Hyper 1"
triggerall = power = 3000
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact

;Striker 1
;[State -1, Striker 1]
;type = ChangeState
;value = 1100
;triggerall = command = "Striker 1"
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ;ground moves
;trigger2 = movecontact

;Ataque 3
[State -1, Ataque 3]
type = ChangeState
value = 1200
triggerall = command = "Ataque 3"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
trigger2 = movecontact

;Ataque 4
[State -1, Ataque 4]
type = ChangeState
value = 1500
triggerall = command = "Ataque 4"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
trigger2 = movecontact

;Ataque 1
[State -1, Ataque 1]
type = ChangeState
value = 1000
triggerall = command = "Ataque 1"
;triggerall = power >= 100
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;Ataque 2
[State -1, Ataque 2]
type = ChangeState
value = 1300
triggerall = command = "Ataque 2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;Striker 2
;[State -1, Striker 2]
;type = ChangeState
;value = 1400
;triggerall = command = "Striker 2"
;triggerall = power >= 300
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact

;Arremesso
[State -1, Arremesso]
type = ChangeState
value = 1030
trigger1 = command = "Arremesso"
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = ctrl
trigger1 = p2bodydist X < 3

;Avançar
[State -1, Avançar]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Soco fraco
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;Soco forte
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;Chute fraco
[State -1, Chute fraco]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 220) && time > 9

;Chute forte
[State -1, Chute forte]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Voadora
[State -1, Voadora]
type = ChangeState
value = 600
triggerall = (command = "a") || (command = "b") || (command = "x") || (command = "y")
trigger1 = statetype = A
trigger1 = ctrl
