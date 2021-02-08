

;*****************************************************************************************
;                                                                                        *                               *
;Seiya de Pegasus  Autor  Grafica : Tecla2000 (base general de sprit Claudio Ricci(MIM)) *
;                          Programacion : Tecla2000                                      *
;                                                                                        *                               *
;*****************************************************************************************

;-------------------------
;-------------------------
;    Reasignar botones
;-------------------------
;-------------------------
; Esta sección lo deja reasignar los botones del jugador (para cambiar fácilmente la Configuración)
; El formato es:
; boton predeterminado en mugen = nuevo boton que ponemos
; recuerden que deben mantener las mismas letras, lo que pueden hacer es cambiar el orden x=a o y=b 

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;---------------------------
;---------------------------
; Valores de incumplimiento
;---------------------------
;---------------------------

[Defaults]

command.time = 15          ; Valor de incumplimiento para el parámetro de "Tiempo" de un comando. Mínimo 1.

command.buffer.time = 1    ; Valor de incumplimiento para el parámetro de "Buffer.time" de un comando. 
                           ; 1 mínimo, 30 máximo.


;-------------------------
;-------------------------
;      AI Command 
;-------------------------
;-------------------------

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
command = z, y, z
time = 1

[Command]
name = "AI31"
command = D, DF, F ,a, a, a
time = 1

[Command]
name = "AI32"
command = D, DF, F ,b, b, b
time = 1

[Command]
name = "AI33"
command = D, DF, F ,c, c, c
time = 1

[Command]
name = "AI34"
command = D, DF, F ,x, x, x
time = 1

[Command]
name = "AI35"
command = D, DF, F ,y, y, y
time = 1

[Command]
name = "AI36"
command = D, DF, F ,z, z, z
time = 1

[Command]
name = "AI37"
command = D, DF, F ,a, b, c
time = 1

[Command]
name = "AI38"
command = D, DF, F ,a, c, b
time = 1

[Command]
name = "AI39"
command = D, DF, F ,b, a, c
time = 1

[Command]
name = "AI40"
command = D, DF, F ,b, c, a
time = 1

[Command]
name = "AI41"
command = D, DF, F ,c, b, a
time = 1

[Command]
name = "AI42"
command = D, DF, F ,c, a, b
time = 1

[Command]
name = "AI43"
command = D, DF, F ,x, y, z
time = 1

[Command]
name = "AI44"
command = D, DF, F ,x, z, y
time = 1

[Command]
name = "AI45"
command = D, DF, F ,y, z, x
time = 1

[Command]
name = "AI46"
command = D, DF, F ,y, x, z
time = 1

[Command]
name = "AI47"
command = D, DF, F ,z, y, x
time = 1

[Command]
name = "AI48"
command = D, DF, F ,z, x, y
time = 1

[Command]
name = "AI49"
command = D, DF, F ,a, b, a
time = 1

[Command]
name = "AI50"
command = D, DF, F ,a, c, a
time = 1

[Command]
name = "AI51"
command = D, DF, F ,b, a, b
time = 1

[Command]
name = "AI52"
command = D, DF, F ,b, c, b
time = 1

[Command]
name = "AI53"
command = D, DF, F ,c, a, c
time = 1

[Command]
name = "AI54"
command = D, DF, F ,c, b, c
time = 1

[Command]
name = "AI55"
command = D, DF, F ,x, y, x
time = 1

[Command]
name = "AI56"
command = D, DF, F ,x, z, x
time = 1

[Command]
name = "AI57"
command = D, DF, F ,y, x, y
time = 1

[Command]
name = "AI58"
command = D, DF, F ,y, z, y
time = 1

[Command]
name = "AI59"
command = D, DF, F ,z, x, z
time = 1

[Command]
name = "AI60"
command = D, DF, F ,z, y, z
time = 1

[Command]
name = "AI61"
command = F, DF, D ,a, b, c
time = 1

[Command]
name = "AI62"
command = F, DF, D ,a, c, b
time = 1

[Command]
name = "AI63"
command = D, DB, B ,b, a, c
time = 1

;-------------------------
;-------------------------
;      Super Ataques
;-------------------------
;-------------------------

;------------
;  Level 1  -
;------------

