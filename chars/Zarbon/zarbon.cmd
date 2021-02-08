;CMD DO ZARBON BY MASTER
;-| Inteligencia artificial |--------------------------------------------------------------

[Command]
name = "CPU_1"
command = F, F, F, F, F, F
time = 1

[Command]
name = "CPU_2"
command = b, b, b, y, y, z
time = 1

[Command]
name = "CPU_3"
command = D, U, D, U, D, U
time = 1

[Command]
name = "CPU_4"
command = a, a, a, a, a, a
time = 1

[Command]
name = "CPU_5"
command = y, y, y, y, y, y
time = 1

[Command]
name = "CPU_6"
command = x, x, x, x, x, x
time = 1

[Command]
name = "CPU_7"
command = B, B, B, B, B, B
time = 1


[Command]
name = "CPU_8"
command = z, z, z, z , z
time = 1

[Command]
name = "CPU_9"
command = c, c, c, c, c, c
time = 1


[Command]
name = "CPU_10"
command = ~D, B, F, a
time = 1

[Command]
name = "CPU_11"
command = ~D, DB, B, a, D, F, a
time = 1

[Command]
name = "CPU_12"
command = ~D, B, F, b, DF, F a
time = 1

[Command]
name = "CPU_13"
command = ~D, DB, B, y, D, DF, F, y
time = 1

[Command]
name = "CPU_14"
command = ~F, B, a, F, B, DF, x
time = 1


[Command]
name = "CPU_15"
command = ~F, DF, F, y, DB, B, c
time = 1

[Command]
name = "CPU_16"
command = ~D, F, y, D, F, z
time = 1


[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
;Hypers --------------------------------------------------------
[command]
name = "explosão"
command = D,DF,F,D,DF,F,y
time = 40

[command]
name = "furia de zarbon"
command = D, DB, B, F ,x
time = 40

;-| Super Motions |--------------------------------------------------------

[command]
name = "elegant cannon"
command = D, DB, B, F ,a
time = 40

[command]
name = "star blast"
command = D, DB, B, F ,b
time = 40

[command]
name = "star breaker"
command = B ,F , c
time = 40

[command]
name = "magias"
command = B, F, y
time = 40

[command]
name = "poder com aura"
command = y+x
time = 15


;-| Special Motions |------------------------------------------------------

[command]
name = "ataque tranformado"
command = D, DB, B, z
time = 15

[command]
name = "magia"
command = y
time = 15


[command]
name = "furia"
command = D, DB, B, y
time = 15

[command]
name = "sequencia"
command = D, DB, B, x
time = 15

[command]
name = "explosão de energia"
command = D, DF, F, x
time = 15

[command]
name = "desespero2"
command = b
time = 15

[command]
name = "furia e desespero"
command = D, DB, B, a
time = 10

[command]
name = "rajada de energia"
command = ~D,F,y
time = 15

[command]
name = "sz"
command = ~D,F,a
time = 10

;Abilidades

[command]
name = "te"
command = z
time = 15

[Command]
name = "voar"
command = c
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
;persistent = 2/3 Button Combination |-----------------------------------------------
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
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
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
name = "hold_z"
command = /z
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
name = "hold_s"
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

[Command]
name = "charge"
command = /a
time = 1

[Command]
name = "charge 1"
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


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]


;Inteligencia artificial
[State -1]
type = VarSet
trigger1 = command = "CPU_1"
trigger2 = command = "CPU_2"
trigger3 = command = "CPU_3"
trigger4 = command = "CPU_4"
trigger5 = command = "CPU_5"
trigger6 = command = "CPU_6"
trigger7 = command = "CPU_7"
trigger8 = command = "CPU_8"
trigger9 = command = "CPU_9"
trigger10 = command = "CPU_10"
trigger11 = command = "CPU_11"
trigger12 = command = "CPU_12"
trigger13 = command = "CPU_13"
trigger14 = command = "CPU_14"
trigger15 = command = "CPU_15"
trigger16 = command = "CPU_16"
v = 59
value = 1

;transformado
[State -1, transformado]
type = ChangeState
value = 196
triggerall = command = "ataque tranformado"
trigger1 = (statetype = s) && ctrl

;star blast
[State -1]
type = ChangeState
triggerall = power >= 1500
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 40
trigger1 = p2bodydist Y >= 100
trigger1 = Random <= 400
trigger1 = (statetype = s) && ctrl
value    = 892

;furia de zarbon
[State -1]
type = ChangeState
triggerall = power >= 1500
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 40
trigger1 = p2bodydist Y >= 100
trigger1 = Random <= 400
trigger1 = (statetype = s) && ctrl
value    = 3025

