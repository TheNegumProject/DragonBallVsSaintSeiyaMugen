[Command]
name = "cshoot_c"
command = /B, z
time = 15

[Command]
name = "cshoot_a"
command = /B, c
time = 15

;special y
[Command]
name = "shinbit_c"
command = ~B, DB, D, DF, F, y
time = 20

;special a
[Command]
name = "shinbit_a"
command = ~B, DB, D, DF, F, x
time = 20

;-| 必殺技 |---------------------------------------------------------------
;サイコシュート c
[Command]
name = "psychoshoot_c"
command = ~B, DB, D, DF, F, b 
time = 25

;サイコシュート a
[Command]
name = "psychoshoot_a"
command = ~B, DB, D, DF, F, a
time = 25

;サイキックテレポート d
[Command]
name = "teleport_d"
command = D, DF, F, y
time = 15

;サイキックテレポート b
[Command]
name = "teleport_b"
command = D, DF, F, x
time = 15

;フェニックスアロー d
[Command]
name = "phoenixarrow_d"
command = D, DB, B, z
time = 15

;フェニックスアロー b
[Command]
name = "phoenixarrow_b"
command = D, DB, B, c
time = 15

;uppercut forte
[Command]
name = "psychosword_x"
command = D, DF, F, c
time = 15

;uppercut debole
[Command]
name = "psychosword_a"
command = /D,c
time = 15

[Command]
name = "psychosword_a"
command = /DF,c
time = 15

[Command]
name = "psychosword_a"
command = /DB,c
time = 15

;サイコボールアタック a
[Command]
name = "psychoball_a"
command = ~D, DB, B, a
time = 12

;サイコボールアタック c
[Command]
name = "psychoball_c"
command = ~D, DB, B, b
time = 12


;-［ ﾚバー２回入れ］-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-［ボタン同時押し］-----------------------------------------------


[Command]
name = "recovery"
command = a+b+c
time = 2

[Command]
name = "y+b"
command = c
time = 1

[Command]
name = "x+a"
command = x+a
time = 2


;-| 方向ボタン + 攻撃ボタン |----------------------------------------------
[Command]
name = "psythrw_R"
command = /F, b
time = 3

[Command]
name = "psythrw_L"
command = /F, a
time = 3

[Command]
name = "psythrw_L"
command = /F, c 
time = 1
;********************************************************************
[Command]
name = "renkantai"
command = z
time = 5

[Command]
name = "f_bom"
command = /D,a
time = 1

[Command]
name = "/D,z"
command = /D,z
time = 1

[Command]
name = "/D,z"
command = /DF,z
time = 1

[Command]
name = "/D,z"
command = /DB,z
time = 1


[Command]
name = "sake99"
command = /F, c
time = 1

[Command]
name = "kaihi01"
command = /F,z
time = 1

[Command]
name = "kaihi02"
command = /B,z
time = 1


;********************************************************************

;-| 攻撃ボタン押しっぱなし |-----------------------------------------------
[Command]
name = "hold_c"
command = /y
time = 1

[Command]
name = "hold_a"
command = /x
time = 1

;-| 通常攻撃 |-------------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = x
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = b
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

;===========================================================================
;                           コマンドの実行条件
 [Statedef -1]

;===========================================================================
;超必殺技
;===========================================================================
;---------------------------------------------------------------------------
;シャイニングクリスタルビット 空中
[State -1]
type = ChangeState
value = 3300
triggerall = power >= 1000
trigger1 = command = "shinbit_a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = command = "shinbit_c"
trigger2 = statetype = A
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
;シャイニングクリスタルビット
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000
trigger1 = command = "shinbit_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = command = "shinbit_c"
trigger2 = statetype = S
trigger2 = ctrl = 1

;===========================================================================
;必殺技
;===========================================================================
;---------------------------------------------------------------------------
;サイコシュート c
[State -1]
type = ChangeState
value = 1410
triggerall = command = "psychoshoot_c"
triggerall = NumProj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact = 1
trigger4 = stateno = 221
trigger4 = time < 15
trigger4 = movecontact = 1
trigger5 = stateno = 231
trigger5 = time < 16
trigger5 = movecontact = 1
trigger6 = stateno = 200
trigger6 = time < 19
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = time < 15
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = time < 15
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = time < 17
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = time < 17
trigger10 = movecontact = 1
trigger11 = stateno = 297
trigger11 = movecontact = 1
trigger12 = stateno = 2150
trigger12 = movecontact = 1
trigger13 = stateno = 213
trigger13 = movecontact = 1

