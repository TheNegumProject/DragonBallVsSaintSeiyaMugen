;--------------------------------------------------------------------------
;Created by:  
;and       :  gouketsu
;--------------------------------------------------------------------------



;-|graple moves |------------------------------------------------------ 

[Command]
name = "hermano"
command = F, DF, D, DB , B, b
time = 30


;-| Special Motions |------------------------------------------------------ 

;fingereasy
[Command]
name = "fin"
command = D, DB, B, a
time = 30

;doblepatada
[Command]
name = "doble"
command = D, DB , B, y
time = 30



;tele
[Command]
name = "tele"
command = D, DB , B, x
time = 30

;carga
[Command]
name = "wall1"
command = /b
time = 1
[Command]
name = "wall2"
command = /y
time = 1


;-| super Motions |------------------------------------------------------
;finger of fury
[Command]
name = "finger"
command = B, DB, D, DF , F, a
time = 50
;finger of fury
[Command]
name = "finger"
command = B, DB, D, DF , F, x
time = 50

;brother rage
[Command]
name = "rage"
command = B, DB, D, DF , F, b
time = 50

;brother atac
[Command]
name = "fury"
command = B, DB, D, DF , F, c
time = 50


;brothers atacs
[Command]
name = "fury"
command = B, DB, D, DF , F, z
time = 50

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "SuperJump"
command = $D, $U