;Cometa Pegaso Aereo (Pegasus Suiseken air)
[Command]
name = "Cometa pegaso aereo"
command = F, DF, D, DB, B, a
time = 35
[Command]
name = "Cometa pegaso aereo"
command = F, DF, D, DB, B, b
time = 35
[Command]
name = "Cometa pegaso aereo"
command = F, DF, D, DB, B, c
time = 35

;Meteoros de Pagaso, en movimiento (Pegasus ryuseiken Ken)
[Command]
name = "ryuseiken_LV1"
command = B, DB, D, DF, F, a
time = 35

;Impacto Rodante de Pagaso (Pegasus Rolling Crush)
[Command]
name = "spirale"
command = B, DB, D, DF, F, x
time = 35


;------------
;  Level 2  -
;------------

;Meteoros de Pagaso, Aereo (Pegasus ryuseiken air)
[Command]
name = "ryuseiken_Air_LV2"
command = F, DF, D, DB, B, x
time = 35
;Meteoros de Pagaso, Aereo (Pegasus ryuseiken air)
[Command]
name = "ryuseiken_Air_LV2"
command = F, DF, D, DB, B, y
time = 35
;Meteoros de Pagaso, Aereo (Pegasus ryuseiken air)
[Command]
name = "ryuseiken_Air_LV2"
command = F, DF, D, DB, B, z
time = 35

;Meteoros de Pagaso, Aereo (Pegasus ryuseiken air) (suelo)
[Command]
name = "ryuseiken_Air_LV2s"
command = B, DB, D, DF, F, y
time = 35

;Meteoros de Pagaso, en el mismo lugar (Pegasus ryuseiken Ken)
[Command]
name = "ryuseiken"
command = B, DB, D, DF, F, b
time = 35


;------------
;  Level 3  -
;------------

;Cometa Pegaso (Pegasus Suiseken)
[Command]
name = "Suiseken"
command = B, DB, D, DF, F, c
time = 25

;---------------------------
;  Movimineto Desesperado  -
;---------------------------

;Escudo de Athena
[Command]
name = "escudo_de_Athena"
command = F, DF, D, DB, B, z
time = 35

;------------
; Fatality  -
;------------


;Flecha Dorada de Sagitario
[Command]
name = "flecha_dorada"
command = F, DF, D, DB, B, a
time = 35


;-------------------------
;-------------------------
;    Combos y Poderes
;-------------------------
;-------------------------

;Poderes en el aire

;Meteoros Aereo Puño
[Command]
name = "Meteorosair3"
command = D, DF, F, a
time = 35
[Command]
name = "Meteorosair2"
command = D, DF, F, b
time = 35
[Command]
name = "Meteorosair"
command = D, DF, F, c
time = 35

;patada voladora descendente vertical
[Command]
name = "patada_vertical"
command = D, DB, B, x
time = 25
[Command]
name = "patada_vertical"
command = D, DB, B, y
time = 25
[Command]
name = "patada_vertical"
command = D, DB, B, z
time = 25

;patada voladora alada
[Command]
name = "patada_alada"
command = D, DF, F, x
time = 25
[Command]
name = "patada_alada"
command = D, DF, F, y
time = 25
[Command]
name = "patada_alada"
command = D, DF, F, z
time = 25


; Poderes en el suelo


;Mini meteoros multiple agachado
[Command]
name = "agachado_meteoro"
command = D, DB, B, a
time = 25

;Mini meteoros multiple 1
[Command]
name = "parado_meteoro1"
command = D, DF, F, a
time = 25

;Mini meteoros multiple parado
[Command]
name = "parado_meteoro2"
command = D, DF, F, b
time = 25

;mini cometa pegasus
[Command]
name = "mini_cometa"
command = D, DF, F, c
time = 25

;Codazo
[Command]
name = "codazo2"
command = D, DB, B, c
time = 25

[Command]
name = "codazo1"
command = D, DB, B, b
time = 25

;Golpe y barrida 
[Command]
name = "Golpe_Barrida"
command = D, DF, F, y
time = 25

;barrida 
[Command]
name = "Barrida"
command = D, DF, F, x
time = 25

;Combo Patada
[Command]
name = "Combo_Patada"
command = D, DF, F, z
time = 25

