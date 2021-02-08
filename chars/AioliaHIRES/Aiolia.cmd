
;===========================================================================
; CPUアルゴリズム用コマンド
;===========================================================================

[Command]
name = "cpu1"
command = a,U,D,F,F,B,B,D,U,U
time = 1
[Command]
name = "cpu2"
command = b,U,D,F,B,F,B,D,U,D
time = 1
[Command]
name = "cpu3"
command = c,U,D,B,F,B,F,D,U,B
time = 1
[Command]
name = "cpu4"
command = x,U,D,B,F,F,B,D,U,F
time = 1
[Command]
name = "cpu5"
command = y,U,D,F,F,B,B,D,U,a
time = 1
[Command]
name = "cpu6"
command = z,U,D,F,B,F,B,D,U,b
time = 1
[Command]
name = "cpu7"
command = s,U,D,B,F,B,F,D,U,c
time = 1
[Command]
name = "cpu8"
command = b,U,D,B,F,F,B,D,U,x
time = 1
[Command]
name = "cpu9"
command = c,U,D,F,B,F,B,D,U,y
time = 1
[Command]
name = "cpu10"
command = y,U,D,B,F,B,F,D,U,z
time = 1
[Command]
name = "cpu11"
command = z,U,D,B,F,F,B,D,U,s
time = 1
[Command]
name = "cpu12"
command = U,D,F,F,B,B,D,U,a+x
time = 1
[Command]
name = "cpu13"
command = U,D,F,B,F,B,D,U,b+y
time = 1
[Command]
name = "cpu14"
command = U,D,B,F,B,F,D,U,c+z
time = 1
[Command]
name = "cpu15"
command = U,D,s,B,F,F,B,s,D,U
time = 1
[Command]
name = "cpu16"
command = a,U,D,F,F,B,B,D,U,U,s
time = 1
[Command]
name = "cpu17"
command = b,U,D,F,B,F,B,D,U,D,s
time = 1
[Command]
name = "cpu18"
command = c,U,D,B,F,B,F,D,U,B,s
time = 1
[Command]
name = "cpu19"
command = x,U,D,B,F,F,B,D,U,F,s
time = 1
[Command]
name = "cpu20"
command = y,U,D,F,F,B,B,D,U,a,s
time = 1
[Command]
name = "cpu21"
command = z,U,D,F,B,F,B,D,U,b,s
time = 1
[Command]
name = "cpu22"
command = y,y,y,y,y,y,y,y,y,y
time = 1
[Command]
name = "cpu23"
command = b,b,b,b,b,b,b,b,b,b
time = 1
[Command]
name = "cpu24"
command = F,F,F,F,F,F,F,F,F,F
time = 1
[Command]
name = "cpu25"
command = a,a,a,a,a,a,a,a,a,a
time = 1
[Command]
name = "cpu26"
command = U,U,U,U,U,U,U,U,U,U
time = 1
[Command]
name = "cpu27"
command = x,x,x,x,x,x,x,x,x,x
time = 1
[Command]
name = "cpu28"
command = B,B,B,B,B,B,B,B,B,B
time = 1
[Command]
name = "cpu29"
command = z,z,z,z,z,z,z,z,z,z
time = 1
[Command]
name = "cpu30"
command = D,D,D,D,D,D,D,D,D,D
time = 1

;===========================================================================
; コマンド
;===========================================================================

;===========================================================================
; 超必殺技
;===========================================================================

;---------------------------------------------------------------------------
; 振り向きプラズマ
;---------------------------------------------------------------------------
[Command]
name = "furimuki"
command = ~B, D, F, z
time = 20

[Command]
name = "furimuki"
command = ~B, D, F, c
time = 20

;---------------------------------------------------------------------------
; 超ライトニングプラズマ
;---------------------------------------------------------------------------
[Command]
name = "splasma"
command = ~B, D, F, x
time = 20

[Command]
name = "splasma"
command = ~B, D, F, a
time = 20

;---------------------------------------------------------------------------
; 超ライトニングボルト
;---------------------------------------------------------------------------
[Command]
name = "slbolt"
command = ~B, D, F, y
time = 20

[Command]
name = "slbolt"
command = ~B, D, F, b
time = 20

;===========================================================================
; 必殺技
;===========================================================================

;---------------------------------------------------------------------------
; 獅子咆哮
;---------------------------------------------------------------------------
[Command]
name = "houkou_x"
command = ~F, D, DF,  x

[Command]
name = "houkou_y"
command = ~F, D, DF,  y

;---------------------------------------------------------------------------
; 突ライトニングボルト
;---------------------------------------------------------------------------
[Command]
name = "bolt_a"
command = ~B, D, F, a

[Command]
name = "bolt_b"
command = ~B, D, F, b

;---------------------------------------------------------------------------
; ライトニングボルト
;---------------------------------------------------------------------------
[Command]
name = "lbolt"
command = ~D,  F,  x

;---------------------------------------------------------------------------
; ライトニングプラズマ
;---------------------------------------------------------------------------
[Command]
name = "plasma"
command = ~D,  F,  y

