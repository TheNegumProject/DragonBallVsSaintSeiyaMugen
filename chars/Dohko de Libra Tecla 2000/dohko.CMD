;--------------------------------------------------------------------------
                         Dohko de Libra
;--------------------------------------------------------------------------

;-| basicos |-----
;patada debil
[Command]
name = "x"
command = x
time = 1

;puño debil
[Command]
name = "a"
command = a
time = 1

;puño fuerte
[Command]
name = "c"
command = c
time = 1

;puño medio
[Command]
name = "b"
command = b
time = 1

;patada media
[Command]
name = "y"
command = y
time = 1

;patada fuerte
[Command]
name = "z"
command = z
time = 1


;risa
[Command]
name = "s"
command = s
time = 1

;-| super ataques |--------------------------------------------------------
[Command]
name = "100dragones"
command = B, DB, D, DF, F, c
time = 45

[Command]
name = "1dragong"
command = B, DB, D, DF, F, b
time = 45
[Command]
name = "LANCE"
command = B, DB, D, DF, F, z
time = 45

[Command]
name = "1dragon"
command = B, DB, D, DF, F, a
time = 45

;drago nascente kick waterfall
[Command]
name = "dragonkick"
command = F, DF, D, DB, B,  x
time = 90

;-(golpes especiales)---------------------------------------------------------

[Command]
name = "launc"
command =D, DB, B, b
time = 35

[Command]
name = "cargaa"
command = /z
time = 1

[Command]
name = "cargab"
command = /c
time = 1


;contra
[Command]
name = "contra"
command = /c
time = 1

[Command]
name = "SuperJump"
command = $D, $U

[Command]
name = "PATADA DRAGON"
command =D, DF, F, z    
time = 20

[Command]
name = "nueva2"
command =D, DF, F, x
time = 20
[Command]
name = "nueva"
command =D, DF, F, z
time = 20



[Command]
name = "nueva1"
command =D, DF, F, y
time = 20



[Command]
name = "rayo"
command =D, DF, F, a
time = 20


[Command]
name = "carga"
command =D, DF, F, b
time = 20

;-| Double Tap |-----------------------------------------------------------
;correr
[Command]
name = "FF"
command = F, F
time = 10

;salto atras
[Command]
name = "BB"
command = B, B
time = 10

;---------------------------------------------------------------------------
;| Hold Button 


[Command]
name = "recovery"
command = ~D,DF,F, y      
time = 50

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

;-----------------------
;superguard
[Command]
name = "holdback3"
command = /$B   
time = 50
;------------------------

; 2/3 Button Combination 


;Recover
[Command]
name = "recover"
command = a+x
time = 30


;===========================================================================
;---------------------------------------------------------------------------
; Commands
[Statedef -1]

[State -1]
type = ChangeState
value = 4000
triggerall = command = "100dragones"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = power >=3000

;---------------------------------------------------------------------------
;Drago nascente kick waterfall
[State -1]
type = ChangeState
value = 3710
triggerall = command = "dragonkick"  
triggerall = command != "holddown"
triggerall = power >= 3000 
trigger1 = statetype = S
trigger1 = p2statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------


[State -1]
type = ChangeState
value = 2000
triggerall = command = "1dragon"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = power >=1000

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value =7000
triggerall = command = "LANCE"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = power >=2000
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2400
triggerall = command = "1dragong"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = power >=2000
;---------------------------------------------------------------------------
;launcher
[State -1]
type = ChangeState
value = 3500
triggerall = command = "launc"
trigger1 = statetype != A
trigger1 = power !=0
trigger1 = ctrl = 1
trigger2=( (movecontact) && (stateno=221) && (command="launc")&& (time>8))
trigger3=( (movecontact) && (stateno=210) && (command="launc") && (time>10))
trigger4=( (movecontact) && (stateno=211) && (command="launc")&& (time<=15))
trigger5=( (movecontact) && (stateno=220) && (command="launc") && (time<=45))
trigger6=( (movecontact) && (stateno=201) && (command="launc")&& (time>8))
trigger7=( (movecontact) && (stateno=230) && (command="launc") && (time>10))

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value =4500
trigger1 =(( command = "rayo")&&(stateno=670))
trigger1 = statetype = A
trigger1 = ctrl = 1


;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value =8901
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = command = "nueva1"
trigger2=( (movecontact) && (stateno=221) && (command="nueva1")&& (time<8))
trigger3=( (movecontact) && (stateno=210) && (command="nueva1") && (time<10))
trigger4=( (movecontact) && (stateno=211) && (command="nueva1")&& (time<=15))
trigger5=( (movecontact) && (stateno=220) && (command="nueva1") && (time<=45))
trigger6=( (movecontact) && (stateno=201) && (command="nueva1")&& (time<8))
trigger7=( (movecontact) && (stateno=230) && (command="nueva1") && (time<10))