;gancho - uppercup
[Command]
name = "uppercupX"
command = F, D, a
time = 25
[Command]
name = "uppercupY"
command = F, D, b
time = 25
[Command]
name = "uppercupZ"
command = F, D, c
time = 25

;Pegaso Kick
[Command]
name = "Pegaso Kick 1"
command = D, DB, B, x
time = 25
[Command]
name = "Pegaso Kick 2"
command = D, DB, B, y
time = 25

;combo multiple 
[Command]
name = "combo_multiple"
command = D, DB, B, z
time = 25

;-------------------------
;-------------------------
;        Double Tap
;-------------------------
;-------------------------

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10


;-------------------------
;-------------------------
;   Button combination
;-------------------------
;-------------------------

;Carga de cosmo
[Command]
name = "charge"
command = /b
time= 1
[Command]
name = "charge 1"
command= /c
time= 1

;Septimo Sentido
[Command]
name = "recover"
command = a+x
time = 20

; Megablock y incrementar cosmo
[Command]
name = "mega_block"
command = c
time = 10


;-------------------------
;-------------------------
;      Dir + Button
;-------------------------
;-------------------------

;puño adicional devil
[Command]
name = "fwd_a"
command = /F,a
time = 1

;Remate puño
[Command]
name = "fwd_c"
command = /F,c
time = 1


;patada adicional devil
[Command]
name = "fwd_x"
command = /F,x
time = 1

;patada adicional media
[Command]
name = "fwd_y"
command = /F,y
time = 1

;REmate patada
[Command]
name = "fwd_z"
command = /F,z
time = 1


;agarre puño
[Command]
name = "throw_1" 
command = /F, b
time = 10

;-------------------------
;-------------------------
;   Single button
;-------------------------
;-------------------------


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



;-------------------------
;-------------------------
;       Hold Dir
;-------------------------
;-------------------------


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

[command]
name = "holdx"
command = /$x
time = 1

[command]
name = "holdy"
command = /$y
time = 1

[command]
name = "holdz"
command = /$z
time = 1


[command]
name = "holda"
command = /$a
time = 1

[command]
name = "holdb"
command = /$b
time = 1

[command]
name = "holdc"
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

;-------------------------
;-------------------------
;      Super Ataques
;-------------------------
;-------------------------

;Poderes en el Aire

;Cometa Pegaso Aereo (Pegasus Suiseken air)
[State -1]
type = ChangeState
value = 3100
triggerall = (stateNo != [1920,1932]) 
triggerall = (stateNo != [1600,1620])
triggerall = command = "Cometa pegaso aereo"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 600) && (MoveContact)
trigger3 = (stateno = 610) && (MoveContact)
trigger4 = (stateno = 620) && (MoveContact)
trigger5 = (stateno = 630) && (MoveContact)
trigger6 = (stateno = 640) && (MoveContact)
trigger7 = (stateno = 650) && (MoveContact)
trigger8 = (stateno = 660) && (MoveContact)
trigger9 = (stateno = 670) && (MoveContact)

;Meteoros de Pagaso, Aereo (Pegasus ryuseiken air)
[State -1]
type = ChangeState
value = 3300
triggerall = (stateNo != [1920,1932]) 
triggerall = (stateNo != [1600,1620])
triggerall = command = "ryuseiken_Air_LV2"
triggerall = power >= 2000
triggerall = statetype = A
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 600) && (MoveContact)
trigger3 = (stateno = 610) && (MoveContact)
trigger4 = (stateno = 620) && (MoveContact)
trigger5 = (stateno = 630) && (MoveContact)
trigger6 = (stateno = 640) && (MoveContact)
trigger7 = (stateno = 650) && (MoveContact)
trigger8 = (stateno = 660) && (MoveContact)
trigger9 = (stateno = 670) && (MoveContact)

;Poderes en el suelo

;Meteoros de Pagaso, Aereo (Pegasus ryuseiken air) (suelo)
[State -1, desde el suelo]
type = ChangeState
value = 3390
triggerall = command = "ryuseiken_Air_LV2s"
triggerall = power >= 2000 
triggerall = statetype != A 
triggerall = (stateNo != [1600,1620])
triggerall = (stateNo != [1920,1932]) 
trigger1 = statetype != A 
trigger1 = ctrl 
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)

