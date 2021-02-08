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
;==================================================================================
;======| RELACIONADO À AI - AI RELATED |===========================================
;==================================================================================

; These 11 Single Button and Hold Dir commands must be placed here at the top
; of the CMD, above all other commands, and in the standard order shown here,
; in order for the "Compatibly Partnered" version (9742) of the helper AI
; activation method to work with different partners in simul team mode.
; (When the partner is not compatible, then it's best to just use the regular
; version (9741) and rely on the XOR method for backup in case a human
; partner's input turns off the CPU partner's AI.)
; (Now, even if you do not intend to give your character any custom AI, it
; would still be nice if you would place the commands at the top of your CMD,
; for the sake of other characters which do use this AI activation method.
; And then, define Anim 9741 in your AIR file to indicate to other characters
; that your character is compatible.
; It may slightly increase the chances of faulty AI activation if the user is
; using characters with a poor implementation of the old humanly-impossible
; commands AI activation method when fighting against your character, but
; other than that, there's really no particular reason not to.  And you can
; change the names of the commands if you want.  For compatibility, all that
; really matters is the "command" and "time" parameters.)
;
; Another important point to make, is that if you want to add additional
; definitions for any of these basic command names, then there are limits on
; what kind of parameters you can use, in order to ensure the reliability of
; the helper method.  That is, if you redefine any of these first 11 commands,
; then you must follow these rules when doing so:
; - Don't use any command string that includes any tildes. (e.g. no "~x",
;   no "~30D")
; - In the command string, don't include any direction that isn't preceeded by
;   a slash. (e.g. no "F", no "$D")
; - Don't put any non-slashed buttons in a command string overloading one of
;   the Hold Dir command names.
; - Using a command string that includes any commas (e.g. no "a,b"), and/or
;   setting the time parameter to greater than 1, may be safe, but I wouldn't
;   risk it.
; An example of what is permissible, is redefining the "z" button like so:
;	[Command]
;	name = "z"
;	command = y+b
;	time = 1
; Other than that particular common type of redefinition, it's probably best
; to simply avoid adding definitions for these 11 command names altogether.
; And remember, this paragraph just has to do with the helper method.  You'll
; still need to make changes to the XOR code, no matter what type of overloading
; you use with the commands used by it.
[Defaults]
command.buffer.time = 2
;
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

;-| Hold Button |----------------------------------------------------------
; Please define Anim 74140108 in your AIR file if AND ONLY IF you place these
; 7 Hold Button commands immediately after the 11 Single Button and Hold Dir
; commands at the very top of your CMD list, as demonstrated here.
; In this version of the AI code, these commands are only used by the XOR
; method, and thus are optional.  But there remains a possibility that a
; future version of the helper method might be helped by having these
; commands placed here, and Anim 74140108 would then be used to indicate
; that a partner character has a compatible CMD.

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1

[Command]
name = "holdp"
command = /x
time = 1
[Command]
name = "holdp"
command = /y
time = 1
[Command]
name = "holdp"
command = /z
time = 1
;-| Super Motions |--------------------------------------------------------
;---------------------------------Ground supers--------------------------
[Command]
name = "SGS"
command = x, x, F, a, z
time=45
[Command]
name = "SGS"
command = x, x, F, a, ~z
time=45
[Command]
name = "SGS"
command = x, x, /F, a, ~z
time=45

[Command]
name = "MessatsuGouShoryuu"
command = ~D, DF, F, x+y
time = 20
[Command]
name = "MessatsuGouShoryuu"
command = ~D, DF, F, x+z
time = 20
[Command]
name = "MessatsuGouShoryuu"
command = ~D, DF, F, z+y
time = 20

[Command]
name = "MessatsuGouHadou"
command = ~D, DB, B, x+y
time = 20
[Command]
name = "MessatsuGouHadou"
command = ~D, DB, B, x+z
time = 20
[Command]
name = "MessatsuGouHadou"
command = ~D, DB, B, z+y
time = 20

[Command]
name = "ShinkuuTatzumaki"
command = ~D, DB, B, a+b
time = 20
[Command]
name = "ShinkuuTatzumaki"
command = ~D, DB, B, b+c
time = 20
[Command]
name = "ShinkuuTatzumaki"
command = ~D, DB, B, a+c
time = 20

[Command]
name = "Misogi"
command = ~D,D, a+b
time = 20
[Command]
name = "Misogi"
command = ~D,D, a+c
time = 20
[Command]
name = "Misogi"
command = ~D,D, c+b
time = 20

[Command]
name = "KongouKokuretsuZan"
command = ~D,D, x+y
time = 20
[Command]
name = "KongouKokuretsuZan"
command = ~D,D, x+z
time = 20
[Command]
name = "KongouKokuretsuZan"
command = ~D,D, z+y
time = 20
;---------------------------------Air supers--------------------------
[Command]
name = "AirShinkuuHadouken"
command = ~D, DF, F, D, DF, F, x
time = 20
[Command]
name = "AirShinkuuHadouken"
command = ~D, DF, F, D, DF, F, y
time = 20
[Command]
name = "AirShinkuuHadouken"
command = ~D, DF, F, D, DF, F, z
time = 20

