; SMT-LIB file for the 6-Queens problem
(declare-const q_0_0 Bool)
(declare-const q_0_1 Bool)
(declare-const q_0_2 Bool)
(declare-const q_0_3 Bool)
(declare-const q_0_4 Bool)
(declare-const q_0_5 Bool)
(declare-const q_1_0 Bool)
(declare-const q_1_1 Bool)
(declare-const q_1_2 Bool)
(declare-const q_1_3 Bool)
(declare-const q_1_4 Bool)
(declare-const q_1_5 Bool)
(declare-const q_2_0 Bool)
(declare-const q_2_1 Bool)
(declare-const q_2_2 Bool)
(declare-const q_2_3 Bool)
(declare-const q_2_4 Bool)
(declare-const q_2_5 Bool)
(declare-const q_3_0 Bool)
(declare-const q_3_1 Bool)
(declare-const q_3_2 Bool)
(declare-const q_3_3 Bool)
(declare-const q_3_4 Bool)
(declare-const q_3_5 Bool)
(declare-const q_4_0 Bool)
(declare-const q_4_1 Bool)
(declare-const q_4_2 Bool)
(declare-const q_4_3 Bool)
(declare-const q_4_4 Bool)
(declare-const q_4_5 Bool)
(declare-const q_5_0 Bool)
(declare-const q_5_1 Bool)
(declare-const q_5_2 Bool)
(declare-const q_5_3 Bool)
(declare-const q_5_4 Bool)
(declare-const q_5_5 Bool)
(assert (= (+ (ite q_0_0 1 0) (ite q_0_1 1 0) (ite q_0_2 1 0) (ite q_0_3 1 0) (ite q_0_4 1 0) (ite q_0_5 1 0)) 1))
(assert (= (+ (ite q_1_0 1 0) (ite q_1_1 1 0) (ite q_1_2 1 0) (ite q_1_3 1 0) (ite q_1_4 1 0) (ite q_1_5 1 0)) 1))
(assert (= (+ (ite q_2_0 1 0) (ite q_2_1 1 0) (ite q_2_2 1 0) (ite q_2_3 1 0) (ite q_2_4 1 0) (ite q_2_5 1 0)) 1))
(assert (= (+ (ite q_3_0 1 0) (ite q_3_1 1 0) (ite q_3_2 1 0) (ite q_3_3 1 0) (ite q_3_4 1 0) (ite q_3_5 1 0)) 1))
(assert (= (+ (ite q_4_0 1 0) (ite q_4_1 1 0) (ite q_4_2 1 0) (ite q_4_3 1 0) (ite q_4_4 1 0) (ite q_4_5 1 0)) 1))
(assert (= (+ (ite q_5_0 1 0) (ite q_5_1 1 0) (ite q_5_2 1 0) (ite q_5_3 1 0) (ite q_5_4 1 0) (ite q_5_5 1 0)) 1))
(assert (= (+ (ite q_0_0 1 0) (ite q_1_0 1 0) (ite q_2_0 1 0) (ite q_3_0 1 0) (ite q_4_0 1 0) (ite q_5_0 1 0)) 1))
(assert (= (+ (ite q_0_1 1 0) (ite q_1_1 1 0) (ite q_2_1 1 0) (ite q_3_1 1 0) (ite q_4_1 1 0) (ite q_5_1 1 0)) 1))
(assert (= (+ (ite q_0_2 1 0) (ite q_1_2 1 0) (ite q_2_2 1 0) (ite q_3_2 1 0) (ite q_4_2 1 0) (ite q_5_2 1 0)) 1))
(assert (= (+ (ite q_0_3 1 0) (ite q_1_3 1 0) (ite q_2_3 1 0) (ite q_3_3 1 0) (ite q_4_3 1 0) (ite q_5_3 1 0)) 1))
(assert (= (+ (ite q_0_4 1 0) (ite q_1_4 1 0) (ite q_2_4 1 0) (ite q_3_4 1 0) (ite q_4_4 1 0) (ite q_5_4 1 0)) 1))
(assert (= (+ (ite q_0_5 1 0) (ite q_1_5 1 0) (ite q_2_5 1 0) (ite q_3_5 1 0) (ite q_4_5 1 0) (ite q_5_5 1 0)) 1))
(assert (not (and q_0_0 q_1_1)))
(assert (not (and q_0_0 q_2_2)))
(assert (not (and q_0_0 q_3_3)))
(assert (not (and q_0_0 q_4_4)))
(assert (not (and q_0_0 q_5_5)))
(assert (not (and q_0_1 q_1_2)))
(assert (not (and q_0_1 q_1_0)))
(assert (not (and q_0_1 q_2_3)))
(assert (not (and q_0_1 q_3_4)))
(assert (not (and q_0_1 q_4_5)))
(assert (not (and q_0_2 q_1_3)))
(assert (not (and q_0_2 q_1_1)))
(assert (not (and q_0_2 q_2_4)))
(assert (not (and q_0_2 q_2_0)))
(assert (not (and q_0_2 q_3_5)))
(assert (not (and q_0_3 q_1_4)))
(assert (not (and q_0_3 q_1_2)))
(assert (not (and q_0_3 q_2_5)))
(assert (not (and q_0_3 q_2_1)))
(assert (not (and q_0_3 q_3_0)))
(assert (not (and q_0_4 q_1_5)))
(assert (not (and q_0_4 q_1_3)))
(assert (not (and q_0_4 q_2_2)))
(assert (not (and q_0_4 q_3_1)))
(assert (not (and q_0_4 q_4_0)))
(assert (not (and q_0_5 q_1_4)))
(assert (not (and q_0_5 q_2_3)))
(assert (not (and q_0_5 q_3_2)))
(assert (not (and q_0_5 q_4_1)))
(assert (not (and q_0_5 q_5_0)))
(assert (not (and q_1_0 q_2_1)))
(assert (not (and q_1_0 q_3_2)))
(assert (not (and q_1_0 q_4_3)))
(assert (not (and q_1_0 q_5_4)))
(assert (not (and q_1_1 q_2_2)))
(assert (not (and q_1_1 q_2_0)))
(assert (not (and q_1_1 q_3_3)))
(assert (not (and q_1_1 q_4_4)))
(assert (not (and q_1_1 q_5_5)))
(assert (not (and q_1_2 q_2_3)))
(assert (not (and q_1_2 q_2_1)))
(assert (not (and q_1_2 q_3_4)))
(assert (not (and q_1_2 q_3_0)))
(assert (not (and q_1_2 q_4_5)))
(assert (not (and q_1_3 q_2_4)))
(assert (not (and q_1_3 q_2_2)))
(assert (not (and q_1_3 q_3_5)))
(assert (not (and q_1_3 q_3_1)))
(assert (not (and q_1_3 q_4_0)))
(assert (not (and q_1_4 q_2_5)))
(assert (not (and q_1_4 q_2_3)))
(assert (not (and q_1_4 q_3_2)))
(assert (not (and q_1_4 q_4_1)))
(assert (not (and q_1_4 q_5_0)))
(assert (not (and q_1_5 q_2_4)))
(assert (not (and q_1_5 q_3_3)))
(assert (not (and q_1_5 q_4_2)))
(assert (not (and q_1_5 q_5_1)))
(assert (not (and q_2_0 q_3_1)))
(assert (not (and q_2_0 q_4_2)))
(assert (not (and q_2_0 q_5_3)))
(assert (not (and q_2_1 q_3_2)))
(assert (not (and q_2_1 q_3_0)))
(assert (not (and q_2_1 q_4_3)))
(assert (not (and q_2_1 q_5_4)))
(assert (not (and q_2_2 q_3_3)))
(assert (not (and q_2_2 q_3_1)))
(assert (not (and q_2_2 q_4_4)))
(assert (not (and q_2_2 q_4_0)))
(assert (not (and q_2_2 q_5_5)))
(assert (not (and q_2_3 q_3_4)))
(assert (not (and q_2_3 q_3_2)))
(assert (not (and q_2_3 q_4_5)))
(assert (not (and q_2_3 q_4_1)))
(assert (not (and q_2_3 q_5_0)))
(assert (not (and q_2_4 q_3_5)))
(assert (not (and q_2_4 q_3_3)))
(assert (not (and q_2_4 q_4_2)))
(assert (not (and q_2_4 q_5_1)))
(assert (not (and q_2_5 q_3_4)))
(assert (not (and q_2_5 q_4_3)))
(assert (not (and q_2_5 q_5_2)))
(assert (not (and q_3_0 q_4_1)))
(assert (not (and q_3_0 q_5_2)))
(assert (not (and q_3_1 q_4_2)))
(assert (not (and q_3_1 q_4_0)))
(assert (not (and q_3_1 q_5_3)))
(assert (not (and q_3_2 q_4_3)))
(assert (not (and q_3_2 q_4_1)))
(assert (not (and q_3_2 q_5_4)))
(assert (not (and q_3_2 q_5_0)))
(assert (not (and q_3_3 q_4_4)))
(assert (not (and q_3_3 q_4_2)))
(assert (not (and q_3_3 q_5_5)))
(assert (not (and q_3_3 q_5_1)))
(assert (not (and q_3_4 q_4_5)))
(assert (not (and q_3_4 q_4_3)))
(assert (not (and q_3_4 q_5_2)))
(assert (not (and q_3_5 q_4_4)))
(assert (not (and q_3_5 q_5_3)))
(assert (not (and q_4_0 q_5_1)))
(assert (not (and q_4_1 q_5_2)))
(assert (not (and q_4_1 q_5_0)))
(assert (not (and q_4_2 q_5_3)))
(assert (not (and q_4_2 q_5_1)))
(assert (not (and q_4_3 q_5_4)))
(assert (not (and q_4_3 q_5_2)))
(assert (not (and q_4_4 q_5_5)))
(assert (not (and q_4_4 q_5_3)))
(assert (not (and q_4_5 q_5_4)))
(check-sat)
(get-value (q_0_0))
(get-value (q_0_1))
(get-value (q_0_2))
(get-value (q_0_3))
(get-value (q_0_4))
(get-value (q_0_5))
(get-value (q_1_0))
(get-value (q_1_1))
(get-value (q_1_2))
(get-value (q_1_3))
(get-value (q_1_4))
(get-value (q_1_5))
(get-value (q_2_0))
(get-value (q_2_1))
(get-value (q_2_2))
(get-value (q_2_3))
(get-value (q_2_4))
(get-value (q_2_5))
(get-value (q_3_0))
(get-value (q_3_1))
(get-value (q_3_2))
(get-value (q_3_3))
(get-value (q_3_4))
(get-value (q_3_5))
(get-value (q_4_0))
(get-value (q_4_1))
(get-value (q_4_2))
(get-value (q_4_3))
(get-value (q_4_4))
(get-value (q_4_5))
(get-value (q_5_0))
(get-value (q_5_1))
(get-value (q_5_2))
(get-value (q_5_3))
(get-value (q_5_4))
(get-value (q_5_5))