;Meteoros de Pagaso, en movimiento (Pegasus ryuseiken Ken)
[State -1]
type = ChangeState
value = 3000
triggerall = (stateNo != [1920,1932]) 
triggerall = (stateNo != [1600,1620])
triggerall = command = "ryuseiken_LV1"
triggerall = power >= 1000 
triggerall = statetype != A
triggerall = (stateNo != [1920,1932])
trigger1 = ctrl 
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = hitdefattr = SC, NA, SA
trigger11 = movecontact

;Meteoros de Pagaso, en el mismo lugar (Pegasus ryuseiken Ken)
[State -1]
type = ChangeState
value = 3200
triggerall = (stateNo != [1920,1932]) 
triggerall = (stateNo != [1600,1620])
triggerall = command = "ryuseiken"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = (stateNo != [1920,1932])
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = hitdefattr = SC, NA, SA
trigger11 = movecontact

;Cometa Pegaso (Pegasus Suiseken)
[State -1]
type = ChangeState
value = 3400
triggerall = (stateNo != [1920,1932]) 
triggerall = (stateNo != [1600,1620])
triggerall = command = "Suiseken"
triggerall = power >= 3000
triggerall = statetype != A
triggerall = (stateNo != [1920,1932])
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = hitdefattr = SC, NA, SA
trigger11 = movecontact

;Impacto Rodante de Pagaso (Pegasus Rolling Crush) V1
[State -1]
type = ChangeState
value = 3600
triggerall = (stateNo != [1920,1932]) 
triggerall = (stateNo != [1600,1620])
triggerall = Command = "spirale"
triggerall = power >= 1000
triggerall = p2statetype != L
triggerall = p2bodydist X < 40
triggerall = statetype != A
triggerall = (stateNo != [1920,1932])
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = hitdefattr = SC, NA, SA
trigger11 = movecontact

;Impacto Rodante de Pagaso (Pegasus Rolling Crush) V2
[State -1]
type = ChangeState
value = 3691
triggerall = (stateNo != [1920,1932]) 
triggerall = (stateNo != [1600,1620])
triggerall = Command = "spirale"
triggerall = power >= 1000
triggerall = p2statetype != L
triggerall = p2bodydist X >= 40
triggerall = statetype != A
triggerall = statetype != A
triggerall = (stateNo != [1920,1932])
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = hitdefattr = SC, NA, SA
trigger11 = movecontact

;podres con poca energia

;Escudo de Athena
[State -1]
type = ChangeState
value = 3800
triggerall = (stateNo != [1920,1932]) 
triggerall = (stateNo != [1600,1620])
triggerall = command = "escudo_de_Athena"
triggerall = P2name != "Athena"
triggerall = p4name != "Athena"
triggerall = power >= 3000
triggerall = life <= 250
triggerall = statetype != A
triggerall = (stateNo != [1920,1932])
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = hitdefattr = SC, NA, SA
trigger11 = movecontact

;Flecha Dorada de Sagitario
[State -1]
type = ChangeState
value = 3700
triggerall = (stateNo != [1920,1932]) 
triggerall = (stateNo != [1600,1620])
triggerall = command = "flecha_dorada"
triggerall = P2name != "Athena"
triggerall = p4name != "Athena"
triggerall = power >= 3000
triggerall = p2life <= 250
triggerall = statetype != A
triggerall = (stateNo != [1920,1932])
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = hitdefattr = SC, NA, SA
trigger11 = movecontact



;===========================================================================

;-------------------------
;-------------------------
;    Combos y Poderes
;-------------------------
;-------------------------

; Poderes en el aire

[State -1, Meteoro Air]
type = ChangeState
value = 1080
triggerall = command = "Meteorosair"
trigger1 = statetype = A 
trigger1 = ctrl 


[State -1, Meteoro Air]
type = ChangeState
value = 1085
triggerall = command = "Meteorosair2"
trigger1 = statetype = A 
trigger1 = ctrl 


[State -1, Meteoro Air]
type = ChangeState
value = 1086
triggerall = command = "Meteorosair3"
trigger1 = statetype = A 
trigger1 = ctrl 