;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value =8902
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = command = "nueva2"
trigger2=( (movecontact) && (stateno=221) && (command="nueva2")&& (time<8))
trigger3=( (movecontact) && (stateno=210) && (command="nueva2") && (time<10))
trigger4=( (movecontact) && (stateno=211) && (command="nueva2")&& (time<=15))
trigger5=( (movecontact) && (stateno=220) && (command="nueva2") && (time<=45))
trigger6=( (movecontact) && (stateno=201) && (command="nueva2")&& (time<8))
trigger7=( (movecontact) && (stateno=230) && (command="nueva2") && (time<10))
;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value =8900
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = command = "nueva"
trigger2=( (movecontact) && (stateno=221) && (command="nueva")&& (time<8))
trigger3=( (movecontact) && (stateno=210) && (command="nueva") && (time<10))
trigger4=( (movecontact) && (stateno=211) && (command="nueva")&& (time<=15))
trigger5=( (movecontact) && (stateno=220) && (command="nueva") && (time<=45))
trigger6=( (movecontact) && (stateno=201) && (command="nueva")&& (time<8))
trigger7=( (movecontact) && (stateno=230) && (command="nueva") && (time<10))



;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value =4700
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = command = "carga"
trigger2=( (movecontact) && (stateno=221) && (command="carga")&& (time<8))
trigger3=( (movecontact) && (stateno=210) && (command="carga") && (time<10))
trigger4=( (movecontact) && (stateno=211) && (command="carga")&& (time<=15))
trigger5=( (movecontact) && (stateno=220) && (command="carga") && (time<=45))
trigger6=( (movecontact) && (stateno=201) && (command="carga")&& (time<8))
trigger7=( (movecontact) && (stateno=230) && (command="carga") && (time<10))



;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value =46000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1=( (movecontact) && (stateno=221) && (command="rayo")&& (time<8))
trigger2=( (movecontact) && (stateno=210) && (command="rayo") && (time<10))
trigger3=( (movecontact) && (stateno=211) && (command="rayo")&& (time<=15))
trigger4=( (movecontact) && (stateno=220) && (command="rayo") && (time<=45))
trigger5=( (movecontact) && (stateno=201) && (command="rayo")&& (time<8))
trigger6=( (movecontact) && (stateno=230) && (command="rayo") && (time<10))

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value =4600
trigger1 = command = "rayo"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------


[State -1]
type = ChangeState
value =2700
trigger1 =(( command = "PATADA DRAGON")&&(stateno=670))
trigger1 = statetype = A
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value =2800
trigger1 =(( command = "PATADA DRAGON")&&(stateno=50))
trigger1 = statetype = A
trigger1 = ctrl = 1


;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 1400
triggerall = command = "contra"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = power !=0
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 30
trigger1 = command = "cargaa"
trigger1 = command = "cargab"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1=power !=3000

;--------------------------------------------------------
[State -1]
type = ChangeState
value = 199
triggerall = command = "s"
trigger1 = ctrl = 1
trigger1 = statetype != A

;--------------------------------------------------------
;correr
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
;patada FUERTE 
[State -1]
type = ChangeState
value = 200
trigger1 = p2bodydist x>20
trigger1 = command = "z"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;patada FUERTE DE cerca
[State -1]
type = ChangeState
value = 230
trigger1 = p2bodydist x<20
trigger1 = command = "z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2=( (movecontact) && (stateno=221) && (command="z")&& (time>8))
trigger3=( (movecontact) && (stateno=210) && (command="z") && (time>10))
trigger4=( (movecontact) && (stateno=211) && (command="z")&& (time<=15))
trigger5=( (movecontact) && (stateno=220) && (command="z") && (time<=45))


;---------------------------------------------------------------------------

;patada debil 
[State -1]
type = ChangeState
value = 210
trigger1 = command = "x"
trigger1 = statetype =S
trigger1 = ctrl = 1
trigger2=( (movecontact) && (stateno=221) && (command="x")&& (time<=25) )
trigger2=( (movecontact) && (stateno=210) && (command="x")&& (time<=25) )


;---------------------------------------------------------------------------

;puño medio
[State -1]
type = ChangeState
value = 211
trigger1 = command = "b"
trigger1 = statetype =S
trigger1 = ctrl = 1
trigger2 =( (movecontact) && (stateno=221) && (command="b") && (time<=25))
trigger3=( (movecontact) && (stateno=210) && (command="b")&& (time<=41))





;---------------------------------------------------------------------------
;puño fuerte combo
[State -1]
type = ChangeState
value = 2010
triggerall=movecontact=1
trigger1 = statetype =S
trigger1 =ctrl = 1
trigger2=( (movecontact) && (stateno=221) && (command="c")&& (time<=25))
trigger3=( (movecontact) && (stateno=210) && (command="c") && (time<=35))
trigger4=( (movecontact) && (stateno=211) && (command="c")&& (time<=15))
trigger5=( (movecontact) && (stateno=220) && (command="c") && (time<=45))

