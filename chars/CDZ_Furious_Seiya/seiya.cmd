
;-| Super Motions |--------------------------------------------------------


[command]
name = "super_laser"
command = D,F,D,F,x+y
time = 30

[command]
name = "flexa_de_sagita"
command = D,F,D,F,x
time = 30

[command]
name = "super_meteoro"
command = D,F,D,F,y
time = 30

[command]
name = "super_poeira"
command = D,B,D,B,a
time = 30

[command]
name = "super_circulo"
command = D,B,D,B,b
time = 30
;-| Special Motions |------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------
[command]
name = "super_chute"
command = D,B,b
time = 30

[command]
name = "super_chute"
command = D,B,a
time = 30

[command]
name = "sequencia"
command = D,B,y
time = 30

[command]
name = "sequencia"
command = D,B,x
time = 30

[command]
name = "tirodecosmo_forte"
command = D,F,b
time = 30

[command]
name = "tirodecosmo_f"
command = D,F,a
time = 30

[command]
name = "meteoro_forte"
command = D,F,y
time = 30

[command]
name = "meteoro_fraco"
command = D,F,x
time = 30

[command]
name = "counter"
command = x+y
time = 25

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "soco_+1"     ;Required (do not remove)
command = /F, x
time = 30

[Command]
name = "soco_+2"     ;Required (do not remove)
command = /F, a
time = 30

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
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
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
name = "hold_start"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
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

[statedef -1]

