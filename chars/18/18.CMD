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

[Command]
name = "Hyper1"     ;Required (do not remove)
command = ~D,DB,B,D,DB,B,x
time = 25

[Command]
name = "Hyper1"     ;Required (do not remove)
command = ~D,DB,B,D,DB,B,y
time = 25

[Command]
name = "Hyper1"     ;Required (do not remove)
command = ~D,DB,B,D,DB,B,z
time = 25

[Command]
name = "Hyper2"     ;Required (do not remove)
command = ~D,DB,B,DB,D,DF,F,a
time = 30

[Command]
name = "Hyper2"     ;Required (do not remove)
command = ~D,DB,B,DB,D,DF,F,b
time = 30

[Command]
name = "Hyper2"     ;Required (do not remove)
command = ~D,DB,B,DB,D,DF,F,c
time = 30

[Command]
name = "Hyper3"     ;Required (do not remove)
command = ~D,DB,B,F,x
time = 20

[Command]
name = "Hyper3"     ;Required (do not remove)
command = ~D,DB,B,F,y
time = 20

[Command]
name = "Hyper3"     ;Required (do not remove)
command = ~D,DB,B,F,z
time = 20

[Command]
name = "Hyper4"     ;Required (do not remove)
command = ~D,DF,F,D,DF,F,x
time = 25

[Command]
name = "Hyper4"     ;Required (do not remove)
command = ~D,DF,F,D,DF,F,y
time = 25

[Command]
name = "Hyper4"     ;Required (do not remove)
command = ~D,DF,F,D,DF,F,z
time = 25

[Command]
name = "l33t"     ;Required (do not remove)
command = ~D,DF,F, x+y

[Command]
name = "l33t"     ;Required (do not remove)
command = ~D,DF,F, y+z

[Command]
name = "l33t"     ;Required (do not remove)
command = ~D,DF,F, x+z


[Command] ;Charge back, then forward + z
name = "triple"
command = ~90$D, B, x

[Command] ;Charge back, then forward + z
name = "triple"
command = ~90$D, B, y

[Command] ;Charge back, then forward + z
name = "triple"
command = ~90$D, B, z
time = 30

[Command]
name = "BFx"     ;Required (do not remove)
command = ~B, F, x
time = 10

[Command]
name = "BFy"     ;Required (do not remove)
command = ~B, F, y
time = 10

[Command]
name = "BFz"     ;Required (do not remove)
command = ~B, F, z
time = 10

[Command]
name = "FBFx"     ;Required (do not remove)
command = ~F, B, F, x

[Command]
name = "FBFy"     ;Required (do not remove)
command = ~F, B, F, y

[Command]
name = "FBFz"     ;Required (do not remove)
command = ~F, B, F, z

[Command]
name = "FBFa"     ;Required (do not remove)
command = ~F, B, F, a

[Command]
name = "FBFb"     ;Required (do not remove)
command = ~F, B, F, b

[Command]
name = "FBFc"     ;Required (do not remove)
command = ~F, B, F, c

[Command]
name = "QCFx"     ;Required (do not remove)
command = ~D, DF, F, x

[Command]
name = "QCFy"     ;Required (do not remove)
command = ~D, DF, F, y

[Command]
name = "QCFz"     ;Required (do not remove)
command = ~D, DF, F, z

[Command]
name = "QCBx"     ;Required (do not remove)
command = ~D, DB, B, x

[Command]
name = "QCBy"     ;Required (do not remove)
command = ~D, DB, B, y

[Command]
name = "QCBz"     ;Required (do not remove)
command = ~D, DB, B, z

[Command]
name = "BCDx"     ;Required (do not remove)
command = ~B, DB, D, x

[Command]
name = "BCDy"     ;Required (do not remove)
command = ~B, DB, D, y

[Command]
name = "BCDz"     ;Required (do not remove)
command = ~B, DB, D, z

[Command]
name = "QCFa"     ;Required (do not remove)
command = ~D, DF, F, a

[Command]
name = "QCFb"     ;Required (do not remove)
command = ~D, DF, F, b

[Command]
name = "QCFc"     ;Required (do not remove)
command = ~D, DF, F, c

[Command]
name = "FCDk"     ;Required (do not remove)
command = ~F, DF, D, a

[Command]
name = "FCDk"     ;Required (do not remove)
command = ~F, DF, D, b

[Command]
name = "FCDk"     ;Required (do not remove)
command = ~F, DF, D, c

[Command]
name = "DPx"     ;Required (do not remove)
command = ~F, D, DF, x

[Command]
name = "DPy"     ;Required (do not remove)
command = ~F, D, DF, y

[Command]
name = "DPz"     ;Required (do not remove)
command = ~F, D, DF, z

