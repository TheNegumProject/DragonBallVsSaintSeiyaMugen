
;-----------------------------
 -;| CPU Activation Commands |-----------------------
[Command]
name = "AI1"
command = a, a, a
time = 1

[Command]
name = "AI2"
command = b, b, b
time = 1

[Command]
name = "AI3"
command = c, c, c
time = 1

[Command]
name = "AI4"
command = x, x, x
time = 1

[Command]
name = "AI5"
command = y, y, y
time = 1

[Command]
name = "AI6"
command = z, z, z
time = 1

[Command]
name = "AI7"
command = a, b, c
time = 1

[Command]
name = "AI8"
command = a, c, b
time = 1

[Command]
name = "AI9"
command = b, a, c
time = 1

[Command]
name = "AI10"
command = b, c, a
time = 1

[Command]
name = "AI11"
command = c, b, a
time = 1

[Command]
name = "AI12"
command = c, a, b
time = 1

[Command]
name = "AI13"
command = x, y, z
time = 1

[Command]
name = "AI14"
command = x, z, y
time = 1

[Command]
name = "AI15"
command = y, z, x
time = 1

[Command]
name = "AI16"
command = y, x, z
time = 1

[Command]
name = "AI17"
command = z, y, x
time = 1

[Command]
name = "AI18"
command = z, x, y
time = 1

[Command]
name = "AI19"
command = a, b, a
time = 1

[Command]
name = "AI20"
command = a, c, a
time = 1

[Command]
name = "AI21"
command = b, a, b
time = 1

[Command]
name = "AI22"
command = b, c, b
time = 1

[Command]
name = "AI23"
command = c, a, c
time = 1

[Command]
name = "AI24"
command = c, b, c
time = 1

[Command]
name = "AI25"
command = x, y, x
time = 1

[Command]
name = "AI26"
command = x, z, x
time = 1

[Command]
name = "AI27"
command = y, x, y
time = 1

[Command]
name = "AI28"
command = y, z, y
time = 1

[Command]
name = "AI29"
command = z, x, z
time = 1

[Command]
name = "AI30"
command = B, DB, D, z, y, z
time = 1

[Command]
name = "AI31"
command = B, DB, D, a, a, a
time = 1

[Command]
name = "AI32"
command = B, DB, D, b, b, b
time = 1

[Command]
name = "AI33"
command = B, DB, D, c, c, c
time = 1

[Command]
name = "AI34"
command = B, DB, D, x, x, x
time = 1

[Command]
name = "AI35"
command = B, DB, D, y, y, y
time = 1

[Command]
name = "AI36"
command = B, DB, D, z, z, z
time = 1

[Command]
name = "AI37"
command = B, DB, D, a, b, c
time = 1

[Command]
name = "AI38"
command = B, DB, D, a, c, b
time = 1

[Command]
name = "AI39"
command = B, DB, D, b, a, c
time = 1

[Command]
name = "AI40"
command = B, DB, D, DF, a, a, a
time = 1

[Command]
name = "AI41"
command = B, DB, D, DF, a, a, a
time = 1


[Command]
name = "AI42"
command = B, DB, D, DF, b, b, b
time = 1

[Command]
name = "AI43"
command = B, DB, D, DF, c, c, c
time = 1

[Command]
name = "AI44"
command = B, DB, D, DF, x, x, x
time = 1

[Command]
name = "AI45"
command = B, DB, D, DF, y, y, y
time = 1

[Command]
name = "AI46"
command = B, DB, D, DF, z, z, z
time = 1

[Command]
name = "AI47"
command = B, DB, D, DF, a, b, c
time = 1

[Command]
name = "AI48"
command = B, DB, D, DF, a, c, b
time = 1

[Command]
name = "AI49"
command = B, DB, D, DF, b, a, c
time = 1

[Command]
name = "AI50"
command = D, DF, a, a, a
time = 1


