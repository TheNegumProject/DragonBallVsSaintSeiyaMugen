
;-| Super Motions |--------------------------------------------------------

;never give up
[Command]
name = "bdbddff_2"
command = B, DB, D, DF, F, c
time = 40

;-| Special Motions |------------------------------------------------------

;--------------HCF


[Command]
name = "HCF_x"
command = ~B, DB, D, DF, F, x
time = 30

[Command]
name = "HCF_y"
command = ~B, DB, D, DF, F, y
time = 30

[Command]
name = "HCF_z"
command = ~B, DB, D, DF, F, z
time = 30


[Command]
name = "HCB_a"
command = ~F, DF, D, DB, B, a
time = 30

[Command]
name = "HCB_b"
command = ~F, DF, D, DB, B, b
time = 30

[Command]
name = "HCB_c"
command = ~F, DF, D, DB, B, c
time = 30


;------------------QCB

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z




;-|AI only |----------------------------------------------------------------------



[Command]
name = "AIa"
command = ~D, DF, F, a
time = 2

[Command]
name = "AIb"
command = ~D, DF, F, b
time = 2

[Command]
name = "AIc"
command = ~D, DF, F, c
time = 2

[Command]
name = "AIx"
command = ~D, DF, F, x
time = 2

[Command]
name = "AIy"
command = ~D, DF, F, y
time = 2

[Command]
name = "AIz"
command = ~D, DF, F, z
time = 2


[Command]
name = "AI2a"
command = ~D, DF, F, D, DF, F, a
time = 2

[Command]
name = "AI2b"
command = ~F, D, DF, x 
time = 2

;[Command]
;name = "AI2c"
;command = F, F, F
;time = 2

;[Command]
;name = "AI2d"
;command = B, B, B
;time = 2

[Command]
name = "AI3a"
command = ~F, UF, U, UB, B, a
time = 10

[Command]
name = "AI3b"
command = ~F, UF, U, UB, B, b
time = 10

[Command]
name = "AI3c"
command = ~F, UF, U, UB, B, c
time = 10

[Command]
name = "AI3c"
command = ~F, UF, U, UB, B, x
time = 10

[Command]
name = "AI3c"
command = ~F, UF, U, UB, B, y
time = 10




;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "helper1"
command = a+x
time = 1

[Command]
name = "helper1"
command = b+y
time = 1

[Command]
name = "helper4"
command = c+z
time = 1

[Command]
name = "helper4"
command = b+x
time = 1



[Command]
name = "helper6"
command = a+y
time = 1

[Command]
name = "helper6"
command = b+c
time = 1

[Command]
name = "helper8"
command = y+z
time = 1

[Command]
name = "helper8"
command = x+y+z
time = 1

[Command]
name = "cd"
command = a+b
time = 1

[Command]
name = "xy"
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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
name = "taunt"
command = s
time = 1

;-| Hold Button |-----------------------------------------------------------

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1
[Command]
name = "hold_z"
command = /z
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;------------------ AI ---------------------------
;------------------------------------------------------------------------------------------------------------------------------------



;never give up
[State -1]
type = ChangeState
value = 4200
triggerall = command = "bdbddff_2"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1



;SpecialJ (HCF+ punch )
[State -1,29]
type = ChangeState
value = 1100 + 5*(command = "HCF_y" || command = "HCF_z")
triggerall = command = "HCF_x" || command = "HCF_y" || command = "HCF_z"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact && var(4) != 3
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact && AnimElem = 7,>=0
trigger6 = stateno = 213 && movecontact
trigger7 = stateno = 211 && movecontact && AnimElem = 5,>=1
trigger8 = stateno = 201 && movecontact
trigger9 = stateno = 203 && movecontact && AnimElem = 4,>=0
trigger10 = stateno = 401 && movecontact
trigger11 = stateno = 411 && movecontact
trigger12 = stateno = 214 && movecontact && AnimElem = 7,>=1
trigger13 = stateno = 204 && movecontact
trigger14 = stateno = 240 && movecontact
trigger15 = stateno = 951 && movecontact