;explosão
[State -1]
type = ChangeState
triggerall = power >= 3000
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 40
trigger1 = p2bodydist Y >= 100
trigger1 = Random <= 400
trigger1 = (statetype = s) && ctrl
value    = 902

;Fim DA inteligencia artificial


;star blast
[State -1, star blast]
type = ChangeState
value = 892
triggerall = command = "star blast"
triggerall = power >= 1500
trigger1 = (statetype = s) && ctrl

;Furia de Zarbon
[State -1, furia de zarbon]
type = ChangeState
value = 3025
triggerall = command = "furia de zarbon"
triggerall = power >= 1500
trigger1 = (statetype = s) && ctrl

;desespero
[State -1, desesperoa]
type = ChangeState
value = 950
triggerall = command = "desespero2"
triggerall = power >= 300
trigger1 = statetype = A

;explosão de energia
[State -1, explosão de energia]
type = ChangeState
value = 989
triggerall = command = "explosão de energia"
triggerall = power >= 300
trigger1 = (statetype = s) && ctrl

;te
[State -1, te]
type = ChangeState
value = 171
triggerall = command = "te"
triggerall = power >= 300
trigger1 = statetype = A
trigger2 = Stateno = 1500

;te
[State -1, te]
type = ChangeState
value = 171
triggerall = command = "te"
triggerall = power >= 300
trigger1 = (statetype = s) && ctrl
trigger2 = Stateno = 1500


;soco no ar
[State -1]
type = ChangeState
value = 920
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = Stateno = 1500

;soco no ar
[State -1]
type = ChangeState
value = 930
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = Stateno = 1500

;soco no ar
[State -1]
type = ChangeState
value = 940
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = Stateno = 1500

;m
[State -1, ma]
type = ChangeState
value = 2070
triggerall = command = "magias"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 1000

;golpe
[State -1, ma]
type = ChangeState
value = 3000
triggerall = command = "furia e desespero"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 1000
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact


;se
[State -1, seA]
type = ChangeState
value = 903
triggerall = command = "sequencia"
trigger1 = (statetype = s) && ctrl

;poder com aura
[State -1, pder com aura]
type = ChangeState
value = 801
triggerall = command = "poder com aura"
triggerall = power >= 3000
trigger1 = (statetype = s) && ctrl

;explosão
[State -1, explosãoA]
type = ChangeState
value = 902
triggerall = command = "explosão"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 3000

;rajada
[State -1, energia]
type = ChangeState
value = 6000
triggerall = command = "rajada de energia"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 100

;furia
[State -1, Furia]
type = ChangeState
value = 4800
triggerall = command = "furia"
triggerall = power >= -300
trigger1 = (statetype = s) && ctrl

;magia
[State -1, magiaA]
type = ChangeState
value = 900
triggerall = command = "magia"
trigger1 = (statetype = s) && ctrl


;hac
[State -1, elegantA]
type = ChangeState
value = 800
triggerall = command = "star breaker"
triggerall = power >= 1500
trigger1 = statetype = A
poweradd = -1000

;seq
[State -1, sz]
type = ChangeState
value = 4410
triggerall = command = "sz"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,500]
trigger2 = movecontact





;===========================================================================
;---------------------------------------------------------------------------

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
;elegant
[State -1, elegantA]
type = ChangeState
value = 111
triggerall = command = "elegant cannon"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1500
triggerall = command = "voar"
trigger1 = statetype = A
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 1510
triggerall = command = "voar"
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------



;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time >= 20
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact =2
trigger5 = stateno = 240
trigger5 = movecontact = 3
trigger6 = stateno = 210
trigger6 = movecontact = 4
trigger7 = stateno = 230
trigger7 = movecontact = 5
trigger8 = stateno = 240

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 200)
trigger3 = (movecontact = 1) && (stateno = 400)
trigger4 = (movecontact = 1) && (stateno = 410)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = var (5) =0 || var (5) =1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && time > 5
trigger3 = (stateno = 240) && time > 6
trigger4 = stateno = 1500
;---------------------------------------------------------------------------
;soco medio
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 22
trigger4 = stateno = 1500

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 200)
trigger3 = (movecontact = 1) && (stateno = 400)
trigger4 = (movecontact = 1) && (stateno = 410)

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 200)
trigger3 = (movecontact = 1) && (stateno = 400)
trigger4 = (movecontact = 1) && (stateno = 410)

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
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


;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; CHARGE
[State -1]
type = ChangeState
value = 730
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "charge" && command = "charge 1" && statetype = S && ctrl = 1 && command != "holdfwd"
trigger2 = command = "charge" && command = "charge 1" && stateno = 1900 && command != "holdfwd"
;---------------------------------------------------------------------------
;combo