[Command]
name = "DPa"     ;Required (do not remove)
command = ~F, D, DF, a

[Command]
name = "DPb"     ;Required (do not remove)
command = ~F, D, DF, b

[Command]
name = "DPc"     ;Required (do not remove)
command = ~F, D, DF, c

[Command]
name = "DUa"     ;Required (do not remove)
command = ~DB, U, a

[Command]
name = "DUb"     ;Required (do not remove)
command = ~DB, U, b

[Command]
name = "DUc"     ;Required (do not remove)
command = ~DB, U, c

[Command]
name = "HCBx"     ;Required (do not remove)
command = ~F, DF, D, DB, B, x
time = 20

[Command]
name = "HCBy"     ;Required (do not remove)
command = ~F, DF, D, DB, B, y
time = 20

[Command]
name = "HCBz"     ;Required (do not remove)
command = ~F, DF, D, DB, B, z
time = 20

[Command]
name = "Hyper5"     ;Required (do not remove)
command = ~B, DB, D, DF, F, x
time = 20

[Command]
name = "Hyper5"     ;Required (do not remove)
command = ~B, DB, D, DF, F, y
time = 20

[Command]
name = "Hyper5"     ;Required (do not remove)
command = ~B, DB, D, DF, F, z
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
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "Flying";Required (do not remove)
command = y+b
time = 1

[Command]
name = "Roman";Required (do not remove)
command = a+y+c
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
name = "holdz";Required (do not remove)
command = /z
time = 1

[Command]
name = "holdc";Required (do not remove)
command = /c
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

;Kikkoken_X
[State -1]
type = Varset
var(55) = ifelse(var(55),0,1)
triggerall = command = "start" 
trigger1 = Roundstate < 2


;Kikkoken_X
[State -1]
type = ChangeState
value = 3000
triggerall = palno < 11
triggerall = command = "Hyper1" && power >= 1000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

[State -1]
type = ChangeState
value = 3030
triggerall = palno < 11
triggerall = command = "Hyper4" && power >= 1000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

[State -1]
type = ChangeState
value = 3040
triggerall = palno < 11
triggerall = !NumHelper(3045)
triggerall = command = "Hyper4" && power >= 1000
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
triggerall = palno < 11
type = ChangeState
value = 3010
triggerall = command = "Hyper2" && power >= 2000
triggerall = statetype != A
trigger1 = ctrl = 1

;Kikkoken_X
[State -1]
type = ChangeState
value = ifelse(statetype=A,3050,3020)
triggerall = command = "Hyper3" && power >= 1000
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

[State -1]
type = ChangeState
value = 3060
triggerall = palno >= 11
triggerall = command = "Hyper5" && power >= 1000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

[State -1]
type = ChangeState
value = 3090
triggerall = command = "l33t" && power = 3000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1050
triggerall = palno < 11
triggerall = command = "HCBx"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1051
triggerall = palno < 11
triggerall = command = "HCBy"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1052
triggerall = palno < 11
triggerall = command = "HCBz"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1010
triggerall = palno < 11
triggerall = command = "DPa"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = (stateno = [150,153]) && power >= 1500


;Kikkoken_X
[State -1]
type = ChangeState
value = 1011
triggerall = palno < 11
triggerall = command = "DPb"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = (stateno = [150,153]) && power >= 1500

;Kikkoken_X
[State -1]
type = ChangeState
value = 1012
triggerall = palno < 11
triggerall = command = "DPc"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = (stateno = [150,153]) && power >= 1500

;Kikkoken_X
[State -1]
type = ChangeState
value = 1040
triggerall = palno < 11
triggerall = command = "DPx"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1041
triggerall = palno < 11
triggerall = command = "DPy"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1042
triggerall = palno < 11
triggerall = command = "DPz"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact


;Kikkoken_X
[State -1]
type = ChangeState
value = 1020
triggerall = palno < 11
triggerall = command = "QCFa" || command = "QCFb" || command = "QCFc"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699]) 
trigger2 = movecontact
trigger3 = stateno = 902

;Kikkoken_X
[State -1]
type = ChangeState
value = 1000+(30*(statetype =A))
triggerall = palno < 11
triggerall = !NumHelper(11000)
triggerall = command = "QCFx"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
trigger3 = stateno = 902
trigger4 = (stateno = [150,155]) && power >= 1500 

;Kikkoken_X
[State -1]
type = ChangeState
value = 1001+(30*(statetype =A))
triggerall = palno < 11
triggerall = !NumHelper(11000)
triggerall = command = "QCFy"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
trigger3 = stateno = 902
trigger4 = (stateno = [150,155]) && power >= 1500 