;Patada Voladora Alada
[State -1]
type = ChangeState
value = 700
triggerall = command = "patada_alada"
trigger1 = statetype = A
trigger1 = ctrl = 1


;Patada voladora misil vertical
[State -1]
type = ChangeState
value = 1100
triggerall = command = "patada_vertical"
trigger1 = statetype = A
trigger1 = ctrl = 1



; Poderes an el Suelo


;Mini meteoros multiple agachado
[State -1]
type = ChangeState
value = 1040
triggerall = (stateNo != [1600,1620])
triggerall = (stateNo != 1040)
triggerall = (stateNo != [1920,1932]) 
triggerall = command = "agachado_meteoro"
triggerall = statetype != A
trigger1 = statetype != A
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = (stateno = 1000) && (MoveContact)
trigger12 = (stateno = 1010) && (MoveContact)
trigger13 = hitdefattr = SC, NA, SA
trigger13 = movecontact


;Mini meteoros multiple 1
[State -1]
type = ChangeState
value = 1000
triggerall = (stateNo != [1600,1620])
triggerall = (StateNo != 1000)
triggerall = (stateNo != [1920,1932]) 
triggerall = command = "parado_meteoro1"
triggerall = statetype != A
trigger1 = statetype != A
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = (stateno = 1040) && (MoveContact)
trigger12 = (stateno = 1010) && (MoveContact)
trigger13 = hitdefattr = SC, NA, SA
trigger13 = movecontact

;Mini meteoros multiple 2
[State -1]
type = ChangeState
value = 1010
triggerall = (stateNo != [1600,1620])
triggerall = (StateNo != 1010)
triggerall = (stateNo != [1920,1932]) 
triggerall = command = "parado_meteoro2"
triggerall = statetype != A
;triggerall = P2BodyDist X < 190
trigger1 = statetype != A
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = (stateno = 1000) && (MoveContact)
trigger12 = (stateno = 1040) && (MoveContact)
trigger13 = hitdefattr = SC, NA, SA
trigger13 = movecontact



;mini cometa de Pegaso
[State -1]
type = ChangeState
value = 1020
triggerall = (stateNo != [1600,1620])
triggerall = (StateNo != 1020)
triggerall = (stateNo != [1920,1932]) 
triggerall = command = "mini_cometa"
triggerall = statetype != A
trigger1 = statetype != A
triggerall = power >= 250
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = (stateno = 1000) && (MoveContact)
trigger12 = (stateno = 1010) && (MoveContact)
trigger13 = (stateno = 1040) && (MoveContact)
trigger14 = hitdefattr = SC, NA, SA
trigger14 = movecontact


;codazo
[State -1]
type = ChangeState
value = 1201
triggerall = (stateNo != [1600,1620])
triggerall = (StateNo != 1201)
triggerall = (stateNo != [1920,1932]) 
triggerall = command = "codazo1"
triggerall = statetype != A
trigger1 = statetype != C
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = hitdefattr = SC, NA, SA
trigger11 = movecontact

[State -1]
type = ChangeState
value = 1200
triggerall = (stateNo != [1600,1620])
triggerall = (StateNo != 1200)
triggerall = (stateNo != [1920,1932]) 
triggerall = command = "codazo2"
triggerall = statetype != A
trigger1 = statetype != C
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = hitdefattr = SC, NA, SA
trigger11 = movecontact


;Golpe y barrida
[State -1]
type = ChangeState
value = 1550
triggerall = (stateNo != [1600,1620])
triggerall = (stateNo != 1550)
triggerall = (stateNo != [1920,1932]) 
triggerall = command = "Golpe_Barrida"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = hitdefattr = SC, NA, SA
trigger11 = movecontact

;Barrida
[State -1]
type = ChangeState
value = 1500
triggerall = (stateNo != [1600,1620])
triggerall = (stateNo != 1500)
triggerall = (stateNo != [1920,1932]) 
triggerall = command = "Barrida"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = hitdefattr = SC, NA, SA
trigger11 = movecontact