[Command]
name = "AI51"
command = D, DF, b, a, a
time = 1

[Command]
name = "AI52"
command = D, DF, b, b, b
time = 1

[Command]
name = "AI53"
command = D, DF, b, b, b
time = 1

[Command]
name = "AI54"
command = D, DF, x, x, x
time = 1

[Command]
name = "AI55"
command = D, DF, y, y, y
time = 1

[Command]
name = "AI56"
command = D, DF, z, z, z
time = 1

[Command]
name = "AI57"
command = D, DF, a, b, c
time = 1

[Command]
name = "AI58"
command = D, DF, a, c, b
time = 1

[Command]
name = "AI59"
command = D, DF, b, a, c
time = 1




;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "TripleKFPalm"
command = ~D, DB, B, a
time = 20

[Command]
name = "Combo"
command = ~D, DF, F, a
time = 20

[Command]
name = "deathrayonFinal"
command = ~D, DF, F, c
time = 40

[Command]
name = "deathrayonFinal"
command = ~D, F, c
time = 40

;[Command]
;name = "TripleKFPalm2"
;command = ~D, DF, F, b
;time = 20

[Command]
name = "TripleKFPalm3"
command = ~D, DB, B, b
time = 20

[Command]
name = "TripleKFPalm3"
command = ~F, D, B,  b
time = 20

[Command]
name = "Trapasso"
command =  ~D, DF, F, b

[Command]
name = "Trapasso"
command =  $D, DF, F, b

;1° fulmine di Pegasus
[Command]
name = "charge_y"
command = D, DF, F, x
time = 30

;Cometa lucente
[Command]
name = "bbbddff_c"
command = b
time = 20


[Command]
name = "deathrayon"
command = ~D, F, c
time = 20

[Command]
name = "deathrayon"
command = ~D, DF, F, c
time = 20


;[Command]
;name = "Bolafuego"   ;Same name as above
;command = ~D, DF, F, x
;time = 20

[Command]
name = "Ondashades"   ;Same name as above
command = ~D, DF, F, y
time = 20

;[Command]
;name = "esprit"   ;Same name as above
;command = ~D, DF, F, z
;time = 20

[command]
name = "ac"			
command = c

[command]
name = "az"			
command = z	

;-| Special Motions |------------------------------------------------------
[Command]
name = "Ondashades"
command = ~D, DF, F, y+a
time = 2

[Command]
name = "esprit1"
command = ~D, DF, F, y+c+z
time = 1


;[Command]
;name = "upper_x"
;command = F, D, DF, x

;[Command]
;name = "upper_y"
;command = ~F, D, DF, y

;[Command]
;name = "upper_xy"
;command = ~F, D, DF, x+y

;[Command]
;name = "QCF_x"
;command = ~D, DF, F, x
;time = 10

;[Command]
;name = "QCF_y"
;command = ~D, DF, F, y

;[Command]
;name = "QCF_xy"
;command = ~D, DF, F, x+y

;[Command]
;name = "QCB_a"
;command = ~D, DF, F, a

;[Command]
;name = "QCB_b"
;command = ~D, DF, F, b

;[Command]
;name = "FF_ab"
;command = F, F, a+b

;[Command]
;name = "FF_a"
;command = F, F, a

;[Command]
;name = "FF_b"
;command = F, F, b

;recharge du cosmos
;[Command]
;name = "cosmos"
;command = b+c
;time = 15

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
command = B, c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "F"
command = F
time = 1
[Command]
name = "B"
command = B
time = 1
[Command]
name = "U"
command = U
time = 1
[Command]
name = "D"
command = D
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

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_c"
command = /$c
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

;megablock
[Command]
name = "mega_block"
command = c
time = 50

[Command]
name = "ondes"
command = F, a+b
time = 15

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

[State -1]
type = ChangeState
value = 3675
triggerall = StateType != A
triggerall = StateType != C
;triggerall = P2StateNo = 1330
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = command = "c"
trigger1 = command != "holddown"
trigger1 = ctrl = 1
;CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD CMD 
 
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


