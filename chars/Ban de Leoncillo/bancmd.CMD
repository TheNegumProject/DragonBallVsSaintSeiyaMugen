;-| Super Motions |--------------------------------------------------------

;poing du lion
[Command]
name = "poing du lion"
command = B, DB, D, DF ,F, a
time = 30

;poing du lion2
[Command]
name = "poing du lion2"
command = B, DB, D, DF ,F, b
time = 30


;-| Special Motions |------------------------------------------------------

[Command]
name = "pugno_corsa1"
command = D,DB,D, x
time = 20

[Command]
name = "pugno_corsa2"
command = D,DB,D, y
time = 20

[Command]
name = "pugno_corsa3"
command = D,DB,D, z
time = 20

;----------------------------------------------

[Command]
name = "lionfire"
command = D,DF,F, a
time = 20

[Command]
name = "lionfire"
command = D,DF,F, b
time = 20

[Command]
name = "lionfire"
command = D,DF,F, c
time = 20

;----------------------------------------------

[Command]
name = "1000graffi"
command = D,DB,B, a
time = 20 

[Command]
name = "1000graffib"
command = D,DB,B, b
time = 20

[Command]
name = "1000graffic"
command = D,DB,B, c
time = 20


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
name = "cosmo"
command = b+c
time = 1

[Command]
name = "lionfire"
command = a+b


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
name = "launcher"
command = /F,z
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


[Command]
name = "hold_x"
command = /x
time= 1

[Command]
name = "hold_y"
command = /y
time= 1

[Command]
name = "hold_z"
command = /z
time= 1

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]


;===========================================================================
;---------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;poing du lion
[State -1]
type = ChangeState
value = 2600
triggerall = command = "poing du lion"
triggerall = power >= 2000
trigger1 = statetype = S || statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;poing du lion2
[State -1]
type = ChangeState
value = 3000
triggerall = command = "poing du lion2"
triggerall = power >= 2000
trigger1 = statetype = S || statetype != A
trigger1 = ctrl = 1
;--------------------------------------------------------------------------
;Launcher
[State -1]
type = ChangeState
value = 405
triggerall = command = "launcher"
triggerall = P2BodyDist X < 40
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;"Pugno in corsa"
[State -1, charge]
type = ChangeState
value = 1000
triggerall = command = "pugno_corsa1"
triggerall = command != "holddown"
trigger1 = statetype = S || statetype != A
trigger1 = ctrl

; "Pugno in corsa 2"
[State -1, charge]
type = ChangeState
value = 1010
triggerall = command = "pugno_corsa2"
triggerall = command != "holddown"
trigger1 = statetype = S || statetype != A
trigger1 = ctrl

; "Pugno in corsa 3"
[State -1, charge]
type = ChangeState
value = 1015
triggerall = command = "pugno_corsa3"
triggerall = command != "holddown"
trigger1 = statetype = S || statetype != A
trigger1 = ctrl


; "1000 Graffi"
[State -1, charge]
type = ChangeState
value = 1100
triggerall = command = "1000graffi"
triggerall = command != "holddown"
trigger1 = statetype = S || statetype != A
trigger1 = ctrl

; "1000 Graffi"
[State -1, charge]
type = ChangeState
value = 1110
triggerall = command = "1000graffib"
triggerall = command != "holddown"
trigger1 = statetype = S || statetype != A
trigger1 = ctrl

; "1000 Graffi"
[State -1, charge]
type = ChangeState
value = 1120
triggerall = command = "1000graffic"
triggerall = command != "holddown"
trigger1 = statetype = S || statetype != A
trigger1 = ctrl
trigger2 = stateno = 250
trigger2 = movehit