;Combo Patada
[State -1]
type = ChangeState
value = 1600
triggerall = (stateNo != [1600,1620])
triggerall = (stateNo != [1920,1932]) 
triggerall = command = "Combo_Patada"
triggerall = statetype != A
trigger1 = statetype != A
trigger1 = statetype  = S
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = hitdefattr = SC, NA, SA
trigger11 = movecontact

;Gancho Devil - uppercup
[State -1]
type = ChangeState
value = 1800      
triggerall = (stateNo != [1600,1620])                   
triggerall = (stateNo != 1800)
triggerall = (stateNo != [1920,1932]) 
triggerall = statetype != A
triggerall = command = "uppercupX"
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = hitdefattr = SC, NA, SA
trigger11 = movecontact

;Gancho Medio - uppercup
[State -1]
type = ChangeState
value = 1810
triggerall = (stateNo != [1600,1620])
triggerall = (stateNo != 1810)
triggerall = (stateNo != [1920,1932]) 
triggerall = statetype != A
triggerall = command = "uppercupY"
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = hitdefattr = SC, NA, SA
trigger11 = movecontact

;Gancho Fuerte - uppercup
[State -1]
type = ChangeState
value = 1820
triggerall = (stateNo != [1600,1620])
triggerall = (stateNo != 1820)
triggerall = (stateNo != [1920,1932]) 
triggerall = statetype != A
triggerall = command = "uppercupZ"
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = hitdefattr = SC, NA, SA
trigger11 = movecontact


;Pegaso Kick
[State -1]
type = ChangeState
value = 1710
triggerall = (stateNo != [1600,1620])
triggerall = (stateNo != 1710)
triggerall = (stateNo != [1920,1932]) 
triggerall = command = "Pegaso Kick 1"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = hitdefattr = SC, NA, SA
trigger11 = movecontact

;Pegaso Kick
[State -1]
type = ChangeState
value = 1700
triggerall = (stateNo != [1600,1620])
triggerall = (stateNo != 1700)
triggerall = (stateNo != [1920,1932]) 
triggerall = command = "Pegaso Kick 2"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = hitdefattr = SC, NA, SA
trigger11 = movecontact

;combo multiple puño
[State -1]
type = ChangeState
value = 1900
triggerall = (stateNo != [1600,1620])
triggerall = (stateNo != [1900,1943]) 
triggerall = (stateNo != [1920,1932]) 
triggerall = command = "combo_multiple"
triggerall = statetype != A
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)
trigger5 = (stateno = 230) && (MoveContact)
trigger6 = (stateno = 240) && (MoveContact)
trigger7 = (stateno = 250) && (MoveContact)
trigger8 = (stateno = 260) && (MoveContact)
trigger9 = (stateno = 285) && (MoveContact)
trigger10 = (stateno = 280) && (MoveContact)
trigger11 = hitdefattr = SC, NA, SA
trigger11 = movecontact

;===========================================================================

;-------------------------
;-------------------------
;   Button combination
;-------------------------
;-------------------------

;Recarga de cosmo
[State -1]
type = ChangeState
value = 730000
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"

; Megablock
[State -1]
type = ChangeState
value = 1400
triggerall = command = "mega_block"
triggerall = command = "holdback"
triggerall = P2StateType = S
trigger1 = StateType = S
trigger1 = ctrl = 1

;Septimo Sentido
[State -1]
type = ChangeState
value = 2000
triggerall = var(8) = 0
triggerall = command = "recover"
triggerall = power >= 3000
;triggerall = life <= 250
trigger1 = statetype != A
trigger1 = ctrl = 1


;===========================================================================

;-------------------------
;-------------------------
;        Double Tap
;-------------------------
;-------------------------

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl


; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl



;===========================================================================

;-------------------------
;-------------------------
;      Dir + Button
;-------------------------
;-------------------------

;puño Alternativa devil
[State -1]
type = ChangeState
value = 260
triggerall = command = "fwd_a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 230) && (MoveContact)
trigger3 = (stateno = 200) && (MoveContact)
trigger4 = (stateno = 285) && (MoveContact)

;patada Alternativa devil
[State -1]
type = ChangeState
value = 285
triggerall = command = "fwd_x"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 230) && (MoveContact)
trigger3 = (stateno = 200) && (MoveContact)
trigger4 = (stateno = 260) && (MoveContact)


