;final
;--------------------------------------------------------------------------------

[Command]
name = "final"
command = D,DF,F,y+a

[Command]
name = "multi_fire"
command = D,DF,F,D,DF,F,y+c
time=30

[Command]
name = "ball"
command = D,F,D,F,x
time = 30

;super
;-------------------------------------------------------------------------------

[Command]
name = "big_fire"
command = D,DF,F,x+c
time = 30

[Command]
name = "genou_flash"
command = D,DF,F,c

[Command]
name = "teleport"
command = z+c

[Command]
name = "baiser_flamme"
command = D,DB,B,c

[Command]
name = "KI"
command = B,F,B,c
time = 30

[Command]
name = "fire_ball"
command = y

[Command]
name = "fire_ball2"
command = D,DF,F,D,DF,F,x+y

[Command]
name = "fire_ball3"
command = D,DF,F,z

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F,F
time = 15

[Command]
name = "BB";Required (do not remove)
command = B,B 
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "fly"
command = b+y
time = 1
;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = D,DF,/F,a
time = 30

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
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
command = a+b
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

[Command]
name = "charge"
command = /a

[Command]
name = "charge 1"
command = /x

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


;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
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
;RunFwd
[State -1]
type = ChangeState
value = 6511
trigger1 = command = "FF"
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 6510
trigger1 = command = "BB"
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;multi_fire
[State -1]
type = ChangeState
value = 6506
triggerall = command = "multi_fire"
trigger1 = power > 2000 
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;big fire
[State -1]
type = ChangeState
value = 7000
triggerall = command = "big_fire"
trigger1 = power > 2000 
trigger1 = ctrl = 1
;---------------------------------------------------------------------------

;charge
[State -1]
type = ChangeState
value = 800
triggerall = ctrl = 1
;triggerall != var(6) = 0
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = statetype = S

;Air Charge
[State -1]
type = ChangeState
value = 801
trigger1 = ctrl = 0
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = stateno = 1500

;---------------------------------------------------------------------------
;Fly
[State -1]
type = ChangeState
value = 41
trigger1 = command = "fly"
trigger1 = ctrl = 1    

;------------------------------------------------------------------------
;genou_flash
[State -1]
type = ChangeState
value = 6501
triggerall = command = "genou_flash"
trigger1 = ctrl = 1
trigger2 = stateno = 1500


;------------------------------------------------------------------------
;baiser_flamme
[State -1]
type = ChangeState
value = 2700
triggerall = command = "baiser_flamme"
trigger1 = (Enemy, Pos y >=0)  
trigger1 = pos y >= 0
trigger1 = statetype != A 
trigger1 = ctrl = 1

;------------------------------------------------------------------------
;KI
[State -1]
type = ChangeState
value = 6505
triggerall = command = "KI"
trigger 1 = (Enemy, Pos y =<0)
trigger1 = ctrl = 1

;------------------------------------------------------------------------
;fire_ball2
[State -1]
type = ChangeState
value = 1804
triggerall = command = "fire_ball2"
trigger1 = ctrl = 1

;------------------------------------------------------------------------
;fire_ball3
[State -1]
type = ChangeState
value = 1999
triggerall = command = "fire_ball3"
trigger1 = ctrl = 1
trigger1 = power >= 1000
trigger2 = stateno = 1500
trigger2 = ctrl = 0


;------------------------------------------------------------------------
;fINAL
[State -1]
type = null;ChangeState
value = 6666
triggerall = command = "final"
trigger1 = power >= 3000
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;FINAL 2
[State -1]
type = ChangeState
value = 6552
triggerall = command = "ball"
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger2 = ctrl = 0

;------------------------------------------------------------------------
;teleport
[State -1]
type = ChangeState
value = 6502
triggerall = command = "teleport"
trigger1 = ctrl = 1

;------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


;ENCHAINEMENTS


;------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

;
[State -1]
type = changestate
value = 6800
trigger1 = command = "fwd_a"
trigger1 = ctrl = 1

