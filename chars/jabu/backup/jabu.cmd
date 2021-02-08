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
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
;

;-|Super Motions|-
[Command]
name = "unicorn_gallop"     
command = B,F,b
time = 20

[Command]
name = "testata_unicorno"     
command = ~D,F,D,F,c
time = 50

[Command]
name = "fulmine_unicorno"     
command = ~D,F,B,x
time = 50

[Command]
name = "summon_unicorno"     
command = ~D,F,D,B,z
time = 50

;-|Special Motions|-

[Command]
name = "calciostupido"     
command = ~F,D,DF,c
time = 15

[Command]
name = "1000zoccolidell'unicorno"     
command = ~D,DF,F,a
time = 15

[Command]
name = "trappoladell'unicorno"     
command = ~F,D,B,b
time = 20

[Command]
name = "caricaunicorno"     
command = ~F,D,DF,x
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
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "cosmo"
command = c+z
time = 1

[Command]
name = "holdcosmo"
command = /$c+z
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

[Command]
name = "holda";Required (do not remove)
command = /$a
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

;===========================================================================
;---------------------------------------------------------------------------
;Summon unicorno
[State -1, Sapete che non lo so?]
type = ChangeState
value = 3300
triggerall = power >= 1000 ;super di livello 1
triggerall = command = "summon_unicorno"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA,SA
trigger2 = movecontact
;---------------------------------------------------------------------------
;Fulmine unicorno
[State -1, Sapete che non lo so?]
type = ChangeState
value = 3200
triggerall = power >= 1000 ;super di livello 1
triggerall = command = "fulmine_unicorno"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA,SA
trigger2 = movecontact
;---------------------------------------------------------------------------
;Testata unicorno
[State -1, Sapete che non lo so?]
type = ChangeState
value = 3100
triggerall = power >= 1000 ;super di livello 1
triggerall = command = "testata_unicorno"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA,SA
trigger2 = movecontact

;---------------------------------------------------------------------------
;Unicorn Gallop
[State -1, Sapete che non lo so?]
type = ChangeState
value = 3000
triggerall = power >= 2000 ;super di livello 2
triggerall = command = "unicorn_gallop"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA,SA
trigger2 = movecontact


;===========================================================================
;---------------------------------------------------------------------------
;Trappola dell'unicorno Oo
[State -1, Sapete che non lo so?]
type = ChangeState
value = 1030
triggerall = command = "caricaunicorno"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact

;Trappola dell'unicorno Oo
[State -1, Sapete che non lo so?]
type = ChangeState
value = 1020
triggerall = command = "trappoladell'unicorno"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact

;1000 zoccoli dell'unicorno terra XD
[State -1, Sapete che non lo so?]
type = ChangeState
value = 1015
triggerall = command = "1000zoccolidell'unicorno"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact

;1000 zoccoli dell'unicorno aria XD
[State -1, Sapete che non lo so?]
type = ChangeState
value = 1010
triggerall = command = "1000zoccolidell'unicorno"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = hitdefattr = A,NA
trigger2 = movecontact

;Calcio a salire
[State -1, Sapete che non lo so?]
type = ChangeState
value = 1000
triggerall = command = "calciostupido"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact


;Carica Cosmo
[State -1, Carica cosmo -_-]
type = ChangeState
value = 700
triggerall = command = "cosmo"
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = stateno !=701

;super parata
[State -1, superguard]
type = ChangeState
value = 800
triggerall = (command = "c") && (command = "holdback")
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Pugni da standing
[State -1, standing X]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (time > 5)

[State -1, standing Y]
type = ChangeState
value = 210
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (time > 5)

[State -1, standing Z]
type = ChangeState
value = 220
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (time > 5)
trigger3 = (stateno = 210) && (time > 8)

;calci da standing
[State -1, standing A]
type = ChangeState
value = 230
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (time > 5)

[State -1, standing B]
type = ChangeState
value = 240
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && (time > 9)

[State -1, standing C]
type = ChangeState
value = 250+5*(p2bodydist X < 5)
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && (time > 9)
trigger3 = (stateno = 240) && (time > 10)

[State -1, boh]
type = ChangeState
value = 40
triggerall = command = "holdup"
trigger1 = stateno = 255
trigger1 = movehit

;===========================================================================
;---------------------------------------------------------------------------
;Pugni da crouching
[State -1, crouching X]
type = ChangeState
value = 400
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (time > 5)

[State -1, crouching Y]
type = ChangeState
value = 410
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (time > 5)

[State -1, crouching Z]
type = ChangeState
value = 420
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (time > 5)
trigger3 = (stateno = 410) && (time > 8)

;calci da standing
[State -1, crouching A]
type = ChangeState
value = 430
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (time > 5)

[State -1, crouching B]
type = ChangeState
value = 440
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 430) && (time > 5)

[State -1, crouching C]
type = ChangeState
value = 450
triggerall = command = "c"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 430) && (time > 9)
trigger3 = (stateno = 440) && (time > 10)

;===========================================================================
;---------------------------------------------------------------------------
;Pugni in aria
[State -1, jumping X]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (time > 6)

[State -1, jumping Y]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (time > 6)

[State -1, jumping Z]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (time > 6)
trigger3 = (stateno = 610) && (time > 6)

;calci in aria
[State -1, jumping A]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (time > 5)

[State -1, jumping B]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 630) && (time > 6)

[State -1, jumping C]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 630) && (time > 6)
trigger3 = (stateno = 640) && (time > 7)

;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
trigger1 = command = "start"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;��ރ_�b�V��
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------
