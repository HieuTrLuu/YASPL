{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13
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

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,693) ([16384,1,0,0,0,0,0,0,0,0,0,20480,0,0,0,0,0,4096,0,0,6144,64,0,0,0,1,64,0,0,16384,16,0,0,16640,0,0,0,0,0,0,0,0,0,8,4160,0,0,0,0,0,1024,0,7680,2048,0,3064,0,1344,0,0,0,32,0,0,16384,0,260,0,0,0,0,0,8,4160,0,0,0,0,0,0,65024,8690,22527,1,0,0,16384,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3064,0,1344,57344,47,0,21,49024,0,21504,0,766,0,336,63488,11,16384,5,12256,0,5376,32768,191,0,84,65024,2,20480,1,3064,0,1344,0,0,0,0,0,0,0,0,0,0,0,63488,34763,24572,5,12256,61983,5503,32768,31935,65480,85,65024,8690,22527,1,52216,64647,1375,57344,7983,32754,85,49024,51324,22015,2,0,0,128,63488,34763,57340,37,28640,61983,5503,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,49024,0,21504,0,766,0,336,63488,11,16384,5,12256,0,5376,32768,191,0,84,65024,2,20480,1,3064,0,1344,57344,47,0,21,49024,0,21504,0,766,0,336,63488,11,16384,5,12256,0,5376,32768,191,0,84,65024,2,20480,1,3064,0,1344,57344,47,0,21,49024,0,21504,0,0,0,512,0,0,0,0,0,0,0,32768,191,0,85,65024,2,21504,1,3064,0,1368,57344,47,24576,21,49024,0,21984,0,766,32768,343,63488,34763,24464,5,12256,16927,5502,32768,191,63752,85,65024,8690,22500,1,52216,36999,1375,57344,47,32258,21,49024,2052,22009,0,4862,58400,343,63488,34379,24464,5,12256,16921,5502,32768,191,63752,85,65024,2,20480,1,0,0,0,57344,47,0,21,0,0,0,0,766,0,336,0,0,0,0,12256,0,5376,32768,191,0,84,65024,25074,22527,1,0,0,2048,0,0,0,128,0,0,0,0,62206,65313,375,63488,34795,24572,5,12256,0,5502,32768,191,0,84,0,0,0,0,3064,0,1344,0,0,0,0,49024,0,21504,0,62206,65313,343,0,0,0,0,4032,0,5376,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseStreamLang","Prog","Sect","Block","Statement","Assignment","Expr","Conts","Args","PredList","Pred","lam","string","ident","int","float","true","false","return","if","then","else","'++'","'=='","'!='","'&&'","'||'","'+='","'-='","'*='","'/='","'!!'","'<-'","'->'","'<='","'>='","':'","'>'","'<'","'+'","'-'","'*'","'/'","'%'","'^'","'='","'('","')'","'['","']'","'{'","'}'","'|'","','","EOL","%eof"]
        bit_start = st * 58
        bit_end = (st + 1) * 58
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..57]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (15) = happyShift action_4
action_0 (17) = happyShift action_5
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (58) = happyAccept
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (15) = happyShift action_4
action_3 (17) = happyShift action_5
action_3 (4) = happyGoto action_10
action_3 (5) = happyGoto action_3
action_3 _ = happyReduce_1

action_4 (53) = happyShift action_9
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (42) = happyShift action_6
action_5 (43) = happyShift action_7
action_5 (53) = happyShift action_8
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (53) = happyShift action_18
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (17) = happyShift action_17
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (15) = happyShift action_14
action_8 (21) = happyShift action_15
action_8 (6) = happyGoto action_16
action_8 (7) = happyGoto action_12
action_8 (8) = happyGoto action_13
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (15) = happyShift action_14
action_9 (21) = happyShift action_15
action_9 (6) = happyGoto action_11
action_9 (7) = happyGoto action_12
action_9 (8) = happyGoto action_13
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_2

action_11 (54) = happyShift action_42
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (15) = happyShift action_14
action_12 (21) = happyShift action_15
action_12 (6) = happyGoto action_41
action_12 (7) = happyGoto action_12
action_12 (8) = happyGoto action_13
action_12 _ = happyReduce_8

action_13 (57) = happyShift action_40
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (30) = happyShift action_35
action_14 (31) = happyShift action_36
action_14 (32) = happyShift action_37
action_14 (33) = happyShift action_38
action_14 (48) = happyShift action_39
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (14) = happyShift action_24
action_15 (15) = happyShift action_25
action_15 (16) = happyShift action_26
action_15 (17) = happyShift action_27
action_15 (18) = happyShift action_28
action_15 (19) = happyShift action_29
action_15 (20) = happyShift action_30
action_15 (22) = happyShift action_31
action_15 (49) = happyShift action_32
action_15 (51) = happyShift action_33
action_15 (53) = happyShift action_34
action_15 (9) = happyGoto action_22
action_15 (11) = happyGoto action_23
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (54) = happyShift action_21
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (53) = happyShift action_20
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (15) = happyShift action_14
action_18 (21) = happyShift action_15
action_18 (6) = happyGoto action_19
action_18 (7) = happyGoto action_12
action_18 (8) = happyGoto action_13
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (54) = happyShift action_75
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (15) = happyShift action_14
action_20 (21) = happyShift action_15
action_20 (6) = happyGoto action_74
action_20 (7) = happyGoto action_12
action_20 (8) = happyGoto action_13
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_5

action_22 (14) = happyShift action_24
action_22 (15) = happyShift action_25
action_22 (16) = happyShift action_26
action_22 (17) = happyShift action_27
action_22 (18) = happyShift action_28
action_22 (19) = happyShift action_29
action_22 (20) = happyShift action_30
action_22 (22) = happyShift action_31
action_22 (25) = happyShift action_57
action_22 (26) = happyShift action_58
action_22 (27) = happyShift action_59
action_22 (28) = happyShift action_60
action_22 (29) = happyShift action_61
action_22 (34) = happyShift action_62
action_22 (37) = happyShift action_63
action_22 (38) = happyShift action_64
action_22 (39) = happyShift action_65
action_22 (40) = happyShift action_66
action_22 (41) = happyShift action_67
action_22 (42) = happyShift action_68
action_22 (43) = happyShift action_69
action_22 (44) = happyShift action_70
action_22 (45) = happyShift action_71
action_22 (46) = happyShift action_72
action_22 (47) = happyShift action_73
action_22 (49) = happyShift action_32
action_22 (51) = happyShift action_33
action_22 (53) = happyShift action_34
action_22 (9) = happyGoto action_55
action_22 (11) = happyGoto action_56
action_22 _ = happyReduce_49

action_23 (57) = happyShift action_54
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (15) = happyShift action_53
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_21

action_26 _ = happyReduce_24

action_27 _ = happyReduce_17

action_28 _ = happyReduce_18

action_29 _ = happyReduce_19

action_30 _ = happyReduce_20

action_31 (14) = happyShift action_24
action_31 (15) = happyShift action_25
action_31 (16) = happyShift action_26
action_31 (17) = happyShift action_27
action_31 (18) = happyShift action_28
action_31 (19) = happyShift action_29
action_31 (20) = happyShift action_30
action_31 (22) = happyShift action_31
action_31 (49) = happyShift action_32
action_31 (51) = happyShift action_33
action_31 (53) = happyShift action_34
action_31 (9) = happyGoto action_52
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (14) = happyShift action_24
action_32 (15) = happyShift action_25
action_32 (16) = happyShift action_26
action_32 (17) = happyShift action_27
action_32 (18) = happyShift action_28
action_32 (19) = happyShift action_29
action_32 (20) = happyShift action_30
action_32 (22) = happyShift action_31
action_32 (49) = happyShift action_32
action_32 (51) = happyShift action_33
action_32 (53) = happyShift action_34
action_32 (9) = happyGoto action_51
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (14) = happyShift action_24
action_33 (15) = happyShift action_25
action_33 (16) = happyShift action_26
action_33 (17) = happyShift action_27
action_33 (18) = happyShift action_28
action_33 (19) = happyShift action_29
action_33 (20) = happyShift action_30
action_33 (22) = happyShift action_31
action_33 (49) = happyShift action_32
action_33 (51) = happyShift action_33
action_33 (53) = happyShift action_34
action_33 (9) = happyGoto action_49
action_33 (10) = happyGoto action_50
action_33 _ = happyReduce_46

action_34 (14) = happyShift action_24
action_34 (15) = happyShift action_25
action_34 (16) = happyShift action_26
action_34 (17) = happyShift action_27
action_34 (18) = happyShift action_28
action_34 (19) = happyShift action_29
action_34 (20) = happyShift action_30
action_34 (22) = happyShift action_31
action_34 (49) = happyShift action_32
action_34 (51) = happyShift action_33
action_34 (53) = happyShift action_34
action_34 (9) = happyGoto action_48
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (14) = happyShift action_24
action_35 (15) = happyShift action_25
action_35 (16) = happyShift action_26
action_35 (17) = happyShift action_27
action_35 (18) = happyShift action_28
action_35 (19) = happyShift action_29
action_35 (20) = happyShift action_30
action_35 (22) = happyShift action_31
action_35 (49) = happyShift action_32
action_35 (51) = happyShift action_33
action_35 (53) = happyShift action_34
action_35 (9) = happyGoto action_47
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (14) = happyShift action_24
action_36 (15) = happyShift action_25
action_36 (16) = happyShift action_26
action_36 (17) = happyShift action_27
action_36 (18) = happyShift action_28
action_36 (19) = happyShift action_29
action_36 (20) = happyShift action_30
action_36 (22) = happyShift action_31
action_36 (49) = happyShift action_32
action_36 (51) = happyShift action_33
action_36 (53) = happyShift action_34
action_36 (9) = happyGoto action_46
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (14) = happyShift action_24
action_37 (15) = happyShift action_25
action_37 (16) = happyShift action_26
action_37 (17) = happyShift action_27
action_37 (18) = happyShift action_28
action_37 (19) = happyShift action_29
action_37 (20) = happyShift action_30
action_37 (22) = happyShift action_31
action_37 (49) = happyShift action_32
action_37 (51) = happyShift action_33
action_37 (53) = happyShift action_34
action_37 (9) = happyGoto action_45
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (14) = happyShift action_24
action_38 (15) = happyShift action_25
action_38 (16) = happyShift action_26
action_38 (17) = happyShift action_27
action_38 (18) = happyShift action_28
action_38 (19) = happyShift action_29
action_38 (20) = happyShift action_30
action_38 (22) = happyShift action_31
action_38 (49) = happyShift action_32
action_38 (51) = happyShift action_33
action_38 (53) = happyShift action_34
action_38 (9) = happyGoto action_44
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (14) = happyShift action_24
action_39 (15) = happyShift action_25
action_39 (16) = happyShift action_26
action_39 (17) = happyShift action_27
action_39 (18) = happyShift action_28
action_39 (19) = happyShift action_29
action_39 (20) = happyShift action_30
action_39 (22) = happyShift action_31
action_39 (49) = happyShift action_32
action_39 (51) = happyShift action_33
action_39 (53) = happyShift action_34
action_39 (9) = happyGoto action_43
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_10

action_41 _ = happyReduce_7

action_42 _ = happyReduce_6

action_43 (14) = happyShift action_24
action_43 (15) = happyShift action_25
action_43 (16) = happyShift action_26
action_43 (17) = happyShift action_27
action_43 (18) = happyShift action_28
action_43 (19) = happyShift action_29
action_43 (20) = happyShift action_30
action_43 (22) = happyShift action_31
action_43 (25) = happyShift action_57
action_43 (26) = happyShift action_58
action_43 (27) = happyShift action_59
action_43 (28) = happyShift action_60
action_43 (29) = happyShift action_61
action_43 (34) = happyShift action_62
action_43 (37) = happyShift action_63
action_43 (38) = happyShift action_64
action_43 (39) = happyShift action_65
action_43 (40) = happyShift action_66
action_43 (41) = happyShift action_67
action_43 (42) = happyShift action_68
action_43 (43) = happyShift action_69
action_43 (44) = happyShift action_70
action_43 (45) = happyShift action_71
action_43 (46) = happyShift action_72
action_43 (47) = happyShift action_73
action_43 (49) = happyShift action_32
action_43 (51) = happyShift action_33
action_43 (53) = happyShift action_34
action_43 (9) = happyGoto action_95
action_43 _ = happyReduce_11

action_44 (14) = happyShift action_24
action_44 (15) = happyShift action_25
action_44 (16) = happyShift action_26
action_44 (17) = happyShift action_27
action_44 (18) = happyShift action_28
action_44 (19) = happyShift action_29
action_44 (20) = happyShift action_30
action_44 (22) = happyShift action_31
action_44 (25) = happyShift action_57
action_44 (26) = happyShift action_58
action_44 (27) = happyShift action_59
action_44 (28) = happyShift action_60
action_44 (29) = happyShift action_61
action_44 (34) = happyShift action_62
action_44 (37) = happyShift action_63
action_44 (38) = happyShift action_64
action_44 (39) = happyShift action_65
action_44 (40) = happyShift action_66
action_44 (41) = happyShift action_67
action_44 (42) = happyShift action_68
action_44 (43) = happyShift action_69
action_44 (44) = happyShift action_70
action_44 (45) = happyShift action_71
action_44 (46) = happyShift action_72
action_44 (47) = happyShift action_73
action_44 (49) = happyShift action_32
action_44 (51) = happyShift action_33
action_44 (53) = happyShift action_34
action_44 (9) = happyGoto action_95
action_44 _ = happyReduce_15

action_45 (14) = happyShift action_24
action_45 (15) = happyShift action_25
action_45 (16) = happyShift action_26
action_45 (17) = happyShift action_27
action_45 (18) = happyShift action_28
action_45 (19) = happyShift action_29
action_45 (20) = happyShift action_30
action_45 (22) = happyShift action_31
action_45 (25) = happyShift action_57
action_45 (26) = happyShift action_58
action_45 (27) = happyShift action_59
action_45 (28) = happyShift action_60
action_45 (29) = happyShift action_61
action_45 (34) = happyShift action_62
action_45 (37) = happyShift action_63
action_45 (38) = happyShift action_64
action_45 (39) = happyShift action_65
action_45 (40) = happyShift action_66
action_45 (41) = happyShift action_67
action_45 (42) = happyShift action_68
action_45 (43) = happyShift action_69
action_45 (44) = happyShift action_70
action_45 (45) = happyShift action_71
action_45 (46) = happyShift action_72
action_45 (47) = happyShift action_73
action_45 (49) = happyShift action_32
action_45 (51) = happyShift action_33
action_45 (53) = happyShift action_34
action_45 (9) = happyGoto action_95
action_45 _ = happyReduce_14

action_46 (14) = happyShift action_24
action_46 (15) = happyShift action_25
action_46 (16) = happyShift action_26
action_46 (17) = happyShift action_27
action_46 (18) = happyShift action_28
action_46 (19) = happyShift action_29
action_46 (20) = happyShift action_30
action_46 (22) = happyShift action_31
action_46 (25) = happyShift action_57
action_46 (26) = happyShift action_58
action_46 (27) = happyShift action_59
action_46 (28) = happyShift action_60
action_46 (29) = happyShift action_61
action_46 (34) = happyShift action_62
action_46 (37) = happyShift action_63
action_46 (38) = happyShift action_64
action_46 (39) = happyShift action_65
action_46 (40) = happyShift action_66
action_46 (41) = happyShift action_67
action_46 (42) = happyShift action_68
action_46 (43) = happyShift action_69
action_46 (44) = happyShift action_70
action_46 (45) = happyShift action_71
action_46 (46) = happyShift action_72
action_46 (47) = happyShift action_73
action_46 (49) = happyShift action_32
action_46 (51) = happyShift action_33
action_46 (53) = happyShift action_34
action_46 (9) = happyGoto action_95
action_46 _ = happyReduce_13

action_47 (14) = happyShift action_24
action_47 (15) = happyShift action_25
action_47 (16) = happyShift action_26
action_47 (17) = happyShift action_27
action_47 (18) = happyShift action_28
action_47 (19) = happyShift action_29
action_47 (20) = happyShift action_30
action_47 (22) = happyShift action_31
action_47 (25) = happyShift action_57
action_47 (26) = happyShift action_58
action_47 (27) = happyShift action_59
action_47 (28) = happyShift action_60
action_47 (29) = happyShift action_61
action_47 (34) = happyShift action_62
action_47 (37) = happyShift action_63
action_47 (38) = happyShift action_64
action_47 (39) = happyShift action_65
action_47 (40) = happyShift action_66
action_47 (41) = happyShift action_67
action_47 (42) = happyShift action_68
action_47 (43) = happyShift action_69
action_47 (44) = happyShift action_70
action_47 (45) = happyShift action_71
action_47 (46) = happyShift action_72
action_47 (47) = happyShift action_73
action_47 (49) = happyShift action_32
action_47 (51) = happyShift action_33
action_47 (53) = happyShift action_34
action_47 (9) = happyGoto action_95
action_47 _ = happyReduce_12

action_48 (14) = happyShift action_24
action_48 (15) = happyShift action_25
action_48 (16) = happyShift action_26
action_48 (17) = happyShift action_27
action_48 (18) = happyShift action_28
action_48 (19) = happyShift action_29
action_48 (20) = happyShift action_30
action_48 (22) = happyShift action_31
action_48 (25) = happyShift action_57
action_48 (26) = happyShift action_58
action_48 (27) = happyShift action_59
action_48 (28) = happyShift action_60
action_48 (29) = happyShift action_61
action_48 (34) = happyShift action_62
action_48 (37) = happyShift action_63
action_48 (38) = happyShift action_64
action_48 (39) = happyShift action_65
action_48 (40) = happyShift action_66
action_48 (41) = happyShift action_67
action_48 (42) = happyShift action_68
action_48 (43) = happyShift action_69
action_48 (44) = happyShift action_70
action_48 (45) = happyShift action_71
action_48 (46) = happyShift action_72
action_48 (47) = happyShift action_73
action_48 (49) = happyShift action_32
action_48 (51) = happyShift action_33
action_48 (53) = happyShift action_34
action_48 (55) = happyShift action_101
action_48 (9) = happyGoto action_95
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (14) = happyShift action_24
action_49 (15) = happyShift action_25
action_49 (16) = happyShift action_26
action_49 (17) = happyShift action_27
action_49 (18) = happyShift action_28
action_49 (19) = happyShift action_29
action_49 (20) = happyShift action_30
action_49 (22) = happyShift action_31
action_49 (25) = happyShift action_57
action_49 (26) = happyShift action_58
action_49 (27) = happyShift action_59
action_49 (28) = happyShift action_60
action_49 (29) = happyShift action_61
action_49 (34) = happyShift action_62
action_49 (37) = happyShift action_63
action_49 (38) = happyShift action_64
action_49 (39) = happyShift action_65
action_49 (40) = happyShift action_66
action_49 (41) = happyShift action_67
action_49 (42) = happyShift action_68
action_49 (43) = happyShift action_69
action_49 (44) = happyShift action_70
action_49 (45) = happyShift action_71
action_49 (46) = happyShift action_72
action_49 (47) = happyShift action_73
action_49 (49) = happyShift action_32
action_49 (51) = happyShift action_33
action_49 (53) = happyShift action_34
action_49 (56) = happyShift action_100
action_49 (9) = happyGoto action_95
action_49 _ = happyReduce_48

action_50 (52) = happyShift action_99
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (14) = happyShift action_24
action_51 (15) = happyShift action_25
action_51 (16) = happyShift action_26
action_51 (17) = happyShift action_27
action_51 (18) = happyShift action_28
action_51 (19) = happyShift action_29
action_51 (20) = happyShift action_30
action_51 (22) = happyShift action_31
action_51 (25) = happyShift action_57
action_51 (26) = happyShift action_58
action_51 (27) = happyShift action_59
action_51 (28) = happyShift action_60
action_51 (29) = happyShift action_61
action_51 (34) = happyShift action_62
action_51 (37) = happyShift action_63
action_51 (38) = happyShift action_64
action_51 (39) = happyShift action_65
action_51 (40) = happyShift action_66
action_51 (41) = happyShift action_67
action_51 (42) = happyShift action_68
action_51 (43) = happyShift action_69
action_51 (44) = happyShift action_70
action_51 (45) = happyShift action_71
action_51 (46) = happyShift action_72
action_51 (47) = happyShift action_73
action_51 (49) = happyShift action_32
action_51 (50) = happyShift action_97
action_51 (51) = happyShift action_33
action_51 (53) = happyShift action_34
action_51 (56) = happyShift action_98
action_51 (9) = happyGoto action_95
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (14) = happyShift action_24
action_52 (15) = happyShift action_25
action_52 (16) = happyShift action_26
action_52 (17) = happyShift action_27
action_52 (18) = happyShift action_28
action_52 (19) = happyShift action_29
action_52 (20) = happyShift action_30
action_52 (22) = happyShift action_31
action_52 (23) = happyShift action_96
action_52 (25) = happyShift action_57
action_52 (26) = happyShift action_58
action_52 (27) = happyShift action_59
action_52 (28) = happyShift action_60
action_52 (29) = happyShift action_61
action_52 (34) = happyShift action_62
action_52 (37) = happyShift action_63
action_52 (38) = happyShift action_64
action_52 (39) = happyShift action_65
action_52 (40) = happyShift action_66
action_52 (41) = happyShift action_67
action_52 (42) = happyShift action_68
action_52 (43) = happyShift action_69
action_52 (44) = happyShift action_70
action_52 (45) = happyShift action_71
action_52 (46) = happyShift action_72
action_52 (47) = happyShift action_73
action_52 (49) = happyShift action_32
action_52 (51) = happyShift action_33
action_52 (53) = happyShift action_34
action_52 (9) = happyGoto action_95
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (36) = happyShift action_94
action_53 _ = happyFail (happyExpListPerState 53)

action_54 _ = happyReduce_9

action_55 (57) = happyReduce_49
action_55 (9) = happyGoto action_55
action_55 (11) = happyGoto action_56
action_55 _ = happyReduce_16

action_56 _ = happyReduce_50

action_57 (14) = happyShift action_24
action_57 (15) = happyShift action_25
action_57 (16) = happyShift action_26
action_57 (17) = happyShift action_27
action_57 (18) = happyShift action_28
action_57 (19) = happyShift action_29
action_57 (20) = happyShift action_30
action_57 (22) = happyShift action_31
action_57 (49) = happyShift action_32
action_57 (51) = happyShift action_33
action_57 (53) = happyShift action_34
action_57 (9) = happyGoto action_93
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (14) = happyShift action_24
action_58 (15) = happyShift action_25
action_58 (16) = happyShift action_26
action_58 (17) = happyShift action_27
action_58 (18) = happyShift action_28
action_58 (19) = happyShift action_29
action_58 (20) = happyShift action_30
action_58 (22) = happyShift action_31
action_58 (49) = happyShift action_32
action_58 (51) = happyShift action_33
action_58 (53) = happyShift action_34
action_58 (9) = happyGoto action_92
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (14) = happyShift action_24
action_59 (15) = happyShift action_25
action_59 (16) = happyShift action_26
action_59 (17) = happyShift action_27
action_59 (18) = happyShift action_28
action_59 (19) = happyShift action_29
action_59 (20) = happyShift action_30
action_59 (22) = happyShift action_31
action_59 (49) = happyShift action_32
action_59 (51) = happyShift action_33
action_59 (53) = happyShift action_34
action_59 (9) = happyGoto action_91
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (14) = happyShift action_24
action_60 (15) = happyShift action_25
action_60 (16) = happyShift action_26
action_60 (17) = happyShift action_27
action_60 (18) = happyShift action_28
action_60 (19) = happyShift action_29
action_60 (20) = happyShift action_30
action_60 (22) = happyShift action_31
action_60 (49) = happyShift action_32
action_60 (51) = happyShift action_33
action_60 (53) = happyShift action_34
action_60 (9) = happyGoto action_90
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (14) = happyShift action_24
action_61 (15) = happyShift action_25
action_61 (16) = happyShift action_26
action_61 (17) = happyShift action_27
action_61 (18) = happyShift action_28
action_61 (19) = happyShift action_29
action_61 (20) = happyShift action_30
action_61 (22) = happyShift action_31
action_61 (49) = happyShift action_32
action_61 (51) = happyShift action_33
action_61 (53) = happyShift action_34
action_61 (9) = happyGoto action_89
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (14) = happyShift action_24
action_62 (15) = happyShift action_25
action_62 (16) = happyShift action_26
action_62 (17) = happyShift action_27
action_62 (18) = happyShift action_28
action_62 (19) = happyShift action_29
action_62 (20) = happyShift action_30
action_62 (22) = happyShift action_31
action_62 (49) = happyShift action_32
action_62 (51) = happyShift action_33
action_62 (53) = happyShift action_34
action_62 (9) = happyGoto action_88
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (14) = happyShift action_24
action_63 (15) = happyShift action_25
action_63 (16) = happyShift action_26
action_63 (17) = happyShift action_27
action_63 (18) = happyShift action_28
action_63 (19) = happyShift action_29
action_63 (20) = happyShift action_30
action_63 (22) = happyShift action_31
action_63 (49) = happyShift action_32
action_63 (51) = happyShift action_33
action_63 (53) = happyShift action_34
action_63 (9) = happyGoto action_87
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (14) = happyShift action_24
action_64 (15) = happyShift action_25
action_64 (16) = happyShift action_26
action_64 (17) = happyShift action_27
action_64 (18) = happyShift action_28
action_64 (19) = happyShift action_29
action_64 (20) = happyShift action_30
action_64 (22) = happyShift action_31
action_64 (49) = happyShift action_32
action_64 (51) = happyShift action_33
action_64 (53) = happyShift action_34
action_64 (9) = happyGoto action_86
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (14) = happyShift action_24
action_65 (15) = happyShift action_25
action_65 (16) = happyShift action_26
action_65 (17) = happyShift action_27
action_65 (18) = happyShift action_28
action_65 (19) = happyShift action_29
action_65 (20) = happyShift action_30
action_65 (22) = happyShift action_31
action_65 (49) = happyShift action_32
action_65 (51) = happyShift action_33
action_65 (53) = happyShift action_34
action_65 (9) = happyGoto action_85
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (14) = happyShift action_24
action_66 (15) = happyShift action_25
action_66 (16) = happyShift action_26
action_66 (17) = happyShift action_27
action_66 (18) = happyShift action_28
action_66 (19) = happyShift action_29
action_66 (20) = happyShift action_30
action_66 (22) = happyShift action_31
action_66 (49) = happyShift action_32
action_66 (51) = happyShift action_33
action_66 (53) = happyShift action_34
action_66 (9) = happyGoto action_84
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (14) = happyShift action_24
action_67 (15) = happyShift action_25
action_67 (16) = happyShift action_26
action_67 (17) = happyShift action_27
action_67 (18) = happyShift action_28
action_67 (19) = happyShift action_29
action_67 (20) = happyShift action_30
action_67 (22) = happyShift action_31
action_67 (49) = happyShift action_32
action_67 (51) = happyShift action_33
action_67 (53) = happyShift action_34
action_67 (9) = happyGoto action_83
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (14) = happyShift action_24
action_68 (15) = happyShift action_25
action_68 (16) = happyShift action_26
action_68 (17) = happyShift action_27
action_68 (18) = happyShift action_28
action_68 (19) = happyShift action_29
action_68 (20) = happyShift action_30
action_68 (22) = happyShift action_31
action_68 (49) = happyShift action_32
action_68 (51) = happyShift action_33
action_68 (53) = happyShift action_34
action_68 (9) = happyGoto action_82
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (14) = happyShift action_24
action_69 (15) = happyShift action_25
action_69 (16) = happyShift action_26
action_69 (17) = happyShift action_27
action_69 (18) = happyShift action_28
action_69 (19) = happyShift action_29
action_69 (20) = happyShift action_30
action_69 (22) = happyShift action_31
action_69 (49) = happyShift action_32
action_69 (51) = happyShift action_33
action_69 (53) = happyShift action_34
action_69 (9) = happyGoto action_81
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (14) = happyShift action_24
action_70 (15) = happyShift action_25
action_70 (16) = happyShift action_26
action_70 (17) = happyShift action_27
action_70 (18) = happyShift action_28
action_70 (19) = happyShift action_29
action_70 (20) = happyShift action_30
action_70 (22) = happyShift action_31
action_70 (49) = happyShift action_32
action_70 (51) = happyShift action_33
action_70 (53) = happyShift action_34
action_70 (9) = happyGoto action_80
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (14) = happyShift action_24
action_71 (15) = happyShift action_25
action_71 (16) = happyShift action_26
action_71 (17) = happyShift action_27
action_71 (18) = happyShift action_28
action_71 (19) = happyShift action_29
action_71 (20) = happyShift action_30
action_71 (22) = happyShift action_31
action_71 (49) = happyShift action_32
action_71 (51) = happyShift action_33
action_71 (53) = happyShift action_34
action_71 (9) = happyGoto action_79
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (14) = happyShift action_24
action_72 (15) = happyShift action_25
action_72 (16) = happyShift action_26
action_72 (17) = happyShift action_27
action_72 (18) = happyShift action_28
action_72 (19) = happyShift action_29
action_72 (20) = happyShift action_30
action_72 (22) = happyShift action_31
action_72 (49) = happyShift action_32
action_72 (51) = happyShift action_33
action_72 (53) = happyShift action_34
action_72 (9) = happyGoto action_78
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (14) = happyShift action_24
action_73 (15) = happyShift action_25
action_73 (16) = happyShift action_26
action_73 (17) = happyShift action_27
action_73 (18) = happyShift action_28
action_73 (19) = happyShift action_29
action_73 (20) = happyShift action_30
action_73 (22) = happyShift action_31
action_73 (49) = happyShift action_32
action_73 (51) = happyShift action_33
action_73 (53) = happyShift action_34
action_73 (9) = happyGoto action_77
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (54) = happyShift action_76
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_3

action_76 _ = happyReduce_4

action_77 (14) = happyShift action_24
action_77 (15) = happyShift action_25
action_77 (16) = happyShift action_26
action_77 (17) = happyShift action_27
action_77 (18) = happyShift action_28
action_77 (19) = happyShift action_29
action_77 (20) = happyShift action_30
action_77 (22) = happyShift action_31
action_77 (47) = happyShift action_73
action_77 (49) = happyShift action_32
action_77 (51) = happyShift action_33
action_77 (53) = happyShift action_34
action_77 (9) = happyGoto action_95
action_77 _ = happyReduce_29

action_78 (14) = happyShift action_24
action_78 (15) = happyShift action_25
action_78 (16) = happyShift action_26
action_78 (17) = happyShift action_27
action_78 (18) = happyShift action_28
action_78 (19) = happyShift action_29
action_78 (20) = happyShift action_30
action_78 (22) = happyShift action_31
action_78 (47) = happyShift action_73
action_78 (49) = happyShift action_32
action_78 (51) = happyShift action_33
action_78 (53) = happyShift action_34
action_78 (9) = happyGoto action_95
action_78 _ = happyReduce_30

action_79 (14) = happyShift action_24
action_79 (15) = happyShift action_25
action_79 (16) = happyShift action_26
action_79 (17) = happyShift action_27
action_79 (18) = happyShift action_28
action_79 (19) = happyShift action_29
action_79 (20) = happyShift action_30
action_79 (22) = happyShift action_31
action_79 (46) = happyShift action_72
action_79 (47) = happyShift action_73
action_79 (49) = happyShift action_32
action_79 (51) = happyShift action_33
action_79 (53) = happyShift action_34
action_79 (9) = happyGoto action_95
action_79 _ = happyReduce_28

action_80 (14) = happyShift action_24
action_80 (15) = happyShift action_25
action_80 (16) = happyShift action_26
action_80 (17) = happyShift action_27
action_80 (18) = happyShift action_28
action_80 (19) = happyShift action_29
action_80 (20) = happyShift action_30
action_80 (22) = happyShift action_31
action_80 (46) = happyShift action_72
action_80 (47) = happyShift action_73
action_80 (49) = happyShift action_32
action_80 (51) = happyShift action_33
action_80 (53) = happyShift action_34
action_80 (9) = happyGoto action_95
action_80 _ = happyReduce_27

action_81 (14) = happyShift action_24
action_81 (15) = happyShift action_25
action_81 (16) = happyShift action_26
action_81 (17) = happyShift action_27
action_81 (18) = happyShift action_28
action_81 (19) = happyShift action_29
action_81 (20) = happyShift action_30
action_81 (22) = happyShift action_31
action_81 (44) = happyShift action_70
action_81 (45) = happyShift action_71
action_81 (46) = happyShift action_72
action_81 (47) = happyShift action_73
action_81 (49) = happyShift action_32
action_81 (51) = happyShift action_33
action_81 (53) = happyShift action_34
action_81 (9) = happyGoto action_95
action_81 _ = happyReduce_26

action_82 (14) = happyShift action_24
action_82 (15) = happyShift action_25
action_82 (16) = happyShift action_26
action_82 (17) = happyShift action_27
action_82 (18) = happyShift action_28
action_82 (19) = happyShift action_29
action_82 (20) = happyShift action_30
action_82 (22) = happyShift action_31
action_82 (44) = happyShift action_70
action_82 (45) = happyShift action_71
action_82 (46) = happyShift action_72
action_82 (47) = happyShift action_73
action_82 (49) = happyShift action_32
action_82 (51) = happyShift action_33
action_82 (53) = happyShift action_34
action_82 (9) = happyGoto action_95
action_82 _ = happyReduce_25

action_83 (14) = happyShift action_24
action_83 (15) = happyShift action_25
action_83 (16) = happyShift action_26
action_83 (17) = happyShift action_27
action_83 (18) = happyShift action_28
action_83 (19) = happyShift action_29
action_83 (20) = happyShift action_30
action_83 (22) = happyShift action_31
action_83 (25) = happyShift action_57
action_83 (26) = happyShift action_58
action_83 (27) = happyShift action_59
action_83 (28) = happyShift action_60
action_83 (29) = happyShift action_61
action_83 (34) = happyShift action_62
action_83 (37) = happyFail []
action_83 (38) = happyFail []
action_83 (39) = happyShift action_65
action_83 (40) = happyFail []
action_83 (41) = happyFail []
action_83 (42) = happyShift action_68
action_83 (43) = happyShift action_69
action_83 (44) = happyShift action_70
action_83 (45) = happyShift action_71
action_83 (46) = happyShift action_72
action_83 (47) = happyShift action_73
action_83 (49) = happyShift action_32
action_83 (51) = happyShift action_33
action_83 (53) = happyShift action_34
action_83 (9) = happyGoto action_95
action_83 _ = happyReduce_36

action_84 (14) = happyShift action_24
action_84 (15) = happyShift action_25
action_84 (16) = happyShift action_26
action_84 (17) = happyShift action_27
action_84 (18) = happyShift action_28
action_84 (19) = happyShift action_29
action_84 (20) = happyShift action_30
action_84 (22) = happyShift action_31
action_84 (25) = happyShift action_57
action_84 (26) = happyShift action_58
action_84 (27) = happyShift action_59
action_84 (28) = happyShift action_60
action_84 (29) = happyShift action_61
action_84 (34) = happyShift action_62
action_84 (37) = happyFail []
action_84 (38) = happyFail []
action_84 (39) = happyShift action_65
action_84 (40) = happyFail []
action_84 (41) = happyFail []
action_84 (42) = happyShift action_68
action_84 (43) = happyShift action_69
action_84 (44) = happyShift action_70
action_84 (45) = happyShift action_71
action_84 (46) = happyShift action_72
action_84 (47) = happyShift action_73
action_84 (49) = happyShift action_32
action_84 (51) = happyShift action_33
action_84 (53) = happyShift action_34
action_84 (9) = happyGoto action_95
action_84 _ = happyReduce_37

action_85 (14) = happyShift action_24
action_85 (15) = happyShift action_25
action_85 (16) = happyShift action_26
action_85 (17) = happyShift action_27
action_85 (18) = happyShift action_28
action_85 (19) = happyShift action_29
action_85 (20) = happyShift action_30
action_85 (22) = happyShift action_31
action_85 (34) = happyShift action_62
action_85 (39) = happyShift action_65
action_85 (42) = happyShift action_68
action_85 (43) = happyShift action_69
action_85 (44) = happyShift action_70
action_85 (45) = happyShift action_71
action_85 (46) = happyShift action_72
action_85 (47) = happyShift action_73
action_85 (49) = happyShift action_32
action_85 (51) = happyShift action_33
action_85 (53) = happyShift action_34
action_85 (9) = happyGoto action_95
action_85 _ = happyReduce_31

action_86 (14) = happyShift action_24
action_86 (15) = happyShift action_25
action_86 (16) = happyShift action_26
action_86 (17) = happyShift action_27
action_86 (18) = happyShift action_28
action_86 (19) = happyShift action_29
action_86 (20) = happyShift action_30
action_86 (22) = happyShift action_31
action_86 (25) = happyShift action_57
action_86 (26) = happyShift action_58
action_86 (27) = happyShift action_59
action_86 (28) = happyShift action_60
action_86 (29) = happyShift action_61
action_86 (34) = happyShift action_62
action_86 (37) = happyFail []
action_86 (38) = happyFail []
action_86 (39) = happyShift action_65
action_86 (40) = happyFail []
action_86 (41) = happyFail []
action_86 (42) = happyShift action_68
action_86 (43) = happyShift action_69
action_86 (44) = happyShift action_70
action_86 (45) = happyShift action_71
action_86 (46) = happyShift action_72
action_86 (47) = happyShift action_73
action_86 (49) = happyShift action_32
action_86 (51) = happyShift action_33
action_86 (53) = happyShift action_34
action_86 (9) = happyGoto action_95
action_86 _ = happyReduce_39

action_87 (14) = happyShift action_24
action_87 (15) = happyShift action_25
action_87 (16) = happyShift action_26
action_87 (17) = happyShift action_27
action_87 (18) = happyShift action_28
action_87 (19) = happyShift action_29
action_87 (20) = happyShift action_30
action_87 (22) = happyShift action_31
action_87 (25) = happyShift action_57
action_87 (26) = happyShift action_58
action_87 (27) = happyShift action_59
action_87 (28) = happyShift action_60
action_87 (29) = happyShift action_61
action_87 (34) = happyShift action_62
action_87 (37) = happyFail []
action_87 (38) = happyFail []
action_87 (39) = happyShift action_65
action_87 (40) = happyFail []
action_87 (41) = happyFail []
action_87 (42) = happyShift action_68
action_87 (43) = happyShift action_69
action_87 (44) = happyShift action_70
action_87 (45) = happyShift action_71
action_87 (46) = happyShift action_72
action_87 (47) = happyShift action_73
action_87 (49) = happyShift action_32
action_87 (51) = happyShift action_33
action_87 (53) = happyShift action_34
action_87 (9) = happyGoto action_95
action_87 _ = happyReduce_38

action_88 (14) = happyShift action_24
action_88 (15) = happyShift action_25
action_88 (16) = happyShift action_26
action_88 (17) = happyShift action_27
action_88 (18) = happyShift action_28
action_88 (19) = happyShift action_29
action_88 (20) = happyShift action_30
action_88 (22) = happyShift action_31
action_88 (34) = happyShift action_62
action_88 (42) = happyShift action_68
action_88 (43) = happyShift action_69
action_88 (44) = happyShift action_70
action_88 (45) = happyShift action_71
action_88 (46) = happyShift action_72
action_88 (47) = happyShift action_73
action_88 (49) = happyShift action_32
action_88 (51) = happyShift action_33
action_88 (53) = happyShift action_34
action_88 (9) = happyGoto action_95
action_88 _ = happyReduce_44

action_89 (14) = happyShift action_24
action_89 (15) = happyShift action_25
action_89 (16) = happyShift action_26
action_89 (17) = happyShift action_27
action_89 (18) = happyShift action_28
action_89 (19) = happyShift action_29
action_89 (20) = happyShift action_30
action_89 (22) = happyShift action_31
action_89 (25) = happyShift action_57
action_89 (34) = happyShift action_62
action_89 (39) = happyShift action_65
action_89 (42) = happyShift action_68
action_89 (43) = happyShift action_69
action_89 (44) = happyShift action_70
action_89 (45) = happyShift action_71
action_89 (46) = happyShift action_72
action_89 (47) = happyShift action_73
action_89 (49) = happyShift action_32
action_89 (51) = happyShift action_33
action_89 (53) = happyShift action_34
action_89 (9) = happyGoto action_95
action_89 _ = happyReduce_43

action_90 (14) = happyShift action_24
action_90 (15) = happyShift action_25
action_90 (16) = happyShift action_26
action_90 (17) = happyShift action_27
action_90 (18) = happyShift action_28
action_90 (19) = happyShift action_29
action_90 (20) = happyShift action_30
action_90 (22) = happyShift action_31
action_90 (25) = happyShift action_57
action_90 (34) = happyShift action_62
action_90 (39) = happyShift action_65
action_90 (42) = happyShift action_68
action_90 (43) = happyShift action_69
action_90 (44) = happyShift action_70
action_90 (45) = happyShift action_71
action_90 (46) = happyShift action_72
action_90 (47) = happyShift action_73
action_90 (49) = happyShift action_32
action_90 (51) = happyShift action_33
action_90 (53) = happyShift action_34
action_90 (9) = happyGoto action_95
action_90 _ = happyReduce_42

action_91 (14) = happyShift action_24
action_91 (15) = happyShift action_25
action_91 (16) = happyShift action_26
action_91 (17) = happyShift action_27
action_91 (18) = happyShift action_28
action_91 (19) = happyShift action_29
action_91 (20) = happyShift action_30
action_91 (22) = happyShift action_31
action_91 (25) = happyShift action_57
action_91 (26) = happyFail []
action_91 (27) = happyFail []
action_91 (28) = happyShift action_60
action_91 (29) = happyShift action_61
action_91 (34) = happyShift action_62
action_91 (39) = happyShift action_65
action_91 (42) = happyShift action_68
action_91 (43) = happyShift action_69
action_91 (44) = happyShift action_70
action_91 (45) = happyShift action_71
action_91 (46) = happyShift action_72
action_91 (47) = happyShift action_73
action_91 (49) = happyShift action_32
action_91 (51) = happyShift action_33
action_91 (53) = happyShift action_34
action_91 (9) = happyGoto action_95
action_91 _ = happyReduce_41

action_92 (14) = happyShift action_24
action_92 (15) = happyShift action_25
action_92 (16) = happyShift action_26
action_92 (17) = happyShift action_27
action_92 (18) = happyShift action_28
action_92 (19) = happyShift action_29
action_92 (20) = happyShift action_30
action_92 (22) = happyShift action_31
action_92 (25) = happyShift action_57
action_92 (26) = happyFail []
action_92 (27) = happyFail []
action_92 (28) = happyShift action_60
action_92 (29) = happyShift action_61
action_92 (34) = happyShift action_62
action_92 (39) = happyShift action_65
action_92 (42) = happyShift action_68
action_92 (43) = happyShift action_69
action_92 (44) = happyShift action_70
action_92 (45) = happyShift action_71
action_92 (46) = happyShift action_72
action_92 (47) = happyShift action_73
action_92 (49) = happyShift action_32
action_92 (51) = happyShift action_33
action_92 (53) = happyShift action_34
action_92 (9) = happyGoto action_95
action_92 _ = happyReduce_40

action_93 (14) = happyShift action_24
action_93 (15) = happyShift action_25
action_93 (16) = happyShift action_26
action_93 (17) = happyShift action_27
action_93 (18) = happyShift action_28
action_93 (19) = happyShift action_29
action_93 (20) = happyShift action_30
action_93 (22) = happyShift action_31
action_93 (34) = happyShift action_62
action_93 (39) = happyShift action_65
action_93 (42) = happyShift action_68
action_93 (43) = happyShift action_69
action_93 (44) = happyShift action_70
action_93 (45) = happyShift action_71
action_93 (46) = happyShift action_72
action_93 (47) = happyShift action_73
action_93 (49) = happyShift action_32
action_93 (51) = happyShift action_33
action_93 (53) = happyShift action_34
action_93 (9) = happyGoto action_95
action_93 _ = happyReduce_32

action_94 (14) = happyShift action_24
action_94 (15) = happyShift action_25
action_94 (16) = happyShift action_26
action_94 (17) = happyShift action_27
action_94 (18) = happyShift action_28
action_94 (19) = happyShift action_29
action_94 (20) = happyShift action_30
action_94 (22) = happyShift action_31
action_94 (49) = happyShift action_32
action_94 (51) = happyShift action_33
action_94 (53) = happyShift action_34
action_94 (9) = happyGoto action_108
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (9) = happyGoto action_95
action_95 _ = happyReduce_16

action_96 (14) = happyShift action_24
action_96 (15) = happyShift action_25
action_96 (16) = happyShift action_26
action_96 (17) = happyShift action_27
action_96 (18) = happyShift action_28
action_96 (19) = happyShift action_29
action_96 (20) = happyShift action_30
action_96 (22) = happyShift action_31
action_96 (49) = happyShift action_32
action_96 (51) = happyShift action_33
action_96 (53) = happyShift action_34
action_96 (9) = happyGoto action_107
action_96 _ = happyFail (happyExpListPerState 96)

action_97 _ = happyReduce_33

action_98 (14) = happyShift action_24
action_98 (15) = happyShift action_25
action_98 (16) = happyShift action_26
action_98 (17) = happyShift action_27
action_98 (18) = happyShift action_28
action_98 (19) = happyShift action_29
action_98 (20) = happyShift action_30
action_98 (22) = happyShift action_31
action_98 (49) = happyShift action_32
action_98 (51) = happyShift action_33
action_98 (53) = happyShift action_34
action_98 (9) = happyGoto action_106
action_98 _ = happyFail (happyExpListPerState 98)

action_99 _ = happyReduce_22

action_100 (14) = happyShift action_24
action_100 (15) = happyShift action_25
action_100 (16) = happyShift action_26
action_100 (17) = happyShift action_27
action_100 (18) = happyShift action_28
action_100 (19) = happyShift action_29
action_100 (20) = happyShift action_30
action_100 (22) = happyShift action_31
action_100 (49) = happyShift action_32
action_100 (51) = happyShift action_33
action_100 (53) = happyShift action_34
action_100 (9) = happyGoto action_49
action_100 (10) = happyGoto action_105
action_100 _ = happyReduce_46

action_101 (14) = happyShift action_24
action_101 (15) = happyShift action_25
action_101 (16) = happyShift action_26
action_101 (17) = happyShift action_27
action_101 (18) = happyShift action_28
action_101 (19) = happyShift action_29
action_101 (20) = happyShift action_30
action_101 (22) = happyShift action_31
action_101 (49) = happyShift action_32
action_101 (51) = happyShift action_33
action_101 (53) = happyShift action_34
action_101 (9) = happyGoto action_102
action_101 (12) = happyGoto action_103
action_101 (13) = happyGoto action_104
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (14) = happyShift action_24
action_102 (15) = happyShift action_25
action_102 (16) = happyShift action_26
action_102 (17) = happyShift action_27
action_102 (18) = happyShift action_28
action_102 (19) = happyShift action_29
action_102 (20) = happyShift action_30
action_102 (22) = happyShift action_31
action_102 (25) = happyShift action_57
action_102 (26) = happyShift action_58
action_102 (27) = happyShift action_59
action_102 (28) = happyShift action_60
action_102 (29) = happyShift action_61
action_102 (34) = happyShift action_62
action_102 (35) = happyShift action_113
action_102 (37) = happyShift action_63
action_102 (38) = happyShift action_64
action_102 (39) = happyShift action_65
action_102 (40) = happyShift action_66
action_102 (41) = happyShift action_67
action_102 (42) = happyShift action_68
action_102 (43) = happyShift action_69
action_102 (44) = happyShift action_70
action_102 (45) = happyShift action_71
action_102 (46) = happyShift action_72
action_102 (47) = happyShift action_73
action_102 (49) = happyShift action_32
action_102 (51) = happyShift action_33
action_102 (53) = happyShift action_34
action_102 (9) = happyGoto action_95
action_102 _ = happyReduce_54

action_103 (54) = happyShift action_112
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (56) = happyShift action_111
action_104 _ = happyReduce_52

action_105 _ = happyReduce_47

action_106 (14) = happyShift action_24
action_106 (15) = happyShift action_25
action_106 (16) = happyShift action_26
action_106 (17) = happyShift action_27
action_106 (18) = happyShift action_28
action_106 (19) = happyShift action_29
action_106 (20) = happyShift action_30
action_106 (22) = happyShift action_31
action_106 (25) = happyShift action_57
action_106 (26) = happyShift action_58
action_106 (27) = happyShift action_59
action_106 (28) = happyShift action_60
action_106 (29) = happyShift action_61
action_106 (34) = happyShift action_62
action_106 (37) = happyShift action_63
action_106 (38) = happyShift action_64
action_106 (39) = happyShift action_65
action_106 (40) = happyShift action_66
action_106 (41) = happyShift action_67
action_106 (42) = happyShift action_68
action_106 (43) = happyShift action_69
action_106 (44) = happyShift action_70
action_106 (45) = happyShift action_71
action_106 (46) = happyShift action_72
action_106 (47) = happyShift action_73
action_106 (49) = happyShift action_32
action_106 (50) = happyShift action_110
action_106 (51) = happyShift action_33
action_106 (53) = happyShift action_34
action_106 (9) = happyGoto action_95
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (14) = happyShift action_24
action_107 (15) = happyShift action_25
action_107 (16) = happyShift action_26
action_107 (17) = happyShift action_27
action_107 (18) = happyShift action_28
action_107 (19) = happyShift action_29
action_107 (20) = happyShift action_30
action_107 (22) = happyShift action_31
action_107 (24) = happyShift action_109
action_107 (25) = happyShift action_57
action_107 (26) = happyShift action_58
action_107 (27) = happyShift action_59
action_107 (28) = happyShift action_60
action_107 (29) = happyShift action_61
action_107 (34) = happyShift action_62
action_107 (37) = happyShift action_63
action_107 (38) = happyShift action_64
action_107 (39) = happyShift action_65
action_107 (40) = happyShift action_66
action_107 (41) = happyShift action_67
action_107 (42) = happyShift action_68
action_107 (43) = happyShift action_69
action_107 (44) = happyShift action_70
action_107 (45) = happyShift action_71
action_107 (46) = happyShift action_72
action_107 (47) = happyShift action_73
action_107 (49) = happyShift action_32
action_107 (51) = happyShift action_33
action_107 (53) = happyShift action_34
action_107 (9) = happyGoto action_95
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (14) = happyShift action_24
action_108 (15) = happyShift action_25
action_108 (16) = happyShift action_26
action_108 (17) = happyShift action_27
action_108 (18) = happyShift action_28
action_108 (19) = happyShift action_29
action_108 (20) = happyShift action_30
action_108 (22) = happyShift action_31
action_108 (42) = happyShift action_68
action_108 (43) = happyShift action_69
action_108 (44) = happyShift action_70
action_108 (45) = happyShift action_71
action_108 (46) = happyShift action_72
action_108 (47) = happyShift action_73
action_108 (49) = happyShift action_32
action_108 (51) = happyShift action_33
action_108 (53) = happyShift action_34
action_108 (9) = happyGoto action_95
action_108 _ = happyReduce_35

action_109 (14) = happyShift action_24
action_109 (15) = happyShift action_25
action_109 (16) = happyShift action_26
action_109 (17) = happyShift action_27
action_109 (18) = happyShift action_28
action_109 (19) = happyShift action_29
action_109 (20) = happyShift action_30
action_109 (22) = happyShift action_31
action_109 (49) = happyShift action_32
action_109 (51) = happyShift action_33
action_109 (53) = happyShift action_34
action_109 (9) = happyGoto action_116
action_109 _ = happyFail (happyExpListPerState 109)

action_110 _ = happyReduce_23

action_111 (14) = happyShift action_24
action_111 (15) = happyShift action_25
action_111 (16) = happyShift action_26
action_111 (17) = happyShift action_27
action_111 (18) = happyShift action_28
action_111 (19) = happyShift action_29
action_111 (20) = happyShift action_30
action_111 (22) = happyShift action_31
action_111 (49) = happyShift action_32
action_111 (51) = happyShift action_33
action_111 (53) = happyShift action_34
action_111 (9) = happyGoto action_102
action_111 (12) = happyGoto action_115
action_111 (13) = happyGoto action_104
action_111 _ = happyFail (happyExpListPerState 111)

action_112 _ = happyReduce_45

action_113 (14) = happyShift action_24
action_113 (15) = happyShift action_25
action_113 (16) = happyShift action_26
action_113 (17) = happyShift action_27
action_113 (18) = happyShift action_28
action_113 (19) = happyShift action_29
action_113 (20) = happyShift action_30
action_113 (22) = happyShift action_31
action_113 (49) = happyShift action_32
action_113 (51) = happyShift action_33
action_113 (53) = happyShift action_34
action_113 (9) = happyGoto action_114
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (14) = happyShift action_24
action_114 (15) = happyShift action_25
action_114 (16) = happyShift action_26
action_114 (17) = happyShift action_27
action_114 (18) = happyShift action_28
action_114 (19) = happyShift action_29
action_114 (20) = happyShift action_30
action_114 (22) = happyShift action_31
action_114 (25) = happyShift action_57
action_114 (26) = happyShift action_58
action_114 (27) = happyShift action_59
action_114 (28) = happyShift action_60
action_114 (29) = happyShift action_61
action_114 (34) = happyShift action_62
action_114 (37) = happyShift action_63
action_114 (38) = happyShift action_64
action_114 (39) = happyShift action_65
action_114 (40) = happyShift action_66
action_114 (41) = happyShift action_67
action_114 (42) = happyShift action_68
action_114 (43) = happyShift action_69
action_114 (44) = happyShift action_70
action_114 (45) = happyShift action_71
action_114 (46) = happyShift action_72
action_114 (47) = happyShift action_73
action_114 (49) = happyShift action_32
action_114 (51) = happyShift action_33
action_114 (53) = happyShift action_34
action_114 (9) = happyGoto action_95
action_114 _ = happyReduce_53

action_115 _ = happyReduce_51

action_116 (15) = happyShift action_25
action_116 (16) = happyShift action_26
action_116 (17) = happyShift action_27
action_116 (18) = happyShift action_28
action_116 (19) = happyShift action_29
action_116 (20) = happyShift action_30
action_116 (22) = happyFail []
action_116 (49) = happyShift action_32
action_116 (51) = happyShift action_33
action_116 (53) = happyShift action_34
action_116 (9) = happyGoto action_95
action_116 _ = happyReduce_34

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
	(HappyAbsSyn11  happy_var_2)
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
	(HappyAbsSyn10  happy_var_2)
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

happyReduce_35 = happyReduce 4 9 happyReduction_35
happyReduction_35 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (T _ (TokenString happy_var_2))) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Lam happy_var_2 happy_var_4
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
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Comp happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_46 = happySpecReduce_0  10 happyReduction_46
happyReduction_46  =  HappyAbsSyn10
		 ([]
	)

happyReduce_47 = happySpecReduce_3  10 happyReduction_47
happyReduction_47 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1:happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  10 happyReduction_48
happyReduction_48 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  11 happyReduction_49
happyReduction_49 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1]
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_2  11 happyReduction_50
happyReduction_50 (HappyAbsSyn11  happy_var_2)
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1:happy_var_2
	)
happyReduction_50 _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  12 happyReduction_51
happyReduction_51 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1:happy_var_3
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  12 happyReduction_52
happyReduction_52 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 ([happy_var_1]
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_3  13 happyReduction_53
happyReduction_53 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn13
		 (Member happy_var_1 happy_var_3
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  13 happyReduction_54
happyReduction_54 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn13
		 (Prop happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 58 58 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	T _ TokenLambda -> cont 14;
	T _ (TokenString happy_dollar_dollar) -> cont 15;
	T _ (TokenIdent happy_dollar_dollar) -> cont 16;
	T _ (TokenInt happy_dollar_dollar) -> cont 17;
	T _ (TokenFloat happy_dollar_dollar) -> cont 18;
	T _ TokenTrue -> cont 19;
	T _ TokenFalse -> cont 20;
	T _ TokenReturn -> cont 21;
	T _ TokenIf -> cont 22;
	T _ TokenThen -> cont 23;
	T _ TokenElse -> cont 24;
	T _ TokenDoubleAdd -> cont 25;
	T _ TokenDoubleEqual -> cont 26;
	T _ TokenNotEqual -> cont 27;
	T _ TokenAnd -> cont 28;
	T _ TokenOr -> cont 29;
	T _ TokenAddEqual -> cont 30;
	T _ TokenSubEqual -> cont 31;
	T _ TokenMultEqual -> cont 32;
	T _ TokenDivEqual -> cont 33;
	T _ TokenIndex -> cont 34;
	T _ TokenMember -> cont 35;
	T _ TokenArrow -> cont 36;
	T _ TokenLessEqual -> cont 37;
	T _ TokenMoreEqual -> cont 38;
	T _ TokenCons -> cont 39;
	T _ TokenMore -> cont 40;
	T _ TokenLess -> cont 41;
	T _ TokenAdd -> cont 42;
	T _ TokenSub -> cont 43;
	T _ TokenMult -> cont 44;
	T _ TokenDiv -> cont 45;
	T _ TokenMod -> cont 46;
	T _ TokenExponent -> cont 47;
	T _ TokenEqual -> cont 48;
	T _ TokenLParen -> cont 49;
	T _ TokenRParen -> cont 50;
	T _ TokenLList -> cont 51;
	T _ TokenRList -> cont 52;
	T _ TokenLBlock -> cont 53;
	T _ TokenRBlock -> cont 54;
	T _ TokenLine -> cont 55;
	T _ TokenComma -> cont 56;
	T _ TokenEOL -> cont 57;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 58 tk tks = happyError' (tks, explist)
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

data Statement = Return [Expr] | Assign Assignment
               deriving (Eq, Show)

data Assignment = Def String Expr | Inc String Expr | Dec String Expr
                | MultVal String Expr | DivVal String Expr
                deriving (Eq, Show)

data Expr = Int_ Int | Float_ Float | True_ | False_ | List [Expr] | Pair Expr Expr
          | Ident Int | Add Expr Expr | Sub Expr Expr | Mult Expr Expr
          | Div Expr Expr | Mod Expr Expr | Cons Expr Expr | Append Expr Expr
          | If Expr Expr Expr | Lam String Expr | Less Expr Expr | More Expr Expr
          | LessEq Expr Expr | MoreEq Expr Expr | Equal Expr Expr | NEqual Expr Expr
          | App Expr Expr | Index Expr Expr | Comp Expr [Pred] | Exponent Expr Expr
          | Var String | And Expr Expr | Or Expr Expr
          deriving (Show,Eq)

data Pred = Member Expr Expr | Prop Expr
          deriving (Eq, Show)
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "D:/GitHub/haskell-platform/build/ghc-bindist/local/lib/include/ghcversion.h" #-}















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "F:/Users/randy/AppData/Local/Temp/ghc15608_0/ghc_2.h" #-}














































































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates\\\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates\\\\GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 75 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 84 "templates\\\\GenericTemplate.hs" #-}

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

{-# LINE 137 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 147 "templates\\\\GenericTemplate.hs" #-}
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

{-# LINE 267 "templates\\\\GenericTemplate.hs" #-}
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

{-# LINE 333 "templates\\\\GenericTemplate.hs" #-}
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
