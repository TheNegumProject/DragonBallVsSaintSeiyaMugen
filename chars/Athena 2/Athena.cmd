

;**************************************************************************
;                                                                         *
;     Athena   Autor   Grafica : Shunchain y Programacion : Tecla2000     *
;                                                                         *
;**************************************************************************

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

[Command]
name = "AI64"
command = D, DB, B ,b, c, a
time = 1

[Command]
name = "AI65"
command = D, DB, B ,c, b, a
time = 1

[Command]
name = "AI66"
command = D, DB, B ,c, a, b
time = 1

[Command]
name = "AI67"
command = F, DF, D ,a, b, a
time = 1

[Command]
name = "AI68"
command = F, DF, D ,a, c, a
time = 1

[Command]
name = "AI69"
command = D, DB, B ,b, a, b
time = 1

[Command]
name = "AI70"
command = D, DB, B ,b, c, b
time = 1

[Command]
name = "AI71"
command = D, DB, B ,c, a, c
time = 1

[Command]
name = "AI72"
command = D, DB, B ,c, b, c
time = 1


;-------------------------
;-------------------------
;      Super Ataques
;-------------------------
;-------------------------

;Escudo de Athena
[Command]
name = "escudo_Ataque"
command = B, DB, D, DF, F, a
time = 30

;Ataque Esferas de energia
[Command]
name = "esfera_Ataque"
command = B, DB, D, DF, F, b
time = 30

;Escudo de Athena2
[Command]
name = "escudo_Ataque2"
command = B, DB, D, DF, F, x
time = 30

;Jarron de Athena
[Command]
name = "Jarron_Ataque"
command = B, DB, D, DF, F, y
time = 30

;Ataque con la armadura suelo
[Command]
name = "amadura_Ataque"
command = B, DB, D, DF, F, c
time = 30

;Ataque del baculo de atena (diosa Nikel)
[Command]
name = "baculo_Nikel"
command = F, DF, D, DB, B, c
time = 30

;Ataque con las 12 armaduras Doradas
[Command]
name = "12amaduras_doradas"
command = F, DF, D, DB, B, z
time = 30

;Ataque con la armadura Aire
[Command]
name = "amadura_Ataque2"
command = B, DB, D, DF, F, z
time = 30

;-------------------------
;-------------------------
;    Combos y Poderes
;-------------------------
;-------------------------

; en el suelo

;esfera de luz regresa
[Command]
name = "esfera_luz"
command = D, DF, F, a
time = 25

;esfera de luz regresa
[Command]
name = "esfera_luz1"
command = D, DF, F, b
time = 25

;esfera de luz regresa
[Command]
name = "esfera_luz2"
command = D, DF, F, c
time = 25

;esfera de luz
[Command]
name = "esfera_luz3"
command = D, DB, B, a
time = 25

;esfera de luz
[Command]
name = "esfera_luz4"
command = D, DB, B, b
time = 25

;esfera de luz
[Command]
name = "esfera_luz5"
command = D, DB, B, c
time = 25

; Megablock y incrementar cosmo
[Command]
name = "mega_block"
command = c
time = 25

;proteccion escudo
[Command]
name = "escudo_Athena"
command = /B,z
time = 25


; en el aire

;esfera de luz
[Command]
name = "air_esfera_luz"
command = D, DF, F, a
time = 25

;esfera de luz
[Command]
name = "air_esfera_luz1"
command = D, DF, F, b
time = 25

;esfera de luz
[Command]
name = "air_esfera_luz2"
command = D, DF, F, c
time = 25

;patada voladora
[Command]
name = "ddff_z"
command = D, DF, F, z
time = 25

;combo patada voladora
[Command]
name = "patada_v"
command =D, DF, F, y
time = 25

;combo patada voladora
[Command]
name = "patada_v1"
command =D, DF, F, x
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


;septimo senso

[Command]
name = "recover"
command = a+x
time = 20




;-------------------------
;-------------------------
;      Dir + Button
;-------------------------
;-------------------------

;puño adicional medio
[Command]
name = "fwd_y"
command = /F,b
time = 1

;Remate puño
[Command]
name = "fwd_c"
command = /F,c
time = 1

;Remate patada
[Command]
name = "fwd_z"
command = /F,z
time = 1

;Remate patada
[Command]
name = "fwd_b"
command = /F,y
time = 1

;Remate patada
[Command]
name = "fwd_x"
command = /F,x
time = 1

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

;nivel 1

;Escudo de Athena

[State -1, ataque escudo]
type = ChangeState
value = 3000
triggerall = command = "escudo_Ataque"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;Ataque Esferas de energia

[State -1, Ataque Esfera]
type = ChangeState
value = 3100
triggerall = command = "esfera_Ataque"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;Escudo de Athena

[State -1, ataque escudo]
type = ChangeState
value = 3300
triggerall = command = "escudo_Ataque2"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact




;nivel 2

;Ataque con la armadura suelo