;SpecialJ (HCB+kick)
[State -1,31]
type = ChangeState
value = 1090
triggerall = command = "HCB_a" || command = "HCB_b" || command = "HCB_c"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact && var(4) != 3
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact && AnimElem = 7,>=0
trigger6 = stateno = 213 && movecontact
trigger7 = stateno = 211 && movecontact && AnimElem = 5,>=1
trigger8 = stateno = 201 && movecontact
trigger9 = stateno = 203 && movecontact && AnimElem = 4,>=0
trigger10 = stateno = 401 && movecontact
trigger11 = stateno = 411 && movecontact
trigger12 = stateno = 214 && movecontact && AnimElem = 7,>=1
trigger13 = stateno = 204 && movecontact
trigger14 = stateno = 240 && movecontact
trigger15 = stateno = 951 && movecontact



;---------------------------------------------------------------------------
;SpecialB x (QCB+punch)
[State -1,35]
type = ChangeState
value = 1010 + 1*(command = "QCB_y" || command = "QCB_z")
triggerall = command = "QCB_x" || command = "QCB_y" || command = "QCB_z"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact && var(4) != 3
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact && AnimElem = 7,>=0
trigger6 = stateno = 213 && movecontact
trigger7 = stateno = 211 && movecontact && AnimElem = 5,>=1
trigger8 = stateno = 201 && movecontact
trigger9 = stateno = 203 && movecontact && AnimElem = 4,>=0
trigger10 = stateno = 401 && movecontact
trigger11 = stateno = 411 && movecontact
trigger12 = stateno = 214 && movecontact && AnimElem = 7,>=1
trigger13 = stateno = 204 && movecontact
trigger14 = stateno = 240 && movecontact
trigger15 = stateno = 951 && movecontact
;------------------------------------------------
; Taunt
[State -1,37]
type = ChangeState
value = 195
trigger1 = command = "taunt" && command != "holddown" && statetype = S && stateno != 195 && ctrl

;---------------------------------------------------------------------------
;Charge ABC
[State -1,39]
type = null;ChangeState
value = 960
triggerall = power < 3000
trigger1 = command = "hold_a" && command = "hold_b" && command = "hold_x" && statetype = S && ctrl

;---------------------------------------------------------------------------
;Dodge AB
[State -1,40]
type = ChangeState
value = 950
triggerall = command = "xy"
triggerall = stateno != 950
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Dodge AB
[State -1,41]
type = ChangeState
value = 950
triggerall = command = "z"
triggerall = stateno != 950
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Helper Radamanthys
[State -1,48]
type = ChangeState
value = 9520
triggerall = NumHelper(9520) = 0
triggerall = power >= 3000
trigger1 = command = "helper1" || command = "helper4" || command = "helper6" || command = "helper8"
trigger1 = statetype != A && ctrl



;-------------------------------------------
;Jumping_CD
[State -1,50]
type = ChangeState
value = 640
triggerall = command = "cd"
trigger1 = statetype = A && ctrl

;Jumping_CD
[State -1,51]
type = ChangeState
value = 640
triggerall = command = "c"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
;Stand_CD
[State -1,52]
type = ChangeState
value = 240
triggerall = command = "cd"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl

;Stand_CD
[State -1,53]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl

;Fwd a
[State -1,54]
type = ChangeState
value = 214
triggerall = command = "holdfwd"
triggerall = command = "a"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 210 && movecontact && var(4) != 3
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 611 && movecontact && pos y >= 0
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 410 && movecontact && AnimElem = 7,>=0
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 211 && movecontact && AnimElem = 5,>=1
trigger9 = stateno = 203 && movecontact && AnimElem = 4,>=0
trigger10 = stateno = 401 && movecontact



;---------------------------------------------------------------------------
;back a
[State -1,55]
type = ChangeState
value = 214
triggerall = command = "holdback"
triggerall = command = "a"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 210 && movecontact && var(4) != 3
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 611 && movecontact && pos y >= 0
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 410 && movecontact && AnimElem = 7,>=0
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 211 && movecontact && AnimElem = 5,>=1
trigger9 = stateno = 203 && movecontact && AnimElem = 4,>=0
trigger10 = stateno = 401 && movecontact


;---------------------------------------------------------------------------
;Fwd x
[State -1,56]
type = ChangeState
value = 204
triggerall = command = "holdfwd"
triggerall = command = "x"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 210 && movecontact && var(4) != 3
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 410 && movecontact && AnimElem = 7,>=0
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 211 && movecontact && AnimElem = 5,>=1
trigger8 = stateno = 203 && movecontact && AnimElem = 4,>=0
trigger9 = stateno = 401 && movecontact
trigger10 = stateno = 214 && movecontact && AnimElem = 7,>=1

;---------------------------------------------------------------------------
;back x
[State -1,57]
type = ChangeState
value = 204
triggerall = command = "holdback"
triggerall = command = "x"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 210 && movecontact && var(4) != 3
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 410 && movecontact && AnimElem = 7,>=0
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 211 && movecontact && AnimElem = 5,>=1
trigger8 = stateno = 203 && movecontact && AnimElem = 4,>=0
trigger9 = stateno = 401 && movecontact
trigger10 = stateno = 214 && movecontact && AnimElem = 7,>=1

;----------------------------------
;Stand_x
[State -1,58]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 210 && movecontact && var(4) != 3
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 410 && movecontact && AnimElem = 7,>=0
trigger6 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
;Stand_y
[State -1,59]
type = ChangeState
value = 201
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X > 32
trigger1 = statetype = S && ctrl
trigger2 = stateno = 210 && movecontact && var(4) != 3
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 410 && movecontact && AnimElem = 7,>=0
trigger6 = stateno = 400 && movecontact


;---------------------------------------------------------------------------
;Stand_y close
[State -1,60]
type = ChangeState
value = 203
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 32
trigger1 = statetype = S && ctrl
trigger2 = stateno = 210 && movecontact && var(4) != 3
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 410 && movecontact && AnimElem = 7,>=0
trigger6 = stateno = 400 && movecontact


;---------------------------------------------------------------------------
;Stand_a
[State -1,61]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 210 && movecontact && var(4) != 3
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 410 && movecontact && AnimElem = 7,>=0
trigger6 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 211
triggerall = command = "b"
triggerall = command != "holddown"
;triggerall = P2bodydist X > 32
trigger1 = statetype = S && ctrl
trigger2 = stateno = 210 && movecontact && var(4) != 3
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 410 && movecontact && AnimElem = 7,>=0
trigger6 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
;Stand_B close
[State -1]
type = null;ChangeState
value = 213
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 32
trigger1 = statetype = S && ctrl
trigger2 = stateno = 210 && movecontact && var(4) != 3
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 410 && movecontact && AnimElem = 7,>=0
trigger6 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
;Crouch_a
[State -1]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 210 && movecontact && var(4) != 3
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 410 && movecontact && animelem = 7, >0
trigger6 = stateno = 400 && movecontact && animelem = 4, >0

;---------------------------------------------------------------------------
;Crouch_x
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 210 && movecontact && var(4) != 3
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 410 && movecontact && animelem = 7, >0
trigger6 = stateno = 400 && movecontact && animelem = 4, >0


;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 411
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 210 && movecontact && var(4) != 3
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 410 && movecontact && AnimElem = 7,>=0
trigger6 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
;Crouch_y
[State -1]
type = ChangeState
value = 401
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 210 && movecontact && var(4) != 3
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 410 && movecontact && AnimElem = 7,>=0
trigger6 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 610
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact

;---------------------------------------------------------------------------
;Jump_X
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact

;---------------------------------------------------------------------------
;Jump_B forward
[State -1]
type = ChangeState
value = 611
triggerall = vel X != 0
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact

;---------------------------------------------------------------------------
;Jump_B Neutral
[State -1]
type = ChangeState
value = 613
triggerall = vel X = 0
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact

;---------------------------------------------------------------------------
;Jump_y
[State -1]
type = ChangeState
value = 601
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 611 && movecontact
trigger5 = stateno = 613 && movecontact
