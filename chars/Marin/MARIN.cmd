; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;               command = ~30
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their engine.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands are given below. Delete, add, or modify as you wish.


;-| Super Motions |--------------------------------------------------------
[Command]
name = "SuperGiro"
command = DF, B, x
time = 30
[Command]
name = "SuperGiro"
command = DF, B, y
time = 30
[Command]
name = "SuperGiro"
command = DF, B, z
time = 30

[Command]
name = "SuperGiroPulando"
command = DF, B, c
time = 30
[Command]
name = "SuperGiroPulando"
command = DF, B, b
time = 30
[Command]
name = "SuperGiroPulando"
command = DF, B, a
time = 30

[Command]
name = "PizzaPower"
command = DB, F, x
time = 30
[Command]
name = "PizzaPower"
command = DB, F, y
time = 30
[Command]
name = "PizzaPower"
command = DB, F, z
time = 30

[Command]
name = "Cowabanga"
command = DB, F, c
time = 30
[Command]
name = "Cowabanga"
command = DB, F, b
time = 30
[Command]
name = "Cowabanga"
command = DB, F, a
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "Giro_x"
command = ~D, DB, B, x

[Command]
name = "Giro_y"
command = ~D, DB, B, y

[Command]
name = "Giro_z"
command = ~D, DB, B, z

[Command]
name = "GiroPulando_x"
command = ~F, D, DF, F, x
time = 20

[Command]
name = "GiroPulando_y"
command = ~F, D, DF, F, y
time = 20

[Command]
name = "GiroPulando_z"
command = ~F, D, DF, F, z
time = 20

[Command]
name = "Cut_x"
command = ~D, DF, F, x
time = 20

[Command]
name = "Cut_y"
command = ~D, DF, F, y
time = 20

[Command]
name = "Cut_z"
command = ~D, DF, F, z
time = 20

[Command]
name = "Barriga"
command = /D, y
time = 10

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
; Super Giro
;=================================
[State -1, Super Giro]
type = ChangeState
value = 1050
triggerall = command = "SuperGiro"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
;trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = statetype != A
trigger3 = movecontact
trigger4 = statetype != A
trigger4 = movecontact

;=================================
; Super Giro Pulando
;=================================
[State -1, Giro Pulando Forte]
type = ChangeState
value = 1150
triggerall = command = "SuperGiroPulando"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;=================================
; Pizza Power
;=================================
[State -1, Pizzar Power]
type = ChangeState
value = 1250
triggerall = command = "PizzaPower"
triggerall = power >= 2000
triggerall = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;=================================
; Cowabanga
;=================================
[State -1, Cowabanga]
type = ChangeState
value = 1300
triggerall = command = "Cowabanga"
triggerall = power >= 2000
triggerall = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;===================================
; Giro Simples Fraco
;===================================
[State -1, Giro_x]
type = ChangeState
value = 1000
triggerall = command = "Giro_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;===================================
; Giro Simples Medio
;===================================
[State -1, Giro_y]
type = ChangeState
value = 1001
triggerall = command = "Giro_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;===================================
; Giro Simples Forte
;===================================
[State -1, Giro_z]
type = ChangeState
value = 1002
triggerall = command = "Giro_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;=================================
; Giro Pulando Fraco
;=================================
[State -1, Giro Pulando Fraco]
type = ChangeState
value = 1100
triggerall = command = "GiroPulando_x"
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;=================================
; Giro Pulando Medio
;=================================
[State -1, Giro Pulando Medio]
type = ChangeState
value = 1101
triggerall = command = "GiroPulando_y"
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;=================================
; Giro Pulando Forte
;=================================
[State -1, Giro Pulando Forte]
type = ChangeState
value = 1102
triggerall = command = "GiroPulando_z"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;=================================
; Barriga
;=================================
[State -1, Barriga]
type = ChangeState
value = 660
triggerall = command = "Barriga"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;=================================
; Cut Fraco
;=================================
[State -1, Cut Fraco]
type = ChangeState
value = 1200
triggerall = command = "Cut_x"
;triggerall = power >= 1000
triggerall = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;=================================
; Cut Medio
;=================================
[State -1, Cut Fraco]
type = ChangeState
value = 1201
triggerall = command = "Cut_y"
;triggerall = power >= 1000
triggerall = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;=================================
; Cut Forte
;=================================
[State -1, Cut Fraco]
type = ChangeState
value = 1202
triggerall = command = "Cut_z"
;triggerall = power >= 1000
triggerall = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact


;=====================================
;Run Fwd
;=====================================
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;=====================================
;Run Back
;=====================================
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;=====================================
;Kung Fu Throw
;=====================================
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "z"
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

;=====================================
;Stand Light Punch
;=====================================
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 7

;=====================================
;Stand Medio Punch
;=====================================
[State -1, Stand Medio Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;=====================================
;Stand Strong Punch
;=====================================
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;=====================================
;Stand Light Kick
;=====================================
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;=====================================
;Stand Medio Kick
;=====================================
[State -1, Stand Light Kick]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;=====================================
;Standing Strong Kick
;=====================================
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;=====================================
;Taunt
;=====================================
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;=====================================
;Crouching Light Punch
;=====================================
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;=====================================
;Crouching Medio Punch
;=====================================
[State -1, Crouching Medio Punch]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;=====================================
;Crouching Strong Punch
;=====================================
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;====================================
;Crouching Light Kick
;====================================
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;====================================
;Crouching Medio Kick
;====================================
[State -1, Crouching Medio Kick]
type = ChangeState
value = 450
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;====================================
;Crouching Strong Kick
;====================================
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;====================================
;Jump Light Punch
;====================================
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;====================================
;Jump Medio Punch
;====================================
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;====================================
;Jump Strong Punch
;====================================
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;====================================
;Jump Light Kick
;====================================
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;====================================
;Jump Medio Kick
;====================================
[State -1, Jump Medio Kick]
type = ChangeState
value = 650
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;====================================
;Jump Strong Kick
;====================================
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact


;==============================================================
;===========================================================================
;---------------------------------------------------------------------------