;===========================================================================
; 特殊動作
;===========================================================================

;---------------------------------------------------------------------------
; ハイジャンプ
;---------------------------------------------------------------------------
[Command]
name = "jump"    
command = ~D,$U
time = 8

;---------------------------------------------------------------------------
; 前避け
;---------------------------------------------------------------------------
[Command]
name = "away-f"    
command = /F,x+a
time = 10

;---------------------------------------------------------------------------
; 後ろ避け
;---------------------------------------------------------------------------
[Command]
name = "away-b"    
command = /B,x+a
time = 10

;---------------------------------------------------------------------------
; ダッシュ
;---------------------------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 15

;---------------------------------------------------------------------------
; バックステップ
;---------------------------------------------------------------------------
[Command]
name = "BB"     
command = B, B
time = 10

;---------------------------------------------------------------------------
; 受け身
;---------------------------------------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = z
time = 1

;---------------------------------------------------------------------------
; カウンター
;---------------------------------------------------------------------------
[Command]
name = "GC"
command = /F,y+b
time = 15

;---------------------------------------------------------------------------
; 
;---------------------------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;===========================================================================
; ボタン設定（いじらない）
;===========================================================================

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

;===========================================================================
;押しっぱなし設定（いじらない）
;===========================================================================

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

;===========================================================================
[Statedef -1]
;===========================================================================

;===========================================================================
; CPU用
;===========================================================================

[State -1]
type       = VarSet
triggerall = var(20) >= -1  
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"
var(20)    = 1

;---------------------------------------------------------------------------
; コンボ
;---------------------------------------------------------------------------
[State -1];振り向きプラズマ
type = ChangeState
value = 3200
triggerall = var(20) = 1 && roundstate = 2
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = power >= 3000
trigger1 = stateno = 240
trigger1 = P2bodydist X = [00,30]
trigger1   = p2movetype = A
trigger1   = Random > 600

[State -1];立ち強キック-超ライトニングプラズマ
type = ChangeState
value = 3000
triggerall = var(20) = 1 && roundstate = 2
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = power >= 1000
trigger1 = stateno = 240
trigger1 = P2bodydist X = [00,300]
trigger1   = p2movetype = A
trigger1   = Random > 600

[State -1];立ち強キック-ライトニングプラズマ
type = ChangeState
value = 1010
triggerall = var(20) = 1 && roundstate = 2
triggerall = statetype != A
triggerall = power >= 3000
triggerall = P2statetype != L
triggerall = p2statetype != C
trigger1 = stateno = 240
trigger1   = Random > 500
trigger1 = movecontact = 1
;trigger1 = (movehit = [1,2)) && P2bodydist X = [-5,150]

[State -1];立ち弱パンチ-立ち弱キック
type = ChangeState
value = 230
triggerall = var(20) = 1 && roundstate = 2
triggerall = statetype != A
;triggerall = p2movetype = H
triggerall = P2statetype != L
triggerall = p2statetype != C
triggerall = p2statetype = S
trigger1 = stateno = 200
trigger1 = movecontact
trigger1   = Random < 400
;trigger1 = (movehit = [1,2)) && P2bodydist X = [-4,50]
;--
[State -1];立ち強キック-ライトニングボルト
type = ChangeState
value = 1000
triggerall = var(20) = 1 && roundstate = 2
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2statetype != C
trigger1 = stateno = 240
trigger1   = Random > 300
trigger1 = movecontact = 1
;trigger1 = (movehit = [1,2)) && P2bodydist X = [-5,150]
;--
[State -1];立ち弱キック-立ち強キック
type = ChangeState
value = 240
triggerall = var(20) = 1 && roundstate = 2
triggerall = statetype != A
;triggerall = p2movetype = H
triggerall = P2statetype != L
triggerall = p2statetype != C
trigger1 = stateno = 230
trigger1 = movecontact
trigger1   = Random < 300
;trigger1 = (movehit = [1,2)) && P2bodydist X = [-5,100]
;--

;---------------------------------------------------------------------------
; カウンター
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2300
triggerall = var(20) = 1 && roundstate = 2
triggerall = Power >= 2000
triggerall = statetype = S
triggerall = stateno != 105
triggerall = statetype ! = C

trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153

;---------------------------------------------------------------------------
; 立ちガード
;---------------------------------------------------------------------------
[State -1, 対地 立ちガード]
type  = ChangeState
value = 130
triggerall = var(20) = 1 && roundstate = 2
triggerall = statetype != A
triggerall = p2movetype = A
triggerall = P2statetype != C
triggerall = ctrl
trigger1   = P2BodyDist X < 70
trigger1   = Random > 400
trigger1   = p2statetype = S
trigger2   = enemy, numproj >= 1
trigger2   = Random > 800
trigger2   = p2statetype = S
trigger3   = enemy,hitdefattr = S, NA,SA,HA 
trigger3   = Random > 300
trigger3   = p2statetype = S
trigger4   = enemy,hitdefattr = A, NA,SA,HA 
trigger4   = Random > 400
trigger4   = p2statetype = S
trigger5   = p2statetype = A
trigger5   = P2BodyDist X < 100
trigger5   = Random < 500