;---------------------------------------------------------------------------
;Throw003
[State -1: 		Throw003]
type 			= ChangeState
value 		= 520
triggerall 		= (Command = "ac") && (Command = "holdfwd") && (StateNo != [100,105]) 
triggerall = StateNo != 500
trigger1		= (StateType = S) && (Ctrl)
;trigger2 = MoveContact
;---------------------------------------------------------------------------
;Throw001
[State -1: 		Throw001]
type 			= ChangeState
value 		= 500
triggerall 		= (Command = "az") && (Command = "holdfwd") && (StateNo != [100,105]) && (p2name != "DeathMask")
triggerall = StateNo != 520
trigger1		= (StateType = S) && (Ctrl)
;trigger2 = MoveContact
;-----------------------------------------
;-----------------------------------------
;Ondes mineures
[State -1]
type = ChangeState
value = 205
triggerall = stateno != 205
triggerall = command = "hold_b"
triggerall = command = "hold_a"
trigger1 = statetype != A
trigger1 = statetype != C
trigger1 = ctrl = 1
;trigger2 = stateno = 215
;trigger2 = MoveContact
;trigger3 = stateno = 250
;trigger3 = MoveContact

;Ondes mineures
[State -1]
type = ChangeState
value = 205
triggerall = command = "ondes"
trigger1 = statetype != A
trigger1 = statetype != C
trigger1 = ctrl = 1
;trigger2 = stateno = 215
;trigger2 = MoveContact
;trigger3 = stateno = 250
;trigger3 = MoveContact
;----------------------------------------
;---------------------------------------------------------------------------

;Magia 1
;[State -1]
;type = ChangeState
;value = 8888
;triggerall = command = "Bolafuego"
;triggerall = power >= 2000
;trigger1 = statetype = S
;trigger1 = ctrl
;trigger2 = statetype != A
;;trigger2 = movecontact
;trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != 8888

;Death Rayon (Combination Mode)
[State -1: 		Death Rayon]
type 			= ChangeState
value			= 73000
triggerall = p2life >= 500
triggerall = StateNo != 700
triggerall = StateNo != 40
triggerall = StateNo != 45
triggerall = StateNo != 50
triggerall = StateNo != 51
triggerall = StateNo != 52
triggerall		= (var(51) = 0) && (!ishelper) && (name = "Specter Cancer") && (var(31) = 0) && (command = "deathrayon") && (power >= 4000)
trigger1		= (ctrl) || (stateno = 8171) || (((stateno = 100) || (stateno = 105)) && (backedgebodydist > 0))
trigger2		= (stateno = 210 && movecontact && animelem = 2, < 5) || ((stateno = 220 || stateno = 221) && movecontact && animelem = 2, < 5) || (stateno = 240 && movecontact && animelem = 2, < 5) 
trigger3		= (stateno = 250 && movecontact && animelem = 2, < 5) || (stateno = 410 && movecontact && animelem = 2, < 5) || (stateno = 440 && movecontact && animelem = 2, < 5)


;Death Rayon (Variable Mode)
[State -1: 		Death Rayon]
type 			= ChangeState
value			= 73000
triggerall = p2life >= 500
triggerall = StateNo != 700
triggerall = StateNo != 40
triggerall = StateNo != 45
triggerall = StateNo != 50
triggerall = StateNo != 51
triggerall = StateNo != 52
triggerall		= (var(51) = 0) && (!ishelper) && (name = "Specter Cancer") && (var(31) = 1) && (command = "deathrayon") && (power >= 4000)
trigger1		= (ctrl) || (stateno = 8171) || (((stateno = 100) || (stateno = 105)) && (backedgebodydist > 0))
trigger2		= (stateno = 200 && movecontact) || (stateno = 210 && movecontact) || (stateno = 220 && movecontact) || (stateno = 230 && movecontact) || (stateno = 240 && movecontact) || (stateno = 250 && movecontact) 
trigger3		= (stateno = 400 && movecontact) || (stateno = 410 && movecontact) || (stateno = 430 && movecontact) || (stateno = 440 && movecontact)
trigger4 		= (var(9) > 0) && (statetype != A) && (movecontact) 


;---------------------------------------------------------------------------
;Death Rayon 
[State -1]
type = changestate
value = 83000
triggerall = p2life <= 500
triggerall = RoundNo != 1
triggerall = StateNo != 700
triggerall = StateNo != 40
triggerall = StateNo != 45
triggerall = StateNo != 50
triggerall = StateNo != 51
triggerall = StateNo != 52
triggerall = command = "deathrayonFinal"
;triggerall = numproj = 0
triggerall = power >= 4000
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;Death Rayon (Combination Mode)
[State -1: 		Death Rayon]
type 			= ChangeState
value			= 73000
triggerall = p2life <= 500
triggerall = RoundNo = 1
triggerall = RoundNo != 2
triggerall = RoundNo != 3
triggerall = StateNo != 700
triggerall = StateNo != 40
triggerall = StateNo != 45
triggerall = StateNo != 50
triggerall = StateNo != 51
triggerall = StateNo != 52
triggerall		= (var(51) = 0) && (!ishelper) && (name = "Specter Cancer") && (var(31) = 0) && (command = "deathrayon") && (power >= 4000)
trigger1		= (ctrl) || (stateno = 8171) || (((stateno = 100) || (stateno = 105)) && (backedgebodydist > 0))
trigger2		= (stateno = 210 && movecontact && animelem = 2, < 5) || ((stateno = 220 || stateno = 221) && movecontact && animelem = 2, < 5) || (stateno = 240 && movecontact && animelem = 2, < 5) 
trigger3		= (stateno = 250 && movecontact && animelem = 2, < 5) || (stateno = 410 && movecontact && animelem = 2, < 5) || (stateno = 440 && movecontact && animelem = 2, < 5)


;Death Rayon (Variable Mode)
[State -1: 		Death Rayon]
type 			= ChangeState
value			= 73000
triggerall = p2life <= 500
triggerall = RoundNo = 1
triggerall = RoundNo != 2
triggerall = RoundNo != 3
triggerall = StateNo != 700
triggerall = StateNo != 40
triggerall = StateNo != 45
triggerall = StateNo != 50
triggerall = StateNo != 51
triggerall = StateNo != 52
triggerall		= (var(51) = 0) && (!ishelper) && (name = "Specter Cancer") && (var(31) = 1) && (command = "deathrayon") && (power >= 4000)
trigger1		= (ctrl) || (stateno = 8171) || (((stateno = 100) || (stateno = 105)) && (backedgebodydist > 0))
trigger2		= (stateno = 200 && movecontact) || (stateno = 210 && movecontact) || (stateno = 220 && movecontact) || (stateno = 230 && movecontact) || (stateno = 240 && movecontact) || (stateno = 250 && movecontact) 
trigger3		= (stateno = 400 && movecontact) || (stateno = 410 && movecontact) || (stateno = 430 && movecontact) || (stateno = 440 && movecontact)
trigger4 		= (var(9) > 0) && (statetype != A) && (movecontact) 


;---------------------------------------------------------------------------
;Trapasso
[State -1]
type = ChangeState
value = 2010
triggerall = command = "Trapasso"
triggerall = StateNo != 73000
triggerall = StateNo != 83000
triggerall = StateNo != 7377
triggerall = StateNo != 11330
triggerall = StateNo != 1340
triggerall = StateNo != 1350
triggerall = StateNo != 1360
triggerall = StateNo != 1370
triggerall = StateNo != 1380
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = stateno != 7377
trigger2 = stateno != 11330
trigger2 = movecontact