;super_laser
[State -1, super_laser]
type = ChangeState
value = 3050
triggerall = command = "super_laser"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
;----------------------------------------------------------
;----------------------------------------------------------
;super_poeira
[State -1, super_poeira]
type = ChangeState
value = 3040
triggerall = command = "super_poeira"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
;----------------------------------------------------------
;----------------------------------------------------------
;super_circulo
[State -1, super_circulo]
type = ChangeState
value = 3030
triggerall = command = "super_circulo"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
;----------------------------------------------------------
;----------------------------------------------------------
;super_meteoro
[State -1, super_meteoro]
type = ChangeState
value = 3020
triggerall = command = "super_meteoro"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl
;----------------------------------------------------------
;----------------------------------------------------------
;flexa_de_sagita
[State -1, flexa_de_sagita]
type = ChangeState
value = 3000
triggerall = command = "flexa_de_sagita"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
;----------------------------------------------------------
;----------------------------------------------------------
;super_chute
[State -1, super_chute]
type = ChangeState
value = 1060
triggerall = command = "super_chute"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 1050
trigger7 = movecontact
trigger8 = stateno = 1000
trigger8 = movecontact
trigger9 = stateno = 1020
trigger9 = movecontact
trigger10 = stateno = 1030
trigger10 = movecontact
trigger11 = stateno = 1040
trigger11 = movecontact
trigger12 = stateno = 1060
trigger12 = movecontact
trigger13 = stateno = 1070
trigger13 = movecontact
trigger14 = stateno = 1080
trigger14 = movecontact
;----------------------------------------------------------
;----------------------------------------------------------
;sequencia
[State -1, sequencia]
type = ChangeState
value = 1050
triggerall = command = "sequencia"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 1050
trigger7 = movecontact
trigger8 = stateno = 1000
trigger8 = movecontact
trigger9 = stateno = 1020
trigger9 = movecontact
trigger10 = stateno = 1030
trigger10 = movecontact
trigger11 = stateno = 1040
trigger11 = movecontact
trigger12 = stateno = 1060
trigger12 = movecontact
trigger13 = stateno = 1070
trigger13 = movecontact
trigger14 = stateno = 1080
trigger14 = movecontact
;----------------------------------------------------------
;----------------------------------------------------------
;tirodecosmo_forte
[State -1, tirodecosmo_forte]
type = ChangeState
value = 1040
triggerall = command = "tirodecosmo_forte"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 1050
trigger7 = movecontact
trigger8 = stateno = 1000
trigger8 = movecontact
trigger9 = stateno = 1020
trigger9 = movecontact
trigger10 = stateno = 1030
trigger10 = movecontact
trigger11 = stateno = 1040
trigger11 = movecontact
trigger12 = stateno = 1060
trigger12 = movecontact
trigger13 = stateno = 1070
trigger13 = movecontact
trigger14 = stateno = 1080
trigger14 = movecontact
;----------------------------------------------------------
;----------------------------------------------------------
;tirodecosmo_f
[State -1, tirodecosmo_f]
type = ChangeState
value = 1030
triggerall = command = "tirodecosmo_f"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 1050
trigger7 = movecontact
trigger8 = stateno = 1000
trigger8 = movecontact
trigger9 = stateno = 1020
trigger9 = movecontact
trigger10 = stateno = 1030
trigger10 = movecontact
trigger11 = stateno = 1040
trigger11 = movecontact
trigger12 = stateno = 1060
trigger12 = movecontact
trigger13 = stateno = 1070
trigger13 = movecontact
trigger14 = stateno = 1080
trigger14 = movecontact
;----------------------------------------------------------
;----------------------------------------------------------
;meteoro_fraco
[State -1, meteoro_fraco]
type = ChangeState
value = 1000
triggerall = command = "meteoro_fraco"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 1050
trigger7 = movecontact
trigger8 = stateno = 1000
trigger8 = movecontact
trigger9 = stateno = 1020
trigger9 = movecontact
trigger10 = stateno = 1030
trigger10 = movecontact
trigger11 = stateno = 1040
trigger11 = movecontact
trigger12 = stateno = 1060
trigger12 = movecontact
trigger13 = stateno = 1070
trigger13 = movecontact
trigger14 = stateno = 1080
trigger14 = movecontact
;----------------------------------------------------------
;----------------------------------------------------------
;meteoro_forte
[State -1, meteoro_forte]
type = ChangeState
value = 1020
triggerall = command = "meteoro_forte"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 1050
trigger7 = movecontact
trigger8 = stateno = 1000
trigger8 = movecontact
trigger9 = stateno = 1020
trigger9 = movecontact
trigger10 = stateno = 1030
trigger10 = movecontact
trigger11 = stateno = 1040
trigger11 = movecontact
trigger12 = stateno = 1060
trigger12 = movecontact
trigger13 = stateno = 1070
trigger13 = movecontact
trigger14 = stateno = 1080
trigger14 = movecontact
;----------------------------------------------------------------------------
;counter
[State -1, counter]
type = ChangeState
value = 1100
triggerall = command = "counter"
trigger1 = (statetype = s) && ctrl
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
; esquiva
[State -1, esquiva]
type = ChangeState
trigger1 = command = "holdback" && statetype = S
trigger1 = command = "a" && command = "b"
value = 1090
;---------------------------------------------------------------------------
; esquiva_frente
[State -1, esquiva_frente]
type = ChangeState
trigger1 = command = "holdfwd" && statetype = S
trigger1 = command = "a" && command = "b"
value = 1091
;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
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

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; soco_+1
[State -1, soco_+1]
type = ChangeState
value = 1070
triggerall = command = "soco_+1"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 1050
trigger7 = movecontact
trigger8 = stateno = 1000
trigger8 = movecontact
trigger9 = stateno = 1020
trigger9 = movecontact
trigger10 = stateno = 1030
trigger10 = movecontact
trigger11 = stateno = 1040
trigger11 = movecontact
trigger12 = stateno = 1060
trigger12 = movecontact
trigger13 = stateno = 1070
trigger13 = movecontact
trigger14 = stateno = 1080
trigger14 = movecontact
;---------------------------------------------------------------------------
; soco_+2
[State -1, soco_+2]
type = ChangeState
value = 1080
triggerall = command = "soco_+2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 1050
trigger7 = movecontact
trigger8 = stateno = 1000
trigger8 = movecontact
trigger9 = stateno = 1020
trigger9 = movecontact
trigger10 = stateno = 1030
trigger10 = movecontact
trigger11 = stateno = 1040
trigger11 = movecontact
trigger12 = stateno = 1060
trigger12 = movecontact
trigger13 = stateno = 1070
trigger13 = movecontact
trigger14 = stateno = 1080
trigger14 = movecontact
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 1050
trigger7 = movecontact
trigger8 = stateno = 1000
trigger8 = movecontact
trigger9 = stateno = 1020
trigger9 = movecontact
trigger10 = stateno = 1030
trigger10 = movecontact
trigger11 = stateno = 1040
trigger11 = movecontact
trigger12 = stateno = 1060
trigger12 = movecontact
trigger13 = stateno = 1070
trigger13 = movecontact
trigger14 = stateno = 1080
trigger14 = movecontact
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 1050
trigger7 = movecontact
trigger8 = stateno = 1000
trigger8 = movecontact
trigger9 = stateno = 1020
trigger9 = movecontact
trigger10 = stateno = 1030
trigger10 = movecontact
trigger11 = stateno = 1040
trigger11 = movecontact
trigger12 = stateno = 1060
trigger12 = movecontact
trigger13 = stateno = 1070
trigger13 = movecontact
trigger14 = stateno = 1080
trigger14 = movecontact
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 1050
trigger7 = movecontact
trigger8 = stateno = 1000
trigger8 = movecontact
trigger9 = stateno = 1020
trigger9 = movecontact
trigger10 = stateno = 1030
trigger10 = movecontact
trigger11 = stateno = 1040
trigger11 = movecontact
trigger12 = stateno = 1060
trigger12 = movecontact
trigger13 = stateno = 1070
trigger13 = movecontact
trigger14 = stateno = 1080
trigger14 = movecontact
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 1050
trigger7 = movecontact
trigger8 = stateno = 1000
trigger8 = movecontact
trigger9 = stateno = 1020
trigger9 = movecontact
trigger10 = stateno = 1030
trigger10 = movecontact
trigger11 = stateno = 1040
trigger11 = movecontact
trigger12 = stateno = 1060
trigger12 = movecontact
trigger13 = stateno = 1070
trigger13 = movecontact
trigger14 = stateno = 1080
trigger14 = movecontact
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