;---------------------------------------------------------------------------
;サイコシュート a
[State -1]
type = ChangeState
value = 1400
triggerall = command = "psychoshoot_a"
triggerall = NumProj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact = 1
trigger4 = stateno = 221
trigger4 = time < 15
trigger4 = movecontact = 1
trigger5 = stateno = 231
trigger5 = time < 16
trigger5 = movecontact = 1
trigger6 = stateno = 200
trigger6 = time < 19
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = time < 15
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = time < 15
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = time < 17
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = time < 17
trigger10 = movecontact = 1
trigger11 = stateno = 297
trigger11 = movecontact = 1
trigger12 = stateno = 2150
trigger12 = movecontact = 1
trigger13 = stateno = 213
trigger13 = movecontact = 1

;---------------------------------------------------------------------------
;サイキックテレポート d
[State -1]
type = ChangeState
value = 1310
triggerall = command = "teleport_d"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact = 1
trigger4 = stateno = 221
trigger4 = time < 15
trigger4 = movecontact = 1
trigger5 = stateno = 231
trigger5 = time < 16
trigger5 = movecontact = 1
trigger6 = stateno = 200
trigger6 = time < 19
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = time < 15
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = time < 15
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = time < 17
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = time < 17
trigger10 = movecontact = 1
trigger11 = stateno = 297
trigger11 = movecontact = 1
trigger12 = stateno = 2150
trigger12 = movecontact = 1
trigger13 = stateno = 213
trigger13 = movecontact = 1

;---------------------------------------------------------------------------
;サイキックテレポート b
[State -1]
type = ChangeState
value = 1300
triggerall = command = "teleport_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact = 1
trigger4 = stateno = 221
trigger4 = time < 15
trigger4 = movecontact = 1
trigger5 = stateno = 231
trigger5 = time < 16
trigger5 = movecontact = 1
trigger6 = stateno = 200
trigger6 = time < 19
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = time < 15
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = time < 15
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = time < 17
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = time < 17
trigger10 = movecontact = 1
trigger11 = stateno = 297
trigger11 = movecontact = 1
trigger12 = stateno = 2150
trigger12 = movecontact = 1
trigger13 = stateno = 213
trigger13 = movecontact = 1

;---------------------------------------------------------------------------
;フェニックスアロー d
[State -1]
type = ChangeState
value = 1210
triggerall = command = "phoenixarrow_d"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = time < 17
trigger2 = movecontact = 1
trigger3 = stateno = 620
trigger3 = time < 20
trigger3 = movecontact = 1
trigger4 = stateno = 223
trigger4 = movecontact = 1
trigger5 = stateno = 620
trigger5 = movecontact = 1
trigger6 = stateno = 679
trigger6 = movecontact = 1
;---------------------------------------------------------------------------
;フェニックスアロー b
[State -1]
type = ChangeState
value = 1200
triggerall = command = "phoenixarrow_b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = time < 17
trigger2 = movecontact = 1
trigger3 = stateno = 620
trigger3 = time < 20
trigger3 = movecontact = 1
trigger4 = stateno = 223
trigger4 = movecontact = 1
trigger5 = stateno = 620
trigger5 = movecontact = 1
trigger6 = stateno = 679
trigger6 = movecontact = 1
;---------------------------------------------------------------------------
;uppercut con salto basso
[State -1]
type = ChangeState
value = 1110
triggerall = command = "psychosword_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = statetype = A
trigger3 = ctrl = 1
trigger4 = stateno = 201
trigger4 = time < 16
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = time < 16
trigger5 = movecontact = 1
trigger6 = stateno = 221
trigger6 = time < 15
trigger6 = movecontact = 1
trigger7 = stateno = 231
trigger7 = time < 16
trigger7 = movecontact = 1
trigger8 = stateno = 200
trigger8 = time < 19
trigger8 = movecontact = 1
trigger9 = stateno = 400
trigger9 = time < 15
trigger9 = movecontact = 1
trigger10 = stateno = 410
trigger10 = time < 15
trigger10 = movecontact = 1
trigger11 = stateno = 420
trigger11 = time < 17
trigger11 = movecontact = 1
trigger12 = stateno = 430
trigger12 = time < 17
trigger12 = movecontact = 1
trigger13 = stateno = 600
trigger13 = time < 17
trigger13 = movecontact = 1
trigger14 = stateno = 620
trigger14 = time < 20
trigger14 = movecontact = 1
trigger15 = stateno = 297
trigger15 = movecontact = 1
trigger16 = stateno = 2150
trigger16 = movecontact = 1
trigger17 = stateno = 213
trigger17 = movecontact = 1
trigger18 = stateno = 223
trigger18 = movecontact = 1

;---------------------------------------------------------------------------
;uppercut con salto alto
[State -1]
type = ChangeState
value = 1100
triggerall = command = "psychosword_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = statetype = A
trigger3 = ctrl = 1
trigger4 = stateno = 201
trigger4 = time < 16
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = time < 16
trigger5 = movecontact = 1
trigger6 = stateno = 221
trigger6 = time < 15
trigger6 = movecontact = 1
trigger7 = stateno = 231
trigger7 = time < 16
trigger7 = movecontact = 1
trigger8 = stateno = 200
trigger8 = time < 19
trigger8 = movecontact = 1
trigger9 = stateno = 400
trigger9 = time < 15
trigger9 = movecontact = 1
trigger10 = stateno = 410
trigger10 = time < 15
trigger10 = movecontact = 1
trigger11 = stateno = 420
trigger11 = time < 17
trigger11 = movecontact = 1
trigger12 = stateno = 430
trigger12 = time < 17
trigger12 = movecontact = 1
trigger13 = stateno = 600
trigger13 = time < 17
trigger13 = movecontact = 1
trigger14 = stateno = 620
trigger14 = time < 20
trigger14 = movecontact = 1
trigger15 = stateno = 297
trigger15 = movecontact = 1
trigger16 = stateno = 2150
trigger16 = movecontact = 1
trigger17 = stateno = 213
trigger17 = movecontact = 1
trigger18 = stateno = 223
trigger18 = movecontact = 1
;---------------------------------------------------------------------------
;サイコボールアタック c
[State -1]
type = ChangeState
value = 1010
triggerall = command = "psychoball_c"
triggerall = NumProj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact = 1
trigger4 = stateno = 221
trigger4 = time < 15
trigger4 = movecontact = 1
trigger5 = stateno = 231
trigger5 = time < 16
trigger5 = movecontact = 1
trigger6 = stateno = 200
trigger6 = time < 19
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = time < 15
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = time < 15
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = time < 17
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = time < 17
trigger10 = movecontact = 1
trigger11 = stateno = 297
trigger11 = movecontact = 1
trigger12 = stateno = 2150
trigger12 = movecontact = 1
trigger13 = stateno = 213
trigger13 = movecontact = 1

;---------------------------------------------------------------------------
;サイコボールアタック a
[State -1]
type = ChangeState
value = 1000
triggerall = command = "psychoball_a"
triggerall = NumProj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact = 1
trigger4 = stateno = 221
trigger4 = time < 15
trigger4 = movecontact = 1
trigger5 = stateno = 231
trigger5 = time < 16
trigger5 = movecontact = 1
trigger6 = stateno = 200
trigger6 = time < 19
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = time < 15
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = time < 15
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = time < 17
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = time < 17
trigger10 = movecontact = 1
trigger11 = stateno = 297
trigger11 = movecontact = 1
trigger12 = stateno = 2150
trigger12 = movecontact = 1
trigger13 = stateno = 213
trigger13 = movecontact = 1

;===========================================================================
;scatti
;===========================================================================
;---------------------------------------------------------------------------
;corsa
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;scatto indietro
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1


;===========================================================================
;投げ技
;===========================================================================
;---------------------------------------------------------------------------
;サイキックスルー
[State -1]
type = ChangeState
value = 1500
triggerall = P2BodyDist X < 4
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "psythrw_L"
trigger2 = command = "psythrw_R"

;===========================================================================
;特殊技
;===========================================================================

;回避99
[State -1]
type = ChangeState
value = 6700
trigger1 = command = "sake99"
trigger1 = statetype = S
trigger1 = ctrl = 1

;rotolata avanti
[State -1]
type = ChangeState
value = 6900
trigger1 = command = "kaihi01"
trigger1 = statetype = S
trigger1 = ctrl = 1


;rotolata indietro
[State -1]
type = ChangeState
value = 6950
trigger1 = command = "kaihi02"
trigger1 = statetype = S
trigger1 = ctrl = 1


;連環腿
[State -1]
type = ChangeState
value = 222
triggerall = command = "renkantai"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 213
trigger5 = movecontact = 1
trigger6 = stateno = 231
trigger6 = movecontact = 1
trigger7 = stateno = 221
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 420
trigger10 = movecontact = 1

;---------------------------------------------------------------------------
;spallata
[State -1]
type = ChangeState
value = 297
triggerall = statetype = S
triggerall = Var(1) = 0
triggerall = ctrl = 1
trigger1 = command = "y+b"
trigger2 = command = "c"
trigger2 = movecontact = 1

;===========================================================================
;通常攻撃
;===========================================================================
;---------------------------------------------------------------------------
;schiva attacco avversario
[State -1]
type = ChangeState
value = 6800
triggerall = command = "x+a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;------------------------------------------------------------------
;pugno a
[State -1]
type = ChangeState
value = 201
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2BodyDist X < 20
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;攻撃 立ち 遠 A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;攻撃 立ち 超近 B
[State -1]
type = ChangeState
value = 213
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2BodyDist X < 5
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;攻撃 立ち 近 B
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2BodyDist X < 55
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 213
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;攻撃 立ち 遠 B
[State -1]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 213
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = movecontact = 1
;---------------------------------------------------------------------------
;攻撃 立ち 近 C
[State -1]
type = ChangeState
value = 221
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2BodyDist X < 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 215
trigger5 = movecontact = 1
trigger6 = stateno = 213
trigger6 = movecontact = 1

;---------------------------------------------------------------------------
;攻撃 立ち 遠 C
[State -1]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 221
trigger5 = movecontact = 1
trigger6 = stateno = 231
trigger6 = movecontact = 1
trigger7 = stateno = 215
trigger7 = movecontact = 1
trigger8 = stateno = 213
trigger8 = movecontact = 1
;---------------------------------------------------------------------------
;攻撃 立ち 近 D
[State -1]
type = ChangeState
value = 231
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X < 35
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 221
trigger5 = movecontact = 1
trigger6 = stateno = 220
trigger6 = movecontact = 1
trigger7 = stateno = 215
trigger7 = movecontact = 1
trigger8 = stateno = 213
trigger8 = movecontact = 1
;---------------------------------------------------------------------------
;攻撃 立ち 遠 D
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 221
trigger5 = movecontact = 1
trigger6 = stateno = 220
trigger6 = movecontact = 1
trigger7 = stateno = 231
trigger7 = movecontact = 1
trigger8 = stateno = 215
trigger8 = movecontact = 1
trigger9 = stateno = 213
trigger9 = movecontact = 1
;---------------------------------------------------------------------------
;攻撃 しゃがみ A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;攻撃 しゃがみ B
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 410
trigger5 = movecontact = 1
;---------------------------------------------------------------------------
;攻撃 しゃがみ C
[State -1]
type = ChangeState
value = 420
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 213
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
;---------------------------------------------------------------------------
;攻撃 しゃがみ D
[State -1]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 221
trigger5 = movecontact = 1
trigger6 = stateno = 220
trigger6 = movecontact = 1
trigger7 = stateno = 231
trigger7 = movecontact = 1
trigger8 = stateno = 215
trigger8 = movecontact = 1
trigger9 = stateno = 213
trigger9 = movecontact = 1
trigger10 = stateno = 410
trigger10 = movecontact = 1
;---------------------------------------------------------------------------
;フェニックスボム
[State -1]
type = ChangeState
value = 679
trigger1 = command = "f_bom"
trigger1 = statetype = A
trigger1 = ctrl = 1


;攻撃 垂直ジャンプ Ａ
[State -1]
type = ChangeState
value = 646
triggerall = Vel X = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;攻撃 ジャンプ A
[State -1]
type = ChangeState
value = 600
triggerall = Var(1) = 0
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;攻撃 垂直ジャンプ Ｂ
[State -1]
type = ChangeState
value = 645
triggerall = Vel X = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 646
trigger2 = movecontact = 1


;攻撃 ジャンプ B
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1

[State -1]
type = ChangeState
value = 610
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1

[State -1]
type = ChangeState
value = 645
triggerall = Vel X = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 646
trigger2 = movecontact = 1


;---------------------------------------------------------------------------

;攻撃 垂直ジャンプ C
[State -1]
type = ChangeState
value = 644
triggerall = Vel X = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 645
trigger2 = movecontact = 1


;攻撃 ジャンプ C
[State -1]
type = ChangeState
value = 620
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 610
trigger2 = movecontact = 1

[State -1]
type = ChangeState
value = 644
triggerall = Vel X = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 645
trigger2 = movecontact = 1

;攻撃 ジャンプ C
[State -1]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 610
trigger2 = movecontact = 1



;---------------------------------------------------------------------------

;攻撃 垂直ジャンプ D
[State -1]
type = ChangeState
value = 643
triggerall = Vel X = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1


;攻撃 ジャンプ D
[State -1]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;チェーン攻撃 ジャンプ D
[State -1]
type = ChangeState
value = 631
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 620
trigger2 = movecontact = 1

;チェーン攻撃　垂直ジャンプ D
[State -1]
type = ChangeState
value = 632
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 644
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;避け回避
[State -1]
type = ChangeState
value = 6800
trigger1 = command = "recovery"
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;挑発
[State -1]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1

;カウンター攻撃 立ち 遠 B
[State -1]
type = ChangeState
value = 2150
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;calcio forte da accucciata
[State -1]
type = ChangeState
value = 1212
triggerall = command = "/D,z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

