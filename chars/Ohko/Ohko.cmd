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
;               command = /F, a    ;hold fwd while you press a
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
name = "sequence"
command = DB, c
time= 30

[Command]
name = "dodonpa"
command = DB, b
time= 30

[Command]
name = "bakuretsumaha"
command = DB, z
time= 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "fireball_a"
command = ~D,DF,F,y

[Command]
name = "fireball_a"
command = ~D,DF,F,x

[Command]
name = "kiburn"
command = ~D,DF,F,a

[Command]
name = "kiburn"
command = ~D,DF,F,b

[Command]
name = "flashkick"
command = ~D,DB,B,b

[Command]
name = "flashkick"
command = ~D,DB,B,a

[Command]
name = "flashcut"
command = ~D,DB,B,x

[Command]
name = "flashcut"
command = ~D,DB,B,y

[Command]
name = "QCB_y"
command = ~D,DB,B,b

;-----------------

[Command]
name = "QCF_b"
command = ~D,DF,F,b

;-----------------
; QCB
[Command]
name = "QCB_a"
command = ~D,DB,B,a

[Command]
name = "QCB_b"
command = ~D,DB,B,b

[Command]
name = "QCB_x"
command = ~D,DB,B,x

;-----------------
; Uppercut
[Command]
name = "uppercut_a"
command = ~F,D,DF,a

[Command]
name = "uppercut_b"
command = ~F,D,DF,b

[Command]
name = "uppercut_x"
command = ~F,D,DF,x

[Command]
name = "uppercut_y"
command = ~F,D,DF,y

;--------------------
;Charge_Down_up
[Command]
name = "chargedownup_a"
command = ~60$D,U,a
time= 10

[Command]
name = "chargedownup_b"
command = ~60$D,U,b
time= 10

[Command]
name = "chargedownup_x"
command = ~60$D,U,x
time= 10

[Command]
name = "chargedownup_y"
command = ~60$D,U,y
time= 10

;--------------------
;Charge_Back_fwd
[Command]
name = "chargebackfwd_a"
command = ~60$B,F,a
time= 10

[Command]
name = "chargebackfwd_b"
command = ~60$B,F,b
time= 10

[Command]
name = "chargedownup_x"
command = ~60$D,U,x
time= 10

[Command]
name = "chargedownup_y"
command = ~60$D,U,y
time= 10

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F,F
time= 10

[Command]
name = "BB";Required (do not remove)
command = B,B
time= 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time= 1

[Command]
name = "ab"
command = a+b
time= 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time= 1

[Command]
name = "fwd_b"
command = /F,b
time= 1

[Command]
name = "fwd_x"
command = /F,x
time= 1

[Command]
name = "fwd_y"
command = /F,y
time= 1

[Command]
name = "back_a"
command = /B,a
time= 1

[Command]
name = "back_b"
command = /B,b
time= 1

[Command]
name = "back_x"
command = /B,x
time= 1

[Command]
name = "back_y"
command = /B,y
time= 1

[Command]
name = "down_a"
command = /$D,a
time= 1

[Command]
name = "down_b"
command = /$D,b
time= 1

[Command]
name = "fwd_ab"
command = /F,a+b
time= 1

[Command]
name = "back_ab"
command = /B,a+b
time= 1

[Command]
name = "fwd_xy"
command = /F,x+y
time= 1
[Command]
name = "fwd_bc"
command = /F,b+c
time= 1

[Command]
name = "back_xy"
command = /B,x+y
time= 1
[Command]
name = "back_bc"
command = /B,b+c
time= 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time= 1

[Command]
name = "b"
command = b
time= 1

[Command]
name = "x"
command = x
time= 1

[Command]
name = "y"
command = y
time= 1

[Command]
name = "charge"
command = /a
time= 1

[Command]
name = "charge 1"
command= /b
time= 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time= 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time= 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time= 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time= 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
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

;===========================================================================

;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_Throw
[State -1]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "fwd_ab"
trigger2 = command = "back_ab"
trigger3 = command = "fwd_b"
trigger3 = command != "fwd_bc"
trigger3 = p2bodydist X < 5
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "fwd_b"
trigger4 = command != "fwd_bc"
trigger4 = p2bodydist X < 5
trigger4 = p2statetype = C
trigger4 = p2movetype != H
trigger5 = command = "back_b"
trigger5 = command != "back_bc"
trigger5 = p2bodydist X < 5
trigger5 = p2statetype = S
trigger5 = p2movetype != H
trigger6 = command = "back_b"
trigger6 = command != "back_bc"
trigger6 = p2bodydist X < 5
trigger6 = p2statetype = C
trigger6 = p2movetype != H

;---------------------------------------------------------------------------
;Air_Throw1
[State -1]
type = null; ChangeState
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"

;---------------------------------------------------------------------------
;Fireball
[State -1]
type = ChangeState
value = 1000
triggerall = command = "fireball_a"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 300
trigger3 = movecontact = 1
trigger4 = stateno = 500
trigger4 = time<= 2
trigger5 = stateno = 410
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1

;---------------------------------------------------------------------------
; CHARGE
[State -1]
type = ChangeState
value = 730
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"

;---------------------------------------------------------------------------
; KI Burn
[State -1]
type = ChangeState
value = 2300
triggerall = command = "kiburn"
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Flask Kick
[State -1]
type = ChangeState
value = 2400
triggerall = command = "flashkick"
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Flash Cut
[State -1]
type = ChangeState
value = 1200
triggerall = command = "flashcut"
trigger1 = statetype = S
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 245
trigger7 = movecontact = 1
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Kaio Shin Sequence
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = statetype = S
triggerall = command = "sequence"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 230
trigger5 = stateno = 1000

;---------------------------------------------------------------------------
; Dodonpa
[State -1]
type = ChangeState
value = 1700
triggerall = command = "dodonpa"
triggerall = power >= 1000
triggerall = stateno != 1700
triggerall = numprojid(1700) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC,NA,SA
;trigger2 = movecontact = 1

;---------------------------------------------------------------------------
; Bakuretsumaha
[State -1]
type = ChangeState
value = 1800
triggerall = command = "bakuretsumaha"
triggerall = power >= 2000
triggerall = stateno != 1800
triggerall = numprojid(1700) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC,NA,SA
;trigger2 = movecontact = 1

;===========================================================================
;Soco Fraco
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl = 1

;Soco Forte
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = statetype = S
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger2 = animelem = 4,< 0
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger3 = animelem = 6,< 0

;Chute Fraco
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230

;Chute Forte
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Soco Fraco Abaixado
[State -1]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = statetype = C
;triggerall = command = holddown
;triggerall = command = holddownback
trigger1 = ctrl = 1

;Soco Forte Abaixado
[State -1]
type = ChangeState
value = 310
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Chute Fraco Abaixado
[State -1]
type = ChangeState
value = 330
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 330

;Chute Forte Abaixado
[State -1]
type = ChangeState
value = 340
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 340
trigger3 = stateno = 340

;Soco Fraco Pulando
[State -1]
type = ChangeState
value = 630
triggerall = command = "x"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;Soco Fraco Pulando (Movendo)
[State -1]
type = ChangeState
value = 635
triggerall = command = "x"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;Soco Forte Pulando
[State -1]
type = ChangeState
value = 640
triggerall = command = "y"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;Soco Forte Pulando (Movendo)
[State -1]
type = ChangeState
value = 645
triggerall = command = "y"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1

; Chute Fraco Pulando
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact = 1

;Chute Forte Pulando
[State -1]
type = ChangeState
value = 440
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Parte de la programacion es de cdz.