;---------------------------------------------------------------------------
; しゃがみガード
;---------------------------------------------------------------------------
[State -1, しゃがみガード]
type  = ChangeState
value = 131
triggerall = var(20) = 1 && roundstate = 2
triggerall = statetype != A
triggerall = p2movetype = A
triggerall = P2statetype = C
triggerall = ctrl
trigger1   = P2BodyDist X < 70
trigger1   = Random < 200
trigger2   = enemy, numproj >= 1
trigger2   = Random < 200
trigger3   = enemy,hitdefattr = C, NA,SA,HA 
trigger3   = Random > 300

;---------------------------------------------------------------------------
; 空中ガード
;---------------------------------------------------------------------------
[State -1, 空中ガード]
type  = ChangeState
value = 132
triggerall = var(20) = 1 && roundstate = 2    
triggerall = statetype = A
triggerall = p2movetype = A
triggerall = ctrl
trigger1   = P2BodyDist X < 70
trigger2   = enemy, numproj >= 1

;---------------------------------------------------------------------------
; ダッシュ
;---------------------------------------------------------------------------
[State -1,12]
type = ChangeState
value = 100
triggerall = var(20) = 1 && roundstate = 2
triggerall = stateno != 100
triggerall = statetype = S
triggerall = ctrl
trigger1   = p2bodydist X > 100 
trigger1   = Random > 800

[State -1, 次の手を思案中]
type = VarRandom
triggerall = var(20) >= 1
triggerall = stateno = 0;[0,12]
triggerall = animelemtime(2) > 0
trigger1   = ctrl
trigger1   = roundstate = 2
v = 21
range = 0,99

;---------------------------------------------------------------------------
; ライトニングボルト
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1000
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = numhelper(1000) = 0 ;ＩＤナンバー1000のヘルパーが画面中に１個も出てない時
triggerall = numprojID(1000) = 0 ;ＩＤナンバー1000の飛び道具が画面中に１個も出てない時
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = prevstateno != 1000

;trigger1 = (stateno = [200,299]) || (stateno = [400,499])
trigger1 = stateno != 440
trigger1 = P2bodydist X = [100,200]
trigger1   = random <= 50

;---------------------------------------------------------------------------
; ライトニングプラズマ
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1010
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = prevstateno != [1050,1075]
triggerall = P2statetype != L

trigger1   = p2bodydist X = [-10,20]
trigger1   = p2statetype = A
trigger1   = random < 50

;trigger2 = p2bodydist Y = [-30,0]

;---------------------------------------------------------------------------
; 振り向きプラズマ （ゲージレベル３）
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3200
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = stateno != 105
triggerall = statetype != A
triggerall = stateno != 650
triggerall = stateno != 1100
triggerall = stateno != 1110
triggerall = stateno != 1120
triggerall = stateno != 1200
triggerall = stateno != 1201
triggerall = stateno != 1300
triggerall = stateno != 1310
triggerall = stateno != 1320
triggerall = stateno != 1330
triggerall = stateno != 1340
triggerall = stateno != 1350
triggerall = stateno != 1360
triggerall = stateno != 3000
triggerall = stateno != 3010
triggerall = stateno != 3020
triggerall = stateno != 3100
triggerall = stateno != 3200
triggerall = stateno != 3210
triggerall = stateno != 3215
triggerall = stateno != 3220
triggerall = stateno != 4100
triggerall = stateno != 4110
triggerall = stateno != 4120
triggerall = stateno != 4130
triggerall = P2bodydist Y > -50

trigger1   = p2statetype != L
trigger1   = P2bodydist X = [0,30]
trigger1   = power >= 3000   
trigger1   = random <= 60

;---------------------------------------------------------------------------
; 超ライトニングボルト（ゲージレベル１）
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 4100
triggerall = var(20) = 1 && roundstate = 2
triggerall = power >= 1500 
triggerall = ctrl
triggerall = stateno != 105
triggerall = statetype != A
triggerall = stateno != 650
triggerall = stateno != 1100
triggerall = stateno != 1110
triggerall = stateno != 1120
triggerall = stateno != 1200
triggerall = stateno != 1201
triggerall = stateno != 1300
triggerall = stateno != 1310
triggerall = stateno != 1320
triggerall = stateno != 1330
triggerall = stateno != 1340
triggerall = stateno != 1350
triggerall = stateno != 1360
triggerall = stateno != 3000
triggerall = stateno != 3010
triggerall = stateno != 3020
triggerall = stateno != 3100
triggerall = stateno != 3200
triggerall = stateno != 3210
triggerall = stateno != 3215
triggerall = stateno != 3220
triggerall = stateno != 4100
triggerall = stateno != 4110
triggerall = stateno != 4120
triggerall = stateno != 4130