[State -1, Ataque Esfera]
type = ChangeState
value = 3200
triggerall = command = "amadura_Ataque"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;Ataque con la armadura Aire

[State -1, Ataque Esfera]
type = ChangeState
value = 3400
triggerall = command = "amadura_Ataque2"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

[State -1, Ataque Esfera]
type = ChangeState
value = 3401
triggerall = command = "amadura_Ataque2"
triggerall = power >= 2000
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact




;nivel 3

;Jarron de Athena

[State -1]
type = ChangeState
value = 3500
triggerall = command = "Jarron_Ataque"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA


;Ataque del baculo de atena (diosa Nikel)

[State -1]
type = ChangeState
value = 3700
triggerall = command = "baculo_Nikel"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = p2statetype = S
trigger1 = P2bodydist X >= 135
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA


;las 12 Armaduras caballeros dorados

[State -1]
type = ChangeState
value = 3600
triggerall = command = "12amaduras_doradas"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA



;===========================================================================

;-------------------------
;-------------------------
;    Combos y Poderes
;-------------------------
;-------------------------

;proteccion escudo

[State -1, escudo]
type = ChangeState
value = 1600
triggerall = Command = "escudo_Athena"
triggerall = statetype = S
trigger1 = Ctrl = 1 


; esfera de luz regresa

[State -1, Esfera de luz]
type       = ChangeState
value      = 42000
triggerall = command = "esfera_luz1"
triggerall = NumHelper(1000) = 0
trigger1   = statetype = S
trigger1   = ctrl = 1

; esfera de luz regresa

[State -1, Esfera de luz]
type       = ChangeState
value      = 40100
triggerall = command = "esfera_luz"
triggerall = NumHelper(1000) = 0
trigger1   = statetype = S
trigger1   = ctrl = 1

; esfera de luz regresa

[State -1, Esfera de luz]
type       = ChangeState
value      = 40000
triggerall = command = "esfera_luz2"
triggerall = NumHelper(1000) = 0
trigger1   = statetype = S
trigger1   = ctrl = 1


; esfera de luz

[State -1, Esfera de luz]
type       = ChangeState
value      = 40010
triggerall = command = "esfera_luz3"
triggerall = NumHelper(1000) = 0
trigger1   = statetype = S
trigger1   = ctrl = 1

; esfera de luz

[State -1, Esfera de luz]
type       = ChangeState
value      = 40020
triggerall = command = "esfera_luz4"
triggerall = NumHelper(1000) = 0
trigger1   = statetype = S
trigger1   = ctrl = 1

; esfera de luz

[State -1, Esfera de luz]
type       = ChangeState
value      = 40030
triggerall = command = "esfera_luz5"
triggerall = NumHelper(1000) = 0
trigger1   = statetype = S
trigger1   = ctrl = 1

; esfera de luz en el aire

[State -1, Esfera de luz]
type       = ChangeState
value      = 40300
triggerall = NumHelper(1000) = 0
triggerall = command = "air_esfera_luz"
trigger1   = statetype = A
trigger1   = ctrl = 1
Trigger2   = MoveContact
Trigger2   = Stateno = 600
Trigger3   = MoveContact
Trigger3   = Stateno = 610
Trigger4   = MoveContact
Trigger4   = Stateno = 620
Trigger5   = MoveContact
Trigger5   = Stateno = 630
Trigger6   = MoveContact
Trigger6   = Stateno = 640
Trigger7   = MoveContact
Trigger7   = Stateno = 650

[State -1, Esfera de luz]
type       = ChangeState
value      = 40350
triggerall = NumHelper(1000) = 0
triggerall = command = "air_esfera_luz1"
trigger1   = statetype = A
trigger1   = ctrl = 1
Trigger2   = MoveContact
Trigger2   = Stateno = 600
Trigger3   = MoveContact
Trigger3   = Stateno = 610
Trigger4   = MoveContact
Trigger4   = Stateno = 620
Trigger5   = MoveContact
Trigger5   = Stateno = 630
Trigger6   = MoveContact
Trigger6   = Stateno = 640
Trigger7   = MoveContact
Trigger7   = Stateno = 650

[State -1, Esfera de luz]
type       = ChangeState
value      = 44000
triggerall = NumHelper(1000) = 0
triggerall = command = "air_esfera_luz2"
trigger1   = statetype = A
trigger1   = ctrl = 1
Trigger2   = MoveContact
Trigger2   = Stateno = 600
Trigger3   = MoveContact
Trigger3   = Stateno = 610
Trigger4   = MoveContact
Trigger4   = Stateno = 620
Trigger5   = MoveContact
Trigger5   = Stateno = 630
Trigger6   = MoveContact
Trigger6   = Stateno = 640
Trigger7   = MoveContact
Trigger7   = Stateno = 650


; Megablock y incrementar cosmo

[State -1]
type = ChangeState
value = 1400
triggerall = command = "mega_block"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl = 1



;Patada Voladora 