;Magia 1
[State -1]
type = ChangeState
value = 7377
triggerall = command = "Ondashades"
triggerall = StateNo != 2010
triggerall = StateNo != 3000
triggerall = StateNo != 30000
triggerall = StateNo != 33333
;triggerall = p2stateno < 1025
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
;trigger2 = movecontact
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != 7377

;Véritables vagues d'Hadès
;[State -1]
;type = ChangeState
;value = 1333
;triggerall = command = "Ondashades1"
;triggerall = power >= 700
;trigger1 = statetype = S
;trigger1 = ctrl
;trigger2 = statetype != A
;trigger2 = movecontact
;trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != 7377

;-----------------------------------

;1° fulmine di Pegasus
[State -1]
type = ChangeState
value = 11330
triggerall = command = "charge_y"
triggerall = StateNo != 2010
triggerall = StateNo != 3000
triggerall = StateNo != 30000
triggerall = StateNo != 33333
triggerall = power >= 2000 
trigger1 = statetype != A
trigger1 = ctrl = 1


;Cercles de l'esprit
;[State -1]
;type = ChangeState
;value = 6262
;triggerall = command = "esprit"
;triggerall = power >= 3000
;trigger1 = statetype = S
;;trigger1 = ctrl
;trigger2 = statetype != A
;;trigger2 = movecontact
;trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != 7377

;Cercles de l'esprit II
;[State -1]
;type = ChangeState
;value = 6263
;triggerall = command = "esprit1"
;triggerall = power >= 1000
;trigger1 = statetype = S
;trigger1 = ctrl
;trigger2 = statetype != A
;trigger2 = movecontact
;trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != 7377

;---------------------------------------------------------------------------
;Triple golpe
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = StateNo != 73000
triggerall = StateNo != 83000
triggerall = StateNo != 7377
triggerall = StateNo != 11330
triggerall = StateNo != 1340
triggerall = StateNo != 1350
triggerall = StateNo != 1360
triggerall = StateNo != 1370
triggerall = StateNo != 1380
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = stateno != 7377
trigger2 = stateno != 11330
trigger2 = movecontact


;---------------------------------------------------------------------------
;Combo
[State -1]
type = ChangeState
value = 30000
triggerall = StateNo != 73000
triggerall = StateNo != 83000
;triggerall = StateNo != 2203
;triggerall = StateNo != 2011
;triggerall = StateNo != 1800
;triggerall = StateNo != 2000
;triggerall = StateNo != 3100
triggerall = StateNo != 7377
triggerall = StateNo != 11330
triggerall = StateNo != 1340
triggerall = StateNo != 1350
triggerall = StateNo != 1360
triggerall = StateNo != 1370
triggerall = StateNo != 1380
triggerall = command = "Combo"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = stateno != 7377
trigger2 = stateno != 11330
trigger2 = movecontact

;Triple golpe
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 33333
triggerall = StateNo != 73000
triggerall = StateNo != 83000
triggerall = StateNo != 7377
triggerall = StateNo != 11330
triggerall = StateNo != 1340
triggerall = StateNo != 1350
triggerall = StateNo != 1360
triggerall = StateNo != 1370
triggerall = StateNo != 1380
triggerall = command = "TripleKFPalm3"
triggerall = power >= 2000
trigger1 = statetype = S
;trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = stateno != 7377
trigger2 = stateno != 11330
trigger2 = movecontact


;recharge du cosmos
;[State -1]
;type = ChangeState
;value = 2222
;triggerall = command = "cosmos"
;trigger1 = power <= 3000
;trigger1 = statetype != A
;trigger1 = ctrl = 1


;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;Œã'Þƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;"Š‚°
;[State -1, Kung Fu Throw]
;type = ChangeState
;value = 800
;riggerall = command = "b"
;riggerall = statetype = S
;riggerall = ctrl
;riggerall = stateno != 100
;rigger1 = command = "holdfwd"
;rigger1 = p2bodydist X < 3
;rigger1 = (p2statetype = S) || (p2statetype = C)
;rigger1 = p2movetype != H
;igger2 = command = "holdback"
;rigger2 = p2bodydist X < 5
;rigger2 = (p2statetype = S) || (p2statetype = C)
;rigger2 = p2movetype != H