trigger1 = movetype != H
trigger1   = P2bodydist X = [100,150]

;---------------------------------------------------------------------------
; 超ライトニングプラズマ（ゲージレベル１）
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3000
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = stateno != 105
triggerall = statetype != A
triggerall = stateno != 650
triggerall = stateno != 1100
triggerall = stateno != 1110
triggerall = stateno != 1120
triggerall = stateno != 1200
triggerall = stateno != 1201
triggerall = stateno != 1300
triggerall = stateno != 1310
triggerall = stateno != 1320
triggerall = stateno != 1330
triggerall = stateno != 1340
triggerall = stateno != 1350
triggerall = stateno != 1360
triggerall = stateno != 3000
triggerall = stateno != 3010
triggerall = stateno != 3020
triggerall = stateno != 3100
triggerall = stateno != 3200
triggerall = stateno != 3210
triggerall = stateno != 3215
triggerall = stateno != 3220
triggerall = stateno != 4100
triggerall = stateno != 4110
triggerall = stateno != 4120
triggerall = stateno != 4130
triggerall = P2bodydist Y > -50

trigger1   = p2statetype != L
trigger1   = P2bodydist X = [10,300]
trigger1   = power >= 1000   
trigger1   = random <= 30

;---------------------------------------------------------------------------
; 獅子咆哮（弱）
;---------------------------------------------------------------------------
[State -1,06]
type = ChangeState
value = 1200
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = random <= 30
triggerall = P2statetype != L
triggerall = prevstateno != 1360
triggerall = stateno != 1020

trigger1   = movetype != H 
trigger1   = P2bodydist X < 40
trigger1   = power >= 1500

trigger2   = p2bodydist X < 50
trigger2   = p2bodydist Y > -10
trigger2   = movetype != A 

;---------------------------------------------------------------------------
; 獅子咆哮（強）
;---------------------------------------------------------------------------
[State -1,06]
type = ChangeState
value = 1201
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = random <= 30
triggerall = P2statetype != L
triggerall = prevstateno != 1360
triggerall = stateno != 1020

trigger1   = movetype != H 
trigger1   = P2bodydist X < 60
trigger1   = power >= 1500

trigger2   = p2bodydist X < 70
trigger2   = p2bodydist Y > -10
trigger2   = movetype != A 

;---------------------------------------------------------------------------
; 突ライトニングボルト（弱）
;---------------------------------------------------------------------------
[State -1,07]
type = ChangeState
value = 1300
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = random < 30

trigger1   = p2bodydist X < 50

;---------------------------------------------------------------------------
; 突ライトニングボルト（強）
;---------------------------------------------------------------------------
[State -1,08]
type = ChangeState
value = 1310
triggerall = var(20) = 1 && roundstate = 2
triggerall = movecontact && prevstateno != [200,499]
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = random < 80

trigger1 = p2bodydist X = [100,250]
trigger1 = p2movetype = A

;---------------------------------------------------------------------------
; ドルフィンブロウ（弱）
;---------------------------------------------------------------------------
[State -1,04]
type = ChangeState
value = 1100
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = prevstateno != [1050,1075]
triggerall = P2statetype != L

trigger1   = p2bodydist X = [-10,20]
trigger1   = p2statetype = A
trigger1   = random < 50

;trigger2 = p2bodydist Y = [-30,0]

;---------------------------------------------------------------------------
; バックステップ
;---------------------------------------------------------------------------
[State -1,13]
type = ChangeState
value = 105
triggerall = var(20) = 1 && roundstate = 2
triggerall = statetype = S
triggerall = ctrl=0
triggerall = random <= 10
triggerall = statetype != A
triggerall = StateNo = 0

trigger1 = p2movetype = A

;---------------------------------------------------------------------------
; 前回避
;---------------------------------------------------------------------------
[State -1,14]
type = ChangeState
value = 2200
triggerall = var(20) = 1 && roundstate = 2
triggerall = statetype = S
triggerall = ctrl

trigger1   = p2movetype = A
trigger1   = P2bodydist X = [5,50]
trigger1   = p2statetype != L
trigger1   = random < 200

;---------------------------------------------------------------------------
; 後ろ回避
;---------------------------------------------------------------------------
[State -1,15]
type = ChangeState
value = 2250
triggerall = var(20) = 1 && roundstate = 2
triggerall = statetype = S
triggerall = ctrl
triggerall = random <= 3

trigger1 = p2movetype = A
trigger1 = P2bodydist X <= 80
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
; 投げ
;---------------------------------------------------------------------------
[State -1,16]
type = ChangeState
value = 800
triggerall = var(20) = 1 && roundstate = 2
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist X < 3
triggerall = random < 50

trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
; 中段攻撃
;---------------------------------------------------------------------------
;[State -1]
;type = ChangeState
;value = 650
;triggerall = var(20) = 1 && roundstate = 2
;triggerall = statetype = S
;triggerall = p2statetype != A
;triggerall = ctrl
;triggerall = statetype != A
;triggerall = P2statetype != L
;triggerall = stateno != 100
;triggerall = stateno != 105

