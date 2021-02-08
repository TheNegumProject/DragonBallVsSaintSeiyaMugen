
;supercombos

[Command]
name = "wall1"
command = /z
time = 170
[Command]
name = "wall2"
command = /z
time = 170

;onda level 1
[Command]
name = "onda de hades"
command =B,DB,D, DF,F, a
time = 50

;starlight xtinction
[Command]
name = "starlight xtinction"
command =F,DF,D, DB,B, c
time = 50
triggerall = power <= 200



;onda level 2
[Command]
name = "onda de"
command =B,DB,D, DF,F, b
time = 50

;stdust
[Command]
name = "stdust"
command = B, DB, D, DF, F, c
time = 30

;teletransportacion
[Command]                       
name = "Teleportation" 
command = a+x 

;Dohko
[Command]
name = "afrodita"
command =B,DB,D, DF,F, y
time = 50

[Command]
name = "ataque de la oxtia ahora si"
command =B,DB,D, DF,F, z
time = 50

;comboooo yeeeee
[Command]
name = "combo"
command = B,DB,D, DF,F, x
time = 50

;----------------------------------


; magias normales

;-------------------------------
;onda debil
[Command]
name = "onda"
command =D, DF, F, x
time = 20


;onda media
[Command]
name = "onda1"
command =D, DF, F, y
time = 20

;onda fuerte
[Command]
name = "onda2"
command =D, DF, F, z
time = 20


;----------------------------
;acometida debil
[Command]
name = "corre"
command =D, DB, B, x
time = 20



;acometida media
[Command]
name = "FEI"
command =D, DB, B, y
time = 20


;acometida fuerte
[Command]
name = "corrida"
command =D, DB, B, z
time = 20




;------------------------------------------
;bola al aire debil
[Command]
name = "bolar"
command =D, DB, B, a
time = 20

;;bola al aire media
[Command]
name = "bolar1"
command =D, DB, B, b
time = 20


;bola al aire fuerte
[Command]
name = "bolar2"
command =D, DB, B, c
time = 20


;----------------------------------------------
;ataque  chupa energia
[Command]
name = "mega_block"
command = z
time = 50


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
name = "foward_z"
command = /$F,z
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
;---------------------------

[Command]
name = "wall1"
command = /b
time = 1
[Command]
name = "wall2"
command = /y
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
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
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


;Crystal wall(preversiontest)
[State -1]
type = ChangeState
value = 1000
triggerall = command = "wall1"
triggerall = command = "wall2"
triggerall = power >= 50 
trigger1 = statetype != A
trigger1 = ctrl = 1

;Cosmos Charge
[State -1: 		Ki Charge]
type 			= ChangeState
value 		= 7040
triggerall = PalNo = [1, 6]
triggerall = p2stateno < 99999 
triggerall 		= (Command = "hold_b") && (Command = "hold_c") && (Command != "holdfwd") && (Command != "holdback") && (Var(2) <= 0)
trigger1		= (StateType = S) && (Ctrl)
trigger2 = stateno = 2000


;Cosmos Charge (AI Only)
[State -1]
type = ChangeState
value = 7040
triggerall = PalNo = [7, 12]
triggerall = p2stateno < 99999 
triggerall = Pos Y >= 0
triggerall = command = "hold_b"
triggerall = command = "hold_c"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, ]
type = ChangeState
value = 800
triggerall = command = "onda de hades"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1


[State -1, ]
type = ChangeState
value = 799
triggerall = command = "onda de"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1, ]
type = ChangeState
value = 1800
triggerall = command = "starlight xtinction"
triggerall = life <= 100
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

;--------------------------------------------
;stdust
[State -1, ]
type = ChangeState
value = 6100
triggerall = command = "stdust"
triggerall = life <= 100
triggerall = power >= 3000 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (AnimElem = 4,>=3)


;---------------------------------------------------------------------------
;Crystal wall(preversiontest)
[State -1]
type = ChangeState
value = 1000
triggerall = command = "wall1"
triggerall = command = "wall2"
triggerall = power >= 50 
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Teleportation
[State -1]
type = ChangeState
value = 7777
triggerall = command = "Teleportation"
triggerall = power >= 25
triggerall = NumProjID(2001) = 0
triggerall = StateNo != [1090, 1098]

trigger1 = statetype = S         

trigger2 = stateno = 2000  
;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 7777
triggerall = command = "ataque de la oxtia ahora si"
triggerall = power >= 3000 
trigger1 = statetype != A
trigger1 = ctrl = 1



[State -1, ]
type = ChangeState
value = 7100
triggerall = command = "afrodita"
triggerall = power >= 2000 
trigger1 = statetype != A
trigger1 = ctrl = 1



[State -1, ]
type = ChangeState
value = 3101
triggerall = command = "combo"
triggerall = power >= 1000 
trigger1 = statetype != A
trigger1 = ctrl = 1
;------------------------------------------------------

[State -1, ]
type = ChangeState
value = 4000
triggerall = command = "onda"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = NumProj =0

[State -1, ]
type = ChangeState
value = 4004
triggerall = command = "onda1"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = NumProj =0

[State -1, ]
type = ChangeState
value = 4005
triggerall = command = "onda2"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = NumProj =0



[State -1, ]
type = ChangeState
value = 4009
triggerall = command = "onda"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = NumProj =0

[State -1, ]
type = ChangeState
value = 7029
triggerall = command = "onda1"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = NumProj =0

[State -1, ]
type = ChangeState
value = 7030
triggerall = command = "onda2"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = NumProj =0





;-------------------------


[State -1, ]
type = ChangeState
value = 4002
triggerall = command = "FEI"
trigger1 = statetype = S
trigger1 = ctrl



[State -1, ]
type = ChangeState
value = 4003
triggerall = command = "corrida"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, ]
type = ChangeState
value = 4001
triggerall = command = "corre"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------


[State -1, ]
type = ChangeState
value = 4012
triggerall = command = "bolar"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = NumProj =0



[State -1, ]
type = ChangeState
value = 4011
triggerall = command = "bolar1"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = NumProj =0


[State -1, ]
type = ChangeState
value = 4010
triggerall = command = "bolar2"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = NumProj =0


;--------------------------------------------




[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

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

[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 216
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = P2bodydist X <= 15
trigger1 = command != "holddown"
trigger1 = ctrl = 1
------------------------
[State -1]
type = ChangeState
value = 201
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
-------------------------
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 241
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6


;---------------------------------------------------------------------------
;Taunt

[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 411
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------


[State -1]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 611
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------

[State -1 ]
type = ChangeState
value = 641
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------


;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
;                                   ALL SELFSTATE
;--------------------------------------------------
