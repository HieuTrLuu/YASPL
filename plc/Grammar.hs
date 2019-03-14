{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens

-- parser produced by Happy Version 1.18.10

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

action_2 (44) = happyAccept
action_2 _ = happyFail

action_3 (15) = happyShift action_4
action_3 (17) = happyShift action_5
action_3 (4) = happyGoto action_10
action_3 (5) = happyGoto action_3
action_3 _ = happyReduce_1

action_4 (39) = happyShift action_9
action_4 _ = happyFail

action_5 (28) = happyShift action_6
action_5 (29) = happyShift action_7
action_5 (39) = happyShift action_8
action_5 _ = happyFail

action_6 (39) = happyShift action_18
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

action_11 (40) = happyShift action_40
action_11 _ = happyFail

action_12 (15) = happyShift action_14
action_12 (21) = happyShift action_15
action_12 (6) = happyGoto action_39
action_12 (7) = happyGoto action_12
action_12 (8) = happyGoto action_13
action_12 _ = happyReduce_8

action_13 _ = happyReduce_10

action_14 (28) = happyShift action_34
action_14 (29) = happyShift action_35
action_14 (30) = happyShift action_36
action_14 (31) = happyShift action_37
action_14 (34) = happyShift action_38
action_14 _ = happyFail

action_15 (14) = happyShift action_23
action_15 (15) = happyShift action_24
action_15 (16) = happyShift action_25
action_15 (17) = happyShift action_26
action_15 (18) = happyShift action_27
action_15 (19) = happyShift action_28
action_15 (20) = happyShift action_29
action_15 (22) = happyShift action_30
action_15 (35) = happyShift action_31
action_15 (37) = happyShift action_32
action_15 (39) = happyShift action_33
action_15 (9) = happyGoto action_22
action_15 _ = happyFail

action_16 (40) = happyShift action_21
action_16 _ = happyFail

action_17 (39) = happyShift action_20
action_17 _ = happyFail

action_18 (15) = happyShift action_14
action_18 (21) = happyShift action_15
action_18 (6) = happyGoto action_19
action_18 (7) = happyGoto action_12
action_18 (8) = happyGoto action_13
action_18 _ = happyFail

action_19 (40) = happyShift action_68
action_19 _ = happyFail

action_20 (15) = happyShift action_14
action_20 (21) = happyShift action_15
action_20 (6) = happyGoto action_67
action_20 (7) = happyGoto action_12
action_20 (8) = happyGoto action_13
action_20 _ = happyFail

action_21 _ = happyReduce_5

action_22 (25) = happyShift action_56
action_22 (26) = happyShift action_57
action_22 (27) = happyShift action_58
action_22 (28) = happyShift action_59
action_22 (29) = happyShift action_60
action_22 (30) = happyShift action_61
action_22 (31) = happyShift action_62
action_22 (32) = happyShift action_63
action_22 (33) = happyShift action_64
action_22 (34) = happyShift action_65
action_22 (42) = happyShift action_66
action_22 _ = happyReduce_9

action_23 (15) = happyShift action_55
action_23 _ = happyFail

action_24 (14) = happyShift action_23
action_24 (15) = happyShift action_24
action_24 (16) = happyShift action_25
action_24 (17) = happyShift action_26
action_24 (18) = happyShift action_27
action_24 (19) = happyShift action_28
action_24 (20) = happyShift action_29
action_24 (22) = happyShift action_30
action_24 (35) = happyShift action_31
action_24 (37) = happyShift action_32
action_24 (39) = happyShift action_33
action_24 (9) = happyGoto action_53
action_24 (11) = happyGoto action_54
action_24 _ = happyReduce_46

action_25 _ = happyReduce_24

action_26 _ = happyReduce_18

action_27 _ = happyReduce_19

action_28 _ = happyReduce_20

action_29 _ = happyReduce_21

action_30 (14) = happyShift action_23
action_30 (15) = happyShift action_24
action_30 (16) = happyShift action_25
action_30 (17) = happyShift action_26
action_30 (18) = happyShift action_27
action_30 (19) = happyShift action_28
action_30 (20) = happyShift action_29
action_30 (22) = happyShift action_30
action_30 (35) = happyShift action_31
action_30 (37) = happyShift action_32
action_30 (39) = happyShift action_33
action_30 (9) = happyGoto action_52
action_30 _ = happyFail

action_31 (14) = happyShift action_23
action_31 (15) = happyShift action_24
action_31 (16) = happyShift action_25
action_31 (17) = happyShift action_26
action_31 (18) = happyShift action_27
action_31 (19) = happyShift action_28
action_31 (20) = happyShift action_29
action_31 (22) = happyShift action_30
action_31 (35) = happyShift action_31
action_31 (37) = happyShift action_32
action_31 (39) = happyShift action_33
action_31 (9) = happyGoto action_51
action_31 _ = happyFail

action_32 (14) = happyShift action_23
action_32 (15) = happyShift action_24
action_32 (16) = happyShift action_25
action_32 (17) = happyShift action_26
action_32 (18) = happyShift action_27
action_32 (19) = happyShift action_28
action_32 (20) = happyShift action_29
action_32 (22) = happyShift action_30
action_32 (35) = happyShift action_31
action_32 (37) = happyShift action_32
action_32 (39) = happyShift action_33
action_32 (9) = happyGoto action_49
action_32 (10) = happyGoto action_50
action_32 _ = happyReduce_44

action_33 (14) = happyShift action_23
action_33 (15) = happyShift action_24
action_33 (16) = happyShift action_25
action_33 (17) = happyShift action_26
action_33 (18) = happyShift action_27
action_33 (19) = happyShift action_28
action_33 (20) = happyShift action_29
action_33 (22) = happyShift action_30
action_33 (35) = happyShift action_31
action_33 (37) = happyShift action_32
action_33 (39) = happyShift action_33
action_33 (9) = happyGoto action_48
action_33 _ = happyFail

action_34 (28) = happyShift action_46
action_34 (34) = happyShift action_47
action_34 _ = happyFail

action_35 (29) = happyShift action_44
action_35 (34) = happyShift action_45
action_35 _ = happyFail

action_36 (34) = happyShift action_43
action_36 _ = happyFail

action_37 (34) = happyShift action_42
action_37 _ = happyFail

action_38 (14) = happyShift action_23
action_38 (15) = happyShift action_24
action_38 (16) = happyShift action_25
action_38 (17) = happyShift action_26
action_38 (18) = happyShift action_27
action_38 (19) = happyShift action_28
action_38 (20) = happyShift action_29
action_38 (22) = happyShift action_30
action_38 (35) = happyShift action_31
action_38 (37) = happyShift action_32
action_38 (39) = happyShift action_33
action_38 (9) = happyGoto action_41
action_38 _ = happyFail

action_39 _ = happyReduce_7

action_40 _ = happyReduce_6

action_41 (25) = happyShift action_56
action_41 (26) = happyShift action_57
action_41 (27) = happyShift action_58
action_41 (28) = happyShift action_59
action_41 (29) = happyShift action_60
action_41 (30) = happyShift action_61
action_41 (31) = happyShift action_62
action_41 (32) = happyShift action_63
action_41 (33) = happyShift action_64
action_41 (34) = happyShift action_65
action_41 (42) = happyShift action_66
action_41 _ = happyReduce_11

action_42 (14) = happyShift action_23
action_42 (15) = happyShift action_24
action_42 (16) = happyShift action_25
action_42 (17) = happyShift action_26
action_42 (18) = happyShift action_27
action_42 (19) = happyShift action_28
action_42 (20) = happyShift action_29
action_42 (22) = happyShift action_30
action_42 (35) = happyShift action_31
action_42 (37) = happyShift action_32
action_42 (39) = happyShift action_33
action_42 (9) = happyGoto action_97
action_42 _ = happyFail

action_43 (14) = happyShift action_23
action_43 (15) = happyShift action_24
action_43 (16) = happyShift action_25
action_43 (17) = happyShift action_26
action_43 (18) = happyShift action_27
action_43 (19) = happyShift action_28
action_43 (20) = happyShift action_29
action_43 (22) = happyShift action_30
action_43 (35) = happyShift action_31
action_43 (37) = happyShift action_32
action_43 (39) = happyShift action_33
action_43 (9) = happyGoto action_96
action_43 _ = happyFail

action_44 (14) = happyShift action_23
action_44 (15) = happyShift action_24
action_44 (16) = happyShift action_25
action_44 (17) = happyShift action_26
action_44 (18) = happyShift action_27
action_44 (19) = happyShift action_28
action_44 (20) = happyShift action_29
action_44 (22) = happyShift action_30
action_44 (35) = happyShift action_31
action_44 (37) = happyShift action_32
action_44 (39) = happyShift action_33
action_44 (9) = happyGoto action_95
action_44 _ = happyFail

action_45 (14) = happyShift action_23
action_45 (15) = happyShift action_24
action_45 (16) = happyShift action_25
action_45 (17) = happyShift action_26
action_45 (18) = happyShift action_27
action_45 (19) = happyShift action_28
action_45 (20) = happyShift action_29
action_45 (22) = happyShift action_30
action_45 (35) = happyShift action_31
action_45 (37) = happyShift action_32
action_45 (39) = happyShift action_33
action_45 (9) = happyGoto action_94
action_45 _ = happyFail

action_46 (14) = happyShift action_23
action_46 (15) = happyShift action_24
action_46 (16) = happyShift action_25
action_46 (17) = happyShift action_26
action_46 (18) = happyShift action_27
action_46 (19) = happyShift action_28
action_46 (20) = happyShift action_29
action_46 (22) = happyShift action_30
action_46 (35) = happyShift action_31
action_46 (37) = happyShift action_32
action_46 (39) = happyShift action_33
action_46 (9) = happyGoto action_93
action_46 _ = happyFail

action_47 (14) = happyShift action_23
action_47 (15) = happyShift action_24
action_47 (16) = happyShift action_25
action_47 (17) = happyShift action_26
action_47 (18) = happyShift action_27
action_47 (19) = happyShift action_28
action_47 (20) = happyShift action_29
action_47 (22) = happyShift action_30
action_47 (35) = happyShift action_31
action_47 (37) = happyShift action_32
action_47 (39) = happyShift action_33
action_47 (9) = happyGoto action_92
action_47 _ = happyFail

action_48 (25) = happyShift action_56
action_48 (26) = happyShift action_57
action_48 (27) = happyShift action_58
action_48 (28) = happyShift action_59
action_48 (29) = happyShift action_60
action_48 (30) = happyShift action_61
action_48 (31) = happyShift action_62
action_48 (32) = happyShift action_63
action_48 (33) = happyShift action_64
action_48 (34) = happyShift action_65
action_48 (41) = happyShift action_91
action_48 (42) = happyShift action_66
action_48 _ = happyFail

action_49 (25) = happyShift action_56
action_49 (26) = happyShift action_57
action_49 (27) = happyShift action_58
action_49 (28) = happyShift action_59
action_49 (29) = happyShift action_60
action_49 (30) = happyShift action_61
action_49 (31) = happyShift action_62
action_49 (32) = happyShift action_63
action_49 (33) = happyShift action_64
action_49 (34) = happyShift action_65
action_49 (42) = happyShift action_66
action_49 (43) = happyShift action_90
action_49 _ = happyFail

action_50 (38) = happyShift action_89
action_50 _ = happyFail

action_51 (25) = happyShift action_56
action_51 (26) = happyShift action_57
action_51 (27) = happyShift action_58
action_51 (28) = happyShift action_59
action_51 (29) = happyShift action_60
action_51 (30) = happyShift action_61
action_51 (31) = happyShift action_62
action_51 (32) = happyShift action_63
action_51 (33) = happyShift action_64
action_51 (34) = happyShift action_65
action_51 (36) = happyShift action_87
action_51 (42) = happyShift action_66
action_51 (43) = happyShift action_88
action_51 _ = happyFail

action_52 (23) = happyShift action_86
action_52 (25) = happyShift action_56
action_52 (26) = happyShift action_57
action_52 (27) = happyShift action_58
action_52 (28) = happyShift action_59
action_52 (29) = happyShift action_60
action_52 (30) = happyShift action_61
action_52 (31) = happyShift action_62
action_52 (32) = happyShift action_63
action_52 (33) = happyShift action_64
action_52 (34) = happyShift action_65
action_52 (42) = happyShift action_66
action_52 _ = happyFail

action_53 (14) = happyShift action_23
action_53 (15) = happyShift action_24
action_53 (16) = happyShift action_25
action_53 (17) = happyShift action_26
action_53 (18) = happyShift action_27
action_53 (19) = happyShift action_28
action_53 (20) = happyShift action_29
action_53 (22) = happyShift action_30
action_53 (25) = happyShift action_56
action_53 (26) = happyShift action_57
action_53 (27) = happyShift action_58
action_53 (28) = happyShift action_59
action_53 (29) = happyShift action_60
action_53 (30) = happyShift action_61
action_53 (31) = happyShift action_62
action_53 (32) = happyShift action_63
action_53 (33) = happyShift action_64
action_53 (34) = happyShift action_65
action_53 (35) = happyShift action_31
action_53 (37) = happyShift action_32
action_53 (39) = happyShift action_33
action_53 (42) = happyShift action_66
action_53 (9) = happyGoto action_53
action_53 (11) = happyGoto action_85
action_53 _ = happyReduce_46

action_54 _ = happyReduce_41

action_55 (29) = happyShift action_84
action_55 _ = happyFail

action_56 (14) = happyShift action_23
action_56 (15) = happyShift action_24
action_56 (16) = happyShift action_25
action_56 (17) = happyShift action_26
action_56 (18) = happyShift action_27
action_56 (19) = happyShift action_28
action_56 (20) = happyShift action_29
action_56 (22) = happyShift action_30
action_56 (35) = happyShift action_31
action_56 (37) = happyShift action_32
action_56 (39) = happyShift action_33
action_56 (9) = happyGoto action_83
action_56 _ = happyFail

action_57 (14) = happyShift action_23
action_57 (15) = happyShift action_24
action_57 (16) = happyShift action_25
action_57 (17) = happyShift action_26
action_57 (18) = happyShift action_27
action_57 (19) = happyShift action_28
action_57 (20) = happyShift action_29
action_57 (22) = happyShift action_30
action_57 (34) = happyShift action_82
action_57 (35) = happyShift action_31
action_57 (37) = happyShift action_32
action_57 (39) = happyShift action_33
action_57 (9) = happyGoto action_81
action_57 _ = happyFail

action_58 (14) = happyShift action_23
action_58 (15) = happyShift action_24
action_58 (16) = happyShift action_25
action_58 (17) = happyShift action_26
action_58 (18) = happyShift action_27
action_58 (19) = happyShift action_28
action_58 (20) = happyShift action_29
action_58 (22) = happyShift action_30
action_58 (34) = happyShift action_80
action_58 (35) = happyShift action_31
action_58 (37) = happyShift action_32
action_58 (39) = happyShift action_33
action_58 (9) = happyGoto action_79
action_58 _ = happyFail

action_59 (14) = happyShift action_23
action_59 (15) = happyShift action_24
action_59 (16) = happyShift action_25
action_59 (17) = happyShift action_26
action_59 (18) = happyShift action_27
action_59 (19) = happyShift action_28
action_59 (20) = happyShift action_29
action_59 (22) = happyShift action_30
action_59 (28) = happyShift action_78
action_59 (35) = happyShift action_31
action_59 (37) = happyShift action_32
action_59 (39) = happyShift action_33
action_59 (9) = happyGoto action_77
action_59 _ = happyFail

action_60 (14) = happyShift action_23
action_60 (15) = happyShift action_24
action_60 (16) = happyShift action_25
action_60 (17) = happyShift action_26
action_60 (18) = happyShift action_27
action_60 (19) = happyShift action_28
action_60 (20) = happyShift action_29
action_60 (22) = happyShift action_30
action_60 (35) = happyShift action_31
action_60 (37) = happyShift action_32
action_60 (39) = happyShift action_33
action_60 (9) = happyGoto action_76
action_60 _ = happyFail

action_61 (14) = happyShift action_23
action_61 (15) = happyShift action_24
action_61 (16) = happyShift action_25
action_61 (17) = happyShift action_26
action_61 (18) = happyShift action_27
action_61 (19) = happyShift action_28
action_61 (20) = happyShift action_29
action_61 (22) = happyShift action_30
action_61 (35) = happyShift action_31
action_61 (37) = happyShift action_32
action_61 (39) = happyShift action_33
action_61 (9) = happyGoto action_75
action_61 _ = happyFail

action_62 (14) = happyShift action_23
action_62 (15) = happyShift action_24
action_62 (16) = happyShift action_25
action_62 (17) = happyShift action_26
action_62 (18) = happyShift action_27
action_62 (19) = happyShift action_28
action_62 (20) = happyShift action_29
action_62 (22) = happyShift action_30
action_62 (35) = happyShift action_31
action_62 (37) = happyShift action_32
action_62 (39) = happyShift action_33
action_62 (9) = happyGoto action_74
action_62 _ = happyFail

action_63 (14) = happyShift action_23
action_63 (15) = happyShift action_24
action_63 (16) = happyShift action_25
action_63 (17) = happyShift action_26
action_63 (18) = happyShift action_27
action_63 (19) = happyShift action_28
action_63 (20) = happyShift action_29
action_63 (22) = happyShift action_30
action_63 (35) = happyShift action_31
action_63 (37) = happyShift action_32
action_63 (39) = happyShift action_33
action_63 (9) = happyGoto action_73
action_63 _ = happyFail

action_64 (14) = happyShift action_23
action_64 (15) = happyShift action_24
action_64 (16) = happyShift action_25
action_64 (17) = happyShift action_26
action_64 (18) = happyShift action_27
action_64 (19) = happyShift action_28
action_64 (20) = happyShift action_29
action_64 (22) = happyShift action_30
action_64 (35) = happyShift action_31
action_64 (37) = happyShift action_32
action_64 (39) = happyShift action_33
action_64 (9) = happyGoto action_72
action_64 _ = happyFail

action_65 (34) = happyShift action_71
action_65 _ = happyFail

action_66 (42) = happyShift action_70
action_66 _ = happyFail

action_67 (40) = happyShift action_69
action_67 _ = happyFail

action_68 _ = happyReduce_3

action_69 _ = happyReduce_4

action_70 (14) = happyShift action_23
action_70 (15) = happyShift action_24
action_70 (16) = happyShift action_25
action_70 (17) = happyShift action_26
action_70 (18) = happyShift action_27
action_70 (19) = happyShift action_28
action_70 (20) = happyShift action_29
action_70 (22) = happyShift action_30
action_70 (35) = happyShift action_31
action_70 (37) = happyShift action_32
action_70 (39) = happyShift action_33
action_70 (9) = happyGoto action_110
action_70 _ = happyFail

action_71 (14) = happyShift action_23
action_71 (15) = happyShift action_24
action_71 (16) = happyShift action_25
action_71 (17) = happyShift action_26
action_71 (18) = happyShift action_27
action_71 (19) = happyShift action_28
action_71 (20) = happyShift action_29
action_71 (22) = happyShift action_30
action_71 (35) = happyShift action_31
action_71 (37) = happyShift action_32
action_71 (39) = happyShift action_33
action_71 (9) = happyGoto action_109
action_71 _ = happyFail

action_72 (33) = happyShift action_64
action_72 (34) = happyShift action_65
action_72 (42) = happyShift action_66
action_72 _ = happyReduce_29

action_73 (33) = happyShift action_64
action_73 (34) = happyShift action_65
action_73 (42) = happyShift action_66
action_73 _ = happyReduce_30

action_74 (32) = happyShift action_63
action_74 (33) = happyShift action_64
action_74 (34) = happyShift action_65
action_74 (42) = happyShift action_66
action_74 _ = happyReduce_28

action_75 (32) = happyShift action_63
action_75 (33) = happyShift action_64
action_75 (34) = happyShift action_65
action_75 (42) = happyShift action_66
action_75 _ = happyReduce_27

action_76 (30) = happyShift action_61
action_76 (31) = happyShift action_62
action_76 (32) = happyShift action_63
action_76 (33) = happyShift action_64
action_76 (34) = happyShift action_65
action_76 (42) = happyShift action_66
action_76 _ = happyReduce_26

action_77 (30) = happyShift action_61
action_77 (31) = happyShift action_62
action_77 (32) = happyShift action_63
action_77 (33) = happyShift action_64
action_77 (34) = happyShift action_65
action_77 (42) = happyShift action_66
action_77 _ = happyReduce_25

action_78 (14) = happyShift action_23
action_78 (15) = happyShift action_24
action_78 (16) = happyShift action_25
action_78 (17) = happyShift action_26
action_78 (18) = happyShift action_27
action_78 (19) = happyShift action_28
action_78 (20) = happyShift action_29
action_78 (22) = happyShift action_30
action_78 (35) = happyShift action_31
action_78 (37) = happyShift action_32
action_78 (39) = happyShift action_33
action_78 (9) = happyGoto action_108
action_78 _ = happyFail

action_79 (25) = happyShift action_56
action_79 (26) = happyFail
action_79 (27) = happyFail
action_79 (28) = happyShift action_59
action_79 (29) = happyShift action_60
action_79 (30) = happyShift action_61
action_79 (31) = happyShift action_62
action_79 (32) = happyShift action_63
action_79 (33) = happyShift action_64
action_79 (34) = happyShift action_65
action_79 (42) = happyShift action_66
action_79 _ = happyReduce_36

action_80 (14) = happyShift action_23
action_80 (15) = happyShift action_24
action_80 (16) = happyShift action_25
action_80 (17) = happyShift action_26
action_80 (18) = happyShift action_27
action_80 (19) = happyShift action_28
action_80 (20) = happyShift action_29
action_80 (22) = happyShift action_30
action_80 (35) = happyShift action_31
action_80 (37) = happyShift action_32
action_80 (39) = happyShift action_33
action_80 (9) = happyGoto action_107
action_80 _ = happyFail

action_81 (25) = happyShift action_56
action_81 (26) = happyFail
action_81 (27) = happyFail
action_81 (28) = happyShift action_59
action_81 (29) = happyShift action_60
action_81 (30) = happyShift action_61
action_81 (31) = happyShift action_62
action_81 (32) = happyShift action_63
action_81 (33) = happyShift action_64
action_81 (34) = happyShift action_65
action_81 (42) = happyShift action_66
action_81 _ = happyReduce_37

action_82 (14) = happyShift action_23
action_82 (15) = happyShift action_24
action_82 (16) = happyShift action_25
action_82 (17) = happyShift action_26
action_82 (18) = happyShift action_27
action_82 (19) = happyShift action_28
action_82 (20) = happyShift action_29
action_82 (22) = happyShift action_30
action_82 (35) = happyShift action_31
action_82 (37) = happyShift action_32
action_82 (39) = happyShift action_33
action_82 (9) = happyGoto action_106
action_82 _ = happyFail

action_83 (25) = happyShift action_56
action_83 (28) = happyShift action_59
action_83 (29) = happyShift action_60
action_83 (30) = happyShift action_61
action_83 (31) = happyShift action_62
action_83 (32) = happyShift action_63
action_83 (33) = happyShift action_64
action_83 (34) = happyShift action_65
action_83 (42) = happyShift action_66
action_83 _ = happyReduce_31

action_84 (26) = happyShift action_105
action_84 _ = happyFail

action_85 _ = happyReduce_47

action_86 (14) = happyShift action_23
action_86 (15) = happyShift action_24
action_86 (16) = happyShift action_25
action_86 (17) = happyShift action_26
action_86 (18) = happyShift action_27
action_86 (19) = happyShift action_28
action_86 (20) = happyShift action_29
action_86 (22) = happyShift action_30
action_86 (35) = happyShift action_31
action_86 (37) = happyShift action_32
action_86 (39) = happyShift action_33
action_86 (9) = happyGoto action_104
action_86 _ = happyFail

action_87 _ = happyReduce_33

action_88 (14) = happyShift action_23
action_88 (15) = happyShift action_24
action_88 (16) = happyShift action_25
action_88 (17) = happyShift action_26
action_88 (18) = happyShift action_27
action_88 (19) = happyShift action_28
action_88 (20) = happyShift action_29
action_88 (22) = happyShift action_30
action_88 (35) = happyShift action_31
action_88 (37) = happyShift action_32
action_88 (39) = happyShift action_33
action_88 (9) = happyGoto action_103
action_88 _ = happyFail

action_89 _ = happyReduce_22

action_90 (14) = happyShift action_23
action_90 (15) = happyShift action_24
action_90 (16) = happyShift action_25
action_90 (17) = happyShift action_26
action_90 (18) = happyShift action_27
action_90 (19) = happyShift action_28
action_90 (20) = happyShift action_29
action_90 (22) = happyShift action_30
action_90 (35) = happyShift action_31
action_90 (37) = happyShift action_32
action_90 (39) = happyShift action_33
action_90 (9) = happyGoto action_49
action_90 (10) = happyGoto action_102
action_90 _ = happyReduce_44

action_91 (14) = happyShift action_23
action_91 (15) = happyShift action_101
action_91 (16) = happyShift action_25
action_91 (17) = happyShift action_26
action_91 (18) = happyShift action_27
action_91 (19) = happyShift action_28
action_91 (20) = happyShift action_29
action_91 (22) = happyShift action_30
action_91 (35) = happyShift action_31
action_91 (37) = happyShift action_32
action_91 (39) = happyShift action_33
action_91 (9) = happyGoto action_98
action_91 (12) = happyGoto action_99
action_91 (13) = happyGoto action_100
action_91 _ = happyFail

action_92 (25) = happyShift action_56
action_92 (26) = happyShift action_57
action_92 (27) = happyShift action_58
action_92 (28) = happyShift action_59
action_92 (29) = happyShift action_60
action_92 (30) = happyShift action_61
action_92 (31) = happyShift action_62
action_92 (32) = happyShift action_63
action_92 (33) = happyShift action_64
action_92 (34) = happyShift action_65
action_92 (42) = happyShift action_66
action_92 _ = happyReduce_12

action_93 (25) = happyShift action_56
action_93 (26) = happyShift action_57
action_93 (27) = happyShift action_58
action_93 (28) = happyShift action_59
action_93 (29) = happyShift action_60
action_93 (30) = happyShift action_61
action_93 (31) = happyShift action_62
action_93 (32) = happyShift action_63
action_93 (33) = happyShift action_64
action_93 (34) = happyShift action_65
action_93 (42) = happyShift action_66
action_93 _ = happyReduce_16

action_94 (25) = happyShift action_56
action_94 (26) = happyShift action_57
action_94 (27) = happyShift action_58
action_94 (28) = happyShift action_59
action_94 (29) = happyShift action_60
action_94 (30) = happyShift action_61
action_94 (31) = happyShift action_62
action_94 (32) = happyShift action_63
action_94 (33) = happyShift action_64
action_94 (34) = happyShift action_65
action_94 (42) = happyShift action_66
action_94 _ = happyReduce_13

action_95 (25) = happyShift action_56
action_95 (26) = happyShift action_57
action_95 (27) = happyShift action_58
action_95 (28) = happyShift action_59
action_95 (29) = happyShift action_60
action_95 (30) = happyShift action_61
action_95 (31) = happyShift action_62
action_95 (32) = happyShift action_63
action_95 (33) = happyShift action_64
action_95 (34) = happyShift action_65
action_95 (42) = happyShift action_66
action_95 _ = happyReduce_17

action_96 (25) = happyShift action_56
action_96 (26) = happyShift action_57
action_96 (27) = happyShift action_58
action_96 (28) = happyShift action_59
action_96 (29) = happyShift action_60
action_96 (30) = happyShift action_61
action_96 (31) = happyShift action_62
action_96 (32) = happyShift action_63
action_96 (33) = happyShift action_64
action_96 (34) = happyShift action_65
action_96 (42) = happyShift action_66
action_96 _ = happyReduce_14

action_97 (25) = happyShift action_56
action_97 (26) = happyShift action_57
action_97 (27) = happyShift action_58
action_97 (28) = happyShift action_59
action_97 (29) = happyShift action_60
action_97 (30) = happyShift action_61
action_97 (31) = happyShift action_62
action_97 (32) = happyShift action_63
action_97 (33) = happyShift action_64
action_97 (34) = happyShift action_65
action_97 (42) = happyShift action_66
action_97 _ = happyReduce_15

action_98 (25) = happyShift action_56
action_98 (26) = happyShift action_57
action_98 (27) = happyShift action_58
action_98 (28) = happyShift action_59
action_98 (29) = happyShift action_60
action_98 (30) = happyShift action_61
action_98 (31) = happyShift action_62
action_98 (32) = happyShift action_63
action_98 (33) = happyShift action_64
action_98 (34) = happyShift action_65
action_98 (42) = happyShift action_66
action_98 _ = happyReduce_51

action_99 (40) = happyShift action_116
action_99 _ = happyFail

action_100 (43) = happyShift action_115
action_100 _ = happyReduce_48

action_101 (14) = happyShift action_23
action_101 (15) = happyShift action_24
action_101 (16) = happyShift action_25
action_101 (17) = happyShift action_26
action_101 (18) = happyShift action_27
action_101 (19) = happyShift action_28
action_101 (20) = happyShift action_29
action_101 (22) = happyShift action_30
action_101 (27) = happyShift action_114
action_101 (35) = happyShift action_31
action_101 (37) = happyShift action_32
action_101 (39) = happyShift action_33
action_101 (9) = happyGoto action_53
action_101 (11) = happyGoto action_54
action_101 _ = happyReduce_46

action_102 _ = happyReduce_45

action_103 (25) = happyShift action_56
action_103 (26) = happyShift action_57
action_103 (27) = happyShift action_58
action_103 (28) = happyShift action_59
action_103 (29) = happyShift action_60
action_103 (30) = happyShift action_61
action_103 (31) = happyShift action_62
action_103 (32) = happyShift action_63
action_103 (33) = happyShift action_64
action_103 (34) = happyShift action_65
action_103 (36) = happyShift action_113
action_103 (42) = happyShift action_66
action_103 _ = happyFail

action_104 (24) = happyShift action_112
action_104 (25) = happyShift action_56
action_104 (26) = happyShift action_57
action_104 (27) = happyShift action_58
action_104 (28) = happyShift action_59
action_104 (29) = happyShift action_60
action_104 (30) = happyShift action_61
action_104 (31) = happyShift action_62
action_104 (32) = happyShift action_63
action_104 (33) = happyShift action_64
action_104 (34) = happyShift action_65
action_104 (42) = happyShift action_66
action_104 _ = happyFail

action_105 (14) = happyShift action_23
action_105 (15) = happyShift action_24
action_105 (16) = happyShift action_25
action_105 (17) = happyShift action_26
action_105 (18) = happyShift action_27
action_105 (19) = happyShift action_28
action_105 (20) = happyShift action_29
action_105 (22) = happyShift action_30
action_105 (35) = happyShift action_31
action_105 (37) = happyShift action_32
action_105 (39) = happyShift action_33
action_105 (9) = happyGoto action_111
action_105 _ = happyFail

action_106 (25) = happyShift action_56
action_106 (26) = happyShift action_57
action_106 (27) = happyShift action_58
action_106 (28) = happyShift action_59
action_106 (29) = happyShift action_60
action_106 (30) = happyShift action_61
action_106 (31) = happyShift action_62
action_106 (32) = happyShift action_63
action_106 (33) = happyShift action_64
action_106 (34) = happyShift action_65
action_106 (42) = happyShift action_66
action_106 _ = happyReduce_39

action_107 (25) = happyShift action_56
action_107 (26) = happyShift action_57
action_107 (27) = happyShift action_58
action_107 (28) = happyShift action_59
action_107 (29) = happyShift action_60
action_107 (30) = happyShift action_61
action_107 (31) = happyShift action_62
action_107 (32) = happyShift action_63
action_107 (33) = happyShift action_64
action_107 (34) = happyShift action_65
action_107 (42) = happyShift action_66
action_107 _ = happyReduce_38

action_108 (30) = happyShift action_61
action_108 (31) = happyShift action_62
action_108 (32) = happyShift action_63
action_108 (33) = happyShift action_64
action_108 (34) = happyShift action_65
action_108 (42) = happyShift action_66
action_108 _ = happyReduce_32

action_109 (25) = happyShift action_56
action_109 (26) = happyShift action_57
action_109 (27) = happyShift action_58
action_109 (28) = happyShift action_59
action_109 (29) = happyShift action_60
action_109 (30) = happyShift action_61
action_109 (31) = happyShift action_62
action_109 (32) = happyShift action_63
action_109 (33) = happyShift action_64
action_109 (34) = happyShift action_65
action_109 (42) = happyShift action_66
action_109 _ = happyReduce_40

action_110 (25) = happyShift action_56
action_110 (26) = happyShift action_57
action_110 (27) = happyShift action_58
action_110 (28) = happyShift action_59
action_110 (29) = happyShift action_60
action_110 (30) = happyShift action_61
action_110 (31) = happyShift action_62
action_110 (32) = happyShift action_63
action_110 (33) = happyShift action_64
action_110 (34) = happyShift action_65
action_110 (42) = happyShift action_66
action_110 _ = happyReduce_42

action_111 (25) = happyShift action_56
action_111 (26) = happyFail
action_111 (27) = happyFail
action_111 (28) = happyShift action_59
action_111 (29) = happyShift action_60
action_111 (30) = happyShift action_61
action_111 (31) = happyShift action_62
action_111 (32) = happyShift action_63
action_111 (33) = happyShift action_64
action_111 (34) = happyShift action_65
action_111 (42) = happyShift action_66
action_111 _ = happyReduce_35

action_112 (14) = happyShift action_23
action_112 (15) = happyShift action_24
action_112 (16) = happyShift action_25
action_112 (17) = happyShift action_26
action_112 (18) = happyShift action_27
action_112 (19) = happyShift action_28
action_112 (20) = happyShift action_29
action_112 (22) = happyShift action_30
action_112 (35) = happyShift action_31
action_112 (37) = happyShift action_32
action_112 (39) = happyShift action_33
action_112 (9) = happyGoto action_119
action_112 _ = happyFail

action_113 _ = happyReduce_23

action_114 (29) = happyShift action_118
action_114 _ = happyFail

action_115 (14) = happyShift action_23
action_115 (15) = happyShift action_101
action_115 (16) = happyShift action_25
action_115 (17) = happyShift action_26
action_115 (18) = happyShift action_27
action_115 (19) = happyShift action_28
action_115 (20) = happyShift action_29
action_115 (22) = happyShift action_30
action_115 (35) = happyShift action_31
action_115 (37) = happyShift action_32
action_115 (39) = happyShift action_33
action_115 (9) = happyGoto action_98
action_115 (12) = happyGoto action_117
action_115 (13) = happyGoto action_100
action_115 _ = happyFail

action_116 _ = happyReduce_43

action_117 _ = happyReduce_49

action_118 (14) = happyShift action_23
action_118 (15) = happyShift action_24
action_118 (16) = happyShift action_25
action_118 (17) = happyShift action_26
action_118 (18) = happyShift action_27
action_118 (19) = happyShift action_28
action_118 (20) = happyShift action_29
action_118 (22) = happyShift action_30
action_118 (35) = happyShift action_31
action_118 (37) = happyShift action_32
action_118 (39) = happyShift action_33
action_118 (9) = happyGoto action_120
action_118 _ = happyFail

action_119 (25) = happyShift action_56
action_119 (26) = happyShift action_57
action_119 (27) = happyShift action_58
action_119 (28) = happyShift action_59
action_119 (29) = happyShift action_60
action_119 (30) = happyShift action_61
action_119 (31) = happyShift action_62
action_119 (32) = happyShift action_63
action_119 (33) = happyShift action_64
action_119 (34) = happyShift action_65
action_119 (42) = happyShift action_66
action_119 _ = happyReduce_34

action_120 (25) = happyShift action_56
action_120 (26) = happyShift action_57
action_120 (27) = happyShift action_58
action_120 (28) = happyShift action_59
action_120 (29) = happyShift action_60
action_120 (30) = happyShift action_61
action_120 (31) = happyShift action_62
action_120 (32) = happyShift action_63
action_120 (33) = happyShift action_64
action_120 (34) = happyShift action_65
action_120 (42) = happyShift action_66
action_120 _ = happyReduce_50

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
	(HappyTerminal (TokenInt _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (((show happy_var_1) ++"+", happy_var_4)
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 6 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (((show happy_var_1) ++ "-" ++ (show happy_var_3), happy_var_5)
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 4 5 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 ((show happy_var_1, happy_var_3)
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 4 5 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenString _ happy_var_1)) `HappyStk`
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
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn8
		 (Def happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 4 8 happyReduction_12
happyReduction_12 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenString _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Inc happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 4 8 happyReduction_13
happyReduction_13 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenString _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Dec happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 4 8 happyReduction_14
happyReduction_14 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenString _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (MultBy happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 4 8 happyReduction_15
happyReduction_15 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenString _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (DivBy happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 4 8 happyReduction_16
happyReduction_16 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenString _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Inc happy_var_1 1
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 4 8 happyReduction_17
happyReduction_17 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenString _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Dec happy_var_1 1
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_1  9 happyReduction_18
happyReduction_18 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn9
		 (Int_ happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  9 happyReduction_19
happyReduction_19 (HappyTerminal (TokenFloat _ happy_var_1))
	 =  HappyAbsSyn9
		 (Float_ happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  9 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn9
		 (True
	)

happyReduce_21 = happySpecReduce_1  9 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn9
		 (False
	)

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
happyReduction_24 (HappyTerminal (TokenIdent _ happy_var_1))
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

happyReduce_32 = happyReduce 4 9 happyReduction_32
happyReduction_32 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Append happy_var_1 happy_var_4
	) `HappyStk` happyRest

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

happyReduce_35 = happyReduce 5 9 happyReduction_35
happyReduction_35 ((HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenString _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Lam happy_var_2 happy_var_5
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

happyReduce_38 = happyReduce 4 9 happyReduction_38
happyReduction_38 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (LessEq happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 4 9 happyReduction_39
happyReduction_39 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (MoreEq happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 4 9 happyReduction_40
happyReduction_40 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Equal happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_41 = happySpecReduce_2  9 happyReduction_41
happyReduction_41 (HappyAbsSyn11  happy_var_2)
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn9
		 (Fun happy_var_1 happy_var_2
	)
happyReduction_41 _ _  = notHappyAtAll 

happyReduce_42 = happyReduce 4 9 happyReduction_42
happyReduction_42 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Index happy_var_1 happy_var_4
	) `HappyStk` happyRest

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

happyReduce_46 = happySpecReduce_0  11 happyReduction_46
happyReduction_46  =  HappyAbsSyn11
		 ([]
	)

happyReduce_47 = happySpecReduce_2  11 happyReduction_47
happyReduction_47 (HappyAbsSyn11  happy_var_2)
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1:happy_var_2
	)
happyReduction_47 _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  12 happyReduction_48
happyReduction_48 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 ([happy_var_1]
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  12 happyReduction_49
happyReduction_49 _
	(HappyTerminal happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1:happy_var_2
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happyReduce 4 13 happyReduction_50
happyReduction_50 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenString _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (Member happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_51 = happySpecReduce_1  13 happyReduction_51
happyReduction_51 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn13
		 (Prop happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 44 44 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenLambda _ -> cont 14;
	TokenString _ happy_dollar_dollar -> cont 15;
	TokenIdent _ happy_dollar_dollar -> cont 16;
	TokenInt _ happy_dollar_dollar -> cont 17;
	TokenFloat _ happy_dollar_dollar -> cont 18;
	TokenTrue _ -> cont 19;
	TokenFalse _ -> cont 20;
	TokenReturn _ -> cont 21;
	TokenIf _ -> cont 22;
	TokenThen _ -> cont 23;
	TokenElse _ -> cont 24;
	TokenCons _ -> cont 25;
	TokenMore _ -> cont 26;
	TokenLess _ -> cont 27;
	TokenAdd _ -> cont 28;
	TokenSub _ -> cont 29;
	TokenMult _ -> cont 30;
	TokenDiv _ -> cont 31;
	TokenMod _ -> cont 32;
	TokenExponent _ -> cont 33;
	TokenEqual _ -> cont 34;
	TokenLParen _ -> cont 35;
	TokenRParen _ -> cont 36;
	TokenLList _ -> cont 37;
	TokenRList _ -> cont 38;
	TokenLBlock _ -> cont 39;
	TokenRBlock _ -> cont 40;
	TokenLine _ -> cont 41;
	TokenExclamation _ -> cont 42;
	TokenComma -> cont 43;
	_ -> happyError' (tk:tks)
	}

happyError_ 44 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

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
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

type Prog = [Sect]

type Sect = (String, Block)

type Block = [Statement]

data Statement = Return Expr | Assign Assignment

data Assignment = Def String Expr | Inc String Expr | Dec String Expr
                | MultVal String Expr | DivVal String Expr

data Expr = Int_ Int | Float_ Float | True | False | List [Expr] | Pair Expr Expr
          | Ident Int | Add Expr Expr | Sub Expr Expr | Mult Expr Expr
          | Div Expr Expr | Mod Expr Expr | Cons Expr Expr | Append Expr Expr
          | If Expr Expr Expr | Lam String Expr | Less Expr Expr | More Expr Expr
          | LessEq Expr Expr | MoreEq Expr Expr | Equal Expr Expr | Fun String [Expr]
          | Index Expr Expr | Comp Expr [Pred] | Exponent Expr Expr
          deriving (Show,Eq)

data Pred = Member Expr Expr | Prop Expr
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}





# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4























# 5 "<command-line>" 2
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 30 "templates/GenericTemplate.hs" #-}








{-# LINE 51 "templates/GenericTemplate.hs" #-}

{-# LINE 61 "templates/GenericTemplate.hs" #-}

{-# LINE 70 "templates/GenericTemplate.hs" #-}

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

{-# LINE 148 "templates/GenericTemplate.hs" #-}

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
     let (i) = (case x of { HappyErrorToken (i) -> i }) in
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
        happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
       happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk





             new_state = action


happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 246 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let (i) = (case x of { HappyErrorToken (i) -> i }) in
--	trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
						(saved_tok `HappyStk` _ `HappyStk` stk) =
--	trace ("discarding state, depth " ++ show (length stk))  $
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
--	happySeq = happyDoSeq
-- otherwise it emits
-- 	happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 312 "templates/GenericTemplate.hs" #-}
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