;trigger1 = P2Movetype != A
;trigger1 = P2BodyDist X <= 20
;trigger1 = P2statetype = C

;===========================================================================

;---------------------------------------------------------------------------
; 立ち弱パンチ
;---------------------------------------------------------------------------
[State -1,17]
type = ChangeState
value = 200
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2statetype = S

trigger1 = P2Movetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random < 75

trigger2 = stateno = 640
trigger2 = movehit = 1 
trigger2 = random < 80


;------------
[State -1,17]
type = ChangeState
value = 200
triggerall = var(20) = 1
triggerall = movecontact && prevstateno != [200,499]
triggerall = P2statetype != L
triggerall = p2statetype = S

trigger1 = (stateno = 200) && time > 6
trigger1 = random < 500

;---------------------------------------------------------------------------
; 立ち強パンチ
;---------------------------------------------------------------------------
[State -1,18]
type = ChangeState
value = 210
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2statetype = S

trigger1 = P2Movetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [150,225]


;------------
[State -1,18]
type = ChangeState
value = 210
triggerall = var(20) = 1
triggerall = movecontact && prevstateno != [200,499]
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2statetype = S

trigger1 = (stateno = 200) && time > 5 || (stateno = 230) && time > 6
trigger1 = random < 500


;---------------------------------------------------------------------------
; 立ち弱キック
;---------------------------------------------------------------------------
[State -1,19]
type = ChangeState
value = 230
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2statetype = S


trigger1 = P2Movetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [75,150]

trigger2 = stateno = 640
trigger2 = movehit = 1 
trigger2 = random < 100

trigger3 = stateno = 200
trigger3 = movecontact
trigger3 = random > 300 

;------------
[State -1,19]
type = ChangeState
value = 230
triggerall = var(20) = 1
triggerall = movecontact && prevstateno != [200,499]
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2statetype = S

trigger1 = (stateno = 200) && time > 7 || (stateno = 230) && time > 9
trigger1 = random < 500

;---------------------------------------------------------------------------
; 立ち強キック
;---------------------------------------------------------------------------
[State -1,20]
type = ChangeState
value = 240
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2statetype = S

trigger1 = stateno = [1050,1070]
trigger1 = movecontact

trigger2 = P2Movetype != A
trigger2 = P2BodyDist X <= 50
trigger2 = random = [225,300]

trigger3 = (stateno = 200) || (stateno = 230)
trigger3 = movehit = 1 
trigger3 = random < 150

trigger4 = stateno = 230
trigger4 = movecontact
trigger4 = random > 300 

;------------
[State -1,20]
type = ChangeState
value = 240
triggerall = var(20) = 1
triggerall = movecontact && prevstateno != [200,499]
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2statetype = S

trigger1 = (stateno = 200) && time > 5 || (stateno = 230) && time > 6 
trigger1 = random < 500

;---------------------------------------------------------------------------
; しゃがみ弱パンチ
;---------------------------------------------------------------------------
[State -1,21]
type = ChangeState
value = 400
triggerall = var(20) = 1 && roundstate = 2
triggerall = p2statetype != A
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L

trigger1 = P2Movetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [300,375]

;---------------------------------------------------------------------------
; しゃがみ強パンチ
;---------------------------------------------------------------------------
[State -1,22]
type = ChangeState
value = 410
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L

trigger1   = p2bodydist X = [10,35]
trigger1   = p2statetype != L
trigger1   = p2movetype != A
trigger1   = random < 100

;------------
[State -1,22]
type = ChangeState
value = 410
triggerall = var(20) = 1
triggerall = movecontact && prevstateno != [200,499]
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L

trigger1 = (stateno = 400) || (stateno = 430)
trigger1 = (time > 9) || (movecontact && time > 5)
trigger1 = random < 200

;---------------------------------------------------------------------------
; しゃがみ弱キック
;---------------------------------------------------------------------------
[State -1,23]
type = ChangeState
value = 430
triggerall = var(20) = 1 && roundstate = 2
triggerall = p2statetype != A
triggerall = ctrl
triggerall = statetype != A
triggerall = P2BodyDist X = [0,40]

trigger1 = P2statetype != L
trigger1 = random < 200

trigger2 = P2statetype = L
trigger2 = random < 100

;------------
[State -1,24]
type = ChangeState
value = 430
triggerall = var(20) = 1
triggerall = movecontact && prevstateno != [200,499]
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L

trigger1 = (stateno = 400) || (stateno = 430)
trigger1 = (time > 9) || (movecontact && time > 5)  
trigger1 = random < 500

;---------------------------------------------------------------------------
; しゃがみ強キック
;---------------------------------------------------------------------------
[State -1,24]
type = ChangeState
value = 440
triggerall = var(20) = 1 && roundstate = 2
triggerall = p2statetype != A
triggerall = ctrl
triggerall = statetype != A

trigger1 = P2statetype != L
trigger1 = P2Movetype != A
trigger1 = P2BodyDist X <= 70
trigger1 = random < 200

;------------
[State -1,24]
type = ChangeState
value = 440
triggerall = var(20) = 1
triggerall = movecontact && prevstateno != [200,499]
triggerall = ctrl
triggerall = statetype != A

trigger1 = (stateno = 400) || (stateno = 430)
trigger1 = (time > 9) || (movecontact && time > 5) 
trigger1 = random < 100

;---------------------------------------------------------------------------
; 空中強キック
;---------------------------------------------------------------------------
[State -1,25]
type = ChangeState
value = 640
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype = A
triggerall = random < 500

trigger1 = P2BodyDist X = [-20,50]

;---------------------------------------------------------------------------
; 空中弱パンチ
;---------------------------------------------------------------------------
[State -1,26]
type = ChangeState
value = 600
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype = A
triggerall = stateno = 600
triggerall = statetime >= 50

trigger1 = P2Movetype != A
trigger1 = P2BodyDist X <= 50
trigger1= random < 50

;------------
;[State -1,26]
;type = ChangeState
;value = 600
;triggerall = var(20) = 1
;triggerall = movecontact 

;trigger1 = stateno = 600
;trigger1 = random < 200

;---------------------------------------------------------------------------
; 空中強パンチ
;---------------------------------------------------------------------------
[State -1,27]
type = ChangeState
value = 610
triggerall = var(20) = 1 && roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = random < 50

trigger1 = P2statetype = A
trigger1 = P2BodyDist X <= 50

;---------------------------------------------------------------------------
; 空中弱キック
;---------------------------------------------------------------------------
[State -1,28]
type = ChangeState
value = 630
triggerall = var(20) = 1 && roundstate = 2

trigger1 = P2Movetype != A
trigger1 = ctrl
trigger1 = statetype = A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [150,300]

;---------------------------------------------------------------------------
; パワー溜め
;---------------------------------------------------------------------------
[State -1,29]
type = ChangeState
value = 2000
triggerall = var(20) = 1 && roundstate = 2
triggerall = power < 3000
triggerall = Frontedgebodydist > 200
triggerall = Pos y = 0
triggerall = p2statetype != A || p2statetype != S || p2statetype != C
triggerall = p2movetype != A
triggerall = P2bodydist X > 200
triggerall = statetype != A
triggerall = ctrl

trigger1 = random < 80
trigger1 = statetype = S
trigger1 = P2MoveType = H
trigger1 = p2life >= 500
trigger1 = life >= 500

;---------------------------------------------------------------------------
; 挑発
;---------------------------------------------------------------------------
[State -1,30]
type = ChangeState
value = 195
triggerall = var(20) = 1 && roundstate = 2
triggerall = Pos y = 0
triggerall = statetype != A
triggerall = ctrl
triggerall = P2bodydist X > 300

trigger1 = statetype = S
trigger1 = P2MoveType = H
trigger1 = p2life >= 500
trigger1 = life >= 500
trigger1 = random < 10
trigger1 = P2statetype = L


;===========================================================================
; 人間用
;===========================================================================

;---------------------------------------------------------------------------
; 振り向きプラズマ（ゲージレベル3）
;---------------------------------------------------------------------------
[State -1,1]
type = ChangeState
value = 3200
triggerall = command = "furimuki"
triggerall = power >= 3000
triggerall = var(20) = 0  
triggerall = stateno != 105
triggerall = statetype != A
triggerall = stateno != 650
triggerall = stateno != 1100
triggerall = stateno != 1110
triggerall = stateno != 1120
triggerall = stateno != 1200
triggerall = stateno != 1201
triggerall = stateno != 1300
triggerall = stateno != 1310
triggerall = stateno != 1320
triggerall = stateno != 1330
triggerall = stateno != 1340
triggerall = stateno != 1350
triggerall = stateno != 1360
triggerall = stateno != 3000
triggerall = stateno != 3010
triggerall = stateno != 3020
triggerall = stateno != 3100
triggerall = stateno != 3200
triggerall = stateno != 3210
triggerall = stateno != 3215
triggerall = stateno != 3220
triggerall = stateno != 4100
triggerall = stateno != 4110
triggerall = stateno != 4120
triggerall = stateno != 4130

trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = movecontact

;---------------------------------------------------------------------------
; 超ライトニングプラズマ（ゲージレベル１）
;---------------------------------------------------------------------------
[State -1,1]
type = ChangeState
value = 3000
triggerall = command = "splasma"
triggerall = power >= 1000
triggerall = var(20) = 0  
triggerall = stateno != 105
triggerall = statetype != A
triggerall = stateno != 650
triggerall = stateno != 1100
triggerall = stateno != 1110
triggerall = stateno != 1120
triggerall = stateno != 1200
triggerall = stateno != 1201
triggerall = stateno != 1300
triggerall = stateno != 1310
triggerall = stateno != 1320
triggerall = stateno != 1330
triggerall = stateno != 1340
triggerall = stateno != 1350
triggerall = stateno != 1360
triggerall = stateno != 3000
triggerall = stateno != 3010
triggerall = stateno != 3020
triggerall = stateno != 3100
triggerall = stateno != 3200
triggerall = stateno != 3210
triggerall = stateno != 3215
triggerall = stateno != 3220
triggerall = stateno != 4100
triggerall = stateno != 4110
triggerall = stateno != 4120
triggerall = stateno != 4130

trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = movecontact

;---------------------------------------------------------------------------
; 超ライトニングボルト（ゲージレベル１）
;---------------------------------------------------------------------------
[State -1,1]
type = ChangeState
value = 4100
triggerall = command = "slbolt"
triggerall = power >= 1000
triggerall = var(20) = 0  
triggerall = stateno != 105
triggerall = statetype != A
triggerall = stateno != 650
triggerall = stateno != 1100
triggerall = stateno != 1110
triggerall = stateno != 1120
triggerall = stateno != 1200
triggerall = stateno != 1201
triggerall = stateno != 1300
triggerall = stateno != 1310
triggerall = stateno != 1320
triggerall = stateno != 1330
triggerall = stateno != 1340
triggerall = stateno != 1350
triggerall = stateno != 1360
triggerall = stateno != 3000
triggerall = stateno != 3010
triggerall = stateno != 3020
triggerall = stateno != 3100
triggerall = stateno != 3200
triggerall = stateno != 3210
triggerall = stateno != 3215
triggerall = stateno != 3220
triggerall = stateno != 4100
triggerall = stateno != 4110
triggerall = stateno != 4120
triggerall = stateno != 4130

trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = movecontact

;===========================================================================
;連続技を決める変数。変数にすると便利みたいです。
;使いたい人は使うと良いでしょう。

[State -1] ;初期化
type = VarSet
trigger1 = 1
var(1) = 0

[State -1] ;キャンセル可なステートナンバーを決定
type = VarSet
triggerall = movetype != H
triggerall = stateno != 105        
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact
var(1) = 1
ignorehitpause = 1

;===========================================================================

;---------------------------------------------------------------------------
; 獅子咆哮（弱）
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1200
triggerall = command = "houkou_x"
triggerall = var(20) = 0 
triggerall = stateno != 105
triggerall = stateno != 1300
triggerall = stateno != 1310
triggerall = stateno != 1320
triggerall = stateno != 1330
triggerall = stateno != 1340
triggerall = stateno != 1350

trigger1 = movetype != H
trigger1 = var(1)

;---------------------------------------------------------------------------
; 獅子咆哮（強）
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1201
triggerall = command = "houkou_y"
triggerall = var(20) = 0 
triggerall = stateno != 105
triggerall = stateno != 1300
triggerall = stateno != 1310
triggerall = stateno != 1320
triggerall = stateno != 1330
triggerall = stateno != 1340
triggerall = stateno != 1350

trigger1 = movetype != H
trigger1 = var(1)

;---------------------------------------------------------------------------
; 突ライトニングボルト（弱）
;---------------------------------------------------------------------------
[State -1,2]
type = ChangeState
value = 1300
triggerall = command = "bolt_a"
triggerall = var(20) = 0 
triggerall = statetype != A

trigger1 = ctrl

;---------------------------------------------------------------------------
; 突ライトニングボルト（強）
;---------------------------------------------------------------------------
[State -1,3]
type = ChangeState
value = 1310
triggerall = command = "bolt_b"
triggerall = var(20) = 0 
triggerall = statetype != A

trigger1 = ctrl

;---------------------------------------------------------------------------
; ライトニングボルト（弱）
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1000
triggerall = command = "lbolt"
triggerall = numhelper(1000) = 0 ;ＩＤナンバー1000のヘルパーが画面中に１個も出てない時
triggerall = numprojID(1000) = 0 ;ＩＤナンバー1200の飛び道具が画面中に１個も出てない時
triggerall = var(20) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact


;---------------------------------------------------------------------------
; ライトニングプラズマ（強）
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1010
triggerall = command = "plasma"
triggerall = var(20) = 0 
triggerall = stateno != 105
triggerall = stateno != 1000
triggerall = stateno != 1010

trigger1 = movetype != H
trigger1 = var(1)

;---------------------------------------------------------------------------
; ダッシュ
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = var(20) = 0 
triggerall = stateno != 105

trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; バックステップ
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = var(20) = 0

trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; パワー溜め
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2000
triggerall = power != 3000
triggerall = var(20) = 0
triggerall = stateno != 105

trigger1 = command = "holdy"
trigger1 = command = "holdb"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; 挑発
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = var(20) = 0
triggerall = stateno != 105

trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; 前回避
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2200
triggerall = command = "away-f"
triggerall = statetype = S
triggerall = var(20) = 0
triggerall = stateno != 105

trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
; 後ろ回避
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2250
triggerall = command = "away-b"
triggerall = statetype = S
triggerall = var(20) = 0
triggerall = stateno != 105

trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
; 投げ
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = var(20) = 0
triggerall = stateno != 105

trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; 特殊攻撃
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = ctrl
triggerall = var(20) = 0
triggerall = stateno != 105

trigger1 = statetype = C
trigger1 = command = "holddown" 
trigger1 = command = "holdfwd"

;---------------------------------------------------------------------------
; 中段攻撃
;---------------------------------------------------------------------------
;[State -1]
;type = ChangeState
;value = 650
;triggerall = command = "b"
;triggerall = statetype = S
;triggerall = ctrl
;triggerall = stateno != 100
;triggerall = var(20) = 0
;triggerall = stateno != 105

;trigger1 = command != "holddown" 
;trigger1 = command = "holdfwd"

;---------------------------------------------------------------------------
; カウンター
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2300
triggerall = Command = "GC"
triggerall = Power >= 1000
triggerall = statetype = S
triggerall = stateno != 105
triggerall = var(20) = 0

trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153


;===========================================================================

;---------------------------------------------------------------------------
; 立ち弱パンチ
;---------------------------------------------------------------------------
[State -1,p]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(20) = 0
triggerall = stateno != 105

trigger1 = statetype = S


;Stand_z3
[State -1]
type = ChangeState
value = 1000
triggerall = command = "y"
triggerall = movecontact = 1
trigger1 = stateno = 200




;---------------------------------------------------------------------------
; 立ち強パンチ
;---------------------------------------------------------------------------
[State -1,p]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(20) = 0
triggerall = stateno != 105

trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210

;Stand_z3
[State -1]
type = ChangeState
value = 1010
triggerall = command = "z"
triggerall = movecontact = 1
trigger1 = stateno = 210

[State -1]
type = ChangeState
value = 1201
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl



;---------------------------------------------------------------------------
; 立ち弱キック
;---------------------------------------------------------------------------
[State -1,k]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(20) = 0
triggerall = stateno != 105

trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
trigger4 = (stateno = 400) && time > 7
trigger5 = (stateno = 430) && time > 7

[State -1]
type = ChangeState
value = 240
triggerall = command = "a"
triggerall = movecontact = 1
trigger1 = stateno = 230

;---------------------------------------------------------------------------
; 立ち強キック
;---------------------------------------------------------------------------
[State -1,k]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(20) = 0
triggerall = stateno != 105

trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = (stateno = 230) && time > 6
trigger3 = (time > 9) || (movecontact && time > 5)
trigger4 = (stateno = 400) && time > 6
trigger4 = (time > 9) || (movecontact && time > 6)
trigger5 = (stateno = 430) && time > 6
trigger5 = (time > 9) || (movecontact && time > 6)

[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = movecontact = 1
trigger1 = stateno = 240

[State -1]
type = ChangeState
value = 800
triggerall = command = "c"
triggerall = var(20) = 0
triggerall = stateno != 105
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = (stateno = 230) && time > 6
trigger3 = (time > 9) || (movecontact && time > 5)
trigger4 = (stateno = 400) && time > 6
trigger4 = (time > 9) || (movecontact && time > 6)
trigger5 = (stateno = 430) && time > 6
trigger5 = (time > 9) || (movecontact && time > 6)

;---------------------------------------------------------------------------
; しゃがみ弱パンチ
;---------------------------------------------------------------------------
[State -1,p]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(20) = 0
triggerall = stateno != 105

trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
trigger4 = (stateno = 400) && time > 7
trigger5 = (stateno = 430) && time > 7

;---------------------------------------------------------------------------
; しゃがみ強パンチ
;---------------------------------------------------------------------------
[State -1,p]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(20) = 0
triggerall = stateno != 105

trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
trigger4 = (stateno = 400) && time > 7
trigger5 = (stateno = 430) && time > 7

;---------------------------------------------------------------------------
; しゃがみ弱キック
;---------------------------------------------------------------------------
[State -1,k]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(20) = 0
triggerall = stateno != 105

trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
trigger4 = (stateno = 400) && time > 7
trigger5 = (stateno = 430) && time > 7

;---------------------------------------------------------------------------
; しゃがみ強キック
;---------------------------------------------------------------------------
[State -1,k]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(20) = 0
triggerall = stateno != 105

trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
trigger4 = (stateno = 400) && time > 7
trigger5 = (stateno = 430) && time > 7

;---------------------------------------------------------------------------
; 空中弱パンチ
;---------------------------------------------------------------------------
[State -1,p]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = var(20) = 0
triggerall = stateno != 105

trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 50

;---------------------------------------------------------------------------
; 空中強パンチ
;---------------------------------------------------------------------------
[State -1,p]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = var(20) = 0
triggerall = stateno != 105

trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

;---------------------------------------------------------------------------
; 空中弱キック
;---------------------------------------------------------------------------
[State -1,k]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = var(20) = 0
triggerall = stateno != 105

trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; 空中強キック
;---------------------------------------------------------------------------
[State -1,k]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = var(20) = 0
triggerall = stateno != 105

trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact


