;-| Super Motions |--------------------------------------------------------

[Command]
name = "grande"
command = D, DF, F, b
time = 30

[Command]
name = "trans"
command = F, DF, D, DB, B, a
time = 30

[Command]
name = "trans"
command = DB, D, DF, F, c
time = 45


[Command]
name = "FHCFx"
command = D, DF, F, x
time = 25

[Command]
name = "FHCFy"
command = D, DF, F, y
time = 25

[Command]
name = "FHCFz"
command = D, DF, F, z
time = 25

;---------------------------
;Cosmo Charge
;---------------------------
[Command]
name = "charge"
command = /b
time= 1

[Command]
name = "charge 1"
command= /c
time= 1


;-| Special Motions |------------------------------------------------------

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "Combo_de_Garuda"
command = D, DF, F, a



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

;megablock
[Command]
name = "mega_block"
command = c
time = 20

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

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]


;=================================
; Ilusion Galactica
;=================================
[State -1]
type = changestate
value = 3000
triggerall = command = "grande"
triggerall = var(1) = 0
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

;=================================
; Aletazo de Garuda 
;=================================
;
[State -1]
type = ChangeState
value = 10000
triggerall = command = "trans"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

;=================================
; Carga de Cosmo
;=================================
;
[State -1]
type = ChangeState
value = 730000
triggerall = statetype = S
triggerall = Power < 6000
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"


;=================================
; lightning
;=================================
;lightining  x or y or z (FHCF +Punch)
[State -1,]
type = ChangeState
value = 3400 
triggerall = command = "FHCFx"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1,]
type = ChangeState
value = 3401 
triggerall = command = "FHCFy"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1,]
type = ChangeState
value = 3402 
triggerall = command = "FHCFz"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1


;===========================================================================
[State -1, combo5]
type = ChangeState
value = 3880
triggerall = power >= 1000
triggerall = p2stateno != 100
triggerall = p2life > 0
triggerall = p2statetype != A
triggerall = p2stateno != 5050
triggerall = p2stateno != 5100
triggerall = p2stateno != 5101
triggerall = p2stateno != 5110
triggerall = p2stateno != 5120
triggerall = command = "Combo_de_Garuda"
trigger1 = ctrl = 1
trigger1 = statetype = S


;===========================================================================
;---------------------------------------------------------------------------

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
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

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
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Crouch Y
[State -1, Crouch Y]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Crouch Z
[State -1, Crouch Z]
type = ChangeState
value = 420
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





