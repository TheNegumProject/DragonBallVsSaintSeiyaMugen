;-| Super Motions |------------------------------------------------------

[Command]
Name= "super_misil_x"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
Name= "super_misil_y"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
Name= "super_misil_z"
command = ~D, DF, F, D, DF, F, z
time = 20

;Aurora del Norte
[Command]
name = "aurora"
command = B, DB, D, DF, F, b
time = 50

[Command]
name = "Polvo"
command = B, DB, D, DF, F, a
time = 50

;Ejecucion Aurora
[Command]
name = "Aurore"
command = B, DB, D, DF, F, c
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
Name= "misil_x"
command = ~D, DF, F, x

[Command]
Name= "misil_y"
command = ~D, DF, F, y

[Command]
Name= "misil_z"
command = ~D, DF, F, z


;-| Double Tap |-----------------------------------------------------------
[Command]
Name= "FF";Required (do not remove)
command = F, F
time = 10

[Command]
Name= "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
Name= "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
Name= "ab"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
Name= "fwd_x"
command = /F,x
time = 1

[Command]
Name= "fwd_y"
command = /F,y
time = 1

[Command]
Name= "fwd_z"
command = /F,z
time = 1

[Command]
Name= "fwd_a"
command = /F,a
time = 1

[Command]
Name= "fwd_b"
command = /F,b
time = 1

[Command]
Name= "fwd_c"
command = /F,c
time = 1

[Command]
Name= "downfwd_a"
command = /DF,a
time = 1

[Command]
Name= "downfwd_b"
command = /DF,b
time = 1

[Command]
Name= "back_a"
command = /B,a
time = 1

[Command]
Name= "back_b"
command = /B,b
time = 1

[Command]
Name= "back_c"
command = /B,c
time = 1

[Command]
Name= "down_a"
command = /$D,a
time = 1

[Command]
Name= "down_b"
command = /$D,b
time = 1

[Command]
Name= "down_c"
command = /$D,c
time = 1

[Command]
Name= "fwd_ab"
command = /F, a+b
time = 1

[Command]
Name= "back_ab"
command = /B, a+b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
Name= "a"
command = a
time = 1

[Command]
Name= "b"
command = b
time = 1

[Command]
Name= "c"
command = c
time = 1

[Command]
Name= "x"
command = x
time = 1

[Command]
Name= "y"
command = y
time = 1

[Command]
Name= "z"
command = z
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
Name= "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
Name= "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
Name= "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
Name= "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1=command="command_name"
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
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1=command="BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1=command="FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;===========================================================================
; super misiles
[State -1]
type = ChangeState
value = 3000
triggerall=command="super_misil_x"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200, 450]
trigger2 = movecontact = 1
[State -1]
type = ChangeState
value = 3000
triggerall=command="super_misil_y"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200, 450]
trigger2 = movecontact = 1

[State -1]
type = ChangeState
value = 3000
triggerall=command="super_misil_z"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200, 450]
trigger2 = movecontact = 1
Stand_x

;---------------------------------------------------------------------------
; Polvo de diamantes / QCF+XA
[State -1,/ QCF+XA]
type = ChangeState
value = 3050
triggerall = command = "Polvo"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 220
trigger4 = movehit = 1
trigger5 = stateno = 230
trigger5 = movehit = 1
trigger6 = stateno = 240
trigger6 = movehit = 1
trigger7 = stateno = 250
trigger7 = movehit = 1
trigger8 = stateno = 400
trigger8 = movehit = 1
trigger9 = stateno = 410
trigger9 = movehit = 1
trigger10 = stateno = 430
trigger10 = movehit = 1
trigger11 = stateno = 440
trigger11 = movehit = 1
trigger12 = stateno = 450
trigger12 = movehit = 1
trigger13 = stateno = 460
trigger13 = movehit = 1

;===========================================================================
;-------------------------------------------------
;Ejecucion Aurora
[State -1]
type = ChangeState
value = 6262
triggerall = command = "Aurore" ;
triggerall = life <= 400
triggerall = power >= 3000 ;Level 3
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [1104, 1105]);Cancel ground moves
trigger2 = movecontact

;===========================================================================
;Aurora del Norte
[State -1]
type = ChangeState
value = 3710
triggerall = command = "aurora"  
triggerall = command != "holddown"
triggerall = power >= 2000 
trigger1 = statetype = S
trigger1 = p2statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; misiles
[State -1]
type = ChangeState
value = 1000
triggerall=command="misil_x"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200, 450]
trigger2 = movecontact = 1

[State -1]
type = ChangeState
value = 1010
triggerall=command="misil_y"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200, 450]
trigger2 = movecontact = 1

[State -1]
type = ChangeState
value = 1020
triggerall=command="misil_z"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200, 450]
trigger2 = movecontact = 1
Stand_x
;===========================================================================

[State -1]
type = ChangeState
value = 200
triggerall=command="x"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 7

;---------------------------------------------------------------------------
;Stand_y
[State -1]
type = ChangeState
value = 210
triggerall=command="y"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Stand_z
[State -1]
type = ChangeState
value = 220
triggerall=command="z"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Stand_a
[State -1]
type = ChangeState
value = 230
triggerall=command="a"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = time > 7

;---------------------------------------------------------------------------
;Stand_b
[State -1]
type = ChangeState
value = 240
triggerall=command="b"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Stand_c
[State -1]
type = ChangeState
value = 250
triggerall=command="c"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_x
[State -1]
type = ChangeState
value = 400
triggerall=command="x"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = time > 7

;---------------------------------------------------------------------------
;Crouch_y
[State -1]
type = ChangeState
value = 410
triggerall=command="y"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_z
[State -1]
type = ChangeState
value = 420
triggerall=command="z"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 410
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_a
[State -1]
type = ChangeState
value = 430
triggerall=command="a"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 430
trigger2 = time > 7

;---------------------------------------------------------------------------
;Crouch_b
[State -1]
type = ChangeState
value = 440
triggerall=command="b"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 430
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_c
[State -1]
type = ChangeState
value = 450
triggerall=command="c"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 430
trigger2 = movecontact = 1
trigger3 = stateno = 440
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
Jump_x
[State -1]
type = ChangeState
value = 600
trigger1=command="x"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_y
[State -1]
type = ChangeState
value = 610
trigger1=command="y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_z
[State -1]
type = ChangeState
value = 620
trigger1=command="z"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_a
[State -1]
type = ChangeState
value = 630
trigger1=command="a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_b
[State -1]
type = ChangeState
value = 640
trigger1=command="b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_c
[State -1]
type = ChangeState
value = 650
trigger1=command="c"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------