;---------------------------------------------------------------------------
;puño fuerte
[State -1]
type = ChangeState
value = 201
trigger1 = command = "c"
trigger1 = statetype =S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------


;puño debil
[State -1]
type = ChangeState
value = 221
trigger1 = command = "a"
trigger1 = statetype =S
trigger1 = ctrl = 1
trigger2=( (movecontact) && (stateno=221) && (command="a")&& (time<=25) )
trigger3=( (movecontact) && (stateno=210) && (command="a")&& (time<=41))


;---------------------------------------------------------------------------
;patada media 
[State -1]
type = ChangeState
value = 220
trigger1 = command = "y"
trigger1 = statetype =S
trigger1 = ctrl = 1
trigger2=( (movecontact) && (stateno=221) && (command="y")&& (time<=25))
trigger3=( (movecontact) && (stateno=210) && (command="y") && (time<=35))
trigger4=( (movecontact) && (stateno=211) && (command="y")&& (time<=15))
trigger5=( (movecontact) && (stateno=211) && (command="y")&& (time<=15))

;---------------------------------------------------------------------------
;puño debil agachado
[State -1]
type = ChangeState
value = 401
trigger1 = command = "a"
trigger1 = statetype =C
trigger1 = ctrl = 1
trigger2=( (movecontact) && (stateno=401) && (command="a")&& (time<=25))
trigger3=( (movecontact) && (stateno=420) && (command="a") && (time<=35))

;---------------------------------------------------------------------------
;puño fuerteagachad0
[State -1]
type = ChangeState
value = 421
trigger1 = command = "c"
trigger1 = statetype =C
trigger1 = ctrl = 1
trigger2=( (movecontact) && (stateno=411) && (command="c")&& (time<=25))
trigger3=( (movecontact) && (stateno=420) && (command="c")&& (time<=15))
trigger4=( (movecontact) && (stateno=401) && (command="c") && (time<=45))

;---------------------------------------------------------------------------
;puño medio agachado 
[State -1]
type = ChangeState
value = 411
trigger1 = command = "b"
trigger1 = statetype =C
trigger1 = ctrl = 1
trigger2=( (movecontact) && (stateno=420) && (command="b")&& (time<=15))
trigger3=( (movecontact) && (stateno=401) && (command="b") && (time<=45))



;---------------------------------------------------------------------------
;patada debil agachada
[State -1]
type = ChangeState
value = 420
trigger1 = command = "x"
trigger1 = statetype =C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;patada fuerteagachada
[State -1]
type = ChangeState
value = 400
trigger1 = command = "z"
trigger1 = statetype =C
trigger1 = ctrl = 1
trigger2=( (movecontact) && (stateno=411) && (command="z")&& (time<=25))
trigger3=( (movecontact) && (stateno=420) && (command="z")&& (time<=15))
trigger4=( (movecontact) && (stateno=401) && (command="z") && (time<=45))
;---------------------------------------------------------------------------
;patada media agachada (derrape)
[State -1]
type = ChangeState
value = 410
trigger1 = command = "y"
trigger1 = statetype =C
trigger1 = ctrl = 1
trigger2=( (movecontact) && (stateno=420) && (command="y")&& (time<=15))
trigger3=( (movecontact) && (stateno=401) && (command="y") && (time<=45))

;---------------------------------------------------------------------------

; supersalto
[State -1, ]
type = ChangeState
value = 660
triggerall = StateType = S || StateType = C
triggerall = ctrl
trigger1 = command = "SuperJump"
;---------------------------------------------------------------------------

;patada MEDIA EN SALTO
[State -1]
type = ChangeState
value = 61000
trigger1= ((stateno=670) &&(command = "y"))
trigger1 = statetype =A
trigger1 = ctrl = 1
trigger2=( (movecontact) && (stateno=600) && (command="y")&& (time<=25))
trigger4=( (movecontact) && (stateno=621) && (command="y") && (time<=45))


;---------------------------------------------------------------------------
;patada MEDIA EN SALTO
[State -1]
type = ChangeState
value = 610
trigger1 = command = "y"
trigger1 = statetype =A
trigger1 = ctrl = 1
trigger2=( (movecontact) && (stateno=600) && (command="y")&& (time<=25))
trigger4=( (movecontact) && (stateno=621) && (command="y") && (time<=45))