[State -1]
type = ChangeState
value = 660
triggerall = command = "ddff_z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 600) && (MoveContact)
trigger3 = (stateno = 610) && (MoveContact)
trigger4 = (stateno = 620) && (MoveContact)
trigger5 = (stateno = 630) && (MoveContact)
trigger6 = (stateno = 640) && (MoveContact)
trigger7 = (stateno = 650) && (MoveContact)



;combo patada voladora

[State -1]
type = ChangeState
value = 1500
triggerall = command = "patada_v"
trigger1 = statetype = A
trigger1 = ctrl = 1


;combo patada voladora

[State -1]
type = ChangeState
value = 1550
triggerall = command = "patada_v1"
trigger1 = statetype = A
trigger1 = ctrl = 1

; Agarre 1

[State -1, charge1]
type = ChangeState
value = 800
triggerall = command = "holdfwd"
triggerall = command =  "z"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2statetype = S
trigger1 = P2bodydist X <= 35
trigger1 = P2movetype!= H
trigger1 = ctrl = 1

; Agarre 2

[State -1, charge1]
type = ChangeState
value = 900
triggerall = command = "holdfwd"
triggerall = command =  "c"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2statetype = S
trigger1 = P2bodydist X <= 25
trigger1 = P2movetype!= H
trigger1 = ctrl = 1



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


;septimo sentido
[State -1]
type = ChangeState
value = 2000
triggerall = command = "recover"
trigger1 = power >= 3000
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

;puño Alternativo medio
[State -1]
type = ChangeState
value = 260
triggerall = command = "fwd_y"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)

;Remate puño
[State -1]
type = ChangeState
value = 270
triggerall = command = "fwd_c"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 220) && (MoveContact)
trigger3 = (stateno = 250) && (MoveContact)
trigger4 = (stateno = 280) && (MoveContact)

;Remate puño
[State -1]
type = ChangeState
value = 280
triggerall = command = "fwd_z"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 220) && (MoveContact)
trigger3 = (stateno = 250) && (MoveContact)
trigger4 = (stateno = 270) && (MoveContact)

;Remate puño
[State -1]
type = ChangeState
value = 290
triggerall = command = "fwd_b"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 220) && (MoveContact)
trigger3 = (stateno = 250) && (MoveContact)

;Remate puño
[State -1]
type = ChangeState
value = 295
triggerall = command = "fwd_x"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 220) && (MoveContact)
trigger3 = (stateno = 250) && (MoveContact)

;===========================================================================

;-------------------------
;-------------------------
;       Hold Dir
;-------------------------
;-------------------------

; barrida (defensa al lebantarse)
[State -1,]
type = ChangeState
value = 950
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
trigger4 = (stateno = 260) && (MoveContact)

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
trigger4 = (stateno = 440) && (MoveContact)


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
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

; aire puño medio
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

; aire puño fuerte
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl


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
trigger5 = (stateno = 260) && (MoveContact)

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
trigger4 = (stateno = 260) && (MoveContact)

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
trigger3 = (stateno = 430) && (MoveContact)

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
trigger4 = (stateno = 410) && (MoveContact)

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
trigger4 = (stateno = 430) && (MoveContact)
trigger5 = (stateno = 420) && (MoveContact)
trigger6 = (stateno = 400) && (MoveContact)

;--------------


; Aire patada devil
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

; Aire patada medio
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

; Aire patada fuerte
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl


;--------------


; aire puño salto neutro
[State -1]
type = ChangeState
value = 660
triggerall = command = "x"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 670) && (MoveContact)

; aire puño salto neutro
[State -1]
type = ChangeState
value = 660
triggerall = command = "y"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 670) && (MoveContact)

; aire puño salto neutro
[State -1]
type = ChangeState
value = 660
triggerall = command = "z"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 670) && (MoveContact)


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
trigger64 = command = "AI64"
trigger65 = command = "AI65"
trigger66 = command = "AI66"
trigger67 = command = "AI67"
trigger68 = command = "AI68"
trigger69 = command = "AI69"
trigger70 = command = "AI70"
trigger71 = command = "AI71"
trigger72 = command = "AI72"
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
trigger1 = random <= 999 
value = 130

[State -1]
type = ChangeState 
triggerall = (Var(30) = 59) && (StateType = S) && (Pos Y = 0) && (P2BodyDist Y <= 0) 
triggerall = (P2BodyDist Y = -120) && (P2StateType != C) && (P2MoveType = A) 
trigger1 = (P2BodyDist X <= 120) && (Random <= 799) && (Ctrl) 
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105]) 
value = 130 

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
trigger1 = random <= 900
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
trigger1 = random <= 900
value = 132

[State -1]
type = ChangeState 
triggerall = (Var(30) = 59) && (StateType = A) && (Pos Y = 0)  && (P2BodyDist Y = -120) 
triggerall = (StateType = A) && (P2MoveType = A) 
trigger1 = ((P2BodyDist X <= 120) && (Ctrl)) || (StateNo = [140, 155]) 
value = 132 