;Kikkoken_X
[State -1]
type = ChangeState
triggerall = palno < 11
value = 1002+(30*(statetype =A))
triggerall = !NumHelper(11000)
triggerall = command = "QCFz"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
trigger3 = stateno = 902
trigger4 = (stateno = [150,155]) && power >= 1500 

;Kikkoken_X
[State -1]
type = ChangeState
value = 1120
triggerall = palno = 11
triggerall = !NumHelper(11000)
triggerall = statetype != A
triggerall = command = "triple"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1130
triggerall = palno = 11
triggerall = command = "QCBx"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1132
triggerall = palno = 11
triggerall = command = "QCBy"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1134
triggerall = palno = 11
triggerall = command = "QCBz"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact


;Kikkoken_X
[State -1]
type = ChangeState
value = 1110
triggerall = palno = 11
triggerall = !NumHelper(11000)
triggerall = statetype != A
triggerall = command = "FBFx"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact


;Kikkoken_X
[State -1]
type = ChangeState
value = 1111
triggerall = palno = 11
triggerall = statetype != A
triggerall = !NumHelper(11000)
triggerall = command = "FBFy"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact


;Kikkoken_X
[State -1]
type = ChangeState
triggerall = palno = 11
value = 1112
triggerall = statetype != A
triggerall = !NumHelper(11000)
triggerall = command = "FBFz"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact



;Kikkoken_X
[State -1]
type = ChangeState
value = 1100
triggerall = palno = 11
triggerall = !NumHelper(11000)
triggerall = statetype != A
triggerall = command = "BFx"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = (stateno = [150,155]) && power >= 1500 

;Kikkoken_X
[State -1]
type = ChangeState
value = 1101
triggerall = palno = 11
triggerall = statetype != A
triggerall = !NumHelper(11000)
triggerall = command = "BFy"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = (stateno = [150,155]) && power >= 1500 


;Kikkoken_X
[State -1]
type = ChangeState
triggerall = palno = 11
value = 1102
triggerall = statetype != A
triggerall = !NumHelper(11000)
triggerall = command = "BFz"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = (stateno = [150,155]) && power >= 1500 

;Kikkoken_X
[State -1]
type = ChangeState
triggerall = palno = 11
value = 1140
triggerall = statetype != A
triggerall = command = "BCDx"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
triggerall = palno = 11
value = 1141
triggerall = statetype != A
triggerall = command = "BCDy"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
triggerall = palno = 11
value = 1142
triggerall = statetype != A
triggerall = command = "BCDz"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
triggerall = palno = 11
value = 1150
triggerall = statetype != A
triggerall = command = "FCDk"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
triggerall = palno = 11
value = 1160
triggerall = statetype = A
triggerall = command = "FCDk"
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699])  
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1300
triggerall = palno = 12
triggerall = !NumHelper(11000)
triggerall = statetype != A
triggerall = command = "QCFx"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = (stateno = [150,155]) && power >= 1500 

;Kikkoken_X
[State -1]
type = ChangeState
value = 1301
triggerall = palno = 12
triggerall = statetype != A
triggerall = !NumHelper(11000)
triggerall = command = "QCFy"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = (stateno = [150,155]) && power >= 1500 


;Kikkoken_X
[State -1]
type = ChangeState
triggerall = palno = 12
value = 1302
triggerall = statetype != A
triggerall = !NumHelper(11000)
triggerall = command = "QCFz"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = (stateno = [150,155]) && power >= 1500 

;Kikkoken_X
[State -1]
type = ChangeState
value = 1310
triggerall = palno = 12
triggerall = statetype != A
triggerall = command = "FBFx" || command = "FBFy" || command = "FBFz"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1330
triggerall = palno = 12
triggerall = statetype != A
triggerall = command = "FBFa" 
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1332
triggerall = palno = 12
triggerall = statetype != A
triggerall = command = "FBFb" 
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1334
triggerall = palno = 12
triggerall = statetype != A
triggerall = command = "FBFc"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1320
triggerall = palno = 12
triggerall = command = "DUa"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1321
triggerall = palno = 12
triggerall = command = "DUb"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1322
triggerall = palno = 12
triggerall = command = "DUc"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
;===========================================================================


;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = (command = "y") || (command = "z")
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" && (statetype = S)
trigger1 = p2bodydist X < 8
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback" && (statetype = S)
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;trigger3 = command = "holdfwd" && (statetype = A)
;trigger3 = p2bodydist X < 3
;trigger3 = p2statetype = A
;trigger4 = command = "holdback" && (statetype = A)
;trigger4 = p2bodydist X < 5
;trigger4 = p2statetype = A 