[Command]
name = "ShinGouHadouken"
command = ~D, DB, B, D, DB, B, x
time = 20
[Command]
name = "ShinGouHadouken"
command = ~D, DB, B, D, DB, B, y
time = 20
[Command]
name = "ShinGouHadouken"
command = ~D, DB, B, D, DB, B, z
time = 20

[Command]
name = "ShinFallingKick"
command = ~D, DF, F, D, DF, F, a
time = 20
[Command]
name =  "ShinFallingKick"
command = ~D, DF, F, D, DF, F, b
time = 20
[Command]
name =  "ShinFallingKick"
command = ~D, DF, F, D, DF, F, c
time = 20

[Command]
name = "AirShinkuuTatzumaki"
command = ~D, DB, B, a+b
time = 20
[Command]
name = "AirShinkuuTatzumaki"
command = ~D, DB, B, b+c
time = 20
[Command]
name = "AirShinkuuTatzumaki"
command = ~D, DB, B, a+c
time = 20

;-| Special Motions |------------------------------------------------------
;------------------------Shoryuuken-------------------
[Command]
name = "DP_x"
command = ~F, D, DF, x
[Command]
name = "DP_y"
command = ~F, D, DF, y
[Command]
name = "DP_z"
command = ~F, D, DF, z
;------------------------Hadouken---------------------
[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 20
[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 20
[Command]
name = "QCF_z"
command = ~D, DF, F, z
time = 20
;------------------------Thrust kick-------------------
[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 20
[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 20
[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 20
;---------------------Hadou combo------------
[Command]
name = "QCB_x"
command = ~D, DB, B, x
[Command]
name = "QCB_y"
command = ~D, DB, B, y
[Command]
name = "QCB_z"
command = ~D, DB, B, z
;------------------Tatzumaki------------------------
[Command]
name = "QCB_a"
command = ~D, DB, B, a
[Command]
name = "QCB_b"
command = ~D, DB, B, b
[Command]
name = "QCB_c"
command = ~D, DB, B, c
;-----------------Float tatzumaki-------
[Command]
name = "HCB_a"
command = ~F, DF, D, DB, B, a
[Command]
name = "HCB_b"
command = ~F, DF, D, DB, B, b
[Command]
name = "HCB_c"
command = ~F, DF, D, DB, B, c
[Command]
name = "HCB_a"
command = ~F, D, B, a
[Command]
name = "HCB_b"
command = ~F, D, B, b
[Command]
name = "HCB_c"
command = ~F, D, B, c
;--------------------Fire Hadouken-------------
[Command]
name = "HCB_x"
command = ~F, DF, D, DB, B, x
[Command]
name = "HCB_y"
command = ~F, DF, D, DB, B, y
[Command]
name = "HCB_z"
command = ~F, DF, D, DB, B, z
[Command]
name = "HCB_x"
command = ~F, D, B, x
[Command]
name = "HCB_y"
command = ~F, D, B, y
[Command]
name = "HCB_z"
command = ~F, D, B, z
;-------------------------Teleport-----------------------
[Command]
name = "DP_xy"
command = ~F, D, DF, x+y
[Command]
name = "DP_xz"
command = ~F, D, DF, x+z
[Command]
name = "DP_zy"
command = ~F, D, DF, z+y

[Command]
name = "DPB_xy"
command = ~B, D, DB, x+y
[Command]
name = "DPB_xz"
command = ~B, D, DB, x+z
[Command]
name = "DPB_zy"
command = ~B, D, DB, z+y

[Command]
name = "DP_ab"
command = ~F, D, DF, a+b
[Command]
name = "DP_ac"
command = ~F, D, DF, a+c
[Command]
name = "DP_cb"
command = ~F, D, DF, c+b

[Command]
name = "DPB_ab"
command = ~B, D, DB, a+b
[Command]
name = "DPB_ac"
command = ~B, D, DB, a+c
[Command]
name = "DPB_cb"
command = ~B, D, DB, c+b
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "recoverf"     ;Required (do not remove)
command = F, F
time = 20

[Command]
name = "recoverb"     ;Required (do not remove)
command = B, B
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

;---------------------------------------------------------------------------------------------
;Super Jump
[Command]
name = "SJ"
command = $D, $U

[Command]
name = "Super_Jump"
command = ~D, U

[Command]
name="bdx"
command=~B,DB,D,x
time=20
[Command]
name="bdy"
command=~B,DB,D,y
time=20
[Command]
name="bdz"
command=~B,DB,D,z
time=20
[Command]
name="bdx"
command=~B,DB,D,~x
time=20
[Command]
name="bdy"
command=~B,DB,D,~y
time=20
[Command]
name="bdz"
command=~B,DB,D,~z
time=20

[Command]
name="bda"
command=~B,DB,D,a
time=20
[Command]
name="bdb"
command=~B,DB,D,b
time=20
[Command]
name="bdc"
command=~B,DB,D,c
time=20
[Command]
name="bda"
command=~B,DB,D,~a
time=20
[Command]
name="bdb"
command=~B,DB,D,~b
time=20
[Command]
name="bdc"
command=~B,DB,D,~c
time=20

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5

[Command]
name = "chargey"
command = /y
time = 1

[Command]
name = "chargeb"
command = /b
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

;==================================================================================
;======| RELACIONADO À AI - AI RELATED |===========================================
;==================================================================================
[Statedef -1]
; The main purpose of having these next two controllers here at the top of
; StateDef -1 is to make sure the AI helper never changes to a different state,
; but they also improve efficiency by preventing Mugen from wasting time
; processing the entire State -1 for the helper.
[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

; This is generally the best place to put most of your AI directives.  For
; example, this controller would only be executed when the CPU is in control:
;
; [State -1, Haha!]
; type = ChangeState
; trigger1 = var(0) ; (Or use "var(59)>0" if you've chosen not to
;                   ; use the Simplifier variable/controller.)
; trigger1 = ctrl
; trigger1 = (StateType = S)
; trigger1 = (MoveType = I)
; trigger1 = (P2MoveType = H)
; trigger1 = (NumEnemy = 1)
; trigger1 = (Enemy,GetHitVar(HitTime) > 60)
; trigger1 = (PrevStateNo != 195)
; trigger1 = (Random < 99)
; value = 195

; And of course, most human-only command-based ChangeStates also belong
; in State -1.  For example, this move would only be performable by a human:
;
; [State -1, Death Before Dishonor]
; type = ChangeState
; trigger1 = (command = "suicide")
; trigger1 = !var(0) ; (Or use "var(59)<1" if you've chosen not to
;                    ; use the Simplifier variable/controller.)
; trigger1 = ctrl
; trigger1 = (StateType != A)
; trigger1 = (MoveType = I)
; value = {suicide state number}

;==================================================================================
;==================================================================================
;==================================================================================


;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1,AI  Guard Push stand]
type = ChangeState
value = 160
triggerall = var(59)>=1
triggerall = statetype = S
triggerall = p2bodydist x =[0,40]
trigger1 = stateno = [150,153]

[State -1,AI  Guard Push crouch]
type = ChangeState
value = 161
triggerall = var(59)>=1
triggerall = statetype = C
triggerall = p2bodydist x =[0,40]
trigger1 = stateno = [150,153]

[State -1,AI  Guard Push aerial]
type = ChangeState
value = 162
triggerall = var(59)>=1
triggerall = statetype = A
triggerall = p2bodydist x =[0,40]
trigger1 = stateno = [154,155]
;---------------------------------------------------------------------------
;Begin the Recovery Roll
[State -1,AI Recovery roll]
type = VarSet
triggerall = var(59)>=1 && random <=100
triggerall = roundstate = 2
triggerall = statetype !=  A
;triggerall = (Stateno != 5100) && (Stateno != 5110)
trigger1 = (HitFall)
var(22) = 1
;---------------------------------------------------------------------------
;Begin the Recovery Roll
[State -1,AI Recovery roll]
type = VarSet
triggerall = var(59)>=1 && random <=100
triggerall = roundstate = 2
triggerall = statetype !=  A
;triggerall = (Stateno != 5100) && (Stateno != 5110)
trigger1 = (HitFall)
var(22) = 2
;---------------------------------------------------------------------------
[State -1, AI Shun Goku Satsu]
type = ChangeState
value = 3600
triggerall = var(59)>0 && random <=400
triggerall = Statetype != A
triggerall = p2Statetype != A
triggerall = power >=3000
trigger1=stateno=210 && movehit
trigger2=stateno=400 && movehit
trigger3=stateno=430 && movehit
ignorehitpause = 1
;---------------------------------------------------------------------------
[State -1, Misogi]
type = ChangeState
value = 3795
triggerall = var(59)>=1  && random <=500
triggerall = Statetype != A
triggerall = power >=2000
trigger1 = ctrl && (enemynear,movetype = H) && (p2bodydist x >=70)
;trigger1 = ctrl && enemynear,statetype = H && p2bodydist >=70
;------------------------------AI---------------------------------
; Stand Light Punch
[State -1, AI  Air Shinkuu tatzumaki]
type = ChangeState
value = 3220
triggerall = var(59)>=1  && random <=200
triggerall = statetype  = A
triggerall = power >=1000
trigger1 = (stateno = 1201) && movehit
;trigger2 = (stateno = 1100) && movehit
;------------------------------AI---------------------------------
;[State -1,AI Denjin Hadouken2]
;type = ChangeState
;value = 3400
;triggerall = power >=1000 && random <=100
;;triggerall = roundstate >= 2
;triggerall = var(59)>=1 && p2life > 0
;triggerall = P2statetype != A
;triggerall = ctrl
;trigger1 = stateno = 210
;trigger1 = movehit = 1
;trigger2 = P2BodyDist X = [0,65]
;trigger2 = P2BodyDist Y = [-90,0]
;trigger2 = p2movetype = A
;trigger2 = Random > 500
;trigger3 = P2BodyDist X = [0,65]
;trigger3 = P2BodyDist Y = [-90,0]
;trigger3 = p2movetype = A
;trigger3 = stateno = 1700
;trigger3 = Random > 500
;------------------------------AI---------------------------------
[State -1,AI Shin Hadouken2]
type = ChangeState
value = 3000
triggerall = power >=1000
;triggerall = roundstate >= 2
triggerall = var(59)>=1 && p2life > 0
triggerall = P2statetype != A
triggerall = ctrl
trigger1 = stateno = 210
trigger1 = movehit = 1
trigger2 = P2BodyDist X = [0,65]
trigger2 = P2BodyDist Y = [-90,0]
trigger2 = p2movetype = A
trigger2 = Random > 500
trigger3 = P2BodyDist X = [0,65]
trigger3 = P2BodyDist Y = [-90,0]
trigger3 = p2movetype = A
;------------------------------AI---------------------------------
; Stand Light Punch
[State -1, AI Shinkuu hadouken]
type = ChangeState
value = 3000
triggerall = var(59)>=1  && random <=500
triggerall = statetype  = A
triggerall = power >=1000
trigger1 = (stateno = 210) && movehit
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, AI Shoryuu reppa]
type = ChangeState
value = 3100
triggerall = var(59)>=1
triggerall = statetype != A
triggerall = power >=1000
trigger1 = stateno = 210 && movehit && p2statetype = A && random <=400
trigger2 = stateno = 400 && movehit && p2statetype = A && random <=400
;------------------------------AI---------------------------------
[State -1, AI AIR shinkuu hadouken]
type = changestate
value = 3005
triggerall = var(59)>=1 && random <=410
triggerall = statetype = A
triggerall = power >=1000
;triggerall = p2statetype = A
triggerall = p2stateno = [5000,5200]
trigger1 = stateno = 610 && movehit ;&& time > 18
trigger1 = P2bodydist y >=6
ignorehitpause = 1
;===========================================================================
[State -1, AI Zero counter]
type=changestate
value=750
triggerall = var(59)>=1 && random <= 100;&&(command="bdx"||command="bdy"||command="bdz"||command="bda"||command="bdb"||command="bdc")
triggerall=p2dist x>0&&power>=1000&&statetype!=A
trigger1=stateno=150||stateno=152
;------------------------------AI---------------------------------
[State -1, AI Air tatzu]
type = changestate
value = 1201
triggerall = var(59)>=1 && random <= 300
triggerall = statetype = A
;triggerall = p2statetype = A
triggerall = p2stateno = [5000,5200]
trigger1 = stateno = 610 && movehit ;&& time > 18
trigger1 = P2bodydist y >=6
trigger2 = ctrl
trigger2 = P2bodydist X <= 40
trigger2 = P2bodydist y =[-7,7]
trigger2 = pos y <= -33
trigger1 = time >= 7
ignorehitpause = 1
;------------------------------AI---------------------------------
[State -1, AI Falling kick 2]
type = changestate
value = 1401
triggerall = var(59)>=1 && random <= 200
triggerall = statetype = A
;triggerall = p2statetype = A
triggerall = p2stateno = [5000,5200]
;trigger1 = stateno = 620 && movecontact ;&& time > 18
;trigger1 = P2bodydist y <=10
;trigger1 = P2bodydist y =[10,30]
trigger1 = ctrl
trigger1 = P2bodydist X <= 40
trigger1 = P2bodydist y =[-7,7]
trigger1 = pos y <= -33
trigger1 = time >= 7
ignorehitpause = 1
;------------------------------AI---------------------------------
[State -1, AI Falling kick 22]
type = changestate
value = 1401
triggerall = var(59)>=1 && random <= 200
triggerall = statetype = A
;triggerall = p2statetype = A
triggerall = p2stateno = [5000,5200]
trigger1 = stateno = 610 && movehit ;&& time > 18
trigger1 = P2bodydist y >=6
trigger2 = ctrl
trigger2 = P2bodydist X <= 40
trigger2 = P2bodydist y =[-7,7]
trigger2 = pos y <= -33
trigger1 = time >= 7
ignorehitpause = 1
;------------------------------AI---------------------------------
[State -1, AI Falling kick2.5]
type = changestate
value = 1406
triggerall = var(59)>=1 && random <=400
triggerall = stateno = 1405
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2stateno = [5000,5200]
trigger1 = time >= 7
ignorehitpause = 1
;------------------------------AI---------------------------------
[State -1, AI Falling kick 3]
type = changestate
value = 1402
triggerall = var(59)>=1 ; && random <= 249
triggerall = statetype = A && random <= 300
triggerall = p2movetype = A
triggerall = p2statetype != A; [5000,5200]
;trigger1 = stateno = 620 && movecontact ;&& time > 18
;trigger1 = P2bodydist y <=10
;trigger1 = P2bodydist y =[10,30]
trigger1 = ctrl
trigger1 = P2bodydist X = [20,60];40
;trigger1 = P2bodydist y =[-7,7]
trigger1 = pos y <= -33
trigger2 = stateno = 640 && movehit
ignorehitpause = 1
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, AI Fire Hadouken]
type = ChangeState
value = 1010
triggerall = numhelper(1000)=0 && random <=100
triggerall = var(59)>=1
triggerall = statetype != A
trigger1 = stateno = 210 && movehit && p2statetype !=A
trigger2 = (p2bodydist x >= 100) && (random <=100) && ctrl
trigger3 = (p2bodydist x = [31,179]) && (p2statetype !=A) && (p2movetype = A) && ctrl && (random <=200) && ctrl
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, AI Hadouken]
type = ChangeState
value = 1000
triggerall = numhelper(1000)=0 && random <=100
triggerall = var(59)>=1
triggerall = statetype != A
trigger1 = stateno = 210 && movehit && p2statetype !=A
trigger2 = (p2bodydist x >= 100) && (random <=100) && ctrl
trigger3 = (p2bodydist x = [31,179]) && (p2statetype !=A) && (p2movetype = A) && ctrl && (random <=200) && ctrl
trigger4 = stateno = 400 && movehit && p2statetype !=A
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, AI AIR Hadouken]
type = ChangeState
value = 1005
triggerall = numhelper(1000)=0
triggerall = var(59)>=1
triggerall = statetype = A
triggerall = pos y <=-20
trigger1 = stateno = 610 && movehit && p2statetype !=A && random <=300
trigger2 = (p2bodydist x >= 180) && (random <=300) && ctrl
trigger3 = (p2bodydist x = [31,179]) && (p2statetype =A) && (p2movetype = A) && ctrl && (random <=300)
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, AI Shoryuuken]
type = ChangeState
value = 1101
triggerall = var(59)>=1
triggerall = statetype != A
trigger1 = stateno = 210 && movehit && p2statetype = A && random <=600
trigger2 = stateno = 400 && movehit && p2statetype = A && random <=600
trigger3 = ctrl && (enemynear,movetype = A) && (p2bodydist x <=50) && (p2bodydist y <= -20) ;&& random <=200
;------------------------------AI---------------------------------
[State -1,AI Tatsumaki1]
type = ChangeState
value = 1200
triggerall = var(59)>=1
triggerall = statetype != A
;trigger1 = stateno = 450 && movehit && time >= 15 ;&& p2bodydist X <=70
;trigger2 = stateno = 225 && movecontact
trigger1 = p2bodydist x = [14,60]
trigger1 = p2bodydist y = [-82,-55]
trigger1 = ctrl
;------------------------------AI---------------------------------
[State -1, AI Grab]
type = ChangeState
value = 800;ifelse(random <= 500,800,830)
triggerall = var(59)>=1
triggerall = P2statetype = C
triggerall = statetype != A
triggerall = p2stateno = [120,162]
;triggerall = stateno != [902,904]
trigger1 = p2bodydist x <= 30; p2 is close enough for stand light punch
trigger1 = p2bodydist y = [-5,10]
trigger1 = ctrl  ;&& random <=500
;trigger2 = ctrl
;trigger2 = p2bodydist x = [-22,13]
;trigger2 = p2bodydist y = [-14,-10]
;------------------------------AI---------------------------------
; Stand Light Punch
[State -1, AI Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59)>=1  && random <=200
triggerall = statetype != A
trigger1 = p2bodydist x <=30
trigger1 = ctrl
;------------------------------AI---------------------------------
; Stand Light Punch
[State -1, AI Crouch lp]
type = ChangeState
value = 400
triggerall = var(59)>=1  && random <=600
triggerall = statetype != A
trigger1 = p2bodydist x <=30
trigger1 = ctrl
;------------------------------AI---------------------------------
; Stand Light Punch
[State -1, AI Crouch hp]
type = ChangeState
value = 420
triggerall = var(59)>=1  && random <=600
triggerall = statetype != A
trigger1 = stateno = 400 && movehit && p2statetype !=A
;trigger2 = ctrl && p2statetype !=A  && random <=50 && p2bodydist x >=90
;------------------------------AI---------------------------------
; Stand Light Punch
[State -1, AI Crouch hk]
type = ChangeState
value = 450
triggerall = var(59)>=1  && random <=200
triggerall = statetype != A
trigger1 = stateno = 400 && movehit && p2statetype !=A
;trigger2 = ctrl && p2statetype !=A  && random <=50 && p2bodydist x >=90
;---------------------------------------------------------------------------
[State -1, AI Super Jump]
type = ChangeState
value = 7000
triggerall = var(59)>=1
trigger1 = stateno = 420 && movehit
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59)>0
trigger1 = statetype = A
trigger1 = stateno = 7001 ;&& time > 4
trigger1 = p2bodydist x <=30
trigger1 = p2bodydist y >=-25
trigger1 = p2movetype= H
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Jump lk]
type = ChangeState
value = 630
triggerall = var(59)>0
trigger1 = statetype = A
;trigger1 = ctrl
trigger1 = stateno = 600 && movehit
 ;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Jump mp]