;===========================================================================
;---------------------------------------------------------------------------
Stand Light Punch
—§‚¿Žãƒpƒ"`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Strong Punch
;—§‚¿‹­ƒpƒ"ƒ`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------

Cate mu mu fuerte
;—§‚¿‹­ƒpƒ"ƒ`
[State -1, Cate mu mu fuerte]
type = ChangeState
value = 201
triggerall = command = "c"
;triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------

;Stand Light Kick
;—§‚¿ŽãƒLƒbƒN
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Standing Strong Kick
;—§‚¿‹­ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Esa peaso de Coz!!!! Por la woria de mi madrer...
;—§‚¿‹­ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 241
triggerall = command = "z"
;triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------
;-----------------------------------

;Cometa lucente
[State -1]
type = ChangeState
value = 1100
triggerall = command = "bbbddff_c"
trigger1 = power >= 500
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------
;Calcio volante diagonale
[State -1, Calcio volante diagonale]
type = ChangeState
value = 700
triggerall = statetype != C
triggerall = StateNo != 700
triggerall = command = "y"
trigger1 = power >= 500
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = statetype != S

;---------------------------------------------------------------
;Calcio volante diagonale
[State -1, Calcio volante diagonale]
type = ChangeState
value = 700
triggerall = command = "Combo"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = statetype != S

;---------------------------------------------------------------------------
;Taunt
;'§"­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;‚µ‚á‚ª‚ÝŽãƒpƒ"ƒ`
[State -1, Crouching light punch]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;‚µ‚á‚ª‚Ý‹­ƒpƒ"ƒ`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Cate mu mu fuerte
;‚µ‚á‚ª‚Ý‹­ƒpƒ"ƒ`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 411
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
;‚µ‚á‚ª‚ÝŽãƒLƒbƒN
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;‚µ‚á‚ª‚Ý‹­ƒLƒbƒN
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------

;Patada Deslizante
;‚µ‚á‚ª‚Ý‹­ƒLƒbƒN
[State -1, Patada deslizante]
type = ChangeState
value = 450
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
;‹ó'†Žãƒpƒ"ƒ`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Cate mu mu fuerte
[State -1, Jump Strong Punch]
type = ChangeState
value = 611
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
;‹ó'†‹­ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Patada mu mu fuerte
;‹ó'†‹­ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 641
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact







;IA
;CPU COMMANDS:

;---------------------------------------------------------------

;-| AI |---------------------------------------------------------------

; ----------------------------------------------------------------
; Début de l’intelligence artificielle
[Statedef -1]

; =================================================================
; AI
[State -1, AI]
type = Varset
triggerall = RoundState = 1 || RoundState = 2 || RoundState = 3 || RoundState = 4 
triggerall = ctrl = 0 || ctrl = 1

trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"
trigger31 = command = "AI31"
trigger32 = command = "AI32"
trigger33 = command = "AI33"
trigger34 = command = "AI34"
trigger35 = command = "AI35"
trigger36 = command = "AI36"
trigger37 = command = "AI37"
trigger38 = command = "AI38"
trigger39 = command = "AI39"
trigger40 = command = "AI40"
trigger41 = command = "AI41"
trigger42 = command = "AI42"
trigger43 = command = "AI43"
trigger44 = command = "AI44"
trigger45 = command = "AI45"
trigger46 = command = "AI46"
trigger47 = command = "AI47"
trigger48 = command = "AI48"
trigger49 = command = "AI49"
trigger50 = command = "AI50"
trigger51 = command = "AI51"
trigger52 = command = "AI52"
trigger53 = command = "AI53"
trigger54 = command = "AI54"
trigger55 = command = "AI55"
trigger56 = command = "AI56"
trigger57 = command = "AI57"
trigger58 = command = "AI58"
trigger59 = command = "AI59"
v = 59
value = 1


;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]




;This controller plays a sound everytime KFM lands from a jump, or
;from his back-dash.
[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 106 ;Run-back land
trigger1 = AnimElem = 1
value = S333,333

[State -20 , 1]
type = PlaySnd
trigger1 = stateno = 20
trigger1 = AnimElem = 7
value = S2,77

;Haste/V-ism Sorrowedge's Haste code
[State -3, Speed] 
type = ChangeAnim
triggerall = (Var(10) > 1) && (RoundState = 2) && (MoveType != H)
trigger1 = AnimElemTime(AnimElemNo(0) + 1) < 0
trigger1 = AnimElemTime(AnimElemNo(0)) > floor ((AnimElemTime(AnimElemNo(0)) - AnimElemTime(AnimElemNo(0) + 1))/2)
ignorehitpause = 1
value = anim
elem = AnimElemNo(0) + 1


;-------------------------------------------------------
;IA Virtual
;-------------------------------------------------------
;IA Virtual

[State -2, Energia_primo_round]
type = PowerSet
trigger1 = RoundState = 1
;trigger1 = P2Life >= 1000
trigger1 = RoundNo = 1
value = 0

[State -2, Energia_terzo_round]
type = AttackMulSet
trigger1 = RoundState = 1
;trigger1 = P2Life >= 1000
trigger1 = RoundNo >= 2
value = 1.8

[State -2, Energia_terzo_round]
type = powerAdd
trigger1 = Life <= 300
trigger1 = P2Life <= 1000
;trigger1		= (Time > 1) ;temps entre monte
trigger1 = RoundNo >= 2
value = 5000

[State -2, Energia_terzo_round]
type = AttackMulSet
trigger1 = RoundState = 1
;trigger1 = P2Life >= 1000
trigger1 = RoundNo >= 3
value = 2

[State -2, PowerAdd]
type			= PowerAdd
trigger1		= (Time > 3) ;temps entre monte
value			= 1 ;la monte :)


;---------------------------------------------------------------------------
;Combo Detection

[State -2:		VarSet]
type			= VarSet
trigger1		= 1
v			= 3
value			= 0
ignorehitpause	= 1

[State -2:		VarSet]
type			= VarSet
triggerall		= (MoveContact)
trigger1		= ((StateNo = 200) && (AnimElem = 2, < 5)) || ((StateNo = 210) && (AnimElem = 2, < 5)) || ((StateNo = 220) && (AnimElem = 2, < 5)) || ((StateNo = 230) && (AnimElem = 3, < 5))
trigger2		= ((StateNo = 400) && (AnimElem = 2, < 5)) || ((StateNo = 410) && (AnimElem = 2, < 5)) || ((StateNo = 420) && (AnimElem = 2, < 5))
v			= 3
value			= 1
ignorehitpause	= 1

[State -2:		VarSet]
type			= VarSet
trigger1		= ((HitDefAttr = S, SA) && (MoveContact)) || ((StateNo = 1000) && (AnimElem = 2, > 0) && (AnimElem = 2, < 15)) || ((StateNo = 1010) && (AnimElem = 2, > 0) && (AnimElem = 2, < 15))
trigger2		= ((StateNo = 1050) && (AnimElem = 3, > 0) && (AnimElem = 3, < 15)) || ((StateNo = 1060) && (AnimElem = 2, > 0) && (AnimElem = 7, < 5))
trigger3		= ((StateNo = 1070) && (AnimElem = 2, > 0) && (AnimElem = 2, < 15)) || ((StateNo = 1080) && (AnimElem = 2, > 0) && (AnimElem = 2, < 15))
v			= 3
value			= 2
ignorehitpause	= 1