;------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;STAND
;---------------------------------------------------------------------------
;FWD
;Fwd_E
[State -1]
type = changestate
value = 6801
trigger1 = command = "fwd_c"
trigger1 = pos y >= 0
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Stand_Z
[State -1]
type = changestate
value = 702
trigger1 = command = "z"
trigger1 = power >= 100
trigger1 = pos y >= 0
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = changestate
value = 700
triggerall = command = "z"
triggerall = power >= 1
trigger1 = statetype = S
trigger1 = stateno = 702

;---------------------------------------------------------------------------
;Stand_C
[State -1]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1  
trigger3 = stateno = 210
trigger3 = movecontact = 1  
trigger4 = stateno = 220
trigger4 = movecontact = 1  
trigger5 = stateno = 230
trigger5 = movecontact = 1  
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1  
;---------------------------------------------------------------------------
;Stand_X
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1  
trigger3 = stateno = 210
trigger3 = movecontact = 1  
trigger4 = stateno = 220
trigger4 = movecontact = 1  
trigger5 = stateno = 230
trigger5 = movecontact = 1  
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1  
;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1  
trigger3 = stateno = 210
trigger3 = movecontact = 1  
trigger4 = stateno = 220
trigger4 = movecontact = 1  
trigger5 = stateno = 230
trigger5 = movecontact = 1  
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1   
;---------------------------------------------------------------------------
;Stand_A
[State -1]
type = ChangeState
value = 250
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1  
trigger3 = stateno = 210
trigger3 = movecontact = 1  
trigger4 = stateno = 220
trigger4 = movecontact = 1  
trigger5 = stateno = 230
trigger5 = movecontact = 1  
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1  
;---------------------------------------------------------------------------
;Stand_Y
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1  
trigger3 = stateno = 210
trigger3 = movecontact = 1  
trigger4 = stateno = 220
trigger4 = movecontact = 1  
trigger5 = stateno = 230
trigger5 = movecontact = 1  
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1  


;AIR
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 250
triggerall = command = "a"
trigger1 = stateno = 1500
trigger1 = ctrl = 0
 
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
trigger1 = stateno = 1500
trigger1 = ctrl = 0
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 240
triggerall = command = "c"
trigger1 = stateno = 1500
trigger1 = ctrl = 0

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = stateno = 1500
trigger1 = ctrl = 0
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
trigger1 = stateno = 1500
trigger1 = ctrl = 0
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 630
triggerall = command = "z"
trigger1 = stateno = 1500
trigger1 = ctrl = 0



;CROUCH
;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact = 1  
trigger3 = stateno = 410
trigger3 = movecontact = 1  
trigger4 = stateno = 420
trigger4 = movecontact = 1  
trigger5 = stateno = 430
trigger5 = movecontact = 1  
;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact = 1  
trigger3 = stateno = 410
trigger3 = movecontact = 1  
trigger4 = stateno = 420
trigger4 = movecontact = 1  
trigger5 = stateno = 430
trigger5 = movecontact = 1  
;---------------------------------------------------------------------------
;Crouch_X
[State -1]
type = ChangeState
value = 420
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact = 1  
trigger3 = stateno = 410
trigger3 = movecontact = 1  
trigger4 = stateno = 420
trigger4 = movecontact = 1  
trigger5 = stateno = 430
trigger5 = movecontact = 1  
;---------------------------------------------------------------------------
;Crouch_Y
[State -1]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact = 1  
trigger3 = stateno = 410
trigger3 = movecontact = 1  
trigger4 = stateno = 420
trigger4 = movecontact = 1  
trigger5 = stateno = 430
trigger5 = movecontact = 1  
;---------------------------------------------------------------------------
;Crouch_Y
[State -1]
type = ChangeState
value = 450
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;---------------------------------------------------------------------------



;JUMP

;Jump_B
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_C
[State -1]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_X
[State -1]
type = ChangeState
value = 620
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_Z
[State -1]
type = ChangeState
value = 630
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 630
triggerall = command = "z"
trigger1 = stateno = 1500
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