type = ChangeState
value = 610
triggerall = var(59)>0
trigger1 = statetype = A
;trigger1 = ctrl
trigger1 = stateno = 630 && movehit
 ;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Jump mk]
type = ChangeState
value = 640
triggerall = var(59)>0
trigger1 = statetype = A
;trigger1 = ctrl
trigger1 = stateno = 610 && movehit && random <=300
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, AI Jump hp]
type = ChangeState
value = 620
triggerall = var(59)>0
triggerall = random <=300
trigger1 = statetype = A
;trigger1 = ctrl
trigger1 = stateno = 640 && movehit
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, AI Jump Heavy kick]
type = ChangeState
value = 650
triggerall = var(59)>0
triggerall = random <=300
trigger1 = statetype = A
;trigger1 = ctrl
trigger1 = stateno = 640 && movehit && random <=500
;------------------------------AI---------------------------------
; Stand Light Punch
[State -1, AI Crouch LK]
type = ChangeState
value = 430
triggerall = var(59)>=1  && random <=500
triggerall = statetype != A
triggerall = p2statetype != A
trigger1 = p2bodydist x <=30
trigger1 = ctrl
;===========================================================================
[State -1, AI Zero counter]
type=changestate
value=750
triggerall = var(59)>=1 ;&&roundstate=2;&&;(command="bdx"||command="bdy"||command="bdz"||command="bda"||command="bdb"||command="bdc")
triggerall=p2dist x>0&&power>=1000&&statetype!=A && random <=80
trigger1=stateno=150||stateno=152
trigger1=p2statetype !=A
trigger1=p2bodydist x <=20
;------------------------------AI---------------------------------
[State -1, AI Teleport fwd1]
type = ChangeState
value = 1600
triggerall = statetype != A
triggerall = ctrl = 1
triggerall = var(59)>=1
trigger1 = p2bodydist x > 19 && p2bodydist x < 135 && random <= 60
trigger1 = p2name = "Evil Ryu Hoshi"
;------------------------------AI---------------------------------
[State -1, AI Teleport fwd2]
type = ChangeState
value = 1602
triggerall = statetype != A
triggerall = ctrl = 1
triggerall = var(59)>=1
trigger1 = p2name != "Evil Ryu Hoshi"
trigger1 = p2bodydist x > 135 && random <= 60
trigger2 = p2name = "Evil Ryu Hoshi"
trigger2 = p2bodydist x > 135 && random <=60
;------------------------------AI---------------------------------
[State -1, AI Teleport bak1]
type = ChangeState
value = 1600
triggerall = statetype != A
triggerall = ctrl = 1
triggerall = var(59)>=1
trigger1 = p2bodydist x <= 30 && p2movetype = A && random <=60;> 19 && p2bodydist x < 135 && random <= 80
trigger1 = p2name = "Evil Ryu Hoshi"
;------------------------------AI---------------------------------
[State -1, AI Teleport bak2]
type = ChangeState
value = 1602
triggerall = statetype != A
triggerall = ctrl = 1
triggerall = var(59)>=1
trigger1 = p2bodydist x <= 30 && p2movetype = A && random <= 60;&& random <= 80> 19 && p2bodydist x < 135 && random <= 80
trigger1 = p2name = "Evil Ryu Hoshi"
;------------------------------AI---------------------------------
; Stand Light Punch
[State -1, AI Crouch hk]
type = ChangeState
value = 450
triggerall = var(59)>=1  ;&& random <=500
triggerall = statetype != A
trigger1 = (stateno = 430) && movehit
;trigger2 = (p2bodydist x = [31,179]) && (p2statetype !=A) && (p2movetype = A) && ctrl && (random <=200) && ctrl
;------------------------------AI---------------------------------
; Stand Light Punch
[State -1, AI Light tatzumaki]
type = ChangeState
value = 1200
triggerall = var(59)>=1  ;&& random <=500
triggerall = statetype != A
trigger1 = (stateno = 450) && movehit
trigger2 = (p2bodydist x = [31,179]) && (p2statetype !=A) && (p2movetype = A) && ctrl && (random <=200) && ctrl
ignorehitpause = 1
;---------------------------------------------------------------------------
; Run Fwd
[State -1, AI Run Fwd]
type = ChangeState
value = 100
triggerall = var(59)>=1
triggerall = stateno !=[100,106]
triggerall = prevstateno !=[100,106]
trigger1 = statetype != A
trigger1 = p2movetype != A
trigger1 = ctrl
trigger1 = (p2bodydist x >= 180) && (random <=200)
;---------------------------------------------------------------------------
; Run Fwd
[State -1, AI Roll]
type = ChangeState
value = 1700
triggerall = var(59)>=1
triggerall = stateno !=[100,106]
triggerall = prevstateno !=[100,106]
triggerall = statetype != A
trigger1 = p2movetype != A
trigger1 = ctrl
trigger1 = (p2bodydist x >= 180) && (random <=300)
trigger2 = (enemynear,movetype= A) &&(p2bodydist x = [40,60]) && (random <=300) && ctrl
;---------------------------------------------------------------------------
; Run Fwd
[State -1, AI Run Back]
type = ChangeState
value = 105
triggerall = var(59)>=1
triggerall = stateno !=[100,106]
triggerall = prevstateno !=[100,106]
triggerall = statetype != A
trigger1 = p2movetype != A
trigger1 = stateno = 1000 && p2movetype = H && animtime = 0 && random <=200
;===========================================================================
[State -1, Zero counter]
type=changestate
value=750
triggerall=var(59)<=0&&roundstate=2&&(command="bdx"||command="bdy"||command="bdz"||command="bda"||command="bdb"||command="bdc")
triggerall=p2dist x>0&&power>=1000&&statetype!=A
trigger1=stateno=150||stateno=152
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59)<1
triggerall = stateno !=[100,106]
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = stateno !=[100,106]
triggerall = var(59)<1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
;[State -1, Throw]
;type = ChangeState
;value = 800
;triggerall = command = "y" || command = "z"
;triggerall = statetype = S
;triggerall = ctrl
;triggerall = stateno != 100
;trigger1 = command = "holdfwd"
;trigger1 = p2bodydist X < 10
;trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
;trigger2 = command = "holdback"
;trigger2 = p2bodydist X < 10
;trigger2 = (p2statetype = S) || (p2statetype = C)
;trigger2 = p2movetype != H
;---------------------------------------------------------------------------
;charge
;[State -1, Charge]
;type = ChangeState
;value = 850
;triggerall=var(59)<=0
;triggerall = power < 3000
;triggerall = (command = "chargeb" && command = "chargey")
;triggerall = statetype != A
;trigger1 = ctrl
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59)<1
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = var(59)<1
triggerall = StateType = S || StateType = C
triggerall = ctrl
trigger1 = Command = "SJ"
trigger2 = command = "Super_Jump"
;trigger3 = command = "SSSuper_Jump"
;trigger4 = command = "SSSSuper_Jump"
;trigger5 = command = "SSSSSuper_Jump"
;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = var(59)<1
triggerall = Command = "holdup"
trigger1 = stateno = 420 && movehit
;---------------------------------------------------------------------------
[State -1, Guard Push stand]
type = ChangeState
value = 160
triggerall = var(59)<1
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push crouch]
type = ChangeState
value = 161
triggerall = var(59)<1
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = ChangeState
value = 162
triggerall = var(59)<1
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]
;---------------------------------------------------------------------------
;Begin the Recovery Roll
[State -1,Recovery roll]
type = VarSet
triggerall = var(59)<1
triggerall = roundstate = 2
;triggerall = (Stateno != 5100) && (Stateno != 5110)
trigger1 = (HitFall) && (command = "recoverf")
var(22) = 1
;---------------------------------------------------------------------------
;Begin the Recovery Roll
[State -1,Recovery roll]
type = VarSet
triggerall = var(59)<1
triggerall = roundstate = 2
;triggerall = (Stateno != 5100) && (Stateno != 5110)
trigger1 = (HitFall) && (command = "recoverb")
var(22) = 2
;---------------------------------------------------------------------------
;Recovery Roll Variable Set 2
[State -1,Recovery roll]
type = VarSet
trigger1 = Lose = 1
var(22) = 0
;---------------------------------------------------------------------------
[State -1, Teleport fwd long]
type = ChangeState
value = 1602
triggerall = var(59)<1
triggerall = command = "DP_xy" || command = "DP_xz" || command = "DP_zy"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Teleport bak long]
type = ChangeState
value = 1603
triggerall = var(59)<1
triggerall = command = "DPB_xy" || command = "DPB_xz" || command = "DPB_zy"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Teleport fwd short]
type = ChangeState
value = 1600
triggerall = var(59)<1
triggerall = command = "DP_ab" || command = "DP_ac" || command = "DP_cb"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Teleport bak short]
type = ChangeState
value = 1601
triggerall = var(59)<1
triggerall = command = "DPB_ab" || command = "DPB_ac" || command = "DPB_cb"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;===========================================================================
;-----------------------------Super Attacks-------------------------------
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Shun Goku Satsu]
type = ChangeState
value = 3600
triggerall = var(59)<1
triggerall = Statetype != A
triggerall = command = "SGS";"Misogi"
triggerall = power >=3000
trigger1 = ctrl
trigger2=(stateno=[200,499]) ;M&& movecontact
trigger3=(stateno=[1100,1499]) && movecontact
;---------------------------------------------------------------------------
[State -1, Shinkuu Hadouken]
type = ChangeState
value = 3000
triggerall = var(59)<1
triggerall = Statetype != A
triggerall = command = "MessatsuGouHadou"
triggerall = power >=1000
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1100,1499]) && movecontact
;---------------------------------------------------------------------------
[State -1, Misogi]
type = ChangeState
value = 3795
triggerall = var(59)<1
triggerall = Statetype != A
triggerall = command = "Misogi"
triggerall = power >=2000
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1100,1499]) && movecontact
;---------------------------------------------------------------------------
[State -1, Tenma Gou Zankuu]
type = ChangeState
value = 3005
triggerall = var(59)<1
triggerall = Statetype = A
triggerall = command = "MessatsuGouShoryuu"
triggerall = power >=1000
trigger1 = ctrl
trigger2=(stateno=[600,650]) && movecontact
trigger3=(stateno=[1100,1499]) && movecontact
;---------------------------------------------------------------------------
[State -1, Shoryuu Reppa]
type = ChangeState
value = 3100
triggerall = var(59)<1
triggerall = Statetype != A
triggerall = command = "MessatsuGouShoryuu"
triggerall = power >=1000
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1100,1499]) && movecontact
;---------------------------------------------------------------------------
;[State -1, Super Falling kick]
;type = ChangeState
;value = 3500
;triggerall = var(59)<1
;triggerall = Statetype = A
;triggerall = command = "MessatsuGouShoryuu"
;triggerall = power >=1000
;trigger1 = ctrl
;trigger2=(stateno=[600,650]) && movecontact
;trigger3=(stateno=[1100,1499]) && movecontact
;trigger4=(stateno=1405) && (time >= 3)
;---------------------------------------------------------------------------
[State -1, Shinkuu tatzumaki]
type = ChangeState
value = 3200
triggerall = var(59)<1
triggerall = Statetype != A
triggerall = command = "ShinkuuTatzumaki"
triggerall = power >=1000
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1100,1499]) && movecontact
;---------------------------------------------------------------------------
[State -1, Shinkuu tatzumaki Aereo]
type = ChangeState
value = 3220
triggerall = var(59)<1
triggerall = Statetype = A
triggerall = command = "AirShinkuuTatzumaki"
triggerall = power >=1000
trigger1 = ctrl
trigger2=(stateno=[600,650]) && movecontact
trigger3=(stateno=[1100,1499]) && movecontact
;===========================================================================
;-----------------------------Special Attacks-------------------------------
;===========================================================================
[State -1, Shoryuuken]
type = ChangeState
value = 1100
triggerall = var(59)<1
triggerall = Statetype != A
triggerall = command = "DP_x"
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
[State -1, Shoryuuken2]
type = ChangeState
value = 1101
triggerall = var(59)<1
triggerall = Statetype != A
triggerall = command = "DP_y"
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
[State -1, Shoryuuken3]
type = ChangeState
value = 1102
triggerall = var(59)<1
triggerall = Statetype != A
triggerall = command = "DP_z"
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
[State -1, Air Hadouken]
type = ChangeState
value = 1005
triggerall = var(59)<1
triggerall = numhelper(1000) = 0
triggerall = Statetype = A
triggerall = command = "QCF_x"||command = "QCF_y"||command = "QCF_z"
triggerall = stateno !=[100,106]
trigger1 = ctrl
trigger2=(stateno=[600,650]) && movecontact
;---------------------------------------------------------------------------
; Hadouken
[State -1, Fire Hadouken]
type = ChangeState
value = 1010
triggerall = var(59)<1
triggerall = numhelper(1000)=0
triggerall = command = "HCB_x" || command = "HCB_y" || command = "HCB_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,499]) && movecontact
;---------------------------------------------------------------------------
[State -1, Hadouken]
type = ChangeState
value = 1000
triggerall = var(59)<1
triggerall = numhelper(1000) = 0
triggerall = Statetype != A
triggerall = command = "QCF_x"||command = "QCF_y"||command = "QCF_z"
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
[State -1, Roll]
type = ChangeState
value = 1700
triggerall = var(59)<1
triggerall = numhelper(1000) = 0
triggerall = Statetype != A
triggerall = command = "QCB_x"||command = "QCB_y"||command = "QCB_z"
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Air Tatzumaki]
type = ChangeState
value = 1220
triggerall = var(59)<1
triggerall = Statetype = A
triggerall = command = "QCB_a"||command = "QCB_b"||command = "QCB_c"
triggerall = stateno !=[100,106]
trigger1 = ctrl
trigger2=(stateno=[600,650]) && movecontact
;---------------------------------------------------------------------------
[State -1, Tatzumaki]
type = ChangeState
value = 1200
triggerall = var(59)<1
triggerall = Statetype != A
triggerall = command = "QCB_a"||command = "QCB_b"||command = "QCB_c"
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
[State -1, Falling kick1]
type = ChangeState
value = 1400
triggerall = var(59)<1
triggerall = command = "QCF_a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,650]) && movecontact
;---------------------------------------------------------------------------
[State -1, Falling kick2]
type = ChangeState
value = 1401
triggerall = var(59)<1
triggerall = command = "QCF_b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,650]) && movecontact
;---------------------------------------------------------------------------
[State -1, Falling kick3]
type = ChangeState
value = 1402
triggerall = var(59)<1
triggerall = command = "QCF_c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,650]) && movecontact
;---------------------------------------------------------------------------
;Throw
[State -1, Throw Fwd]
type = ChangeState
value = 800
triggerall = var(59)<1
triggerall = command = "x" && command = "a"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
;trigger1 = command = "holdfwd"
;trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;trigger2 = command = "holdback"
;trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59)<1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ( stateno = 230 || stateno = 400 || stateno = 430)  && movecontact
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch+F]
type = ChangeState
value = 300
triggerall = var(59)<1
triggerall = command = "holdfwd" && command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430)  && movecontact
 ;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59)<1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430)  && movecontact