; "1000 Graffi"
[State -1, charge]
type = ChangeState
value = 1200
triggerall = command = "lionfire"
triggerall = command != "holddown"
trigger1 = statetype = S || statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Carica Cosmo
[State -1, Carica cosmo -_-]
type = ChangeState
value = 24000
triggerall = command = "cosmo"
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = stateno !=2401
;===========================================================================
;---------------------------------------------------------------------------
[State -1, charge1]
type = ChangeState
value = 705
triggerall = command = "hold_x"
triggerall = command =  "hold_y"
triggerall = life < 1000
trigger1 = statetype = S || statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;ŽO—óƒJƒ“ƒt[“Ë‚«ŽèiƒQ[ƒWƒŒƒxƒ‹‚Pj


;===========================================================================
;---------------------------------------------------------------------------
;Fast Kung Fu Knee (1/3 super bar)
;‘¬‚¢ƒJƒ“ƒt[R‚èiƒQ[ƒWƒŒƒxƒ‹‚P^‚Rj


;---------------------------------------------------------------------------
;Light Kung Fu Knee
;ƒJƒ“ƒt[R‚èiŽãj



;---------------------------------------------------------------------------
;Strong Kung Fu Knee
;ƒJƒ“ƒt[R‚èiŽãj




;---------------------------------------------------------------------------
;presa
[State -1, charge1]
type = ChangeState
value = 900
triggerall = command = "holdfwd"
triggerall = command =  "c"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2statetype = S
trigger1 = P2bodydist X <= 10
trigger1 = P2movetype!= H
trigger1 = ctrl = 1


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;Œã‘Þƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------



;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;—§‚¿Žãƒpƒ“ƒ`
[State -1, Stand Light Punch]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Stand Strong Punch
;—§‚¿‹­ƒpƒ“ƒ`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = movehit
trigger3 = stateno = 230
trigger3 = movehit


;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;;Stand Strong kick
;-§‚¿‹­ƒpƒ“ƒ`
[State -1, Stand Strong Punch]
type = ChangeState
value = 2100
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = movehit
trigger3 = stateno = 230
trigger3 = movehit

;---------------------------------------------------------------------------
;Stand Light Kick
;—§‚¿ŽãƒLƒbƒN
[State -1, Stand Light Kick]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Standing Strong Kick
;—§‚¿‹­ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movehit


;---------------------------------------------------------------------------

;Standing Fierce Kick
;-§‚¿‹-ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movehit
;------------------------------------------------------------------------------

; Uppercut
[State -1, Uppercut]
type = ChangeState
value = 260
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = movehit
trigger3 = stateno = 210
trigger3 = movehit
trigger4 = stateno = 310
trigger4 = movehit
trigger5 = stateno = 230
trigger5 = movehit

;---------------------------------------------------------------------------
;Crouching Light Punch
;‚µ‚á‚ª‚ÝŽãƒpƒ“ƒ`
[State -1, Crouching Light Punch]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;‚µ‚á‚ª‚Ý‹­ƒpƒ“ƒ`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
;---------------------------------------------------------------------------
;Crouching Strong Punch
;‚µ‚á‚ª‚Ý‹­ƒpƒ“ƒ`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 430
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)

;---------------------------------------------------------------------------
;Crouching Light Kick
;‚µ‚á‚ª‚ÝŽãƒLƒbƒN
[State -1, Crouching Light Kick]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl  
trigger2 = (stateno = 400) || (stateno = 430)


;---------------------------------------------------------------------------
;Crouching Strong Kick
;‚µ‚á‚ª‚Ý‹­ƒLƒbƒN
[State -1, Crouching Strong Kick]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;‚µ‚á‚ª‚Ý‹­ƒLƒbƒN
[State -1, Crouching Strong Kick]
type = ChangeState
value = 410
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)

;---------------------------------------------------------------------------
;Jump Light Punch
;‹ó’†Žãƒpƒ“ƒ`
[State -1, Jump Light Punch]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 640
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------

;Jump Strong Kick
;‹ó’†‹-ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
;‹ó’†‹­ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
;‹ó’†‹­ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 610
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

; Taunt
[State -1, Taunt]
type = ChangeState
value = 1955
triggerall = command = "start"
trigger1 = ((statetype != A) && (ctrl = 1))