;---------------------------------------------------------------------------
;patada FUERTE EN SALTO
[State -1]
type = ChangeState
value = 6200
trigger1= ((stateno=670) &&(command = "z"))
trigger1 = statetype =A
trigger1 = ctrl = 1
trigger2=( (movecontact) && (stateno=6000) && (command="z")&& (time<=25))
trigger3=( (movecontact) && (stateno=61000) && (command="z") && (time<=35))
trigger4=( (movecontact) && (stateno=61100) && (command="z")&& (time<=15))
trigger5=( (movecontact) && (stateno=6210) && (command="z") && (time<=45))
;---------------------------------------------------------------------------

;patada FUERTE EN SALTO
[State -1]
type = ChangeState
value = 620
trigger1= command = "z"
trigger1 = statetype =A
trigger1 = ctrl = 1
trigger2=( (movecontact) && (stateno=600) && (command="z")&& (time<=25))
trigger3=( (movecontact) && (stateno=610) && (command="z") && (time<=35))
trigger4=( (movecontact) && (stateno=611) && (command="z")&& (time<=15))
trigger5=( (movecontact) && (stateno=621) && (command="z") && (time<=45))
;---------------------------------------------------------------------------
;patada debil  EN SALTO
[State -1]
type = ChangeState
value = 60000
trigger1= ((stateno=670) &&(command = "x"))
trigger1 = statetype =A
trigger1 = ctrl = 1
trigger2=((movecontact) && (stateno=6210) && (command="x")&& (time<=25))
trigger3=( (movecontact) && (stateno=6000)&&  (command="x")&& (time<=25))



;--------------------------------------------------------------------------

;patada debil  EN SALTO
[State -1]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype =A
trigger1 = ctrl = 1
trigger2=( (movecontact) && (stateno=621) && (command="x")&& (time<=25))



;---------------------------------------------------------------------------



;puño MEDI0 EN SALTO
[State -1]
type = ChangeState
value = 61100
trigger1= ((stateno=670) &&(command = "b"))
trigger1 = statetype =A
trigger1 = ctrl = 1
trigger2=((movecontact) && (stateno=60000) && (command="b")&& (time<=25))
trigger3=(  (movecontact) && (stateno=61000) && (command="b") && (time<=35))
trigger4=(  (movecontact) && (stateno=6210) && (command="b") && (time<=45))


;---------------------------------------------------------------------------
;puño MEDI0 EN SALTO
[State -1]
type = ChangeState
value = 611
trigger1 = command = "b"
trigger1 = statetype =A
trigger1 = ctrl = 1
trigger2=( (movecontact) && (stateno=600) && (command="b")&& (time<=25))
trigger3=( (movecontact) && (stateno=610) && (command="b") && (time<=35))
trigger4=( (movecontact) && (stateno=621) && (command="b") && (time<=45))



;--------------------------------------------------------------------------


;puño FUERTE EN SALTO
[State -1]
type = ChangeState
value = 6010
trigger1 = statetype =A
trigger1 = ctrl = 1
trigger1= ((stateno=670) &&(command = "c"))
trigger2=(  (movecontact) && (stateno=6000) && (command="c")&& (time<=25))
trigger3=(   (movecontact) && (stateno=61000) && (command="c") && (time<=35))
trigger4=(  (movecontact) && (stateno=61100) && (command="c")&& (time<=15))
trigger5=(  (movecontact) && (stateno=6210) && (command="c") && (time<=45))

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 601
trigger1 = command = "c"
trigger1 = statetype =A
trigger1 = ctrl = 1
trigger2=( (movecontact) && (stateno=600) && (command="c")&& (time<=25))
trigger3=( (movecontact) && (stateno=610) && (command="c") && (time<=35))
trigger4=( (movecontact) && (stateno=611) && (command="c")&& (time<=15))
trigger5=( (movecontact) && (stateno=621) && (command="c") && (time<=45))

;---------------------------------------------------------------------------

;puño debil  EN SALTO
[State -1]
type = ChangeState
value = 6210
trigger1 = statetype =A
trigger1 = ctrl = 1 
trigger1=((stateno=670) &&(command = "a"))
trigger2=((movecontact) && (stateno=6000) && (command="a")&& (time<=25))
trigger5=(  (movecontact) && (stateno=6210) && (command="a") && (time<=45))
;---------------------------------------------------------------------------

;puño debil  EN SALTO
[State -1]
type = ChangeState
value = 621
trigger1 = command = "a"
trigger1 = statetype =A
trigger1 = ctrl = 1
trigger2=( (movecontact) && (stateno=600) && (command="a")&& (time<=25))

;---------------------------------------------------------------------------


[State -1, WallJump]
type = ChangeState 
value = 45
triggerall = (statetype = A) && (ctrl) 
trigger1 = ((command = "holdup") && (command = "holdfwd") && (backedgebodydist <= 10) && (backedgebodydist > -10))
trigger2 = ((command = "holdup") && (command = "holdback") && (frontedgebodydist <= 10) && (frontedgebodydist > -10))







