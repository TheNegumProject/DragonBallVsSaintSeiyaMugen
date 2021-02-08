;-| Super Motions |--------------------------------------------------------
;Zanne di lupo
[Command]
name = "zanne_di_lupo"
command = D, FD, F, y
time = 30

[Command]
name = "super_level2"
command = D, FD, F, x
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "Flying_graffio"
command = D,B, b

[Command]
name = "graffio_l"
command = B, DB, D,c
time = 30

;---------------------------------------------------------------------------

[Command]
name = "ZanneDelLupacchiottinucciettinellinettino"
command = B, a
time = 15


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
name = "Charge"
command = c+z
time = 1

[Command]
name = "wolf"
command = a+b
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
[State -1]
type = ChangeState
value = 1020
triggerall = Var(1) = 0
triggerall = command = "graffio_l"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 210
trigger3 = movecontact
trigger3 = stateno = 230
trigger4 = movecontact
trigger4 = stateno = 250
trigger5 = movecontact
trigger5 = stateno = 270
trigger6 = movecontact
trigger6 = stateno = 280
trigger7 = movecontact
trigger7 = stateno = 290
trigger8 = movecontact
trigger8 = stateno = 300
trigger9 = movecontact
trigger9 = stateno = 310
trigger10 = movecontact
trigger10 = stateno = 320
trigger11 = movecontact
trigger11 = stateno = 330
trigger12 = movecontact
trigger12 = stateno = 340
trigger13 = movecontact
trigger13 = stateno = 350
trigger14 = movecontact
trigger14 = stateno = 360
trigger15 = movecontact
trigger15 = stateno = 370
trigger16 = movecontact
trigger16 = stateno = 380
trigger17 = movecontact
trigger17 = stateno = 390
trigger18 = movecontact
trigger18 = stateno = 400
trigger19 = movecontact
trigger19 = stateno = 420
trigger20 = movecontact
trigger20 = stateno = 430
trigger21 = movecontact
trigger21 = stateno = 440
trigger22 = movecontact
trigger22 = stateno = 450
trigger23 = movecontact
trigger23 = stateno = 460
trigger24 = movecontact
trigger24 = stateno = 470
trigger25 = movecontact
trigger25 = stateno = 4000
trigger26 = movecontact
trigger26 = stateno = 4010
trigger27 = movecontact
trigger27 = stateno = 4030
trigger28 = movecontact
trigger28 = stateno = 4050
trigger29 = movecontact
trigger29 = stateno = 4060
trigger30 = movecontact
trigger30 = stateno = 4080
;---------------------------------------------------------------------------
;Zanne
[State -1]
type = ChangeState
value = 2199
triggerall = command = "zanne_di_lupo"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Super level 2
[State -1]
type = ChangeState
value = 2100
triggerall = power >= 2000
triggerall = command = "super_level2"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Flying graffio
[State -1]
type = ChangeState
value = 59
triggerall = command = "Flying_graffio"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1031  
trigger2 = movehit
trigger3 = stateno = 1041  
trigger3 = movehit
trigger4 = stateno = 1051  
trigger4 = movehit

;---------------------------------------------------------------------------
;Launcher
[State -1]
type = ChangeState
value = 405
triggerall = command = "launcher"
triggerall = P2BodyDist X < 40
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Wolf
[State -1]
type = ChangeState
value = 1600
triggerall = command = "wolf"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;"ZanneDelLupacchiottinucciettinellinettino"
[State -1, charge]
type = ChangeState
value = 1000
triggerall = command = "ZanneDelLupacchiottinucciettinellinettino"
triggerall = command != "holddown"
trigger1 = statetype = S || statetype != A
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------
[State -1, charge]
type = ChangeState
value = 701
triggerall = command = "Charge"
triggerall = command = "holdback"
trigger1 = statetype = S || statetype != A
trigger1 = ctrl
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
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Stand Strong Punch
;—§‚¿‹­ƒpƒ“ƒ`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Stand Light Kick
;—§‚¿ŽãƒLƒbƒN
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Standing Strong Kick
;—§‚¿‹­ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------

;Standing Strong Kick
;-§‚¿‹-ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Standing Strong Kick
;-§‚¿‹-ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 260
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Crouching Light Punch
;‚µ‚á‚ª‚ÝŽãƒpƒ“ƒ`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;‚µ‚á‚ª‚Ý‹­ƒpƒ“ƒ`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)


;---------------------------------------------------------------------------
;Crouching Light Kick
;‚µ‚á‚ª‚ÝŽãƒLƒbƒN
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
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
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)


;---------------------------------------------------------------------------
;Jump Light Punch
;‹ó’†Žãƒpƒ“ƒ`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------

;Jump Strong Kick
;‹ó’†‹-ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
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
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact


