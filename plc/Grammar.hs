{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.8

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,896) ([0,160,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,2048,0,0,0,32816,0,0,0,0,8,0,8,0,0,0,2080,0,0,0,33280,0,0,0,0,0,0,0,0,0,0,256,0,2080,0,0,0,0,0,0,64,0,61440,16384,0,64512,383,0,168,0,0,0,4096,0,0,0,32768,0,8192,8,0,0,0,0,0,256,0,2080,0,0,0,0,0,0,0,65472,3991,49145,10,0,0,0,16384,49152,6143,0,2688,0,32764,1,43008,0,65472,23,32768,10,64512,383,0,168,49152,6143,0,2688,0,32764,1,43008,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32764,1,43008,0,65472,23,32768,10,64512,383,0,168,49152,6143,0,2688,0,32764,1,43008,0,65472,23,32768,10,64512,383,0,168,49152,6143,0,2688,0,32764,1,43008,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32764,37113,44031,0,65472,3991,49145,10,64512,63871,65424,171,49152,38911,63759,2751,0,32764,37113,44031,0,65472,3991,49145,42,64512,63871,65424,1195,0,0,0,1024,0,32764,37113,48127,4,65472,4023,49145,10,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32764,37113,44031,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32764,1,43008,0,65472,23,32768,10,64512,383,0,168,49152,6143,0,2688,0,32764,1,43008,0,65472,23,32768,10,64512,383,0,168,49152,6143,0,2688,0,32764,1,43008,0,65472,23,32768,10,64512,383,0,168,49152,6143,0,2688,0,32764,1,43008,0,65472,23,32768,10,64512,383,0,168,49152,6143,0,2688,0,32764,1,43008,0,0,0,0,16,0,0,0,0,0,0,0,0,0,32512,1,43520,0,61440,23,40960,10,0,383,0,171,0,6128,0,2736,0,32512,1,43968,0,61440,23,48128,10,0,63871,61968,171,0,38896,8463,2751,0,32512,4097,44018,0,61440,3991,48929,10,0,63871,61968,171,0,6128,256,2751,0,32512,4105,44018,0,61440,151,48929,10,0,51583,61968,171,0,38896,8460,2751,0,32512,4097,44018,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,32764,1,43008,0,0,0,0,0,64512,383,0,168,0,0,0,0,0,32764,1,43008,0,65472,23,32768,10,64512,63871,65456,171,0,0,0,4096,0,0,0,0,4,0,0,0,0,64512,63871,65424,187,49152,55295,63759,2751,0,0,0,10240,56,0,0,0,1,0,0,0,14376,0,0,0,33408,3,0,0,0,0,0,0,0,0,0,0,0,0,49152,6143,0,2688,0,0,0,0,0,65472,23,32768,10,0,0,0,0,49152,6143,0,2688,0,32764,37113,44031,0,0,0,0,0,0,126,0,168,0,0,0,1024,0,0,0,0,4,0,0,4,0,64512,383,0,168,0,0,0,33408,3,0,0,0,0,0,0,0,1,0,383,61440,171,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseStreamLang","Prog","Sect","Block","Statement","Assignment","Expr","T","Conts","Args","PredList","Pred","zip","reverse","head","tail","fst","snd","lam","string","ident","int","float","true","false","return","if","then","else","'++'","'=='","'!='","'&&'","'||'","'+='","'-='","'*='","'/='","'!!'","'<-'","'->'","'<='","'>='","':'","'>'","'<'","'+'","'-'","'*'","'/'","'%'","'^'","'='","'('","')'","'['","']'","'{'","'}'","'|'","','","t_int","t_float","t_bool","EOL","%eof"]
        bit_start = st * 68
        bit_end = (st + 1) * 68
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..67]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (22) = happyShift action_4
action_0 (24) = happyShift action_5
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (68) = happyAccept
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (22) = happyShift action_4
action_3 (24) = happyShift action_5
action_3 (4) = happyGoto action_10
action_3 (5) = happyGoto action_3
action_3 _ = happyReduce_1

action_4 (60) = happyShift action_9
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (49) = happyShift action_6
action_5 (50) = happyShift action_7
action_5 (60) = happyShift action_8
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (60) = happyShift action_18
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (24) = happyShift action_17
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (22) = happyShift action_14
action_8 (28) = happyShift action_15
action_8 (6) = happyGoto action_16
action_8 (7) = happyGoto action_12
action_8 (8) = happyGoto action_13
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (22) = happyShift action_14
action_9 (28) = happyShift action_15
action_9 (6) = happyGoto action_11
action_9 (7) = happyGoto action_12
action_9 (8) = happyGoto action_13
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_2

action_11 (61) = happyShift action_48
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (22) = happyShift action_14
action_12 (28) = happyShift action_15
action_12 (6) = happyGoto action_47
action_12 (7) = happyGoto action_12
action_12 (8) = happyGoto action_13
action_12 _ = happyReduce_8

action_13 (67) = happyShift action_46
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (37) = happyShift action_41
action_14 (38) = happyShift action_42
action_14 (39) = happyShift action_43
action_14 (40) = happyShift action_44
action_14 (55) = happyShift action_45
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (15) = happyShift action_24
action_15 (16) = happyShift action_25
action_15 (17) = happyShift action_26
action_15 (18) = happyShift action_27
action_15 (19) = happyShift action_28
action_15 (20) = happyShift action_29
action_15 (21) = happyShift action_30
action_15 (22) = happyShift action_31
action_15 (23) = happyShift action_32
action_15 (24) = happyShift action_33
action_15 (25) = happyShift action_34
action_15 (26) = happyShift action_35
action_15 (27) = happyShift action_36
action_15 (29) = happyShift action_37
action_15 (56) = happyShift action_38
action_15 (58) = happyShift action_39
action_15 (60) = happyShift action_40
action_15 (9) = happyGoto action_22
action_15 (12) = happyGoto action_23
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (61) = happyShift action_21
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (60) = happyShift action_20
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (22) = happyShift action_14
action_18 (28) = happyShift action_15
action_18 (6) = happyGoto action_19
action_18 (7) = happyGoto action_12
action_18 (8) = happyGoto action_13
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (61) = happyShift action_87
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (22) = happyShift action_14
action_20 (28) = happyShift action_15
action_20 (6) = happyGoto action_86
action_20 (7) = happyGoto action_12
action_20 (8) = happyGoto action_13
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_5

action_22 (15) = happyShift action_24
action_22 (16) = happyShift action_25
action_22 (17) = happyShift action_26
action_22 (18) = happyShift action_27
action_22 (19) = happyShift action_28
action_22 (20) = happyShift action_29
action_22 (21) = happyShift action_30
action_22 (22) = happyShift action_31
action_22 (23) = happyShift action_32
action_22 (24) = happyShift action_33
action_22 (25) = happyShift action_34
action_22 (26) = happyShift action_35
action_22 (27) = happyShift action_36
action_22 (29) = happyShift action_37
action_22 (32) = happyShift action_69
action_22 (33) = happyShift action_70
action_22 (34) = happyShift action_71
action_22 (35) = happyShift action_72
action_22 (36) = happyShift action_73
action_22 (41) = happyShift action_74
action_22 (44) = happyShift action_75
action_22 (45) = happyShift action_76
action_22 (46) = happyShift action_77
action_22 (47) = happyShift action_78
action_22 (48) = happyShift action_79
action_22 (49) = happyShift action_80
action_22 (50) = happyShift action_81
action_22 (51) = happyShift action_82
action_22 (52) = happyShift action_83
action_22 (53) = happyShift action_84
action_22 (54) = happyShift action_85
action_22 (56) = happyShift action_38
action_22 (58) = happyShift action_39
action_22 (60) = happyShift action_40
action_22 (9) = happyGoto action_67
action_22 (12) = happyGoto action_68
action_22 _ = happyReduce_60

action_23 (67) = happyShift action_66
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (15) = happyShift action_24
action_24 (16) = happyShift action_25
action_24 (17) = happyShift action_26
action_24 (18) = happyShift action_27
action_24 (19) = happyShift action_28
action_24 (20) = happyShift action_29
action_24 (21) = happyShift action_30
action_24 (22) = happyShift action_31
action_24 (23) = happyShift action_32
action_24 (24) = happyShift action_33
action_24 (25) = happyShift action_34
action_24 (26) = happyShift action_35
action_24 (27) = happyShift action_36
action_24 (29) = happyShift action_37
action_24 (56) = happyShift action_38
action_24 (58) = happyShift action_39
action_24 (60) = happyShift action_40
action_24 (9) = happyGoto action_65
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (15) = happyShift action_24
action_25 (16) = happyShift action_25
action_25 (17) = happyShift action_26
action_25 (18) = happyShift action_27
action_25 (19) = happyShift action_28
action_25 (20) = happyShift action_29
action_25 (21) = happyShift action_30
action_25 (22) = happyShift action_31
action_25 (23) = happyShift action_32
action_25 (24) = happyShift action_33
action_25 (25) = happyShift action_34
action_25 (26) = happyShift action_35
action_25 (27) = happyShift action_36
action_25 (29) = happyShift action_37
action_25 (56) = happyShift action_38
action_25 (58) = happyShift action_39
action_25 (60) = happyShift action_40
action_25 (9) = happyGoto action_64
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (15) = happyShift action_24
action_26 (16) = happyShift action_25
action_26 (17) = happyShift action_26
action_26 (18) = happyShift action_27
action_26 (19) = happyShift action_28
action_26 (20) = happyShift action_29
action_26 (21) = happyShift action_30
action_26 (22) = happyShift action_31
action_26 (23) = happyShift action_32
action_26 (24) = happyShift action_33
action_26 (25) = happyShift action_34
action_26 (26) = happyShift action_35
action_26 (27) = happyShift action_36
action_26 (29) = happyShift action_37
action_26 (56) = happyShift action_38
action_26 (58) = happyShift action_39
action_26 (60) = happyShift action_40
action_26 (9) = happyGoto action_63
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (15) = happyShift action_24
action_27 (16) = happyShift action_25
action_27 (17) = happyShift action_26
action_27 (18) = happyShift action_27
action_27 (19) = happyShift action_28
action_27 (20) = happyShift action_29
action_27 (21) = happyShift action_30
action_27 (22) = happyShift action_31
action_27 (23) = happyShift action_32
action_27 (24) = happyShift action_33
action_27 (25) = happyShift action_34
action_27 (26) = happyShift action_35
action_27 (27) = happyShift action_36
action_27 (29) = happyShift action_37
action_27 (56) = happyShift action_38
action_27 (58) = happyShift action_39
action_27 (60) = happyShift action_40
action_27 (9) = happyGoto action_62
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (15) = happyShift action_24
action_28 (16) = happyShift action_25
action_28 (17) = happyShift action_26
action_28 (18) = happyShift action_27
action_28 (19) = happyShift action_28
action_28 (20) = happyShift action_29
action_28 (21) = happyShift action_30
action_28 (22) = happyShift action_31
action_28 (23) = happyShift action_32
action_28 (24) = happyShift action_33
action_28 (25) = happyShift action_34
action_28 (26) = happyShift action_35
action_28 (27) = happyShift action_36
action_28 (29) = happyShift action_37
action_28 (56) = happyShift action_38
action_28 (58) = happyShift action_39
action_28 (60) = happyShift action_40
action_28 (9) = happyGoto action_61
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (15) = happyShift action_24
action_29 (16) = happyShift action_25
action_29 (17) = happyShift action_26
action_29 (18) = happyShift action_27
action_29 (19) = happyShift action_28
action_29 (20) = happyShift action_29
action_29 (21) = happyShift action_30
action_29 (22) = happyShift action_31
action_29 (23) = happyShift action_32
action_29 (24) = happyShift action_33
action_29 (25) = happyShift action_34
action_29 (26) = happyShift action_35
action_29 (27) = happyShift action_36
action_29 (29) = happyShift action_37
action_29 (56) = happyShift action_38
action_29 (58) = happyShift action_39
action_29 (60) = happyShift action_40
action_29 (9) = happyGoto action_60
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (56) = happyShift action_59
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_21

action_32 _ = happyReduce_24

action_33 _ = happyReduce_17

action_34 _ = happyReduce_18

action_35 _ = happyReduce_19

action_36 _ = happyReduce_20

action_37 (15) = happyShift action_24
action_37 (16) = happyShift action_25
action_37 (17) = happyShift action_26
action_37 (18) = happyShift action_27
action_37 (19) = happyShift action_28
action_37 (20) = happyShift action_29
action_37 (21) = happyShift action_30
action_37 (22) = happyShift action_31
action_37 (23) = happyShift action_32
action_37 (24) = happyShift action_33
action_37 (25) = happyShift action_34
action_37 (26) = happyShift action_35
action_37 (27) = happyShift action_36
action_37 (29) = happyShift action_37
action_37 (56) = happyShift action_38
action_37 (58) = happyShift action_39
action_37 (60) = happyShift action_40
action_37 (9) = happyGoto action_58
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (15) = happyShift action_24
action_38 (16) = happyShift action_25
action_38 (17) = happyShift action_26
action_38 (18) = happyShift action_27
action_38 (19) = happyShift action_28
action_38 (20) = happyShift action_29
action_38 (21) = happyShift action_30
action_38 (22) = happyShift action_31
action_38 (23) = happyShift action_32
action_38 (24) = happyShift action_33
action_38 (25) = happyShift action_34
action_38 (26) = happyShift action_35
action_38 (27) = happyShift action_36
action_38 (29) = happyShift action_37
action_38 (56) = happyShift action_38
action_38 (58) = happyShift action_39
action_38 (60) = happyShift action_40
action_38 (9) = happyGoto action_57
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (15) = happyShift action_24
action_39 (16) = happyShift action_25
action_39 (17) = happyShift action_26
action_39 (18) = happyShift action_27
action_39 (19) = happyShift action_28
action_39 (20) = happyShift action_29
action_39 (21) = happyShift action_30
action_39 (22) = happyShift action_31
action_39 (23) = happyShift action_32
action_39 (24) = happyShift action_33
action_39 (25) = happyShift action_34
action_39 (26) = happyShift action_35
action_39 (27) = happyShift action_36
action_39 (29) = happyShift action_37
action_39 (56) = happyShift action_38
action_39 (58) = happyShift action_39
action_39 (60) = happyShift action_40
action_39 (9) = happyGoto action_55
action_39 (11) = happyGoto action_56
action_39 _ = happyReduce_57

action_40 (15) = happyShift action_24
action_40 (16) = happyShift action_25
action_40 (17) = happyShift action_26
action_40 (18) = happyShift action_27
action_40 (19) = happyShift action_28
action_40 (20) = happyShift action_29
action_40 (21) = happyShift action_30
action_40 (22) = happyShift action_31
action_40 (23) = happyShift action_32
action_40 (24) = happyShift action_33
action_40 (25) = happyShift action_34
action_40 (26) = happyShift action_35
action_40 (27) = happyShift action_36
action_40 (29) = happyShift action_37
action_40 (56) = happyShift action_38
action_40 (58) = happyShift action_39
action_40 (60) = happyShift action_40
action_40 (9) = happyGoto action_54
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (15) = happyShift action_24
action_41 (16) = happyShift action_25
action_41 (17) = happyShift action_26
action_41 (18) = happyShift action_27
action_41 (19) = happyShift action_28
action_41 (20) = happyShift action_29
action_41 (21) = happyShift action_30
action_41 (22) = happyShift action_31
action_41 (23) = happyShift action_32
action_41 (24) = happyShift action_33
action_41 (25) = happyShift action_34
action_41 (26) = happyShift action_35
action_41 (27) = happyShift action_36
action_41 (29) = happyShift action_37
action_41 (56) = happyShift action_38
action_41 (58) = happyShift action_39
action_41 (60) = happyShift action_40
action_41 (9) = happyGoto action_53
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (15) = happyShift action_24
action_42 (16) = happyShift action_25
action_42 (17) = happyShift action_26
action_42 (18) = happyShift action_27
action_42 (19) = happyShift action_28
action_42 (20) = happyShift action_29
action_42 (21) = happyShift action_30
action_42 (22) = happyShift action_31
action_42 (23) = happyShift action_32
action_42 (24) = happyShift action_33
action_42 (25) = happyShift action_34
action_42 (26) = happyShift action_35
action_42 (27) = happyShift action_36
action_42 (29) = happyShift action_37
action_42 (56) = happyShift action_38
action_42 (58) = happyShift action_39
action_42 (60) = happyShift action_40
action_42 (9) = happyGoto action_52
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (15) = happyShift action_24
action_43 (16) = happyShift action_25
action_43 (17) = happyShift action_26
action_43 (18) = happyShift action_27
action_43 (19) = happyShift action_28
action_43 (20) = happyShift action_29
action_43 (21) = happyShift action_30
action_43 (22) = happyShift action_31
action_43 (23) = happyShift action_32
action_43 (24) = happyShift action_33
action_43 (25) = happyShift action_34
action_43 (26) = happyShift action_35
action_43 (27) = happyShift action_36
action_43 (29) = happyShift action_37
action_43 (56) = happyShift action_38
action_43 (58) = happyShift action_39
action_43 (60) = happyShift action_40
action_43 (9) = happyGoto action_51
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (15) = happyShift action_24
action_44 (16) = happyShift action_25
action_44 (17) = happyShift action_26
action_44 (18) = happyShift action_27
action_44 (19) = happyShift action_28
action_44 (20) = happyShift action_29
action_44 (21) = happyShift action_30
action_44 (22) = happyShift action_31
action_44 (23) = happyShift action_32
action_44 (24) = happyShift action_33
action_44 (25) = happyShift action_34
action_44 (26) = happyShift action_35
action_44 (27) = happyShift action_36
action_44 (29) = happyShift action_37
action_44 (56) = happyShift action_38
action_44 (58) = happyShift action_39
action_44 (60) = happyShift action_40
action_44 (9) = happyGoto action_50
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (15) = happyShift action_24
action_45 (16) = happyShift action_25
action_45 (17) = happyShift action_26
action_45 (18) = happyShift action_27
action_45 (19) = happyShift action_28
action_45 (20) = happyShift action_29
action_45 (21) = happyShift action_30
action_45 (22) = happyShift action_31
action_45 (23) = happyShift action_32
action_45 (24) = happyShift action_33
action_45 (25) = happyShift action_34
action_45 (26) = happyShift action_35
action_45 (27) = happyShift action_36
action_45 (29) = happyShift action_37
action_45 (56) = happyShift action_38
action_45 (58) = happyShift action_39
action_45 (60) = happyShift action_40
action_45 (9) = happyGoto action_49
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_10

action_47 _ = happyReduce_7

action_48 _ = happyReduce_6

action_49 (15) = happyShift action_24
action_49 (16) = happyShift action_25
action_49 (17) = happyShift action_26
action_49 (18) = happyShift action_27
action_49 (19) = happyShift action_28
action_49 (20) = happyShift action_29
action_49 (21) = happyShift action_30
action_49 (22) = happyShift action_31
action_49 (23) = happyShift action_32
action_49 (24) = happyShift action_33
action_49 (25) = happyShift action_34
action_49 (26) = happyShift action_35
action_49 (27) = happyShift action_36
action_49 (29) = happyShift action_37
action_49 (32) = happyShift action_69
action_49 (33) = happyShift action_70
action_49 (34) = happyShift action_71
action_49 (35) = happyShift action_72
action_49 (36) = happyShift action_73
action_49 (41) = happyShift action_74
action_49 (44) = happyShift action_75
action_49 (45) = happyShift action_76
action_49 (46) = happyShift action_77
action_49 (47) = happyShift action_78
action_49 (48) = happyShift action_79
action_49 (49) = happyShift action_80
action_49 (50) = happyShift action_81
action_49 (51) = happyShift action_82
action_49 (52) = happyShift action_83
action_49 (53) = happyShift action_84
action_49 (54) = happyShift action_85
action_49 (56) = happyShift action_38
action_49 (58) = happyShift action_39
action_49 (60) = happyShift action_40
action_49 (9) = happyGoto action_107
action_49 _ = happyReduce_11

action_50 (15) = happyShift action_24
action_50 (16) = happyShift action_25
action_50 (17) = happyShift action_26
action_50 (18) = happyShift action_27
action_50 (19) = happyShift action_28
action_50 (20) = happyShift action_29
action_50 (21) = happyShift action_30
action_50 (22) = happyShift action_31
action_50 (23) = happyShift action_32
action_50 (24) = happyShift action_33
action_50 (25) = happyShift action_34
action_50 (26) = happyShift action_35
action_50 (27) = happyShift action_36
action_50 (29) = happyShift action_37
action_50 (32) = happyShift action_69
action_50 (33) = happyShift action_70
action_50 (34) = happyShift action_71
action_50 (35) = happyShift action_72
action_50 (36) = happyShift action_73
action_50 (41) = happyShift action_74
action_50 (44) = happyShift action_75
action_50 (45) = happyShift action_76
action_50 (46) = happyShift action_77
action_50 (47) = happyShift action_78
action_50 (48) = happyShift action_79
action_50 (49) = happyShift action_80
action_50 (50) = happyShift action_81
action_50 (51) = happyShift action_82
action_50 (52) = happyShift action_83
action_50 (53) = happyShift action_84
action_50 (54) = happyShift action_85
action_50 (56) = happyShift action_38
action_50 (58) = happyShift action_39
action_50 (60) = happyShift action_40
action_50 (9) = happyGoto action_107
action_50 _ = happyReduce_15

action_51 (15) = happyShift action_24
action_51 (16) = happyShift action_25
action_51 (17) = happyShift action_26
action_51 (18) = happyShift action_27
action_51 (19) = happyShift action_28
action_51 (20) = happyShift action_29
action_51 (21) = happyShift action_30
action_51 (22) = happyShift action_31
action_51 (23) = happyShift action_32
action_51 (24) = happyShift action_33
action_51 (25) = happyShift action_34
action_51 (26) = happyShift action_35
action_51 (27) = happyShift action_36
action_51 (29) = happyShift action_37
action_51 (32) = happyShift action_69
action_51 (33) = happyShift action_70
action_51 (34) = happyShift action_71
action_51 (35) = happyShift action_72
action_51 (36) = happyShift action_73
action_51 (41) = happyShift action_74
action_51 (44) = happyShift action_75
action_51 (45) = happyShift action_76
action_51 (46) = happyShift action_77
action_51 (47) = happyShift action_78
action_51 (48) = happyShift action_79
action_51 (49) = happyShift action_80
action_51 (50) = happyShift action_81
action_51 (51) = happyShift action_82
action_51 (52) = happyShift action_83
action_51 (53) = happyShift action_84
action_51 (54) = happyShift action_85
action_51 (56) = happyShift action_38
action_51 (58) = happyShift action_39
action_51 (60) = happyShift action_40
action_51 (9) = happyGoto action_107
action_51 _ = happyReduce_14

action_52 (15) = happyShift action_24
action_52 (16) = happyShift action_25
action_52 (17) = happyShift action_26
action_52 (18) = happyShift action_27
action_52 (19) = happyShift action_28
action_52 (20) = happyShift action_29
action_52 (21) = happyShift action_30
action_52 (22) = happyShift action_31
action_52 (23) = happyShift action_32
action_52 (24) = happyShift action_33
action_52 (25) = happyShift action_34
action_52 (26) = happyShift action_35
action_52 (27) = happyShift action_36
action_52 (29) = happyShift action_37
action_52 (32) = happyShift action_69
action_52 (33) = happyShift action_70
action_52 (34) = happyShift action_71
action_52 (35) = happyShift action_72
action_52 (36) = happyShift action_73
action_52 (41) = happyShift action_74
action_52 (44) = happyShift action_75
action_52 (45) = happyShift action_76
action_52 (46) = happyShift action_77
action_52 (47) = happyShift action_78
action_52 (48) = happyShift action_79
action_52 (49) = happyShift action_80
action_52 (50) = happyShift action_81
action_52 (51) = happyShift action_82
action_52 (52) = happyShift action_83
action_52 (53) = happyShift action_84
action_52 (54) = happyShift action_85
action_52 (56) = happyShift action_38
action_52 (58) = happyShift action_39
action_52 (60) = happyShift action_40
action_52 (9) = happyGoto action_107
action_52 _ = happyReduce_13

action_53 (15) = happyShift action_24
action_53 (16) = happyShift action_25
action_53 (17) = happyShift action_26
action_53 (18) = happyShift action_27
action_53 (19) = happyShift action_28
action_53 (20) = happyShift action_29
action_53 (21) = happyShift action_30
action_53 (22) = happyShift action_31
action_53 (23) = happyShift action_32
action_53 (24) = happyShift action_33
action_53 (25) = happyShift action_34
action_53 (26) = happyShift action_35
action_53 (27) = happyShift action_36
action_53 (29) = happyShift action_37
action_53 (32) = happyShift action_69
action_53 (33) = happyShift action_70
action_53 (34) = happyShift action_71
action_53 (35) = happyShift action_72
action_53 (36) = happyShift action_73
action_53 (41) = happyShift action_74
action_53 (44) = happyShift action_75
action_53 (45) = happyShift action_76
action_53 (46) = happyShift action_77
action_53 (47) = happyShift action_78
action_53 (48) = happyShift action_79
action_53 (49) = happyShift action_80
action_53 (50) = happyShift action_81
action_53 (51) = happyShift action_82
action_53 (52) = happyShift action_83
action_53 (53) = happyShift action_84
action_53 (54) = happyShift action_85
action_53 (56) = happyShift action_38
action_53 (58) = happyShift action_39
action_53 (60) = happyShift action_40
action_53 (9) = happyGoto action_107
action_53 _ = happyReduce_12

action_54 (15) = happyShift action_24
action_54 (16) = happyShift action_25
action_54 (17) = happyShift action_26
action_54 (18) = happyShift action_27
action_54 (19) = happyShift action_28
action_54 (20) = happyShift action_29
action_54 (21) = happyShift action_30
action_54 (22) = happyShift action_31
action_54 (23) = happyShift action_32
action_54 (24) = happyShift action_33
action_54 (25) = happyShift action_34
action_54 (26) = happyShift action_35
action_54 (27) = happyShift action_36
action_54 (29) = happyShift action_37
action_54 (32) = happyShift action_69
action_54 (33) = happyShift action_70
action_54 (34) = happyShift action_71
action_54 (35) = happyShift action_72
action_54 (36) = happyShift action_73
action_54 (41) = happyShift action_74
action_54 (44) = happyShift action_75
action_54 (45) = happyShift action_76
action_54 (46) = happyShift action_77
action_54 (47) = happyShift action_78
action_54 (48) = happyShift action_79
action_54 (49) = happyShift action_80
action_54 (50) = happyShift action_81
action_54 (51) = happyShift action_82
action_54 (52) = happyShift action_83
action_54 (53) = happyShift action_84
action_54 (54) = happyShift action_85
action_54 (56) = happyShift action_38
action_54 (58) = happyShift action_39
action_54 (60) = happyShift action_40
action_54 (62) = happyShift action_114
action_54 (9) = happyGoto action_107
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (15) = happyShift action_24
action_55 (16) = happyShift action_25
action_55 (17) = happyShift action_26
action_55 (18) = happyShift action_27
action_55 (19) = happyShift action_28
action_55 (20) = happyShift action_29
action_55 (21) = happyShift action_30
action_55 (22) = happyShift action_31
action_55 (23) = happyShift action_32
action_55 (24) = happyShift action_33
action_55 (25) = happyShift action_34
action_55 (26) = happyShift action_35
action_55 (27) = happyShift action_36
action_55 (29) = happyShift action_37
action_55 (32) = happyShift action_69
action_55 (33) = happyShift action_70
action_55 (34) = happyShift action_71
action_55 (35) = happyShift action_72
action_55 (36) = happyShift action_73
action_55 (41) = happyShift action_74
action_55 (44) = happyShift action_75
action_55 (45) = happyShift action_76
action_55 (46) = happyShift action_77
action_55 (47) = happyShift action_78
action_55 (48) = happyShift action_79
action_55 (49) = happyShift action_80
action_55 (50) = happyShift action_81
action_55 (51) = happyShift action_82
action_55 (52) = happyShift action_83
action_55 (53) = happyShift action_84
action_55 (54) = happyShift action_85
action_55 (56) = happyShift action_38
action_55 (58) = happyShift action_39
action_55 (60) = happyShift action_40
action_55 (63) = happyShift action_113
action_55 (9) = happyGoto action_107
action_55 _ = happyReduce_59

action_56 (59) = happyShift action_112
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (15) = happyShift action_24
action_57 (16) = happyShift action_25
action_57 (17) = happyShift action_26
action_57 (18) = happyShift action_27
action_57 (19) = happyShift action_28
action_57 (20) = happyShift action_29
action_57 (21) = happyShift action_30
action_57 (22) = happyShift action_31
action_57 (23) = happyShift action_32
action_57 (24) = happyShift action_33
action_57 (25) = happyShift action_34
action_57 (26) = happyShift action_35
action_57 (27) = happyShift action_36
action_57 (29) = happyShift action_37
action_57 (32) = happyShift action_69
action_57 (33) = happyShift action_70
action_57 (34) = happyShift action_71
action_57 (35) = happyShift action_72
action_57 (36) = happyShift action_73
action_57 (41) = happyShift action_74
action_57 (44) = happyShift action_75
action_57 (45) = happyShift action_76
action_57 (46) = happyShift action_77
action_57 (47) = happyShift action_78
action_57 (48) = happyShift action_79
action_57 (49) = happyShift action_80
action_57 (50) = happyShift action_81
action_57 (51) = happyShift action_82
action_57 (52) = happyShift action_83
action_57 (53) = happyShift action_84
action_57 (54) = happyShift action_85
action_57 (56) = happyShift action_38
action_57 (57) = happyShift action_110
action_57 (58) = happyShift action_39
action_57 (60) = happyShift action_40
action_57 (63) = happyShift action_111
action_57 (9) = happyGoto action_107
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (15) = happyShift action_24
action_58 (16) = happyShift action_25
action_58 (17) = happyShift action_26
action_58 (18) = happyShift action_27
action_58 (19) = happyShift action_28
action_58 (20) = happyShift action_29
action_58 (21) = happyShift action_30
action_58 (22) = happyShift action_31
action_58 (23) = happyShift action_32
action_58 (24) = happyShift action_33
action_58 (25) = happyShift action_34
action_58 (26) = happyShift action_35
action_58 (27) = happyShift action_36
action_58 (29) = happyShift action_37
action_58 (30) = happyShift action_109
action_58 (32) = happyShift action_69
action_58 (33) = happyShift action_70
action_58 (34) = happyShift action_71
action_58 (35) = happyShift action_72
action_58 (36) = happyShift action_73
action_58 (41) = happyShift action_74
action_58 (44) = happyShift action_75
action_58 (45) = happyShift action_76
action_58 (46) = happyShift action_77
action_58 (47) = happyShift action_78
action_58 (48) = happyShift action_79
action_58 (49) = happyShift action_80
action_58 (50) = happyShift action_81
action_58 (51) = happyShift action_82
action_58 (52) = happyShift action_83
action_58 (53) = happyShift action_84
action_58 (54) = happyShift action_85
action_58 (56) = happyShift action_38
action_58 (58) = happyShift action_39
action_58 (60) = happyShift action_40
action_58 (9) = happyGoto action_107
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (22) = happyShift action_108
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (15) = happyShift action_24
action_60 (16) = happyShift action_25
action_60 (17) = happyShift action_26
action_60 (18) = happyShift action_27
action_60 (19) = happyShift action_28
action_60 (20) = happyShift action_29
action_60 (21) = happyShift action_30
action_60 (22) = happyShift action_31
action_60 (23) = happyShift action_32
action_60 (24) = happyShift action_33
action_60 (25) = happyShift action_34
action_60 (26) = happyShift action_35
action_60 (27) = happyShift action_36
action_60 (29) = happyShift action_37
action_60 (32) = happyShift action_69
action_60 (33) = happyShift action_70
action_60 (34) = happyShift action_71
action_60 (35) = happyShift action_72
action_60 (36) = happyShift action_73
action_60 (41) = happyShift action_74
action_60 (44) = happyShift action_75
action_60 (45) = happyShift action_76
action_60 (46) = happyShift action_77
action_60 (47) = happyShift action_78
action_60 (48) = happyShift action_79
action_60 (49) = happyShift action_80
action_60 (50) = happyShift action_81
action_60 (51) = happyShift action_82
action_60 (52) = happyShift action_83
action_60 (53) = happyShift action_84
action_60 (54) = happyShift action_85
action_60 (56) = happyShift action_38
action_60 (58) = happyShift action_39
action_60 (60) = happyShift action_40
action_60 (9) = happyGoto action_107
action_60 _ = happyReduce_51

action_61 (15) = happyShift action_24
action_61 (16) = happyShift action_25
action_61 (17) = happyShift action_26
action_61 (18) = happyShift action_27
action_61 (19) = happyShift action_28
action_61 (20) = happyShift action_29
action_61 (21) = happyShift action_30
action_61 (22) = happyShift action_31
action_61 (23) = happyShift action_32
action_61 (24) = happyShift action_33
action_61 (25) = happyShift action_34
action_61 (26) = happyShift action_35
action_61 (27) = happyShift action_36
action_61 (29) = happyShift action_37
action_61 (32) = happyShift action_69
action_61 (33) = happyShift action_70
action_61 (34) = happyShift action_71
action_61 (35) = happyShift action_72
action_61 (36) = happyShift action_73
action_61 (41) = happyShift action_74
action_61 (44) = happyShift action_75
action_61 (45) = happyShift action_76
action_61 (46) = happyShift action_77
action_61 (47) = happyShift action_78
action_61 (48) = happyShift action_79
action_61 (49) = happyShift action_80
action_61 (50) = happyShift action_81
action_61 (51) = happyShift action_82
action_61 (52) = happyShift action_83
action_61 (53) = happyShift action_84
action_61 (54) = happyShift action_85
action_61 (56) = happyShift action_38
action_61 (58) = happyShift action_39
action_61 (60) = happyShift action_40
action_61 (9) = happyGoto action_107
action_61 _ = happyReduce_50

action_62 (15) = happyShift action_24
action_62 (16) = happyShift action_25
action_62 (17) = happyShift action_26
action_62 (18) = happyShift action_27
action_62 (19) = happyShift action_28
action_62 (20) = happyShift action_29
action_62 (21) = happyShift action_30
action_62 (22) = happyShift action_31
action_62 (23) = happyShift action_32
action_62 (24) = happyShift action_33
action_62 (25) = happyShift action_34
action_62 (26) = happyShift action_35
action_62 (27) = happyShift action_36
action_62 (29) = happyShift action_37
action_62 (32) = happyShift action_69
action_62 (33) = happyShift action_70
action_62 (34) = happyShift action_71
action_62 (35) = happyShift action_72
action_62 (36) = happyShift action_73
action_62 (41) = happyShift action_74
action_62 (44) = happyShift action_75
action_62 (45) = happyShift action_76
action_62 (46) = happyShift action_77
action_62 (47) = happyShift action_78
action_62 (48) = happyShift action_79
action_62 (49) = happyShift action_80
action_62 (50) = happyShift action_81
action_62 (51) = happyShift action_82
action_62 (52) = happyShift action_83
action_62 (53) = happyShift action_84
action_62 (54) = happyShift action_85
action_62 (56) = happyShift action_38
action_62 (58) = happyShift action_39
action_62 (60) = happyShift action_40
action_62 (9) = happyGoto action_107
action_62 _ = happyReduce_49

action_63 (15) = happyShift action_24
action_63 (16) = happyShift action_25
action_63 (17) = happyShift action_26
action_63 (18) = happyShift action_27
action_63 (19) = happyShift action_28
action_63 (20) = happyShift action_29
action_63 (21) = happyShift action_30
action_63 (22) = happyShift action_31
action_63 (23) = happyShift action_32
action_63 (24) = happyShift action_33
action_63 (25) = happyShift action_34
action_63 (26) = happyShift action_35
action_63 (27) = happyShift action_36
action_63 (29) = happyShift action_37
action_63 (32) = happyShift action_69
action_63 (33) = happyShift action_70
action_63 (34) = happyShift action_71
action_63 (35) = happyShift action_72
action_63 (36) = happyShift action_73
action_63 (41) = happyShift action_74
action_63 (44) = happyShift action_75
action_63 (45) = happyShift action_76
action_63 (46) = happyShift action_77
action_63 (47) = happyShift action_78
action_63 (48) = happyShift action_79
action_63 (49) = happyShift action_80
action_63 (50) = happyShift action_81
action_63 (51) = happyShift action_82
action_63 (52) = happyShift action_83
action_63 (53) = happyShift action_84
action_63 (54) = happyShift action_85
action_63 (56) = happyShift action_38
action_63 (58) = happyShift action_39
action_63 (60) = happyShift action_40
action_63 (9) = happyGoto action_107
action_63 _ = happyReduce_48

action_64 (15) = happyShift action_24
action_64 (16) = happyShift action_25
action_64 (17) = happyShift action_26
action_64 (18) = happyShift action_27
action_64 (19) = happyShift action_28
action_64 (20) = happyShift action_29
action_64 (21) = happyShift action_30
action_64 (22) = happyShift action_31
action_64 (23) = happyShift action_32
action_64 (24) = happyShift action_33
action_64 (25) = happyShift action_34
action_64 (26) = happyShift action_35
action_64 (27) = happyShift action_36
action_64 (29) = happyShift action_37
action_64 (32) = happyShift action_69
action_64 (33) = happyShift action_70
action_64 (34) = happyShift action_71
action_64 (35) = happyShift action_72
action_64 (36) = happyShift action_73
action_64 (41) = happyShift action_74
action_64 (44) = happyShift action_75
action_64 (45) = happyShift action_76
action_64 (46) = happyShift action_77
action_64 (47) = happyShift action_78
action_64 (48) = happyShift action_79
action_64 (49) = happyShift action_80
action_64 (50) = happyShift action_81
action_64 (51) = happyShift action_82
action_64 (52) = happyShift action_83
action_64 (53) = happyShift action_84
action_64 (54) = happyShift action_85
action_64 (56) = happyShift action_38
action_64 (58) = happyShift action_39
action_64 (60) = happyShift action_40
action_64 (9) = happyGoto action_107
action_64 _ = happyReduce_47

action_65 (15) = happyShift action_24
action_65 (16) = happyShift action_25
action_65 (17) = happyShift action_26
action_65 (18) = happyShift action_27
action_65 (19) = happyShift action_28
action_65 (20) = happyShift action_29
action_65 (21) = happyShift action_30
action_65 (22) = happyShift action_31
action_65 (23) = happyShift action_32
action_65 (24) = happyShift action_33
action_65 (25) = happyShift action_34
action_65 (26) = happyShift action_35
action_65 (27) = happyShift action_36
action_65 (29) = happyShift action_37
action_65 (32) = happyShift action_69
action_65 (33) = happyShift action_70
action_65 (34) = happyShift action_71
action_65 (35) = happyShift action_72
action_65 (36) = happyShift action_73
action_65 (41) = happyShift action_74
action_65 (44) = happyShift action_75
action_65 (45) = happyShift action_76
action_65 (46) = happyShift action_77
action_65 (47) = happyShift action_78
action_65 (48) = happyShift action_79
action_65 (49) = happyShift action_80
action_65 (50) = happyShift action_81
action_65 (51) = happyShift action_82
action_65 (52) = happyShift action_83
action_65 (53) = happyShift action_84
action_65 (54) = happyShift action_85
action_65 (56) = happyShift action_38
action_65 (58) = happyShift action_39
action_65 (60) = happyShift action_40
action_65 (9) = happyGoto action_106
action_65 _ = happyFail (happyExpListPerState 65)

action_66 _ = happyReduce_9

action_67 (15) = happyShift action_24
action_67 (16) = happyShift action_25
action_67 (17) = happyShift action_26
action_67 (18) = happyShift action_27
action_67 (19) = happyShift action_28
action_67 (20) = happyShift action_29
action_67 (67) = happyReduce_60
action_67 (9) = happyGoto action_67
action_67 (12) = happyGoto action_68
action_67 _ = happyReduce_16

action_68 _ = happyReduce_61

action_69 (15) = happyShift action_24
action_69 (16) = happyShift action_25
action_69 (17) = happyShift action_26
action_69 (18) = happyShift action_27
action_69 (19) = happyShift action_28
action_69 (20) = happyShift action_29
action_69 (21) = happyShift action_30
action_69 (22) = happyShift action_31
action_69 (23) = happyShift action_32
action_69 (24) = happyShift action_33
action_69 (25) = happyShift action_34
action_69 (26) = happyShift action_35
action_69 (27) = happyShift action_36
action_69 (29) = happyShift action_37
action_69 (56) = happyShift action_38
action_69 (58) = happyShift action_39
action_69 (60) = happyShift action_40
action_69 (9) = happyGoto action_105
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (15) = happyShift action_24
action_70 (16) = happyShift action_25
action_70 (17) = happyShift action_26
action_70 (18) = happyShift action_27
action_70 (19) = happyShift action_28
action_70 (20) = happyShift action_29
action_70 (21) = happyShift action_30
action_70 (22) = happyShift action_31
action_70 (23) = happyShift action_32
action_70 (24) = happyShift action_33
action_70 (25) = happyShift action_34
action_70 (26) = happyShift action_35
action_70 (27) = happyShift action_36
action_70 (29) = happyShift action_37
action_70 (56) = happyShift action_38
action_70 (58) = happyShift action_39
action_70 (60) = happyShift action_40
action_70 (9) = happyGoto action_104
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (15) = happyShift action_24
action_71 (16) = happyShift action_25
action_71 (17) = happyShift action_26
action_71 (18) = happyShift action_27
action_71 (19) = happyShift action_28
action_71 (20) = happyShift action_29
action_71 (21) = happyShift action_30
action_71 (22) = happyShift action_31
action_71 (23) = happyShift action_32
action_71 (24) = happyShift action_33
action_71 (25) = happyShift action_34
action_71 (26) = happyShift action_35
action_71 (27) = happyShift action_36
action_71 (29) = happyShift action_37
action_71 (56) = happyShift action_38
action_71 (58) = happyShift action_39
action_71 (60) = happyShift action_40
action_71 (9) = happyGoto action_103
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (15) = happyShift action_24
action_72 (16) = happyShift action_25
action_72 (17) = happyShift action_26
action_72 (18) = happyShift action_27
action_72 (19) = happyShift action_28
action_72 (20) = happyShift action_29
action_72 (21) = happyShift action_30
action_72 (22) = happyShift action_31
action_72 (23) = happyShift action_32
action_72 (24) = happyShift action_33
action_72 (25) = happyShift action_34
action_72 (26) = happyShift action_35
action_72 (27) = happyShift action_36
action_72 (29) = happyShift action_37
action_72 (56) = happyShift action_38
action_72 (58) = happyShift action_39
action_72 (60) = happyShift action_40
action_72 (9) = happyGoto action_102
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (15) = happyShift action_24
action_73 (16) = happyShift action_25
action_73 (17) = happyShift action_26
action_73 (18) = happyShift action_27
action_73 (19) = happyShift action_28
action_73 (20) = happyShift action_29
action_73 (21) = happyShift action_30
action_73 (22) = happyShift action_31
action_73 (23) = happyShift action_32
action_73 (24) = happyShift action_33
action_73 (25) = happyShift action_34
action_73 (26) = happyShift action_35
action_73 (27) = happyShift action_36
action_73 (29) = happyShift action_37
action_73 (56) = happyShift action_38
action_73 (58) = happyShift action_39
action_73 (60) = happyShift action_40
action_73 (9) = happyGoto action_101
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (15) = happyShift action_24
action_74 (16) = happyShift action_25
action_74 (17) = happyShift action_26
action_74 (18) = happyShift action_27
action_74 (19) = happyShift action_28
action_74 (20) = happyShift action_29
action_74 (21) = happyShift action_30
action_74 (22) = happyShift action_31
action_74 (23) = happyShift action_32
action_74 (24) = happyShift action_33
action_74 (25) = happyShift action_34
action_74 (26) = happyShift action_35
action_74 (27) = happyShift action_36
action_74 (29) = happyShift action_37
action_74 (56) = happyShift action_38
action_74 (58) = happyShift action_39
action_74 (60) = happyShift action_40
action_74 (9) = happyGoto action_100
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (15) = happyShift action_24
action_75 (16) = happyShift action_25
action_75 (17) = happyShift action_26
action_75 (18) = happyShift action_27
action_75 (19) = happyShift action_28
action_75 (20) = happyShift action_29
action_75 (21) = happyShift action_30
action_75 (22) = happyShift action_31
action_75 (23) = happyShift action_32
action_75 (24) = happyShift action_33
action_75 (25) = happyShift action_34
action_75 (26) = happyShift action_35
action_75 (27) = happyShift action_36
action_75 (29) = happyShift action_37
action_75 (56) = happyShift action_38
action_75 (58) = happyShift action_39
action_75 (60) = happyShift action_40
action_75 (9) = happyGoto action_99
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (15) = happyShift action_24
action_76 (16) = happyShift action_25
action_76 (17) = happyShift action_26
action_76 (18) = happyShift action_27
action_76 (19) = happyShift action_28
action_76 (20) = happyShift action_29
action_76 (21) = happyShift action_30
action_76 (22) = happyShift action_31
action_76 (23) = happyShift action_32
action_76 (24) = happyShift action_33
action_76 (25) = happyShift action_34
action_76 (26) = happyShift action_35
action_76 (27) = happyShift action_36
action_76 (29) = happyShift action_37
action_76 (56) = happyShift action_38
action_76 (58) = happyShift action_39
action_76 (60) = happyShift action_40
action_76 (9) = happyGoto action_98
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (15) = happyShift action_24
action_77 (16) = happyShift action_25
action_77 (17) = happyShift action_26
action_77 (18) = happyShift action_27
action_77 (19) = happyShift action_28
action_77 (20) = happyShift action_29
action_77 (21) = happyShift action_30
action_77 (22) = happyShift action_31
action_77 (23) = happyShift action_32
action_77 (24) = happyShift action_33
action_77 (25) = happyShift action_34
action_77 (26) = happyShift action_35
action_77 (27) = happyShift action_36
action_77 (29) = happyShift action_37
action_77 (56) = happyShift action_38
action_77 (58) = happyShift action_39
action_77 (60) = happyShift action_40
action_77 (9) = happyGoto action_97
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (15) = happyShift action_24
action_78 (16) = happyShift action_25
action_78 (17) = happyShift action_26
action_78 (18) = happyShift action_27
action_78 (19) = happyShift action_28
action_78 (20) = happyShift action_29
action_78 (21) = happyShift action_30
action_78 (22) = happyShift action_31
action_78 (23) = happyShift action_32
action_78 (24) = happyShift action_33
action_78 (25) = happyShift action_34
action_78 (26) = happyShift action_35
action_78 (27) = happyShift action_36
action_78 (29) = happyShift action_37
action_78 (56) = happyShift action_38
action_78 (58) = happyShift action_39
action_78 (60) = happyShift action_40
action_78 (9) = happyGoto action_96
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (15) = happyShift action_24
action_79 (16) = happyShift action_25
action_79 (17) = happyShift action_26
action_79 (18) = happyShift action_27
action_79 (19) = happyShift action_28
action_79 (20) = happyShift action_29
action_79 (21) = happyShift action_30
action_79 (22) = happyShift action_31
action_79 (23) = happyShift action_32
action_79 (24) = happyShift action_33
action_79 (25) = happyShift action_34
action_79 (26) = happyShift action_35
action_79 (27) = happyShift action_36
action_79 (29) = happyShift action_37
action_79 (56) = happyShift action_38
action_79 (58) = happyShift action_39
action_79 (60) = happyShift action_40
action_79 (9) = happyGoto action_95
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (15) = happyShift action_24
action_80 (16) = happyShift action_25
action_80 (17) = happyShift action_26
action_80 (18) = happyShift action_27
action_80 (19) = happyShift action_28
action_80 (20) = happyShift action_29
action_80 (21) = happyShift action_30
action_80 (22) = happyShift action_31
action_80 (23) = happyShift action_32
action_80 (24) = happyShift action_33
action_80 (25) = happyShift action_34
action_80 (26) = happyShift action_35
action_80 (27) = happyShift action_36
action_80 (29) = happyShift action_37
action_80 (56) = happyShift action_38
action_80 (58) = happyShift action_39
action_80 (60) = happyShift action_40
action_80 (9) = happyGoto action_94
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (15) = happyShift action_24
action_81 (16) = happyShift action_25
action_81 (17) = happyShift action_26
action_81 (18) = happyShift action_27
action_81 (19) = happyShift action_28
action_81 (20) = happyShift action_29
action_81 (21) = happyShift action_30
action_81 (22) = happyShift action_31
action_81 (23) = happyShift action_32
action_81 (24) = happyShift action_33
action_81 (25) = happyShift action_34
action_81 (26) = happyShift action_35
action_81 (27) = happyShift action_36
action_81 (29) = happyShift action_37
action_81 (56) = happyShift action_38
action_81 (58) = happyShift action_39
action_81 (60) = happyShift action_40
action_81 (9) = happyGoto action_93
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (15) = happyShift action_24
action_82 (16) = happyShift action_25
action_82 (17) = happyShift action_26
action_82 (18) = happyShift action_27
action_82 (19) = happyShift action_28
action_82 (20) = happyShift action_29
action_82 (21) = happyShift action_30
action_82 (22) = happyShift action_31
action_82 (23) = happyShift action_32
action_82 (24) = happyShift action_33
action_82 (25) = happyShift action_34
action_82 (26) = happyShift action_35
action_82 (27) = happyShift action_36
action_82 (29) = happyShift action_37
action_82 (56) = happyShift action_38
action_82 (58) = happyShift action_39
action_82 (60) = happyShift action_40
action_82 (9) = happyGoto action_92
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (15) = happyShift action_24
action_83 (16) = happyShift action_25
action_83 (17) = happyShift action_26
action_83 (18) = happyShift action_27
action_83 (19) = happyShift action_28
action_83 (20) = happyShift action_29
action_83 (21) = happyShift action_30
action_83 (22) = happyShift action_31
action_83 (23) = happyShift action_32
action_83 (24) = happyShift action_33
action_83 (25) = happyShift action_34
action_83 (26) = happyShift action_35
action_83 (27) = happyShift action_36
action_83 (29) = happyShift action_37
action_83 (56) = happyShift action_38
action_83 (58) = happyShift action_39
action_83 (60) = happyShift action_40
action_83 (9) = happyGoto action_91
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (15) = happyShift action_24
action_84 (16) = happyShift action_25
action_84 (17) = happyShift action_26
action_84 (18) = happyShift action_27
action_84 (19) = happyShift action_28
action_84 (20) = happyShift action_29
action_84 (21) = happyShift action_30
action_84 (22) = happyShift action_31
action_84 (23) = happyShift action_32
action_84 (24) = happyShift action_33
action_84 (25) = happyShift action_34
action_84 (26) = happyShift action_35
action_84 (27) = happyShift action_36
action_84 (29) = happyShift action_37
action_84 (56) = happyShift action_38
action_84 (58) = happyShift action_39
action_84 (60) = happyShift action_40
action_84 (9) = happyGoto action_90
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (15) = happyShift action_24
action_85 (16) = happyShift action_25
action_85 (17) = happyShift action_26
action_85 (18) = happyShift action_27
action_85 (19) = happyShift action_28
action_85 (20) = happyShift action_29
action_85 (21) = happyShift action_30
action_85 (22) = happyShift action_31
action_85 (23) = happyShift action_32
action_85 (24) = happyShift action_33
action_85 (25) = happyShift action_34
action_85 (26) = happyShift action_35
action_85 (27) = happyShift action_36
action_85 (29) = happyShift action_37
action_85 (56) = happyShift action_38
action_85 (58) = happyShift action_39
action_85 (60) = happyShift action_40
action_85 (9) = happyGoto action_89
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (61) = happyShift action_88
action_86 _ = happyFail (happyExpListPerState 86)

action_87 _ = happyReduce_3

action_88 _ = happyReduce_4

action_89 (15) = happyShift action_24
action_89 (16) = happyShift action_25
action_89 (17) = happyShift action_26
action_89 (18) = happyShift action_27
action_89 (19) = happyShift action_28
action_89 (20) = happyShift action_29
action_89 (21) = happyShift action_30
action_89 (22) = happyShift action_31
action_89 (23) = happyShift action_32
action_89 (24) = happyShift action_33
action_89 (25) = happyShift action_34
action_89 (26) = happyShift action_35
action_89 (27) = happyShift action_36
action_89 (29) = happyShift action_37
action_89 (54) = happyShift action_85
action_89 (56) = happyShift action_38
action_89 (58) = happyShift action_39
action_89 (60) = happyShift action_40
action_89 (9) = happyGoto action_107
action_89 _ = happyReduce_29

action_90 (15) = happyShift action_24
action_90 (16) = happyShift action_25
action_90 (17) = happyShift action_26
action_90 (18) = happyShift action_27
action_90 (19) = happyShift action_28
action_90 (20) = happyShift action_29
action_90 (21) = happyShift action_30
action_90 (22) = happyShift action_31
action_90 (23) = happyShift action_32
action_90 (24) = happyShift action_33
action_90 (25) = happyShift action_34
action_90 (26) = happyShift action_35
action_90 (27) = happyShift action_36
action_90 (29) = happyShift action_37
action_90 (54) = happyShift action_85
action_90 (56) = happyShift action_38
action_90 (58) = happyShift action_39
action_90 (60) = happyShift action_40
action_90 (9) = happyGoto action_107
action_90 _ = happyReduce_30

action_91 (15) = happyShift action_24
action_91 (16) = happyShift action_25
action_91 (17) = happyShift action_26
action_91 (18) = happyShift action_27
action_91 (19) = happyShift action_28
action_91 (20) = happyShift action_29
action_91 (21) = happyShift action_30
action_91 (22) = happyShift action_31
action_91 (23) = happyShift action_32
action_91 (24) = happyShift action_33
action_91 (25) = happyShift action_34
action_91 (26) = happyShift action_35
action_91 (27) = happyShift action_36
action_91 (29) = happyShift action_37
action_91 (53) = happyShift action_84
action_91 (54) = happyShift action_85
action_91 (56) = happyShift action_38
action_91 (58) = happyShift action_39
action_91 (60) = happyShift action_40
action_91 (9) = happyGoto action_107
action_91 _ = happyReduce_28

action_92 (15) = happyShift action_24
action_92 (16) = happyShift action_25
action_92 (17) = happyShift action_26
action_92 (18) = happyShift action_27
action_92 (19) = happyShift action_28
action_92 (20) = happyShift action_29
action_92 (21) = happyShift action_30
action_92 (22) = happyShift action_31
action_92 (23) = happyShift action_32
action_92 (24) = happyShift action_33
action_92 (25) = happyShift action_34
action_92 (26) = happyShift action_35
action_92 (27) = happyShift action_36
action_92 (29) = happyShift action_37
action_92 (53) = happyShift action_84
action_92 (54) = happyShift action_85
action_92 (56) = happyShift action_38
action_92 (58) = happyShift action_39
action_92 (60) = happyShift action_40
action_92 (9) = happyGoto action_107
action_92 _ = happyReduce_27

action_93 (15) = happyShift action_24
action_93 (16) = happyShift action_25
action_93 (17) = happyShift action_26
action_93 (18) = happyShift action_27
action_93 (19) = happyShift action_28
action_93 (20) = happyShift action_29
action_93 (21) = happyShift action_30
action_93 (22) = happyShift action_31
action_93 (23) = happyShift action_32
action_93 (24) = happyShift action_33
action_93 (25) = happyShift action_34
action_93 (26) = happyShift action_35
action_93 (27) = happyShift action_36
action_93 (29) = happyShift action_37
action_93 (51) = happyShift action_82
action_93 (52) = happyShift action_83
action_93 (53) = happyShift action_84
action_93 (54) = happyShift action_85
action_93 (56) = happyShift action_38
action_93 (58) = happyShift action_39
action_93 (60) = happyShift action_40
action_93 (9) = happyGoto action_107
action_93 _ = happyReduce_26

action_94 (15) = happyShift action_24
action_94 (16) = happyShift action_25
action_94 (17) = happyShift action_26
action_94 (18) = happyShift action_27
action_94 (19) = happyShift action_28
action_94 (20) = happyShift action_29
action_94 (21) = happyShift action_30
action_94 (22) = happyShift action_31
action_94 (23) = happyShift action_32
action_94 (24) = happyShift action_33
action_94 (25) = happyShift action_34
action_94 (26) = happyShift action_35
action_94 (27) = happyShift action_36
action_94 (29) = happyShift action_37
action_94 (51) = happyShift action_82
action_94 (52) = happyShift action_83
action_94 (53) = happyShift action_84
action_94 (54) = happyShift action_85
action_94 (56) = happyShift action_38
action_94 (58) = happyShift action_39
action_94 (60) = happyShift action_40
action_94 (9) = happyGoto action_107
action_94 _ = happyReduce_25

action_95 (15) = happyShift action_24
action_95 (16) = happyShift action_25
action_95 (17) = happyShift action_26
action_95 (18) = happyShift action_27
action_95 (19) = happyShift action_28
action_95 (20) = happyShift action_29
action_95 (21) = happyShift action_30
action_95 (22) = happyShift action_31
action_95 (23) = happyShift action_32
action_95 (24) = happyShift action_33
action_95 (25) = happyShift action_34
action_95 (26) = happyShift action_35
action_95 (27) = happyShift action_36
action_95 (29) = happyShift action_37
action_95 (32) = happyShift action_69
action_95 (33) = happyShift action_70
action_95 (34) = happyShift action_71
action_95 (35) = happyShift action_72
action_95 (36) = happyShift action_73
action_95 (41) = happyShift action_74
action_95 (44) = happyFail []
action_95 (45) = happyFail []
action_95 (46) = happyShift action_77
action_95 (47) = happyFail []
action_95 (48) = happyFail []
action_95 (49) = happyShift action_80
action_95 (50) = happyShift action_81
action_95 (51) = happyShift action_82
action_95 (52) = happyShift action_83
action_95 (53) = happyShift action_84
action_95 (54) = happyShift action_85
action_95 (56) = happyShift action_38
action_95 (58) = happyShift action_39
action_95 (60) = happyShift action_40
action_95 (9) = happyGoto action_107
action_95 _ = happyReduce_36

action_96 (15) = happyShift action_24
action_96 (16) = happyShift action_25
action_96 (17) = happyShift action_26
action_96 (18) = happyShift action_27
action_96 (19) = happyShift action_28
action_96 (20) = happyShift action_29
action_96 (21) = happyShift action_30
action_96 (22) = happyShift action_31
action_96 (23) = happyShift action_32
action_96 (24) = happyShift action_33
action_96 (25) = happyShift action_34
action_96 (26) = happyShift action_35
action_96 (27) = happyShift action_36
action_96 (29) = happyShift action_37
action_96 (32) = happyShift action_69
action_96 (33) = happyShift action_70
action_96 (34) = happyShift action_71
action_96 (35) = happyShift action_72
action_96 (36) = happyShift action_73
action_96 (41) = happyShift action_74
action_96 (44) = happyFail []
action_96 (45) = happyFail []
action_96 (46) = happyShift action_77
action_96 (47) = happyFail []
action_96 (48) = happyFail []
action_96 (49) = happyShift action_80
action_96 (50) = happyShift action_81
action_96 (51) = happyShift action_82
action_96 (52) = happyShift action_83
action_96 (53) = happyShift action_84
action_96 (54) = happyShift action_85
action_96 (56) = happyShift action_38
action_96 (58) = happyShift action_39
action_96 (60) = happyShift action_40
action_96 (9) = happyGoto action_107
action_96 _ = happyReduce_37

action_97 (15) = happyShift action_24
action_97 (16) = happyShift action_25
action_97 (17) = happyShift action_26
action_97 (18) = happyShift action_27
action_97 (19) = happyShift action_28
action_97 (20) = happyShift action_29
action_97 (21) = happyShift action_30
action_97 (22) = happyShift action_31
action_97 (23) = happyShift action_32
action_97 (24) = happyShift action_33
action_97 (25) = happyShift action_34
action_97 (26) = happyShift action_35
action_97 (27) = happyShift action_36
action_97 (29) = happyShift action_37
action_97 (41) = happyShift action_74
action_97 (46) = happyShift action_77
action_97 (49) = happyShift action_80
action_97 (50) = happyShift action_81
action_97 (51) = happyShift action_82
action_97 (52) = happyShift action_83
action_97 (53) = happyShift action_84
action_97 (54) = happyShift action_85
action_97 (56) = happyShift action_38
action_97 (58) = happyShift action_39
action_97 (60) = happyShift action_40
action_97 (9) = happyGoto action_107
action_97 _ = happyReduce_31

action_98 (15) = happyShift action_24
action_98 (16) = happyShift action_25
action_98 (17) = happyShift action_26
action_98 (18) = happyShift action_27
action_98 (19) = happyShift action_28
action_98 (20) = happyShift action_29
action_98 (21) = happyShift action_30
action_98 (22) = happyShift action_31
action_98 (23) = happyShift action_32
action_98 (24) = happyShift action_33
action_98 (25) = happyShift action_34
action_98 (26) = happyShift action_35
action_98 (27) = happyShift action_36
action_98 (29) = happyShift action_37
action_98 (32) = happyShift action_69
action_98 (33) = happyShift action_70
action_98 (34) = happyShift action_71
action_98 (35) = happyShift action_72
action_98 (36) = happyShift action_73
action_98 (41) = happyShift action_74
action_98 (44) = happyFail []
action_98 (45) = happyFail []
action_98 (46) = happyShift action_77
action_98 (47) = happyFail []
action_98 (48) = happyFail []
action_98 (49) = happyShift action_80
action_98 (50) = happyShift action_81
action_98 (51) = happyShift action_82
action_98 (52) = happyShift action_83
action_98 (53) = happyShift action_84
action_98 (54) = happyShift action_85
action_98 (56) = happyShift action_38
action_98 (58) = happyShift action_39
action_98 (60) = happyShift action_40
action_98 (9) = happyGoto action_107
action_98 _ = happyReduce_39

action_99 (15) = happyShift action_24
action_99 (16) = happyShift action_25
action_99 (17) = happyShift action_26
action_99 (18) = happyShift action_27
action_99 (19) = happyShift action_28
action_99 (20) = happyShift action_29
action_99 (21) = happyShift action_30
action_99 (22) = happyShift action_31
action_99 (23) = happyShift action_32
action_99 (24) = happyShift action_33
action_99 (25) = happyShift action_34
action_99 (26) = happyShift action_35
action_99 (27) = happyShift action_36
action_99 (29) = happyShift action_37
action_99 (32) = happyShift action_69
action_99 (33) = happyShift action_70
action_99 (34) = happyShift action_71
action_99 (35) = happyShift action_72
action_99 (36) = happyShift action_73
action_99 (41) = happyShift action_74
action_99 (44) = happyFail []
action_99 (45) = happyFail []
action_99 (46) = happyShift action_77
action_99 (47) = happyFail []
action_99 (48) = happyFail []
action_99 (49) = happyShift action_80
action_99 (50) = happyShift action_81
action_99 (51) = happyShift action_82
action_99 (52) = happyShift action_83
action_99 (53) = happyShift action_84
action_99 (54) = happyShift action_85
action_99 (56) = happyShift action_38
action_99 (58) = happyShift action_39
action_99 (60) = happyShift action_40
action_99 (9) = happyGoto action_107
action_99 _ = happyReduce_38

action_100 (15) = happyShift action_24
action_100 (16) = happyShift action_25
action_100 (17) = happyShift action_26
action_100 (18) = happyShift action_27
action_100 (19) = happyShift action_28
action_100 (20) = happyShift action_29
action_100 (21) = happyShift action_30
action_100 (22) = happyShift action_31
action_100 (23) = happyShift action_32
action_100 (24) = happyShift action_33
action_100 (25) = happyShift action_34
action_100 (26) = happyShift action_35
action_100 (27) = happyShift action_36
action_100 (29) = happyShift action_37
action_100 (41) = happyShift action_74
action_100 (49) = happyShift action_80
action_100 (50) = happyShift action_81
action_100 (51) = happyShift action_82
action_100 (52) = happyShift action_83
action_100 (53) = happyShift action_84
action_100 (54) = happyShift action_85
action_100 (56) = happyShift action_38
action_100 (58) = happyShift action_39
action_100 (60) = happyShift action_40
action_100 (9) = happyGoto action_107
action_100 _ = happyReduce_44

action_101 (15) = happyShift action_24
action_101 (16) = happyShift action_25
action_101 (17) = happyShift action_26
action_101 (18) = happyShift action_27
action_101 (19) = happyShift action_28
action_101 (20) = happyShift action_29
action_101 (21) = happyShift action_30
action_101 (22) = happyShift action_31
action_101 (23) = happyShift action_32
action_101 (24) = happyShift action_33
action_101 (25) = happyShift action_34
action_101 (26) = happyShift action_35
action_101 (27) = happyShift action_36
action_101 (29) = happyShift action_37
action_101 (32) = happyShift action_69
action_101 (41) = happyShift action_74
action_101 (46) = happyShift action_77
action_101 (49) = happyShift action_80
action_101 (50) = happyShift action_81
action_101 (51) = happyShift action_82
action_101 (52) = happyShift action_83
action_101 (53) = happyShift action_84
action_101 (54) = happyShift action_85
action_101 (56) = happyShift action_38
action_101 (58) = happyShift action_39
action_101 (60) = happyShift action_40
action_101 (9) = happyGoto action_107
action_101 _ = happyReduce_43

action_102 (15) = happyShift action_24
action_102 (16) = happyShift action_25
action_102 (17) = happyShift action_26
action_102 (18) = happyShift action_27
action_102 (19) = happyShift action_28
action_102 (20) = happyShift action_29
action_102 (21) = happyShift action_30
action_102 (22) = happyShift action_31
action_102 (23) = happyShift action_32
action_102 (24) = happyShift action_33
action_102 (25) = happyShift action_34
action_102 (26) = happyShift action_35
action_102 (27) = happyShift action_36
action_102 (29) = happyShift action_37
action_102 (32) = happyShift action_69
action_102 (41) = happyShift action_74
action_102 (46) = happyShift action_77
action_102 (49) = happyShift action_80
action_102 (50) = happyShift action_81
action_102 (51) = happyShift action_82
action_102 (52) = happyShift action_83
action_102 (53) = happyShift action_84
action_102 (54) = happyShift action_85
action_102 (56) = happyShift action_38
action_102 (58) = happyShift action_39
action_102 (60) = happyShift action_40
action_102 (9) = happyGoto action_107
action_102 _ = happyReduce_42

action_103 (15) = happyShift action_24
action_103 (16) = happyShift action_25
action_103 (17) = happyShift action_26
action_103 (18) = happyShift action_27
action_103 (19) = happyShift action_28
action_103 (20) = happyShift action_29
action_103 (21) = happyShift action_30
action_103 (22) = happyShift action_31
action_103 (23) = happyShift action_32
action_103 (24) = happyShift action_33
action_103 (25) = happyShift action_34
action_103 (26) = happyShift action_35
action_103 (27) = happyShift action_36
action_103 (29) = happyShift action_37
action_103 (32) = happyShift action_69
action_103 (33) = happyFail []
action_103 (34) = happyFail []
action_103 (35) = happyShift action_72
action_103 (36) = happyShift action_73
action_103 (41) = happyShift action_74
action_103 (46) = happyShift action_77
action_103 (49) = happyShift action_80
action_103 (50) = happyShift action_81
action_103 (51) = happyShift action_82
action_103 (52) = happyShift action_83
action_103 (53) = happyShift action_84
action_103 (54) = happyShift action_85
action_103 (56) = happyShift action_38
action_103 (58) = happyShift action_39
action_103 (60) = happyShift action_40
action_103 (9) = happyGoto action_107
action_103 _ = happyReduce_41

action_104 (15) = happyShift action_24
action_104 (16) = happyShift action_25
action_104 (17) = happyShift action_26
action_104 (18) = happyShift action_27
action_104 (19) = happyShift action_28
action_104 (20) = happyShift action_29
action_104 (21) = happyShift action_30
action_104 (22) = happyShift action_31
action_104 (23) = happyShift action_32
action_104 (24) = happyShift action_33
action_104 (25) = happyShift action_34
action_104 (26) = happyShift action_35
action_104 (27) = happyShift action_36
action_104 (29) = happyShift action_37
action_104 (32) = happyShift action_69
action_104 (33) = happyFail []
action_104 (34) = happyFail []
action_104 (35) = happyShift action_72
action_104 (36) = happyShift action_73
action_104 (41) = happyShift action_74
action_104 (46) = happyShift action_77
action_104 (49) = happyShift action_80
action_104 (50) = happyShift action_81
action_104 (51) = happyShift action_82
action_104 (52) = happyShift action_83
action_104 (53) = happyShift action_84
action_104 (54) = happyShift action_85
action_104 (56) = happyShift action_38
action_104 (58) = happyShift action_39
action_104 (60) = happyShift action_40
action_104 (9) = happyGoto action_107
action_104 _ = happyReduce_40

action_105 (15) = happyShift action_24
action_105 (16) = happyShift action_25
action_105 (17) = happyShift action_26
action_105 (18) = happyShift action_27
action_105 (19) = happyShift action_28
action_105 (20) = happyShift action_29
action_105 (21) = happyShift action_30
action_105 (22) = happyShift action_31
action_105 (23) = happyShift action_32
action_105 (24) = happyShift action_33
action_105 (25) = happyShift action_34
action_105 (26) = happyShift action_35
action_105 (27) = happyShift action_36
action_105 (29) = happyShift action_37
action_105 (41) = happyShift action_74
action_105 (46) = happyShift action_77
action_105 (49) = happyShift action_80
action_105 (50) = happyShift action_81
action_105 (51) = happyShift action_82
action_105 (52) = happyShift action_83
action_105 (53) = happyShift action_84
action_105 (54) = happyShift action_85
action_105 (56) = happyShift action_38
action_105 (58) = happyShift action_39
action_105 (60) = happyShift action_40
action_105 (9) = happyGoto action_107
action_105 _ = happyReduce_32

action_106 (15) = happyShift action_24
action_106 (16) = happyShift action_25
action_106 (17) = happyShift action_26
action_106 (18) = happyShift action_27
action_106 (19) = happyShift action_28
action_106 (20) = happyShift action_29
action_106 (21) = happyReduce_46
action_106 (22) = happyReduce_46
action_106 (23) = happyReduce_46
action_106 (24) = happyReduce_46
action_106 (25) = happyReduce_46
action_106 (26) = happyReduce_46
action_106 (27) = happyReduce_46
action_106 (29) = happyReduce_46
action_106 (32) = happyReduce_46
action_106 (33) = happyReduce_46
action_106 (34) = happyReduce_46
action_106 (35) = happyReduce_46
action_106 (36) = happyReduce_46
action_106 (41) = happyReduce_46
action_106 (44) = happyReduce_46
action_106 (45) = happyReduce_46
action_106 (46) = happyReduce_46
action_106 (47) = happyReduce_46
action_106 (48) = happyReduce_46
action_106 (49) = happyReduce_46
action_106 (50) = happyReduce_46
action_106 (51) = happyReduce_46
action_106 (52) = happyReduce_46
action_106 (53) = happyReduce_46
action_106 (54) = happyReduce_46
action_106 (56) = happyReduce_46
action_106 (58) = happyReduce_46
action_106 (60) = happyReduce_46
action_106 (9) = happyGoto action_107
action_106 _ = happyReduce_46

action_107 (15) = happyShift action_24
action_107 (16) = happyShift action_25
action_107 (17) = happyShift action_26
action_107 (18) = happyShift action_27
action_107 (19) = happyShift action_28
action_107 (20) = happyShift action_29
action_107 (9) = happyGoto action_107
action_107 _ = happyReduce_16

action_108 (46) = happyShift action_121
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (15) = happyShift action_24
action_109 (16) = happyShift action_25
action_109 (17) = happyShift action_26
action_109 (18) = happyShift action_27
action_109 (19) = happyShift action_28
action_109 (20) = happyShift action_29
action_109 (21) = happyShift action_30
action_109 (22) = happyShift action_31
action_109 (23) = happyShift action_32
action_109 (24) = happyShift action_33
action_109 (25) = happyShift action_34
action_109 (26) = happyShift action_35
action_109 (27) = happyShift action_36
action_109 (29) = happyShift action_37
action_109 (56) = happyShift action_38
action_109 (58) = happyShift action_39
action_109 (60) = happyShift action_40
action_109 (9) = happyGoto action_120
action_109 _ = happyFail (happyExpListPerState 109)

action_110 _ = happyReduce_33

action_111 (15) = happyShift action_24
action_111 (16) = happyShift action_25
action_111 (17) = happyShift action_26
action_111 (18) = happyShift action_27
action_111 (19) = happyShift action_28
action_111 (20) = happyShift action_29
action_111 (21) = happyShift action_30
action_111 (22) = happyShift action_31
action_111 (23) = happyShift action_32
action_111 (24) = happyShift action_33
action_111 (25) = happyShift action_34
action_111 (26) = happyShift action_35
action_111 (27) = happyShift action_36
action_111 (29) = happyShift action_37
action_111 (56) = happyShift action_38
action_111 (58) = happyShift action_39
action_111 (60) = happyShift action_40
action_111 (9) = happyGoto action_119
action_111 _ = happyFail (happyExpListPerState 111)

action_112 _ = happyReduce_22

action_113 (15) = happyShift action_24
action_113 (16) = happyShift action_25
action_113 (17) = happyShift action_26
action_113 (18) = happyShift action_27
action_113 (19) = happyShift action_28
action_113 (20) = happyShift action_29
action_113 (21) = happyShift action_30
action_113 (22) = happyShift action_31
action_113 (23) = happyShift action_32
action_113 (24) = happyShift action_33
action_113 (25) = happyShift action_34
action_113 (26) = happyShift action_35
action_113 (27) = happyShift action_36
action_113 (29) = happyShift action_37
action_113 (56) = happyShift action_38
action_113 (58) = happyShift action_39
action_113 (60) = happyShift action_40
action_113 (9) = happyGoto action_55
action_113 (11) = happyGoto action_118
action_113 _ = happyReduce_57

action_114 (15) = happyShift action_24
action_114 (16) = happyShift action_25
action_114 (17) = happyShift action_26
action_114 (18) = happyShift action_27
action_114 (19) = happyShift action_28
action_114 (20) = happyShift action_29
action_114 (21) = happyShift action_30
action_114 (22) = happyShift action_31
action_114 (23) = happyShift action_32
action_114 (24) = happyShift action_33
action_114 (25) = happyShift action_34
action_114 (26) = happyShift action_35
action_114 (27) = happyShift action_36
action_114 (29) = happyShift action_37
action_114 (56) = happyShift action_38
action_114 (58) = happyShift action_39
action_114 (60) = happyShift action_40
action_114 (9) = happyGoto action_115
action_114 (13) = happyGoto action_116
action_114 (14) = happyGoto action_117
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (15) = happyShift action_24
action_115 (16) = happyShift action_25
action_115 (17) = happyShift action_26
action_115 (18) = happyShift action_27
action_115 (19) = happyShift action_28
action_115 (20) = happyShift action_29
action_115 (21) = happyShift action_30
action_115 (22) = happyShift action_31
action_115 (23) = happyShift action_32
action_115 (24) = happyShift action_33
action_115 (25) = happyShift action_34
action_115 (26) = happyShift action_35
action_115 (27) = happyShift action_36
action_115 (29) = happyShift action_37
action_115 (32) = happyShift action_69
action_115 (33) = happyShift action_70
action_115 (34) = happyShift action_71
action_115 (35) = happyShift action_72
action_115 (36) = happyShift action_73
action_115 (41) = happyShift action_74
action_115 (42) = happyShift action_132
action_115 (44) = happyShift action_75
action_115 (45) = happyShift action_76
action_115 (46) = happyShift action_77
action_115 (47) = happyShift action_78
action_115 (48) = happyShift action_79
action_115 (49) = happyShift action_80
action_115 (50) = happyShift action_81
action_115 (51) = happyShift action_82
action_115 (52) = happyShift action_83
action_115 (53) = happyShift action_84
action_115 (54) = happyShift action_85
action_115 (56) = happyShift action_38
action_115 (58) = happyShift action_39
action_115 (60) = happyShift action_40
action_115 (9) = happyGoto action_107
action_115 _ = happyReduce_65

action_116 (61) = happyShift action_131
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (63) = happyShift action_130
action_117 _ = happyReduce_63

action_118 _ = happyReduce_58

action_119 (15) = happyShift action_24
action_119 (16) = happyShift action_25
action_119 (17) = happyShift action_26
action_119 (18) = happyShift action_27
action_119 (19) = happyShift action_28
action_119 (20) = happyShift action_29
action_119 (21) = happyShift action_30
action_119 (22) = happyShift action_31
action_119 (23) = happyShift action_32
action_119 (24) = happyShift action_33
action_119 (25) = happyShift action_34
action_119 (26) = happyShift action_35
action_119 (27) = happyShift action_36
action_119 (29) = happyShift action_37
action_119 (32) = happyShift action_69
action_119 (33) = happyShift action_70
action_119 (34) = happyShift action_71
action_119 (35) = happyShift action_72
action_119 (36) = happyShift action_73
action_119 (41) = happyShift action_74
action_119 (44) = happyShift action_75
action_119 (45) = happyShift action_76
action_119 (46) = happyShift action_77
action_119 (47) = happyShift action_78
action_119 (48) = happyShift action_79
action_119 (49) = happyShift action_80
action_119 (50) = happyShift action_81
action_119 (51) = happyShift action_82
action_119 (52) = happyShift action_83
action_119 (53) = happyShift action_84
action_119 (54) = happyShift action_85
action_119 (56) = happyShift action_38
action_119 (57) = happyShift action_129
action_119 (58) = happyShift action_39
action_119 (60) = happyShift action_40
action_119 (9) = happyGoto action_107
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (15) = happyShift action_24
action_120 (16) = happyShift action_25
action_120 (17) = happyShift action_26
action_120 (18) = happyShift action_27
action_120 (19) = happyShift action_28
action_120 (20) = happyShift action_29
action_120 (21) = happyShift action_30
action_120 (22) = happyShift action_31
action_120 (23) = happyShift action_32
action_120 (24) = happyShift action_33
action_120 (25) = happyShift action_34
action_120 (26) = happyShift action_35
action_120 (27) = happyShift action_36
action_120 (29) = happyShift action_37
action_120 (31) = happyShift action_128
action_120 (32) = happyShift action_69
action_120 (33) = happyShift action_70
action_120 (34) = happyShift action_71
action_120 (35) = happyShift action_72
action_120 (36) = happyShift action_73
action_120 (41) = happyShift action_74
action_120 (44) = happyShift action_75
action_120 (45) = happyShift action_76
action_120 (46) = happyShift action_77
action_120 (47) = happyShift action_78
action_120 (48) = happyShift action_79
action_120 (49) = happyShift action_80
action_120 (50) = happyShift action_81
action_120 (51) = happyShift action_82
action_120 (52) = happyShift action_83
action_120 (53) = happyShift action_84
action_120 (54) = happyShift action_85
action_120 (56) = happyShift action_38
action_120 (58) = happyShift action_39
action_120 (60) = happyShift action_40
action_120 (9) = happyGoto action_107
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (56) = happyShift action_123
action_121 (58) = happyShift action_124
action_121 (64) = happyShift action_125
action_121 (65) = happyShift action_126
action_121 (66) = happyShift action_127
action_121 (10) = happyGoto action_122
action_121 _ = happyFail (happyExpListPerState 121)

action_122 (57) = happyShift action_138
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (56) = happyShift action_123
action_123 (58) = happyShift action_124
action_123 (64) = happyShift action_125
action_123 (65) = happyShift action_126
action_123 (66) = happyShift action_127
action_123 (10) = happyGoto action_137
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (56) = happyShift action_123
action_124 (58) = happyShift action_124
action_124 (64) = happyShift action_125
action_124 (65) = happyShift action_126
action_124 (66) = happyShift action_127
action_124 (10) = happyGoto action_136
action_124 _ = happyFail (happyExpListPerState 124)

action_125 _ = happyReduce_52

action_126 _ = happyReduce_54

action_127 _ = happyReduce_53

action_128 (15) = happyShift action_24
action_128 (16) = happyShift action_25
action_128 (17) = happyShift action_26
action_128 (18) = happyShift action_27
action_128 (19) = happyShift action_28
action_128 (20) = happyShift action_29
action_128 (21) = happyShift action_30
action_128 (22) = happyShift action_31
action_128 (23) = happyShift action_32
action_128 (24) = happyShift action_33
action_128 (25) = happyShift action_34
action_128 (26) = happyShift action_35
action_128 (27) = happyShift action_36
action_128 (29) = happyShift action_37
action_128 (56) = happyShift action_38
action_128 (58) = happyShift action_39
action_128 (60) = happyShift action_40
action_128 (9) = happyGoto action_135
action_128 _ = happyFail (happyExpListPerState 128)

action_129 _ = happyReduce_23

action_130 (15) = happyShift action_24
action_130 (16) = happyShift action_25
action_130 (17) = happyShift action_26
action_130 (18) = happyShift action_27
action_130 (19) = happyShift action_28
action_130 (20) = happyShift action_29
action_130 (21) = happyShift action_30
action_130 (22) = happyShift action_31
action_130 (23) = happyShift action_32
action_130 (24) = happyShift action_33
action_130 (25) = happyShift action_34
action_130 (26) = happyShift action_35
action_130 (27) = happyShift action_36
action_130 (29) = happyShift action_37
action_130 (56) = happyShift action_38
action_130 (58) = happyShift action_39
action_130 (60) = happyShift action_40
action_130 (9) = happyGoto action_115
action_130 (13) = happyGoto action_134
action_130 (14) = happyGoto action_117
action_130 _ = happyFail (happyExpListPerState 130)

action_131 _ = happyReduce_45

action_132 (15) = happyShift action_24
action_132 (16) = happyShift action_25
action_132 (17) = happyShift action_26
action_132 (18) = happyShift action_27
action_132 (19) = happyShift action_28
action_132 (20) = happyShift action_29
action_132 (21) = happyShift action_30
action_132 (22) = happyShift action_31
action_132 (23) = happyShift action_32
action_132 (24) = happyShift action_33
action_132 (25) = happyShift action_34
action_132 (26) = happyShift action_35
action_132 (27) = happyShift action_36
action_132 (29) = happyShift action_37
action_132 (56) = happyShift action_38
action_132 (58) = happyShift action_39
action_132 (60) = happyShift action_40
action_132 (9) = happyGoto action_133
action_132 _ = happyFail (happyExpListPerState 132)

action_133 (15) = happyShift action_24
action_133 (16) = happyShift action_25
action_133 (17) = happyShift action_26
action_133 (18) = happyShift action_27
action_133 (19) = happyShift action_28
action_133 (20) = happyShift action_29
action_133 (21) = happyShift action_30
action_133 (22) = happyShift action_31
action_133 (23) = happyShift action_32
action_133 (24) = happyShift action_33
action_133 (25) = happyShift action_34
action_133 (26) = happyShift action_35
action_133 (27) = happyShift action_36
action_133 (29) = happyShift action_37
action_133 (32) = happyShift action_69
action_133 (33) = happyShift action_70
action_133 (34) = happyShift action_71
action_133 (35) = happyShift action_72
action_133 (36) = happyShift action_73
action_133 (41) = happyShift action_74
action_133 (44) = happyShift action_75
action_133 (45) = happyShift action_76
action_133 (46) = happyShift action_77
action_133 (47) = happyShift action_78
action_133 (48) = happyShift action_79
action_133 (49) = happyShift action_80
action_133 (50) = happyShift action_81
action_133 (51) = happyShift action_82
action_133 (52) = happyShift action_83
action_133 (53) = happyShift action_84
action_133 (54) = happyShift action_85
action_133 (56) = happyShift action_38
action_133 (58) = happyShift action_39
action_133 (60) = happyShift action_40
action_133 (9) = happyGoto action_107
action_133 _ = happyReduce_64

action_134 _ = happyReduce_62

action_135 (15) = happyShift action_24
action_135 (16) = happyShift action_25
action_135 (17) = happyShift action_26
action_135 (18) = happyShift action_27
action_135 (19) = happyShift action_28
action_135 (20) = happyShift action_29
action_135 (22) = happyShift action_31
action_135 (23) = happyShift action_32
action_135 (24) = happyShift action_33
action_135 (25) = happyShift action_34
action_135 (26) = happyShift action_35
action_135 (27) = happyShift action_36
action_135 (29) = happyFail []
action_135 (56) = happyShift action_38
action_135 (58) = happyShift action_39
action_135 (60) = happyShift action_40
action_135 (9) = happyGoto action_107
action_135 _ = happyReduce_34

action_136 (59) = happyShift action_141
action_136 _ = happyFail (happyExpListPerState 136)

action_137 (63) = happyShift action_140
action_137 _ = happyFail (happyExpListPerState 137)

action_138 (43) = happyShift action_139
action_138 _ = happyFail (happyExpListPerState 138)

action_139 (15) = happyShift action_24
action_139 (16) = happyShift action_25
action_139 (17) = happyShift action_26
action_139 (18) = happyShift action_27
action_139 (19) = happyShift action_28
action_139 (20) = happyShift action_29
action_139 (21) = happyShift action_30
action_139 (22) = happyShift action_31
action_139 (23) = happyShift action_32
action_139 (24) = happyShift action_33
action_139 (25) = happyShift action_34
action_139 (26) = happyShift action_35
action_139 (27) = happyShift action_36
action_139 (29) = happyShift action_37
action_139 (56) = happyShift action_38
action_139 (58) = happyShift action_39
action_139 (60) = happyShift action_40
action_139 (9) = happyGoto action_143
action_139 _ = happyFail (happyExpListPerState 139)

action_140 (56) = happyShift action_123
action_140 (58) = happyShift action_124
action_140 (64) = happyShift action_125
action_140 (65) = happyShift action_126
action_140 (66) = happyShift action_127
action_140 (10) = happyGoto action_142
action_140 _ = happyFail (happyExpListPerState 140)

action_141 _ = happyReduce_55

action_142 (57) = happyShift action_144
action_142 _ = happyFail (happyExpListPerState 142)

action_143 (15) = happyShift action_24
action_143 (16) = happyShift action_25
action_143 (17) = happyShift action_26
action_143 (18) = happyShift action_27
action_143 (19) = happyShift action_28
action_143 (20) = happyShift action_29
action_143 (21) = happyShift action_30
action_143 (22) = happyShift action_31
action_143 (23) = happyShift action_32
action_143 (24) = happyShift action_33
action_143 (25) = happyShift action_34
action_143 (26) = happyShift action_35
action_143 (27) = happyShift action_36
action_143 (29) = happyShift action_37
action_143 (49) = happyShift action_80
action_143 (50) = happyShift action_81
action_143 (51) = happyShift action_82
action_143 (52) = happyShift action_83
action_143 (53) = happyShift action_84
action_143 (54) = happyShift action_85
action_143 (56) = happyShift action_38
action_143 (58) = happyShift action_39
action_143 (60) = happyShift action_40
action_143 (9) = happyGoto action_107
action_143 _ = happyReduce_35

action_144 _ = happyReduce_56

happyReduce_1 = happySpecReduce_0  4 happyReduction_1
happyReduction_1  =  HappyAbsSyn4
		 ([]
	)

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1:happy_var_2
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happyReduce 5 5 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (T _ (TokenInt happy_var_1))) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (((show happy_var_1) ++"+", happy_var_4)
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 6 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (T _ (TokenInt happy_var_3))) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (T _ (TokenInt happy_var_1))) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (((show happy_var_1) ++ "-" ++ (show happy_var_3), happy_var_5)
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 4 5 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (T _ (TokenInt happy_var_1))) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 ((show happy_var_1, happy_var_3)
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 4 5 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (T _ (TokenString happy_var_1))) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 ((happy_var_1, happy_var_3)
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_2  6 happyReduction_7
happyReduction_7 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1:happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 ([happy_var_1]
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  7 happyReduction_9
happyReduction_9 _
	(HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (Return happy_var_2
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  7 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Assign happy_var_1
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  8 happyReduction_11
happyReduction_11 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (T _ (TokenString happy_var_1)))
	 =  HappyAbsSyn8
		 (Def happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  8 happyReduction_12
happyReduction_12 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (T _ (TokenString happy_var_1)))
	 =  HappyAbsSyn8
		 (Inc happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  8 happyReduction_13
happyReduction_13 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (T _ (TokenString happy_var_1)))
	 =  HappyAbsSyn8
		 (Dec happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  8 happyReduction_14
happyReduction_14 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (T _ (TokenString happy_var_1)))
	 =  HappyAbsSyn8
		 (MultVal happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  8 happyReduction_15
happyReduction_15 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (T _ (TokenString happy_var_1)))
	 =  HappyAbsSyn8
		 (DivVal happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  9 happyReduction_16
happyReduction_16 (HappyAbsSyn9  happy_var_2)
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (App happy_var_1 happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  9 happyReduction_17
happyReduction_17 (HappyTerminal (T _ (TokenInt happy_var_1)))
	 =  HappyAbsSyn9
		 (Int_ happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  9 happyReduction_18
happyReduction_18 (HappyTerminal (T _ (TokenFloat happy_var_1)))
	 =  HappyAbsSyn9
		 (Float_ happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  9 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn9
		 (True_
	)

happyReduce_20 = happySpecReduce_1  9 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn9
		 (False_
	)

happyReduce_21 = happySpecReduce_1  9 happyReduction_21
happyReduction_21 (HappyTerminal (T _ (TokenString happy_var_1)))
	 =  HappyAbsSyn9
		 (Var happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  9 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (List happy_var_2
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happyReduce 5 9 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Pair happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_1  9 happyReduction_24
happyReduction_24 (HappyTerminal (T _ (TokenIdent happy_var_1)))
	 =  HappyAbsSyn9
		 (Ident happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  9 happyReduction_25
happyReduction_25 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Add happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  9 happyReduction_26
happyReduction_26 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  9 happyReduction_27
happyReduction_27 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  9 happyReduction_28
happyReduction_28 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Div happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  9 happyReduction_29
happyReduction_29 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Exponent happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  9 happyReduction_30
happyReduction_30 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  9 happyReduction_31
happyReduction_31 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Cons happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  9 happyReduction_32
happyReduction_32 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Append happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  9 happyReduction_33
happyReduction_33 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (happy_var_2
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happyReduce 6 9 happyReduction_34
happyReduction_34 ((HappyAbsSyn9  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_35 = happyReduce 8 9 happyReduction_35
happyReduction_35 ((HappyAbsSyn9  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (T _ (TokenString happy_var_3))) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Lam happy_var_3 happy_var_5 happy_var_8
	) `HappyStk` happyRest

happyReduce_36 = happySpecReduce_3  9 happyReduction_36
happyReduction_36 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Less happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  9 happyReduction_37
happyReduction_37 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (More happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  9 happyReduction_38
happyReduction_38 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (LessEq happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  9 happyReduction_39
happyReduction_39 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (MoreEq happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  9 happyReduction_40
happyReduction_40 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  9 happyReduction_41
happyReduction_41 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (NEqual happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  9 happyReduction_42
happyReduction_42 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (And happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  9 happyReduction_43
happyReduction_43 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Or happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  9 happyReduction_44
happyReduction_44 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Index happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happyReduce 5 9 happyReduction_45
happyReduction_45 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Comp happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_46 = happySpecReduce_3  9 happyReduction_46
happyReduction_46 (HappyAbsSyn9  happy_var_3)
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Zip happy_var_2 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_2  9 happyReduction_47
happyReduction_47 (HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Reverse happy_var_2
	)
happyReduction_47 _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_2  9 happyReduction_48
happyReduction_48 (HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Head happy_var_2
	)
happyReduction_48 _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_2  9 happyReduction_49
happyReduction_49 (HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Tail happy_var_2
	)
happyReduction_49 _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_2  9 happyReduction_50
happyReduction_50 (HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Fst happy_var_2
	)
happyReduction_50 _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_2  9 happyReduction_51
happyReduction_51 (HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Snd happy_var_2
	)
happyReduction_51 _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  10 happyReduction_52
happyReduction_52 _
	 =  HappyAbsSyn10
		 (TInt
	)

happyReduce_53 = happySpecReduce_1  10 happyReduction_53
happyReduction_53 _
	 =  HappyAbsSyn10
		 (TBool
	)

happyReduce_54 = happySpecReduce_1  10 happyReduction_54
happyReduction_54 _
	 =  HappyAbsSyn10
		 (TFloat
	)

happyReduce_55 = happySpecReduce_3  10 happyReduction_55
happyReduction_55 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (TList happy_var_2
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happyReduce 5 10 happyReduction_56
happyReduction_56 (_ `HappyStk`
	(HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (TPair happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_57 = happySpecReduce_0  11 happyReduction_57
happyReduction_57  =  HappyAbsSyn11
		 ([]
	)

happyReduce_58 = happySpecReduce_3  11 happyReduction_58
happyReduction_58 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1:happy_var_3
	)
happyReduction_58 _ _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_1  11 happyReduction_59
happyReduction_59 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1]
	)
happyReduction_59 _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  12 happyReduction_60
happyReduction_60 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn12
		 ([happy_var_1]
	)
happyReduction_60 _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_2  12 happyReduction_61
happyReduction_61 (HappyAbsSyn12  happy_var_2)
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1:happy_var_2
	)
happyReduction_61 _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_3  13 happyReduction_62
happyReduction_62 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1:happy_var_3
	)
happyReduction_62 _ _ _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_1  13 happyReduction_63
happyReduction_63 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 ([happy_var_1]
	)
happyReduction_63 _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_3  14 happyReduction_64
happyReduction_64 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn14
		 (Member happy_var_1 happy_var_3
	)
happyReduction_64 _ _ _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_1  14 happyReduction_65
happyReduction_65 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn14
		 (Prop happy_var_1
	)
happyReduction_65 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 68 68 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	T _ TokenZip -> cont 15;
	T _ TokenReverse -> cont 16;
	T _ TokenHead -> cont 17;
	T _ TokenTail -> cont 18;
	T _ TokenFst -> cont 19;
	T _ TokenSnd -> cont 20;
	T _ TokenLambda -> cont 21;
	T _ (TokenString happy_dollar_dollar) -> cont 22;
	T _ (TokenIdent happy_dollar_dollar) -> cont 23;
	T _ (TokenInt happy_dollar_dollar) -> cont 24;
	T _ (TokenFloat happy_dollar_dollar) -> cont 25;
	T _ TokenTrue -> cont 26;
	T _ TokenFalse -> cont 27;
	T _ TokenReturn -> cont 28;
	T _ TokenIf -> cont 29;
	T _ TokenThen -> cont 30;
	T _ TokenElse -> cont 31;
	T _ TokenDoubleAdd -> cont 32;
	T _ TokenDoubleEqual -> cont 33;
	T _ TokenNotEqual -> cont 34;
	T _ TokenAnd -> cont 35;
	T _ TokenOr -> cont 36;
	T _ TokenAddEqual -> cont 37;
	T _ TokenSubEqual -> cont 38;
	T _ TokenMultEqual -> cont 39;
	T _ TokenDivEqual -> cont 40;
	T _ TokenIndex -> cont 41;
	T _ TokenMember -> cont 42;
	T _ TokenArrow -> cont 43;
	T _ TokenLessEqual -> cont 44;
	T _ TokenMoreEqual -> cont 45;
	T _ TokenCons -> cont 46;
	T _ TokenMore -> cont 47;
	T _ TokenLess -> cont 48;
	T _ TokenAdd -> cont 49;
	T _ TokenSub -> cont 50;
	T _ TokenMult -> cont 51;
	T _ TokenDiv -> cont 52;
	T _ TokenMod -> cont 53;
	T _ TokenExponent -> cont 54;
	T _ TokenEqual -> cont 55;
	T _ TokenLParen -> cont 56;
	T _ TokenRParen -> cont 57;
	T _ TokenLList -> cont 58;
	T _ TokenRList -> cont 59;
	T _ TokenLBlock -> cont 60;
	T _ TokenRBlock -> cont 61;
	T _ TokenLine -> cont 62;
	T _ TokenComma -> cont 63;
	T _ TokenTypeInt -> cont 64;
	T _ TokenTypeFloat -> cont 65;
	T _ TokenTypeBool -> cont 66;
	T _ TokenEOL -> cont 67;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 68 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parseStreamLang tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error"
parseError (t:ts) = let (l, c) = tokenPosn t in error ("Parse error at "++show l++":"++show c)

type Prog = [Sect]

type Sect = (String, Block)

type Block = [Statement]

data Type = TInt | TFloat | TBool | TList Type | TPair Type Type | TFun Type Type | TAny
            deriving (Show,Eq)

type Environment = [(String, Expr)]
type TEnvironment = [(String, Type)]


data Statement = Return [Expr] | Assign Assignment
               deriving (Eq, Show)

data Assignment = Def String Expr | Inc String Expr | Dec String Expr
                | MultVal String Expr | DivVal String Expr
                deriving (Eq, Show)

data Expr = Int_ Int | Float_ Float | True_ | False_ | List [Expr] | Pair Expr Expr
          | Ident Int | Add Expr Expr | Sub Expr Expr | Mult Expr Expr
          | Div Expr Expr | Mod Expr Expr | Cons Expr Expr | Append Expr Expr
          | If Expr Expr Expr | Lam String Type Expr | Less Expr Expr | More Expr Expr
          | LessEq Expr Expr | MoreEq Expr Expr | Equal Expr Expr | NEqual Expr Expr
          | App Expr Expr | Index Expr Expr | Comp Expr [Pred] | Exponent Expr Expr
          | Var String | And Expr Expr | Or Expr Expr
          | Head Expr | Tail Expr | Fst Expr | Snd Expr
          | Zip Expr Expr | Reverse Expr
          | Cl String Type Expr Environment
          deriving (Show,Eq)

data Pred = Member Expr Expr | Prop Expr
          deriving (Eq, Show)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4














































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}

















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8814_0/ghc_2.h" #-}




























































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
