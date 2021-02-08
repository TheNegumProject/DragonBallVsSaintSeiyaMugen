;Misty/Eris
;by Invincible84, Maxter, Rick PK Liquid Snake

[Command]
name = "qcbp2"
command = a+b+c+x+y+z
time = 30
[Command]
name = "qcbp2"
command = a+c
time = 30

[Command]
name = "qcb_y"
command = b+x
time = 15
[Command]
name = "charge_x"
command = c+x
time = 15

[Command]
name = "bdbddff_2"
command = B, DB, D, DF, F, c
time = 40

[Command]
name = "charge_y"
command = B, DB, D, DF, F, a
time = 30

[Command]
name = "ryuseiken"
command = B, DB, D, DF, F, b
time = 30

[Command]
name = "tornado"
command = D, DF, F, D, DF, F, c
time = 50

[Command]
name = "qcf_a"
command = c
time = 15

[Command]
name = "recover"
command = a+x
time = 30

[Command]
name = "super"
command = x+z
time = 45

[Command]
name = "start"
command = s
time = 1

[Command]
name = "gomitata"
command = D,DF,F,a
time = 15

[Command]
name = "fwd_a"
command = /F, a
time = 1

[Command]
name = "fwd_y"
command = /F, y
time = 1

[Command]
name = "rdp_b"
command = ~30$F, B, z
time = 10

[Command]
name = "throw_2" 
command = /F, c
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
name = "dp_y"
command = F,a+b
time = 15

[Command]
name = "hcf_y"
command = ~B, DB, D, DF, F, y
time = 15

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "dodge"
command = x+a
time = 1

[Command]
name = "superpugno"
command = D, DF, F, b
time = 50

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


[Command]
name = "hold_y"
command = /$y
time = 1


[Command]
name = "hold_z"
command = /$z
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

[Command]
name = "UU"
command = B, a+b
time = 30


[Command]
name = "Quella_cavolo_di_mossa_di_cui_mi_son_scordato_il_nome"
command = ~D,DB,B,a

[Command]
name = "Un_Minuscolo_Upper_A_Caso"
command = ~D,DF,F,b

[Command]
name = "Per_copiare_Ryu_&_King"
command = ~D,DF,F,x

[Statedef -1]
-----------------------------

[State -1]
type = ChangeState
value = 9998
triggerall = command = "Per_copiare_Ryu_&_King"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact


[State -1]
type = ChangeState
value = 9999
triggerall = command = "Per_copiare_Ryu_&_King"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact

[State -1]
type = ChangeState
value = 1100
triggerall = command = "Un_Minuscolo_Upper_A_Caso"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact

;Silver wall
[State -1]
type = ChangeState
value = 1000
triggerall = command = "Quella_cavolo_di_mossa_di_cui_mi_son_scordato_il_nome"
trigger1 = statetype != A
trigger1 = ctrl = 1

;Tornado
[State -1]
type = ChangeState
value = 225
triggerall = command = "tornado"
trigger1 = statetype != A
triggerall = power >= 2000
trigger1 = ctrl = 1

[State -1,jet du lézard]
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
;----------------------------------------


;----------------------------------------

;Button combination
;-------------------------
;-------------------------








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

;---------------------------------------


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


;-----------------------------------------------

;single button
;--------------------------

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
;------------------------------------------




;-----------------------------------
;--------------------------------------


;--------------------------------------

;----------------------------------------

;[State -1]
;type = ChangeState
;value = 1500
;triggerall = command = "dp_x"
;trigger1 = statetype != A
;trigger1 = ctrl = 1
;trigger2 = stateno = 200
;trigger2 = movecontact
;trigger3 = stateno = 230
;trigger3 = movecontact
;trigger4 = stateno = 250
;trigger4 = movecontact
;trigger5 = stateno = 270
;trigger5 = movecontact
;trigger6 = stateno = 400
;trigger6 = movecontact
;trigger7 = stateno = 440
;trigger7 = movecontact
;trigger8 = stateno = 460
;trigger8 = movecontact


;------------------------------------------

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


[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

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
triggerall = command = "gomitata"
trigger1 = statetype != C
trigger1 = statetype != A
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
trigger3 = movecontact


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

[State -1,Taunt]
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

[State -1,Calcio Duro da seduto]
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

[State -1,Pugno forte]
type = ChangeState
value = 1003
triggerall = command = "superpugno"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;placcaggio
;2nd throw
[State -1, Standing Throw]
type = ChangeState
value = 700
triggerall = p2bodydist X < 20
triggerall = command = "throw_2" 
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = (p2statetype = S) 
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 30

