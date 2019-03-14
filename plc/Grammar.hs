{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

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

action_0 (15) = happyShift action_4
action_0 (17) = happyShift action_5
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 _ = happyReduce_1

action_1 _ = happyFail

action_2 (57) = happyAccept
action_2 _ = happyFail

action_3 (15) = happyShift action_4
action_3 (17) = happyShift action_5
action_3 (4) = happyGoto action_10
action_3 (5) = happyGoto action_3
action_3 _ = happyReduce_1

action_4 (53) = happyShift action_9
action_4 _ = happyFail

action_5 (42) = happyShift action_6
action_5 (43) = happyShift action_7
action_5 (53) = happyShift action_8
action_5 _ = happyFail

action_6 (53) = happyShift action_18
action_6 _ = happyFail

action_7 (17) = happyShift action_17
action_7 _ = happyFail

action_8 (15) = happyShift action_14
action_8 (21) = happyShift action_15
action_8 (6) = happyGoto action_16
action_8 (7) = happyGoto action_12
action_8 (8) = happyGoto action_13
action_8 _ = happyFail

action_9 (15) = happyShift action_14
action_9 (21) = happyShift action_15
action_9 (6) = happyGoto action_11
action_9 (7) = happyGoto action_12
action_9 (8) = happyGoto action_13
action_9 _ = happyFail

action_10 _ = happyReduce_2

action_11 (54) = happyShift action_40
action_11 _ = happyFail

action_12 (15) = happyShift action_14
action_12 (21) = happyShift action_15
action_12 (6) = happyGoto action_39
action_12 (7) = happyGoto action_12
action_12 (8) = happyGoto action_13
action_12 _ = happyReduce_8

action_13 _ = happyReduce_10

action_14 (30) = happyShift action_34
action_14 (31) = happyShift action_35
action_14 (32) = happyShift action_36
action_14 (33) = happyShift action_37
action_14 (48) = happyShift action_38
action_14 _ = happyFail

action_15 (14) = happyShift action_23
action_15 (15) = happyShift action_24
action_15 (16) = happyShift action_25
action_15 (17) = happyShift action_26
action_15 (18) = happyShift action_27
action_15 (19) = happyShift action_28
action_15 (20) = happyShift action_29
action_15 (22) = happyShift action_30
action_15 (49) = happyShift action_31
action_15 (51) = happyShift action_32
action_15 (53) = happyShift action_33
action_15 (9) = happyGoto action_22
action_15 _ = happyFail

action_16 (54) = happyShift action_21
action_16 _ = happyFail

action_17 (53) = happyShift action_20
action_17 _ = happyFail

action_18 (15) = happyShift action_14
action_18 (21) = happyShift action_15
action_18 (6) = happyGoto action_19
action_18 (7) = happyGoto action_12
action_18 (8) = happyGoto action_13
action_18 _ = happyFail

action_19 (54) = happyShift action_70
action_19 _ = happyFail

action_20 (15) = happyShift action_14
action_20 (21) = happyShift action_15
action_20 (6) = happyGoto action_69
action_20 (7) = happyGoto action_12
action_20 (8) = happyGoto action_13
action_20 _ = happyFail

action_21 _ = happyReduce_5

action_22 (25) = happyShift action_54
action_22 (26) = happyShift action_55
action_22 (27) = happyShift action_56
action_22 (34) = happyShift action_57
action_22 (37) = happyShift action_58
action_22 (38) = happyShift action_59
action_22 (39) = happyShift action_60
action_22 (40) = happyShift action_61
action_22 (41) = happyShift action_62
action_22 (42) = happyShift action_63
action_22 (43) = happyShift action_64
action_22 (44) = happyShift action_65
action_22 (45) = happyShift action_66
action_22 (46) = happyShift action_67
action_22 (47) = happyShift action_68
action_22 _ = happyReduce_9

action_23 (15) = happyShift action_53
action_23 _ = happyFail

action_24 (14) = happyShift action_23
action_24 (15) = happyShift action_24
action_24 (16) = happyShift action_25
action_24 (17) = happyShift action_26
action_24 (18) = happyShift action_27
action_24 (19) = happyShift action_28
action_24 (20) = happyShift action_29
action_24 (21) = happyReduce_47
action_24 (22) = happyShift action_30
action_24 (23) = happyReduce_47
action_24 (24) = happyReduce_47
action_24 (25) = happyReduce_47
action_24 (26) = happyReduce_47
action_24 (27) = happyReduce_47
action_24 (34) = happyReduce_47
action_24 (35) = happyReduce_47
action_24 (37) = happyReduce_47
action_24 (38) = happyReduce_47
action_24 (39) = happyReduce_47
action_24 (40) = happyReduce_47
action_24 (41) = happyReduce_47
action_24 (42) = happyReduce_47
action_24 (43) = happyReduce_47
action_24 (44) = happyReduce_47
action_24 (45) = happyReduce_47
action_24 (46) = happyReduce_47
action_24 (47) = happyReduce_47
action_24 (49) = happyShift action_31
action_24 (50) = happyReduce_47
action_24 (51) = happyShift action_32
action_24 (52) = happyReduce_47
action_24 (53) = happyShift action_33
action_24 (54) = happyReduce_47
action_24 (55) = happyReduce_47
action_24 (56) = happyReduce_47
action_24 (9) = happyGoto action_51
action_24 (11) = happyGoto action_52
action_24 _ = happyReduce_47

action_25 _ = happyReduce_23

action_26 _ = happyReduce_16

action_27 _ = happyReduce_17

action_28 _ = happyReduce_18

action_29 _ = happyReduce_19

action_30 (14) = happyShift action_23
action_30 (15) = happyShift action_24
action_30 (16) = happyShift action_25
action_30 (17) = happyShift action_26
action_30 (18) = happyShift action_27
action_30 (19) = happyShift action_28
action_30 (20) = happyShift action_29
action_30 (22) = happyShift action_30
action_30 (49) = happyShift action_31
action_30 (51) = happyShift action_32
action_30 (53) = happyShift action_33
action_30 (9) = happyGoto action_50
action_30 _ = happyFail

action_31 (14) = happyShift action_23
action_31 (15) = happyShift action_24
action_31 (16) = happyShift action_25
action_31 (17) = happyShift action_26
action_31 (18) = happyShift action_27
action_31 (19) = happyShift action_28
action_31 (20) = happyShift action_29
action_31 (22) = happyShift action_30
action_31 (49) = happyShift action_31
action_31 (51) = happyShift action_32
action_31 (53) = happyShift action_33
action_31 (9) = happyGoto action_49
action_31 _ = happyFail

action_32 (14) = happyShift action_23
action_32 (15) = happyShift action_24
action_32 (16) = happyShift action_25
action_32 (17) = happyShift action_26
action_32 (18) = happyShift action_27
action_32 (19) = happyShift action_28
action_32 (20) = happyShift action_29
action_32 (22) = happyShift action_30
action_32 (49) = happyShift action_31
action_32 (51) = happyShift action_32
action_32 (53) = happyShift action_33
action_32 (9) = happyGoto action_47
action_32 (10) = happyGoto action_48
action_32 _ = happyReduce_44

action_33 (14) = happyShift action_23
action_33 (15) = happyShift action_24
action_33 (16) = happyShift action_25
action_33 (17) = happyShift action_26
action_33 (18) = happyShift action_27
action_33 (19) = happyShift action_28
action_33 (20) = happyShift action_29
action_33 (22) = happyShift action_30
action_33 (49) = happyShift action_31
action_33 (51) = happyShift action_32
action_33 (53) = happyShift action_33
action_33 (9) = happyGoto action_46
action_33 _ = happyFail

action_34 (14) = happyShift action_23
action_34 (15) = happyShift action_24
action_34 (16) = happyShift action_25
action_34 (17) = happyShift action_26
action_34 (18) = happyShift action_27
action_34 (19) = happyShift action_28
action_34 (20) = happyShift action_29
action_34 (22) = happyShift action_30
action_34 (49) = happyShift action_31
action_34 (51) = happyShift action_32
action_34 (53) = happyShift action_33
action_34 (9) = happyGoto action_45
action_34 _ = happyFail

action_35 (14) = happyShift action_23
action_35 (15) = happyShift action_24
action_35 (16) = happyShift action_25
action_35 (17) = happyShift action_26
action_35 (18) = happyShift action_27
action_35 (19) = happyShift action_28
action_35 (20) = happyShift action_29
action_35 (22) = happyShift action_30
action_35 (49) = happyShift action_31
action_35 (51) = happyShift action_32
action_35 (53) = happyShift action_33
action_35 (9) = happyGoto action_44
action_35 _ = happyFail

action_36 (14) = happyShift action_23
action_36 (15) = happyShift action_24
action_36 (16) = happyShift action_25
action_36 (17) = happyShift action_26
action_36 (18) = happyShift action_27
action_36 (19) = happyShift action_28
action_36 (20) = happyShift action_29
action_36 (22) = happyShift action_30
action_36 (49) = happyShift action_31
action_36 (51) = happyShift action_32
action_36 (53) = happyShift action_33
action_36 (9) = happyGoto action_43
action_36 _ = happyFail

action_37 (14) = happyShift action_23
action_37 (15) = happyShift action_24
action_37 (16) = happyShift action_25
action_37 (17) = happyShift action_26
action_37 (18) = happyShift action_27
action_37 (19) = happyShift action_28
action_37 (20) = happyShift action_29
action_37 (22) = happyShift action_30
action_37 (49) = happyShift action_31
action_37 (51) = happyShift action_32
action_37 (53) = happyShift action_33
action_37 (9) = happyGoto action_42
action_37 _ = happyFail

action_38 (14) = happyShift action_23
action_38 (15) = happyShift action_24
action_38 (16) = happyShift action_25
action_38 (17) = happyShift action_26
action_38 (18) = happyShift action_27
action_38 (19) = happyShift action_28
action_38 (20) = happyShift action_29
action_38 (22) = happyShift action_30
action_38 (49) = happyShift action_31
action_38 (51) = happyShift action_32
action_38 (53) = happyShift action_33
action_38 (9) = happyGoto action_41
action_38 _ = happyFail

action_39 _ = happyReduce_7

action_40 _ = happyReduce_6

action_41 (25) = happyShift action_54
action_41 (26) = happyShift action_55
action_41 (27) = happyShift action_56
action_41 (34) = happyShift action_57
action_41 (37) = happyShift action_58
action_41 (38) = happyShift action_59
action_41 (39) = happyShift action_60
action_41 (40) = happyShift action_61
action_41 (41) = happyShift action_62
action_41 (42) = happyShift action_63
action_41 (43) = happyShift action_64
action_41 (44) = happyShift action_65
action_41 (45) = happyShift action_66
action_41 (46) = happyShift action_67
action_41 (47) = happyShift action_68
action_41 _ = happyReduce_11

action_42 (25) = happyShift action_54
action_42 (26) = happyShift action_55
action_42 (27) = happyShift action_56
action_42 (34) = happyShift action_57
action_42 (37) = happyShift action_58
action_42 (38) = happyShift action_59
action_42 (39) = happyShift action_60
action_42 (40) = happyShift action_61
action_42 (41) = happyShift action_62
action_42 (42) = happyShift action_63
action_42 (43) = happyShift action_64
action_42 (44) = happyShift action_65
action_42 (45) = happyShift action_66
action_42 (46) = happyShift action_67
action_42 (47) = happyShift action_68
action_42 _ = happyReduce_15

action_43 (25) = happyShift action_54
action_43 (26) = happyShift action_55
action_43 (27) = happyShift action_56
action_43 (34) = happyShift action_57
action_43 (37) = happyShift action_58
action_43 (38) = happyShift action_59
action_43 (39) = happyShift action_60
action_43 (40) = happyShift action_61
action_43 (41) = happyShift action_62
action_43 (42) = happyShift action_63
action_43 (43) = happyShift action_64
action_43 (44) = happyShift action_65
action_43 (45) = happyShift action_66
action_43 (46) = happyShift action_67
action_43 (47) = happyShift action_68
action_43 _ = happyReduce_14

action_44 (25) = happyShift action_54
action_44 (26) = happyShift action_55
action_44 (27) = happyShift action_56
action_44 (34) = happyShift action_57
action_44 (37) = happyShift action_58
action_44 (38) = happyShift action_59
action_44 (39) = happyShift action_60
action_44 (40) = happyShift action_61
action_44 (41) = happyShift action_62
action_44 (42) = happyShift action_63
action_44 (43) = happyShift action_64
action_44 (44) = happyShift action_65
action_44 (45) = happyShift action_66
action_44 (46) = happyShift action_67
action_44 (47) = happyShift action_68
action_44 _ = happyReduce_13

action_45 (25) = happyShift action_54
action_45 (26) = happyShift action_55
action_45 (27) = happyShift action_56
action_45 (34) = happyShift action_57
action_45 (37) = happyShift action_58
action_45 (38) = happyShift action_59
action_45 (39) = happyShift action_60
action_45 (40) = happyShift action_61
action_45 (41) = happyShift action_62
action_45 (42) = happyShift action_63
action_45 (43) = happyShift action_64
action_45 (44) = happyShift action_65
action_45 (45) = happyShift action_66
action_45 (46) = happyShift action_67
action_45 (47) = happyShift action_68
action_45 _ = happyReduce_12

action_46 (25) = happyShift action_54
action_46 (26) = happyShift action_55
action_46 (27) = happyShift action_56
action_46 (34) = happyShift action_57
action_46 (37) = happyShift action_58
action_46 (38) = happyShift action_59
action_46 (39) = happyShift action_60
action_46 (40) = happyShift action_61
action_46 (41) = happyShift action_62
action_46 (42) = happyShift action_63
action_46 (43) = happyShift action_64
action_46 (44) = happyShift action_65
action_46 (45) = happyShift action_66
action_46 (46) = happyShift action_67
action_46 (47) = happyShift action_68
action_46 (55) = happyShift action_94
action_46 _ = happyFail

action_47 (25) = happyShift action_54
action_47 (26) = happyShift action_55
action_47 (27) = happyShift action_56
action_47 (34) = happyShift action_57
action_47 (37) = happyShift action_58
action_47 (38) = happyShift action_59
action_47 (39) = happyShift action_60
action_47 (40) = happyShift action_61
action_47 (41) = happyShift action_62
action_47 (42) = happyShift action_63
action_47 (43) = happyShift action_64
action_47 (44) = happyShift action_65
action_47 (45) = happyShift action_66
action_47 (46) = happyShift action_67
action_47 (47) = happyShift action_68
action_47 (56) = happyShift action_93
action_47 _ = happyReduce_46

action_48 (52) = happyShift action_92
action_48 _ = happyFail

action_49 (25) = happyShift action_54
action_49 (26) = happyShift action_55
action_49 (27) = happyShift action_56
action_49 (34) = happyShift action_57
action_49 (37) = happyShift action_58
action_49 (38) = happyShift action_59
action_49 (39) = happyShift action_60
action_49 (40) = happyShift action_61
action_49 (41) = happyShift action_62
action_49 (42) = happyShift action_63
action_49 (43) = happyShift action_64
action_49 (44) = happyShift action_65
action_49 (45) = happyShift action_66
action_49 (46) = happyShift action_67
action_49 (47) = happyShift action_68
action_49 (50) = happyShift action_90
action_49 (56) = happyShift action_91
action_49 _ = happyFail

action_50 (23) = happyShift action_89
action_50 (25) = happyShift action_54
action_50 (26) = happyShift action_55
action_50 (27) = happyShift action_56
action_50 (34) = happyShift action_57
action_50 (37) = happyShift action_58
action_50 (38) = happyShift action_59
action_50 (39) = happyShift action_60
action_50 (40) = happyShift action_61
action_50 (41) = happyShift action_62
action_50 (42) = happyShift action_63
action_50 (43) = happyShift action_64
action_50 (44) = happyShift action_65
action_50 (45) = happyShift action_66
action_50 (46) = happyShift action_67
action_50 (47) = happyShift action_68
action_50 _ = happyFail

action_51 (14) = happyShift action_23
action_51 (15) = happyShift action_24
action_51 (16) = happyShift action_25
action_51 (17) = happyShift action_26
action_51 (18) = happyShift action_27
action_51 (19) = happyShift action_28
action_51 (20) = happyShift action_29
action_51 (22) = happyShift action_30
action_51 (25) = happyShift action_54
action_51 (26) = happyShift action_55
action_51 (27) = happyShift action_56
action_51 (34) = happyShift action_57
action_51 (37) = happyShift action_58
action_51 (38) = happyShift action_59
action_51 (39) = happyShift action_60
action_51 (40) = happyShift action_61
action_51 (41) = happyShift action_62
action_51 (42) = happyShift action_63
action_51 (43) = happyShift action_64
action_51 (44) = happyShift action_65
action_51 (45) = happyShift action_66
action_51 (46) = happyShift action_67
action_51 (47) = happyShift action_68
action_51 (49) = happyShift action_31
action_51 (51) = happyShift action_32
action_51 (53) = happyShift action_33
action_51 (9) = happyGoto action_51
action_51 (11) = happyGoto action_88
action_51 _ = happyReduce_47

action_52 _ = happyReduce_41

action_53 (36) = happyShift action_87
action_53 _ = happyFail

action_54 (14) = happyShift action_23
action_54 (15) = happyShift action_24
action_54 (16) = happyShift action_25
action_54 (17) = happyShift action_26
action_54 (18) = happyShift action_27
action_54 (19) = happyShift action_28
action_54 (20) = happyShift action_29
action_54 (22) = happyShift action_30
action_54 (49) = happyShift action_31
action_54 (51) = happyShift action_32
action_54 (53) = happyShift action_33
action_54 (9) = happyGoto action_86
action_54 _ = happyFail

action_55 (14) = happyShift action_23
action_55 (15) = happyShift action_24
action_55 (16) = happyShift action_25
action_55 (17) = happyShift action_26
action_55 (18) = happyShift action_27
action_55 (19) = happyShift action_28
action_55 (20) = happyShift action_29
action_55 (22) = happyShift action_30
action_55 (49) = happyShift action_31
action_55 (51) = happyShift action_32
action_55 (53) = happyShift action_33
action_55 (9) = happyGoto action_85
action_55 _ = happyFail

action_56 (14) = happyShift action_23
action_56 (15) = happyShift action_24
action_56 (16) = happyShift action_25
action_56 (17) = happyShift action_26
action_56 (18) = happyShift action_27
action_56 (19) = happyShift action_28
action_56 (20) = happyShift action_29
action_56 (22) = happyShift action_30
action_56 (49) = happyShift action_31
action_56 (51) = happyShift action_32
action_56 (53) = happyShift action_33
action_56 (9) = happyGoto action_84
action_56 _ = happyFail

action_57 (14) = happyShift action_23
action_57 (15) = happyShift action_24
action_57 (16) = happyShift action_25
action_57 (17) = happyShift action_26
action_57 (18) = happyShift action_27
action_57 (19) = happyShift action_28
action_57 (20) = happyShift action_29
action_57 (22) = happyShift action_30
action_57 (49) = happyShift action_31
action_57 (51) = happyShift action_32
action_57 (53) = happyShift action_33
action_57 (9) = happyGoto action_83
action_57 _ = happyFail

action_58 (14) = happyShift action_23
action_58 (15) = happyShift action_24
action_58 (16) = happyShift action_25
action_58 (17) = happyShift action_26
action_58 (18) = happyShift action_27
action_58 (19) = happyShift action_28
action_58 (20) = happyShift action_29
action_58 (22) = happyShift action_30
action_58 (49) = happyShift action_31
action_58 (51) = happyShift action_32
action_58 (53) = happyShift action_33
action_58 (9) = happyGoto action_82
action_58 _ = happyFail

action_59 (14) = happyShift action_23
action_59 (15) = happyShift action_24
action_59 (16) = happyShift action_25
action_59 (17) = happyShift action_26
action_59 (18) = happyShift action_27
action_59 (19) = happyShift action_28
action_59 (20) = happyShift action_29
action_59 (22) = happyShift action_30
action_59 (49) = happyShift action_31
action_59 (51) = happyShift action_32
action_59 (53) = happyShift action_33
action_59 (9) = happyGoto action_81
action_59 _ = happyFail

action_60 (14) = happyShift action_23
action_60 (15) = happyShift action_24
action_60 (16) = happyShift action_25
action_60 (17) = happyShift action_26
action_60 (18) = happyShift action_27
action_60 (19) = happyShift action_28
action_60 (20) = happyShift action_29
action_60 (22) = happyShift action_30
action_60 (49) = happyShift action_31
action_60 (51) = happyShift action_32
action_60 (53) = happyShift action_33
action_60 (9) = happyGoto action_80
action_60 _ = happyFail

action_61 (14) = happyShift action_23
action_61 (15) = happyShift action_24
action_61 (16) = happyShift action_25
action_61 (17) = happyShift action_26
action_61 (18) = happyShift action_27
action_61 (19) = happyShift action_28
action_61 (20) = happyShift action_29
action_61 (22) = happyShift action_30
action_61 (49) = happyShift action_31
action_61 (51) = happyShift action_32
action_61 (53) = happyShift action_33
action_61 (9) = happyGoto action_79
action_61 _ = happyFail

action_62 (14) = happyShift action_23
action_62 (15) = happyShift action_24
action_62 (16) = happyShift action_25
action_62 (17) = happyShift action_26
action_62 (18) = happyShift action_27
action_62 (19) = happyShift action_28
action_62 (20) = happyShift action_29
action_62 (22) = happyShift action_30
action_62 (49) = happyShift action_31
action_62 (51) = happyShift action_32
action_62 (53) = happyShift action_33
action_62 (9) = happyGoto action_78
action_62 _ = happyFail

action_63 (14) = happyShift action_23
action_63 (15) = happyShift action_24
action_63 (16) = happyShift action_25
action_63 (17) = happyShift action_26
action_63 (18) = happyShift action_27
action_63 (19) = happyShift action_28
action_63 (20) = happyShift action_29
action_63 (22) = happyShift action_30
action_63 (49) = happyShift action_31
action_63 (51) = happyShift action_32
action_63 (53) = happyShift action_33
action_63 (9) = happyGoto action_77
action_63 _ = happyFail

action_64 (14) = happyShift action_23
action_64 (15) = happyShift action_24
action_64 (16) = happyShift action_25
action_64 (17) = happyShift action_26
action_64 (18) = happyShift action_27
action_64 (19) = happyShift action_28
action_64 (20) = happyShift action_29
action_64 (22) = happyShift action_30
action_64 (49) = happyShift action_31
action_64 (51) = happyShift action_32
action_64 (53) = happyShift action_33
action_64 (9) = happyGoto action_76
action_64 _ = happyFail

action_65 (14) = happyShift action_23
action_65 (15) = happyShift action_24
action_65 (16) = happyShift action_25
action_65 (17) = happyShift action_26
action_65 (18) = happyShift action_27
action_65 (19) = happyShift action_28
action_65 (20) = happyShift action_29
action_65 (22) = happyShift action_30
action_65 (49) = happyShift action_31
action_65 (51) = happyShift action_32
action_65 (53) = happyShift action_33
action_65 (9) = happyGoto action_75
action_65 _ = happyFail

action_66 (14) = happyShift action_23
action_66 (15) = happyShift action_24
action_66 (16) = happyShift action_25
action_66 (17) = happyShift action_26
action_66 (18) = happyShift action_27
action_66 (19) = happyShift action_28
action_66 (20) = happyShift action_29
action_66 (22) = happyShift action_30
action_66 (49) = happyShift action_31
action_66 (51) = happyShift action_32
action_66 (53) = happyShift action_33
action_66 (9) = happyGoto action_74
action_66 _ = happyFail

action_67 (14) = happyShift action_23
action_67 (15) = happyShift action_24
action_67 (16) = happyShift action_25
action_67 (17) = happyShift action_26
action_67 (18) = happyShift action_27
action_67 (19) = happyShift action_28
action_67 (20) = happyShift action_29
action_67 (22) = happyShift action_30
action_67 (49) = happyShift action_31
action_67 (51) = happyShift action_32
action_67 (53) = happyShift action_33
action_67 (9) = happyGoto action_73
action_67 _ = happyFail

action_68 (14) = happyShift action_23
action_68 (15) = happyShift action_24
action_68 (16) = happyShift action_25
action_68 (17) = happyShift action_26
action_68 (18) = happyShift action_27
action_68 (19) = happyShift action_28
action_68 (20) = happyShift action_29
action_68 (22) = happyShift action_30
action_68 (49) = happyShift action_31
action_68 (51) = happyShift action_32
action_68 (53) = happyShift action_33
action_68 (9) = happyGoto action_72
action_68 _ = happyFail

action_69 (54) = happyShift action_71
action_69 _ = happyFail

action_70 _ = happyReduce_3

action_71 _ = happyReduce_4

action_72 (47) = happyShift action_68
action_72 _ = happyReduce_28

action_73 (47) = happyShift action_68
action_73 _ = happyReduce_29

action_74 (46) = happyShift action_67
action_74 (47) = happyShift action_68
action_74 _ = happyReduce_27

action_75 (46) = happyShift action_67
action_75 (47) = happyShift action_68
action_75 _ = happyReduce_26

action_76 (44) = happyShift action_65
action_76 (45) = happyShift action_66
action_76 (46) = happyShift action_67
action_76 (47) = happyShift action_68
action_76 _ = happyReduce_25

action_77 (44) = happyShift action_65
action_77 (45) = happyShift action_66
action_77 (46) = happyShift action_67
action_77 (47) = happyShift action_68
action_77 _ = happyReduce_24

action_78 (25) = happyShift action_54
action_78 (26) = happyShift action_55
action_78 (27) = happyShift action_56
action_78 (34) = happyShift action_57
action_78 (37) = happyFail
action_78 (38) = happyFail
action_78 (39) = happyShift action_60
action_78 (40) = happyFail
action_78 (41) = happyFail
action_78 (42) = happyShift action_63
action_78 (43) = happyShift action_64
action_78 (44) = happyShift action_65
action_78 (45) = happyShift action_66
action_78 (46) = happyShift action_67
action_78 (47) = happyShift action_68
action_78 _ = happyReduce_35

action_79 (25) = happyShift action_54
action_79 (26) = happyShift action_55
action_79 (27) = happyShift action_56
action_79 (34) = happyShift action_57
action_79 (37) = happyFail
action_79 (38) = happyFail
action_79 (39) = happyShift action_60
action_79 (40) = happyFail
action_79 (41) = happyFail
action_79 (42) = happyShift action_63
action_79 (43) = happyShift action_64
action_79 (44) = happyShift action_65
action_79 (45) = happyShift action_66
action_79 (46) = happyShift action_67
action_79 (47) = happyShift action_68
action_79 _ = happyReduce_36

action_80 (34) = happyShift action_57
action_80 (39) = happyShift action_60
action_80 (42) = happyShift action_63
action_80 (43) = happyShift action_64
action_80 (44) = happyShift action_65
action_80 (45) = happyShift action_66
action_80 (46) = happyShift action_67
action_80 (47) = happyShift action_68
action_80 _ = happyReduce_30

action_81 (25) = happyShift action_54
action_81 (26) = happyShift action_55
action_81 (27) = happyShift action_56
action_81 (34) = happyShift action_57
action_81 (37) = happyFail
action_81 (38) = happyFail
action_81 (39) = happyShift action_60
action_81 (40) = happyFail
action_81 (41) = happyFail
action_81 (42) = happyShift action_63
action_81 (43) = happyShift action_64
action_81 (44) = happyShift action_65
action_81 (45) = happyShift action_66
action_81 (46) = happyShift action_67
action_81 (47) = happyShift action_68
action_81 _ = happyReduce_38

action_82 (25) = happyShift action_54
action_82 (26) = happyShift action_55
action_82 (27) = happyShift action_56
action_82 (34) = happyShift action_57
action_82 (37) = happyFail
action_82 (38) = happyFail
action_82 (39) = happyShift action_60
action_82 (40) = happyFail
action_82 (41) = happyFail
action_82 (42) = happyShift action_63
action_82 (43) = happyShift action_64
action_82 (44) = happyShift action_65
action_82 (45) = happyShift action_66
action_82 (46) = happyShift action_67
action_82 (47) = happyShift action_68
action_82 _ = happyReduce_37

action_83 (34) = happyShift action_57
action_83 (42) = happyShift action_63
action_83 (43) = happyShift action_64
action_83 (44) = happyShift action_65
action_83 (45) = happyShift action_66
action_83 (46) = happyShift action_67
action_83 (47) = happyShift action_68
action_83 _ = happyReduce_42

action_84 (25) = happyShift action_54
action_84 (26) = happyFail
action_84 (27) = happyFail
action_84 (34) = happyShift action_57
action_84 (39) = happyShift action_60
action_84 (42) = happyShift action_63
action_84 (43) = happyShift action_64
action_84 (44) = happyShift action_65
action_84 (45) = happyShift action_66
action_84 (46) = happyShift action_67
action_84 (47) = happyShift action_68
action_84 _ = happyReduce_40

action_85 (25) = happyShift action_54
action_85 (26) = happyFail
action_85 (27) = happyFail
action_85 (34) = happyShift action_57
action_85 (39) = happyShift action_60
action_85 (42) = happyShift action_63
action_85 (43) = happyShift action_64
action_85 (44) = happyShift action_65
action_85 (45) = happyShift action_66
action_85 (46) = happyShift action_67
action_85 (47) = happyShift action_68
action_85 _ = happyReduce_39

action_86 (34) = happyShift action_57
action_86 (39) = happyShift action_60
action_86 (42) = happyShift action_63
action_86 (43) = happyShift action_64
action_86 (44) = happyShift action_65
action_86 (45) = happyShift action_66
action_86 (46) = happyShift action_67
action_86 (47) = happyShift action_68
action_86 _ = happyReduce_31

action_87 (14) = happyShift action_23
action_87 (15) = happyShift action_24
action_87 (16) = happyShift action_25
action_87 (17) = happyShift action_26
action_87 (18) = happyShift action_27
action_87 (19) = happyShift action_28
action_87 (20) = happyShift action_29
action_87 (22) = happyShift action_30
action_87 (49) = happyShift action_31
action_87 (51) = happyShift action_32
action_87 (53) = happyShift action_33
action_87 (9) = happyGoto action_101
action_87 _ = happyFail

action_88 _ = happyReduce_48

action_89 (14) = happyShift action_23
action_89 (15) = happyShift action_24
action_89 (16) = happyShift action_25
action_89 (17) = happyShift action_26
action_89 (18) = happyShift action_27
action_89 (19) = happyShift action_28
action_89 (20) = happyShift action_29
action_89 (22) = happyShift action_30
action_89 (49) = happyShift action_31
action_89 (51) = happyShift action_32
action_89 (53) = happyShift action_33
action_89 (9) = happyGoto action_100
action_89 _ = happyFail

action_90 _ = happyReduce_32

action_91 (14) = happyShift action_23
action_91 (15) = happyShift action_24
action_91 (16) = happyShift action_25
action_91 (17) = happyShift action_26
action_91 (18) = happyShift action_27
action_91 (19) = happyShift action_28
action_91 (20) = happyShift action_29
action_91 (22) = happyShift action_30
action_91 (49) = happyShift action_31
action_91 (51) = happyShift action_32
action_91 (53) = happyShift action_33
action_91 (9) = happyGoto action_99
action_91 _ = happyFail

action_92 _ = happyReduce_21

action_93 (14) = happyShift action_23
action_93 (15) = happyShift action_24
action_93 (16) = happyShift action_25
action_93 (17) = happyShift action_26
action_93 (18) = happyShift action_27
action_93 (19) = happyShift action_28
action_93 (20) = happyShift action_29
action_93 (22) = happyShift action_30
action_93 (49) = happyShift action_31
action_93 (51) = happyShift action_32
action_93 (53) = happyShift action_33
action_93 (9) = happyGoto action_47
action_93 (10) = happyGoto action_98
action_93 _ = happyReduce_44

action_94 (14) = happyShift action_23
action_94 (15) = happyShift action_24
action_94 (16) = happyShift action_25
action_94 (17) = happyShift action_26
action_94 (18) = happyShift action_27
action_94 (19) = happyShift action_28
action_94 (20) = happyShift action_29
action_94 (22) = happyShift action_30
action_94 (49) = happyShift action_31
action_94 (51) = happyShift action_32
action_94 (53) = happyShift action_33
action_94 (9) = happyGoto action_95
action_94 (12) = happyGoto action_96
action_94 (13) = happyGoto action_97
action_94 _ = happyFail

action_95 (25) = happyShift action_54
action_95 (26) = happyShift action_55
action_95 (27) = happyShift action_56
action_95 (34) = happyShift action_57
action_95 (35) = happyShift action_106
action_95 (37) = happyShift action_58
action_95 (38) = happyShift action_59
action_95 (39) = happyShift action_60
action_95 (40) = happyShift action_61
action_95 (41) = happyShift action_62
action_95 (42) = happyShift action_63
action_95 (43) = happyShift action_64
action_95 (44) = happyShift action_65
action_95 (45) = happyShift action_66
action_95 (46) = happyShift action_67
action_95 (47) = happyShift action_68
action_95 _ = happyReduce_52

action_96 (54) = happyShift action_105
action_96 _ = happyFail

action_97 (56) = happyShift action_104
action_97 _ = happyReduce_50

action_98 _ = happyReduce_45

action_99 (25) = happyShift action_54
action_99 (26) = happyShift action_55
action_99 (27) = happyShift action_56
action_99 (34) = happyShift action_57
action_99 (37) = happyShift action_58
action_99 (38) = happyShift action_59
action_99 (39) = happyShift action_60
action_99 (40) = happyShift action_61
action_99 (41) = happyShift action_62
action_99 (42) = happyShift action_63
action_99 (43) = happyShift action_64
action_99 (44) = happyShift action_65
action_99 (45) = happyShift action_66
action_99 (46) = happyShift action_67
action_99 (47) = happyShift action_68
action_99 (50) = happyShift action_103
action_99 _ = happyFail

action_100 (24) = happyShift action_102
action_100 (25) = happyShift action_54
action_100 (26) = happyShift action_55
action_100 (27) = happyShift action_56
action_100 (34) = happyShift action_57
action_100 (37) = happyShift action_58
action_100 (38) = happyShift action_59
action_100 (39) = happyShift action_60
action_100 (40) = happyShift action_61
action_100 (41) = happyShift action_62
action_100 (42) = happyShift action_63
action_100 (43) = happyShift action_64
action_100 (44) = happyShift action_65
action_100 (45) = happyShift action_66
action_100 (46) = happyShift action_67
action_100 (47) = happyShift action_68
action_100 _ = happyFail

action_101 (42) = happyShift action_63
action_101 (43) = happyShift action_64
action_101 (44) = happyShift action_65
action_101 (45) = happyShift action_66
action_101 (46) = happyShift action_67
action_101 (47) = happyShift action_68
action_101 _ = happyReduce_34

action_102 (14) = happyShift action_23
action_102 (15) = happyShift action_24
action_102 (16) = happyShift action_25
action_102 (17) = happyShift action_26
action_102 (18) = happyShift action_27
action_102 (19) = happyShift action_28
action_102 (20) = happyShift action_29
action_102 (22) = happyShift action_30
action_102 (49) = happyShift action_31
action_102 (51) = happyShift action_32
action_102 (53) = happyShift action_33
action_102 (9) = happyGoto action_109
action_102 _ = happyFail

action_103 _ = happyReduce_22

action_104 (14) = happyShift action_23
action_104 (15) = happyShift action_24
action_104 (16) = happyShift action_25
action_104 (17) = happyShift action_26
action_104 (18) = happyShift action_27
action_104 (19) = happyShift action_28
action_104 (20) = happyShift action_29
action_104 (22) = happyShift action_30
action_104 (49) = happyShift action_31
action_104 (51) = happyShift action_32
action_104 (53) = happyShift action_33
action_104 (9) = happyGoto action_95
action_104 (12) = happyGoto action_108
action_104 (13) = happyGoto action_97
action_104 _ = happyFail

action_105 _ = happyReduce_43

action_106 (14) = happyShift action_23
action_106 (15) = happyShift action_24
action_106 (16) = happyShift action_25
action_106 (17) = happyShift action_26
action_106 (18) = happyShift action_27
action_106 (19) = happyShift action_28
action_106 (20) = happyShift action_29
action_106 (22) = happyShift action_30
action_106 (49) = happyShift action_31
action_106 (51) = happyShift action_32
action_106 (53) = happyShift action_33
action_106 (9) = happyGoto action_107
action_106 _ = happyFail

action_107 (25) = happyShift action_54
action_107 (26) = happyShift action_55
action_107 (27) = happyShift action_56
action_107 (34) = happyShift action_57
action_107 (37) = happyShift action_58
action_107 (38) = happyShift action_59
action_107 (39) = happyShift action_60
action_107 (40) = happyShift action_61
action_107 (41) = happyShift action_62
action_107 (42) = happyShift action_63
action_107 (43) = happyShift action_64
action_107 (44) = happyShift action_65
action_107 (45) = happyShift action_66
action_107 (46) = happyShift action_67
action_107 (47) = happyShift action_68
action_107 _ = happyReduce_51

action_108 _ = happyReduce_49

action_109 (25) = happyShift action_54
action_109 (26) = happyShift action_55
action_109 (27) = happyShift action_56
action_109 (34) = happyShift action_57
action_109 (37) = happyShift action_58
action_109 (38) = happyShift action_59
action_109 (39) = happyShift action_60
action_109 (40) = happyShift action_61
action_109 (41) = happyShift action_62
action_109 (42) = happyShift action_63
action_109 (43) = happyShift action_64
action_109 (44) = happyShift action_65
action_109 (45) = happyShift action_66
action_109 (46) = happyShift action_67
action_109 (47) = happyShift action_68
action_109 _ = happyReduce_33

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

happyReduce_9 = happySpecReduce_2  7 happyReduction_9
happyReduction_9 (HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (Return happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  7 happyReduction_10
happyReduction_10 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Assign happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

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

happyReduce_16 = happySpecReduce_1  9 happyReduction_16
happyReduction_16 (HappyTerminal (T _ (TokenInt happy_var_1)))
	 =  HappyAbsSyn9
		 (Int_ happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  9 happyReduction_17
happyReduction_17 (HappyTerminal (T _ (TokenFloat happy_var_1)))
	 =  HappyAbsSyn9
		 (Float_ happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  9 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn9
		 (True_
	)

happyReduce_19 = happySpecReduce_1  9 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn9
		 (False_
	)

happyReduce_20 = happySpecReduce_1  9 happyReduction_20
happyReduction_20 (HappyTerminal (T _ (TokenString happy_var_1)))
	 =  HappyAbsSyn9
		 (Var happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  9 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (List happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happyReduce 5 9 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Pair happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_1  9 happyReduction_23
happyReduction_23 (HappyTerminal (T _ (TokenIdent happy_var_1)))
	 =  HappyAbsSyn9
		 (Ident happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  9 happyReduction_24
happyReduction_24 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Add happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  9 happyReduction_25
happyReduction_25 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  9 happyReduction_26
happyReduction_26 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  9 happyReduction_27
happyReduction_27 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Div happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  9 happyReduction_28
happyReduction_28 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Exponent happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  9 happyReduction_29
happyReduction_29 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  9 happyReduction_30
happyReduction_30 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Cons happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  9 happyReduction_31
happyReduction_31 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Append happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  9 happyReduction_32
happyReduction_32 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (happy_var_2
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happyReduce 6 9 happyReduction_33
happyReduction_33 ((HappyAbsSyn9  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 4 9 happyReduction_34
happyReduction_34 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (T _ (TokenString happy_var_2))) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Lam happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_35 = happySpecReduce_3  9 happyReduction_35
happyReduction_35 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Less happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  9 happyReduction_36
happyReduction_36 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (More happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  9 happyReduction_37
happyReduction_37 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (LessEq happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  9 happyReduction_38
happyReduction_38 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (MoreEq happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  9 happyReduction_39
happyReduction_39 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  9 happyReduction_40
happyReduction_40 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (NEqual happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_2  9 happyReduction_41
happyReduction_41 (HappyAbsSyn11  happy_var_2)
	(HappyTerminal (T _ (TokenString happy_var_1)))
	 =  HappyAbsSyn9
		 (Fun happy_var_1 happy_var_2
	)
happyReduction_41 _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  9 happyReduction_42
happyReduction_42 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Index happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happyReduce 5 9 happyReduction_43
happyReduction_43 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Comp happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_44 = happySpecReduce_0  10 happyReduction_44
happyReduction_44  =  HappyAbsSyn10
		 ([]
	)

happyReduce_45 = happySpecReduce_3  10 happyReduction_45
happyReduction_45 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1:happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  10 happyReduction_46
happyReduction_46 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_0  11 happyReduction_47
happyReduction_47  =  HappyAbsSyn11
		 ([]
	)

happyReduce_48 = happySpecReduce_2  11 happyReduction_48
happyReduction_48 (HappyAbsSyn11  happy_var_2)
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1:happy_var_2
	)
happyReduction_48 _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  12 happyReduction_49
happyReduction_49 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1:happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  12 happyReduction_50
happyReduction_50 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 ([happy_var_1]
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  13 happyReduction_51
happyReduction_51 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn13
		 (Member happy_var_1 happy_var_3
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  13 happyReduction_52
happyReduction_52 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn13
		 (Prop happy_var_1
	)
happyReduction_52 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 57 57 notHappyAtAll (HappyState action) sts stk []

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
	_ -> happyError' (tk:tks)
	}

happyError_ 57 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = return
    (<*>) = ap
instance Monad HappyIdentity where
    return = HappyIdentity
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(Token)] -> HappyIdentity a
happyError' = HappyIdentity . parseError

parseStreamLang tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error"
parseError (t:ts) = let (l, c) = tokenPosn t in error ("Parse error at "++show l++":"++show c)

type Prog = [Sect]

type Sect = (String, Block)

type Block = [Statement]

data Statement = Return Expr | Assign Assignment
               deriving (Eq, Show)

data Assignment = Def String Expr | Inc String Expr | Dec String Expr
                | MultVal String Expr | DivVal String Expr
                deriving (Eq, Show)

data Expr = Int_ Int | Float_ Float | True_ | False_ | List [Expr] | Pair Expr Expr
          | Ident Int | Add Expr Expr | Sub Expr Expr | Mult Expr Expr
          | Div Expr Expr | Mod Expr Expr | Cons Expr Expr | Append Expr Expr
          | If Expr Expr Expr | Lam String Expr | Less Expr Expr | More Expr Expr
          | LessEq Expr Expr | MoreEq Expr Expr | Equal Expr Expr | NEqual Expr Expr
          | Fun String [Expr] | Index Expr Expr | Comp Expr [Pred] | Exponent Expr Expr
          | Var String
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

{-# LINE 13 "templates/GenericTemplate.hs" #-}

{-# LINE 46 "templates/GenericTemplate.hs" #-}








{-# LINE 67 "templates/GenericTemplate.hs" #-}

{-# LINE 77 "templates/GenericTemplate.hs" #-}

{-# LINE 86 "templates/GenericTemplate.hs" #-}

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

{-# LINE 155 "templates/GenericTemplate.hs" #-}

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
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 256 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

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
happyFail  i tk (HappyState (action)) sts stk =
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

{-# LINE 322 "templates/GenericTemplate.hs" #-}
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