ignorehitpause=1
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59)<1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210 || stateno = 240 || stateno = 410 || stateno = 440|| stateno = 200|| stateno = 400||stateno = 230|| stateno = 430)  && movecontact
ignorehitpause=1
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Medium Kick+f]
type = ChangeState
value = 310
triggerall = var(59)<1
triggerall = command = "holdfwd" && command ="b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59)<1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ( stateno = 200 || stateno = 400 || stateno = 430)  && movecontact
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(59)<1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430)  && movecontact
ignorehitpause=1
;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59)<1
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210 || stateno = 240 || stateno = 410 || stateno = 440|| stateno = 200|| stateno = 400||stateno = 230|| stateno = 430)  && movecontact
ignorehitpause=1
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59)<1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = ( stateno = 230 || stateno = 200 || stateno = 430)  && movecontact
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(59)<1
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430)  && movecontact
ignorehitpause=1
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(59)<1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 210 || stateno = 240 || stateno = 410 || stateno = 440|| stateno = 200|| stateno = 400||stateno = 230|| stateno = 430)  && movecontact;  && movecontact
ignorehitpause=1
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59)<1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = ( stateno = 230 || stateno = 400 || stateno = 200)  && movecontact
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59)<1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430)  && movecontact
ignorehitpause=1
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(59)<1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 210 || stateno = 240 || stateno = 410 || stateno = 440|| stateno = 200|| stateno = 400||stateno = 230|| stateno = 430)  && movecontact; && movecontact
ignorehitpause=1
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59)<1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59)<1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 630)  && movecontact
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59)<1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 610 || stateno = 640 ||stateno = 600 || stateno = 630)  && movecontact
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59)<1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600  && movecontact
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = var(59)<1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 630 || stateno = 600|| stateno = 610)  && movecontact
;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59)<1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 610 || stateno = 640 ||stateno = 600 || stateno = 630)  && movecontact