[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10
---------------------------------------------------------------------------

;-| 2/3 Button Combination |-----------------------------------------------


[Command]
name = "recover"
command = a+x
time = 30
---------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = ~D,DF,F, y      ;a+b+c;B+z
time = 50
;[Command]
;name = "recovery";Extra recovery commands (optional)
;command = y+z
;time = 1
;[Command]
;name = "recovery";Extra recovery commands (optional)
;command = x+z
;time = 15


;megablock
[Command]
name = "mega_block"
command = c
time = 50

;megablock
[Command]
name = "mega_blocke"
command = z
time = 50

[Command]
name = "qcf_a"
command = c
time = 15

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "yz"
command = y+z
time = 1

;rozan
[Command]
name = "abc"
command = a+b+c
time = 5

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 15
[Command]
name = "fwd_b"
command = /F,b
time = 1
[Command]
name = "fwd_x"
command = /F,x
time = 10
;--------------------

[Command]
name = "fwd_y"
command = /F,y
time = 1
;--------------------
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
name = "back_x"
command = /B,x
time = 1
[Command]
name = "back_y"
command = /B,y
time = 1
[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_a"
command = /D,a
time = 1
[Command]
name = "down_b"
command = /D,b
time = 1
[Command]
name = "down_c"
command = /D,c
time = 1
[Command]
name = "down_x"
command = /D,x
time = 1
[Command]
name = "down_y"
command = /D,y
time = 1
[Command]
name = "down_z"
command = /D,z
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1
[Command]
name = "fwd_bc"
command = /F, b+c
time = 1

[Command]
name = "fwd_xy"
command = /F, x+y
time = 1
[Command]
name = "fwd_yz"
command = /F, y+z
time = 1

[Command]
name = "back_xy"
command = /B, x+y
time = 1
[Command]
name = "back_yz"
command = /B, y+z
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1
[Command]
name = "back_bc"
command = /B, b+c
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


;-| Hold Button |-----------------------------------------------------------
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1
;-----------------------

[Command]
name = "holdback3"
command = /$B   
time = 50
;------------------------
[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

;===========================================================================
;---------------------------------------------------------------------------
; Commands
[Statedef -1]






;charge
[State -1]
type = ChangeState
value = 88888
triggerall = command = "wall1"
triggerall = command = "wall2"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;teleport
[State -1]
type = ChangeState
value = 8800
triggerall = command = "tele"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Mega block
[State -1]
type = ChangeState
value = 1400
triggerall = command = "mega_block"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

:megabloc air atacs
[State -1, ]
type = ChangeState
value = 1600
triggerall = command = "mega_blocke"
triggerall = command = "holdback"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = NumProj =0


;---------------------------------------------------

;Mega block atac
[State -1]
type = ChangeState
value = 1500
triggerall = command = "mega_blocke"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl = 1



;---------------------------------------------------------------------------


; Commando Throw patada ^^
[State -1, Commando Throw]
type = ChangeState
value = 830
triggerall = command = "y" || command = "z"
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
;-------------------------------------------------------------------------

; Commando Throw puño ^^
[State -1, Commando Throw]
type = ChangeState
value =840
triggerall = command = "b" || command = "c"
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
;-------------------------------------------------------------------------
:cojida primera
[State -1]
type = ChangeState
value = 800
trigger1 = command = "hermano"
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
:dedo normal
[State -1]
type = ChangeState
value = 292
triggerall = Numprojid(1210) != 1
trigger1 = command = "fin"
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------

;patada doble
[State -1]
type = ChangeState
value = 295
trigger1 = command = "doble"
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------

;brother rage
[State -1]
type = ChangeState
value = 8000
triggerall = power >= 3000
trigger1 = command = "fury"
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------

;brother rage
[State -1]
type = ChangeState
value = 8300
triggerall = power >= 2000 
trigger1 = command = "rage"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------


;finger of fury
[State -1]
type = ChangeState
value = 1205
triggerall = power >= 1000 
trigger1 = command = "finger"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;salto atras
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------


;puño debil
[State -1]
type = ChangeState
value = 290
triggerall = statetype = S
triggerall = command != "holddown"
triggerall = ctrl = 1
trigger1 = command = "a"
;-----------------------------------------------------

;puño medio
[State -1]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290
trigger2 = MoveContact
;---------------------------------------------------------------------------

;puño fuerte
[State -1]
type = ChangeState
value = 220
triggerall = command = "c"   
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = MoveContact

;---------------------------------------------------------------------------
;patada  media
[State -1]
type = ChangeState
value = 260
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
----------------------------------------------------------------------------
;patada debil
[State -1]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 244
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact

;---------------------------------------------------------------------------
;patada fuerte
[State -1]
type = ChangeState
value = 215
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240
trigger2 = MoveContact
;---------------------------------------------------------------------------

;puño agachado debil
[State -1]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;puño agachado medio
[State -1]
type = ChangeState
value = 411
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;puño agachado fuerte
[State -1]
type = ChangeState
value = 412
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1




;---------------------------------------------------------------------------
;patada debil agachada
[State -1]
type = ChangeState
value = 440
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;patada media agachada
[State -1]
type = ChangeState
value = 441
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;patada fuerte agachada
[State -1]
type = ChangeState
value = 442
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;puño en salto debil
[State -1]
type = ChangeState
value = 605
triggerall = command = "a"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;puño en salto debil
[State -1]
type = ChangeState
value = 605
triggerall = command = "a"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;puño en salto medio
[State -1]
type = ChangeState
value = 606
triggerall = command = "b"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;puño en salto medio
[State -1]
type = ChangeState
value = 606
triggerall = command = "b"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;puño en salto fuerte
[State -1]
type = ChangeState
value = 607
triggerall = command = "c"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;puño en salto fuerte
[State -1]
type = ChangeState
value = 607
triggerall = command = "c"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1



;---------------------------------------------------------------------------
;patada en salto debil
[State -1]
type = ChangeState
value = 610
triggerall = command = "x"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;patada en salto debil
[State -1]
type = ChangeState
value = 610
triggerall = command = "x"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;patada en salto media
[State -1]
type = ChangeState
value = 620
triggerall = command = "y"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;patada en salto media
[State -1]
type = ChangeState
value = 620
triggerall = command = "y"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;patada en salto fuerte 
[State -1]
type = ChangeState
value = 630
triggerall = command = "z"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 610


;---------------------------------------------------------------------------
;patada en salto fuerte
[State -1]
type = ChangeState
value = 630
triggerall = command = "z"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;-----------------------------------
;risa
[State -1]
type = ChangeState
value = 199
trigger1 = command = "s"
trigger1 = statetype != A
trigger1 = stateno != 199
trigger1 = ctrl = 1

;----------------------------------
; Super Jump
[State -1, Superjump]
type = ChangeState
value = 660
triggerall = StateType = S || StateType = C
triggerall = ctrl
trigger1 = command = "SuperJump"