;[State -2:		AssertSpecial]
;trigger1		= Stateno = 0
;trigger1		=  RoundNo >= 1
;y                       = 0
;x                       = 0
;---------------------------------------------------------------------------
;Corner Juggle Limit

[State -2:		AssertSpecial]
type			= AssertSpecial
trigger1		= Var(10) = 0
flag			= NoJuggleCheck

[State -2:		VarSet]
type			= VarSet
trigger1		= 1
v			= 10
value			= IfElse((EnemyNear, BackEdgeBodyDist < 20) || (EnemyNear, FrontEdgeBodyDist < 20),1,0)

;===========================================================================
;-| Artificial Intelligence |-----------------------------------------------
;---------------------------------

; Aumenta l'attacco e la difesa se P1 è in fin di vita

[State -2, Attacco]
type = AttackMulSet
triggerall = PalNo = [7, 12] ;tutto funziona solo con 
;queste palette che il giocatore non può selezionare
trigger1 = life <= 350
value = 2

[State -2, Difesa]
type = DefenceMulSet
triggerall = PalNo = [7, 12] ;tutto funziona solo con 
;queste palette che il giocatore non può selezionare
trigger1 = life <= 350
value = 2

[State -1]; throw1
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) = 1) && (statetype = S) && (ctrl) 
trigger1 = (p2bodydist X >= 260) ;&& (random = [50,450])
value = 500

[State -1]; throw2
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) = 1) && (statetype = S) && (ctrl) 
trigger1 = (p2bodydist X >= 260) ;&&  (random = [50,450])
value = 520

; ==========================
; AI Standing Guard
; ==========================
[State -1]
type = ChangeState
triggerall = var(59) = 1 
triggerall = Statetype != A 
triggerall = P2statetype != C 
triggerall = Statetype = S 
triggerall = P2Movetype = A 
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 999 
value = 130
; ==========================
; AI Standing Guard++
; ==========================
[State -1]
type = ChangeState 
triggerall = (Var(30) = 59) && (StateType = S) && (Pos Y = 0) && (P2BodyDist Y <= 0) 
triggerall = (P2BodyDist Y = -120) && (P2StateType != C) && (P2MoveType = A) 
trigger1 = (P2BodyDist X <= 120) && (Random <= 799) && (Ctrl) 
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105]) 
value = 130 
; =============================
; AI Stand to Crouch Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152
; =============================
; AI Crouching Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 900
value = 131
; =============================
; AI Crouching Guard++
; =============================
[State -1]
type = ChangeState 
triggerall = (Var(30) = 59) && (StateType != A) && (Pos Y = 0) && (P2BodyDist Y <= 0) 
triggerall = (P2BodyDist Y = -50) && (P2StateType = C) && (P2MoveType = A) 
trigger1 = (P2BodyDist X <= 120) && (Random <= 799) && (Ctrl) 
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105]) 
value = 131

; =============================
; AI Crouch to Stand Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150
; =============================
; AI Aerial Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = random <= 900
value = 132
; =============================
; AI Aerial Guard++
; =============================
[State -1]
type = ChangeState 
triggerall = (Var(30) = 59) && (StateType = A) && (Pos Y = 0)  && (P2BodyDist Y = -120) 
triggerall = (StateType = A) && (P2MoveType = A) 
trigger1 = ((P2BodyDist X <= 120) && (Ctrl)) || (StateNo = [140, 155]) 
value = 132 
; =============================
; AI Spped up++
; =============================
[State -1]
type = ChangeAnim
triggerall = (Var(10) > 1) && (RoundState >= 2) && (MoveType != H)
trigger1 = AnimElemTime(AnimElemNo(0) + 1) < 0
trigger1 = AnimElemTime(AnimElemNo(0)) > floor ((AnimElemTime(AnimElemNo(0)) - AnimElemTime(AnimElemNo(0) + 1))/2)
ignorehitpause = 1
value = anim
elem = AnimElemNo(0) + 1





