;Alternativa patada media
[State -1]
type = ChangeState
value = 280
triggerall = command = "fwd_y"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = P2bodydist X > 29
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 230) && (MoveContact)
trigger3 = (stateno = 200) && (MoveContact)
trigger4 = (stateno = 260) && (MoveContact)
trigger5 = (stateno = 240) && (MoveContact)

;Remate puño
[State -1]
type = ChangeState
value = 270
triggerall = command = "fwd_c"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 260) && (MoveContact)
trigger4 = (stateno = 220) && (MoveContact)


;Remate patada
[State -1]
type = ChangeState
value = 295
triggerall = P2bodydist X > 15
triggerall = command = "fwd_z"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 230) && (MoveContact)
trigger3 = (stateno = 250) && (MoveContact)


;Remate patada
[State -1]
type = ChangeState
value = 290
triggerall = P2bodydist X <= 15
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl = 1

;agarre 1
[State -1]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno != 100    ;Not running
triggerall = p2bodydist X < 40
trigger1 = command = "throw_1" && p2statetype = S && p2movetype != H
trigger2 = command = "throw_1" && p2statetype = C && p2movetype != H


;agarre 2
[State -1]]
type = ChangeState
value = 900
triggerall = roundstate = 2
triggerall = (command = "holdfwd" || command = "holdback") && (command = "y")
triggerall = P2bodydist X = [-const(size.ground.front),22]
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H || var(16)

;===========================================================================

;-------------------------
;-------------------------
;       Hold Dir
;-------------------------
;-------------------------

; golpe gancho puño (defensa al lebantarse)
[State -1,]
type = ChangeState
value = 950
triggerall = statetype = L
triggerall = Pos Y = 0
triggerall = life >= 1
trigger1 = command = "holda"
trigger2 = command = "holdb"
trigger3 = command = "holdc"


; golpe deslizandose patada (defensa al lebantarse)
[State -1,]
type = ChangeState
value = 960
triggerall = statetype = L
triggerall = Pos Y = 0
triggerall = life >= 1
trigger1 = command = "holdx"
trigger2 = command = "holdy"
trigger3 = command = "holdz"

;===========================================================================

;-------------------------
;-------------------------
;   Single button
;-------------------------
;-------------------------


; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl




;-------------------------
;         Puños
;-------------------------


;--------------


; Parado puño devil
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 230) && (MoveContact)
trigger4 = (stateno = 260) && (MoveContact)

; Parado puño medio
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 230) && (MoveContact)
trigger4 = (stateno = 240) && (MoveContact)
trigger5 = (stateno = 260) && (MoveContact)
trigger6 = (stateno = 285) && (MoveContact)

; Parado puño fuerte
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && (MoveContact)
trigger3 = (stateno = 240) && (MoveContact)
trigger4 = (stateno = 280) && (MoveContact)


;--------------


; Agachado puño devil
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (MoveContact)
trigger3 = (stateno = 430) && (MoveContact)

; Agachado puño medio
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (MoveContact)
trigger3 = (stateno = 430) && (MoveContact)


; Agachado puño fuerte
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 410) && (MoveContact)
trigger3 = (stateno = 440) && (MoveContact)

;--------------


; aire puño devil
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = Vel X != 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

; aire puño medio
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = Vel X != 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (MoveContact)

; aire puño fuerte
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = Vel X != 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 610) && (MoveContact)


;--------------


; aire puño salto neutro
[State -1]
type = ChangeState
value = 660
triggerall = command = "a"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 670) && (MoveContact)

; aire puño salto neutro
[State -1]
type = ChangeState
value = 660
triggerall = command = "b"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 670) && (MoveContact)

; aire puño salto neutro
[State -1]
type = ChangeState
value = 660
triggerall = command = "c"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 670) && (MoveContact)


;--------------





;-------------------------
;         Patadas
;-------------------------


;--------------

; Parado patada devil
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 230) && (MoveContact)
trigger4 = (stateno = 260) && (MoveContact)
trigger5 = (stateno = 285) && (MoveContact)


; Parado patada medio
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 230) && (MoveContact)
trigger4 = (stateno = 210) && (MoveContact)
trigger5 = (stateno = 280) && (MoveContact)
trigger6 = (stateno = 285) && (MoveContact)