;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 810
triggerall = (command = "b") || (command = "c")
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" && (statetype = S)
trigger1 = p2bodydist X < 8
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback" && (statetype = S)
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;trigger3 = command = "holdfwd" && (statetype = A)
;trigger3 = p2bodydist X < 3
;trigger3 = p2statetype = A
;trigger4 = command = "holdback" && (statetype = A)
;trigger4 = p2bodydist X < 5
;trigger4 = p2statetype = A 

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100+(statetype=A)
trigger1 = (command = "FF") && (stateno !=[100,106]) && (Var(2) < 2)
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105+(statetype=A)
trigger1 = (command = "BB") && (stateno !=[100,106]) && (Var(2) < 2)
trigger1 = ctrl

;Build Power
[State -1, Run Fwd]
type = ChangeState
value = 198
triggerall = power < 3000
trigger1 = command = "holdz" && command = "holdc"
trigger1 = statetype != A
trigger1 = ctrl

;Build Power
[State -1, Run Fwd]
type = ChangeState
value = 900+(statetype=A)
triggerall = command = "Flying" && Var(5) = 0
trigger1 = ctrl
trigger2 = stateno = 50

;Roman Cancel
[State -1, Roman Cancel]
type = ChangeState
value = 998
triggerall = command = "Roman" 
triggerall = power >= 1000 
trigger1 = hitdefattr = SCA, NA, SA
trigger1 = movecontact

;Stand Light Punch
;-ｧち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = stateno = 200 && Anim = 201
trigger1 = movecontact

;Stand Light Punch
;-ｧち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 301
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = stateno = 300
trigger1 = movecontact

;Stand Light Punch
;-ｧち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 302
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = stateno = 301
trigger1 = movecontact

;Stand Light Punch
;-ｧち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 305
triggerall = command = "y"
triggerall = command = "holdup"
trigger1 = stateno = 440 
trigger1 = movecontact

;Stand Light Punch
;-ｧち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 310
triggerall = command = "z"
triggerall = command = "holdup"
trigger1 = stateno = 410
trigger1 = movecontact

;Stand Light Punch
;-ｧち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 311
triggerall = command = "c"
triggerall = command = "holdfwd"
trigger1 = stateno = 310
trigger1 = movecontact

;Stand Light Punch
;-ｧち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 320
triggerall = command = "y"
triggerall = command = "holdfwd"
trigger1 = stateno = 220
trigger1 = movecontact

;Stand Light Punch
;-ｧち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 321
triggerall = command = "z"
triggerall = command = "holdback"
trigger1 = stateno = 320
trigger1 = movecontact

;Stand Light Punch
;-ｧち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 325
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = stateno = 220
trigger1 = movecontact

;Stand Light Punch
;-ｧち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 326
triggerall = command = "c"
triggerall = command = "holdup"
trigger1 = stateno = 325
trigger1 = movecontact

;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

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
trigger2 = (stateno = 200) && movecontact && Var(55) !=1
trigger3 = (stateno = 230) && movecontact && Var(55) !=1

;Hakyoku Ken Double Fist
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && movecontact && Var(55) !=1
trigger3 = (stateno = 240) && movecontact && Var(55) !=1


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
trigger2 = (stateno = 200) && movecontact && Var(55) !=1
trigger3 = (stateno = 230) && movecontact && Anim = 231
 
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
trigger2 = (stateno = 200) && movecontact && Var(55) !=1
trigger3 = (stateno = 230) && movecontact && Var(55) !=1

;Sokuto Geri
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && movecontact 
trigger3 = (stateno = 240) && movecontact && Var(55) !=1

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
trigger2 = movecontact && Var(55) !=1
trigger3 = (stateno = 200) && movecontact && Var(55) !=1
trigger4 = (stateno = 230) && movecontact && Var(55) !=1

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = movecontact && Var(55) !=1
trigger3 = (stateno = 200) && movecontact && Var(55) !=1
trigger4 = (stateno = 230) && movecontact && Var(55) !=1


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
trigger2 = movecontact && Var(55) !=1


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
trigger2 = movecontact && Var(55) !=1
trigger3 = (stateno = 210) && movecontact && Var(55) !=1
trigger4 = (stateno = 240) && movecontact && Var(55) !=1

[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = movecontact && Var(55) !=1
trigger3 = (stateno = 210) && movecontact && Var(55) !=1
trigger4 = (stateno = 240) && movecontact && Var(55) !=1

;Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 630) && MoveContact


;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 630) && MoveContact
trigger5 = (stateno = 640) && MoveContact


;---------------------------------------------------------------------------
;Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 630) && MoveContact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 630) && MoveContact
trigger5 = (stateno = 640) && MoveContact

;Razz
[State -1, Run Fwd]
type = ChangeState
value = 195
trigger1 = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------
