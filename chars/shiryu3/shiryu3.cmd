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
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
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
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
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


;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.


[command]
name = "ataque-final1"
command = F,D,B,y
time = 20

[command]
name = "fala"
command = s
time = 15

[command]
name = "colera-100-dragoes2"
command = D,F,D,F,c
time = 25

[command]
name = "ataque3"
command = D,B,z
time = 15

[command]
name = "ataque"
command = D,B,b
time = 15

[Remap]
[command]
name = "ataque1"
command = D,B,a
time = 15

x = x
[command]
name = "dragao-voador-end"
command = D,F,D,F,a
time = 30

y = y
[command]
name = "combo-esay"
command = F,D,B,x
time = 15

z = z
[Command]
name = "segura_a"
command = /a
[Command]
name = "segura_b"
command = /b

a = a
[command]
name = "colera-dos-100-dragoes"
command = B,D,F,c
time = 15

b = b
[command]
name = "drag縊-voador2"
command = B,D,F,b
time = 15

c = c
[command]
name = "dragao-voador"
command = B,D,F,z
time = 15

[command]
name = "teletransporte"
command = a+x
time = 30

[Command]
name = "superblock"
command = c
time = 50

s = s

;-| Default Values |-------------------------------------------------------
[command]
name = "excalibur-ouro"
command = B,D,F,y
time = 15

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
[command]
name = "excalibur"
command = B,D,F,x
time = 15

command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
[command]
name = "colera-do-dragao"
command = B,D,F,a
time = 15

command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;


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
command = x
time = 1

[Command]
name = "b"
command = y
time = 1

[Command]
name = "c"
command = c
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

;super block
[State -1, block]
type = ChangeState
value = 7027
triggerall = command = "superblock"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl = 1

;ataque-final1
[State -1, ataque-final1]
type = ChangeState
value = 7026
triggerall = command = "ataque-final1"
trigger1 = (statetype = s) && ctrl
triggerall =Power >=1000

;fala
[State -1, fala]
type = ChangeState
value = 6015
triggerall = command = "fala"
trigger1 = (statetype = s) && ctrl

;teletransporte
[State -1, teletransporte]
type = ChangeState
value = 7024
triggerall = command = "teletransporte"
trigger1 = (statetype = s) && ctrl

;colera-100-dragoes2
[State -1, colera-100-dragoes2]
type = ChangeState
value = 6016
triggerall = command = "colera-100-dragoes2"
trigger1 = (statetype = s) && ctrl
trigger1 = Life <= 700
triggerall =Power >=3000

;ataque3
[State -1, ataque3]
type = ChangeState
value = 6014
triggerall = command = "ataque3"
trigger1 = (statetype = s) && ctrl

;ataque
[State -1, ataque]
type = ChangeState
value = 6013
triggerall = command = "ataque"
trigger1 = (statetype = s) && ctrl

;ataque1
[State -1, ataque1]
type = ChangeState
value = 6012
triggerall = command = "ataque1"
trigger1 = (statetype = s) && ctrl

;dragao-voador-end
[State -1, dragao-voador-end]
type = ChangeState
value = 6011
triggerall = command = "dragao-voador-end"
trigger1 = (statetype = s) && ctrl
triggerall =Power >=2000

;combo-esay
[State -1, combo-esay]
type = ChangeState
value = 7018
triggerall = command = "combo-esay"
trigger1 = (statetype = s) && ctrl
triggerall =Power >=1000

;power-change
[State -1]
type = ChangeState
value = 7016
triggerall = var (5) =0
triggerall = var(9) = 0
triggerall = power <2800
triggerall = ctrl = 1
trigger1 = command = "segura_a"
trigger1 = command = "segura_b"
trigger1 = statetype = S
[State -1]
type = ChangeState
value = 7016
triggerall = var (5) =0
triggerall = power <3000
trigger1 = ctrl = 0
trigger1 = command = "segura_a"
trigger1 = command = "segura_b"
trigger1 = stateno = 1500

;colera-dos-100-dragoes
[State -1, colera-dos-100-dragoes]
type = ChangeState
value = 7012
triggerall = command = "colera-dos-100-dragoes"
trigger1 = (statetype = s) && ctrl
trigger1 = Life <= 500
triggerall =Power >=3000

;drag縊-voador2
[State -1, drag縊-voador2]
type = ChangeState
value = 6003
triggerall = command = "drag縊-voador2"
trigger1 = (statetype = s) && ctrl
triggerall =Power >=2000

;dragao-voador
[State -1, dragao-voador]
type = ChangeState
value = 7011
triggerall = command = "dragao-voador"
trigger1 = (statetype = s) && ctrl
triggerall =Power >=2000

;excalibur-ouro
[State -1, excalibur-ouro]
type = ChangeState
value = 7008
triggerall = command = "excalibur-ouro"
trigger1 = (statetype = s) && ctrl
triggerall =Power >=2000

;excalibur
[State -1, excalibur]
type = ChangeState
value = 7005
triggerall = command = "excalibur"
trigger1 = (statetype = s) && ctrl
triggerall =Power >=2000

;colera-do-dragao
[State -1, colera-do-dragao]
type = ChangeState
value = 7000
triggerall = command = "colera-do-dragao"
trigger1 = (statetype = s) && ctrl
triggerall =Power >=1000

;---------------------------------------------------------------------------
;combo-1
[State -1, Punch1]
type = changestate
value = 230
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;combo-2
[State -1, Punch2]
type = changestate
value = 240
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230 && time > 7

;---------------------------------------------------------------------------
;combo-3
[State -1, Punch3]
type = changestate
value = 250
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240 && time > 9
;---------------------------------------------------------------------------
;combo1
[State -1, Punch1]
type = changestate
value = 200
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;bombo2
[State -1, Punch2]
type = changestate
value = 210
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time > 5

;---------------------------------------------------------------------------
;combo3
[State -1, Punch3]
type = changestate
value = 220
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && time > 9

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

;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 220) && time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 250) && time > 6

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 192
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 400
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 400)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 450)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking

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
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