; Parado patada fuerte
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && (MoveContact)
trigger3 = (stateno = 240) && (MoveContact)
trigger4 = (stateno = 280) && (MoveContact)


;--------------


; Agachado patada devil
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (MoveContact)



; Agachado patada medio
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (MoveContact)
trigger3 = (stateno = 430) && (MoveContact)

; Agachado patada fuerte
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 410) && (MoveContact)
trigger3 = (stateno = 440) && (MoveContact)
trigger4 = (stateno = 432) && (MoveContact)

;--------------


; Aire patada devil
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "x"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

; Aire patada medio
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "y"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 630) && (MoveContact)

; Aire patada fuerte
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "z"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 640) && (MoveContact)

;--------------


; aire patada salto neutro
[State -1]
type = ChangeState
value = 670
triggerall = command = "x"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 660) && (MoveContact)

; aire puño salto neutro
[State -1]
type = ChangeState
value = 670
triggerall = command = "y"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 660) && (MoveContact)

; aire puño salto neutro
[State -1]
type = ChangeState
value = 670
triggerall = command = "z"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 660) && (MoveContact)


;--------------


;===========================================================================


;-----------------------------------------------------------------------
;****                                                               ****
;****                AI Inteligencia Artificial                     **** 
;****                                                               ****
;-----------------------------------------------------------------------




[State -1, AI]
type = Varset
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
trigger60 = command = "AI60"
trigger61 = command = "AI61"
trigger62 = command = "AI62"
trigger63 = command = "AI63"
v = 59
value = 1

;-----------------------------------
; ------ AI Standing Guard ---------
;-----------------------------------

[State -1]
type = ChangeState
triggerall = var(59) = 1 
triggerall = Statetype != A 
triggerall = P2statetype != C 
triggerall = Statetype = S 
triggerall = P2Movetype = A 
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random = [401, 999]
value = 130

[State -1]
type = ChangeState 
triggerall = (Var(30) = 59) && (StateType = S) && (Pos Y = 0) && (P2BodyDist Y <= 0) 
triggerall = (P2BodyDist Y = -120) && (P2StateType != C) && (P2MoveType = A) 
trigger1 = (P2BodyDist X <= 120) && (Random = [401, 999]) && (Ctrl) 
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105]) 
value = 130 

;-----------------------------------
; ------ AI Megablock ---------
;-----------------------------------

[State -1]
type = ChangeState
triggerall = var(59) = 1 
triggerall = Statetype != A 
triggerall = P2statetype != C 
triggerall = Statetype = S 
triggerall = P2Movetype = A 
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random = [0, 400]
value = 1419

[State -1]
type = ChangeState 
triggerall = (Var(30) = 59) && (StateType = S) && (Pos Y = 0) && (P2BodyDist Y <= 0) 
triggerall = (P2BodyDist Y = -120) && (P2StateType != C) && (P2MoveType = A) 
trigger1 = (P2BodyDist X <= 120) && (Random = [0, 400]) && (Ctrl) 
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105])  
value = 1419

;-----------------------------------
; ------ AI Standing Guard ---------
;-----------------------------------
; AI Stand to Crouch Guard Transition
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

; AI Crouching Guard
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 999
value = 131

[State -1]
type = ChangeState 
triggerall = (Var(30) = 59) && (StateType != A) && (Pos Y = 0) && (P2BodyDist Y <= 0) 
triggerall = (P2BodyDist Y = -50) && (P2StateType = C) && (P2MoveType = A) 
trigger1 = (P2BodyDist X <= 120) && (Random <= 799) && (Ctrl) 
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105]) 
value = 131

;-----------------------------------
; ------- AI Aerial Guard ---------
;-----------------------------------

; AI Crouch to Stand Guard Transition
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

;AI Aerial Guard
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = random <= 999
value = 132

[State -1]
type = ChangeState 
triggerall = (Var(30) = 59) && (StateType = A) && (Pos Y = 0)  && (P2BodyDist Y = -120) 
triggerall = (StateType = A) && (P2MoveType = A) 
trigger1 = ((P2BodyDist X <= 120) && (Ctrl)) || (StateNo = [140, 155]) 
value = 132 

