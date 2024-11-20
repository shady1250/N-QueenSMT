; SMT-LIB file for the 4-Queens problem
(declare-const q_0_0 Bool)
(declare-const q_0_1 Bool)
(declare-const q_0_2 Bool)
(declare-const q_0_3 Bool)
(declare-const q_1_0 Bool)
(declare-const q_1_1 Bool)
(declare-const q_1_2 Bool)
(declare-const q_1_3 Bool)
(declare-const q_2_0 Bool)
(declare-const q_2_1 Bool)
(declare-const q_2_2 Bool)
(declare-const q_2_3 Bool)
(declare-const q_3_0 Bool)
(declare-const q_3_1 Bool)
(declare-const q_3_2 Bool)
(declare-const q_3_3 Bool)
(assert (= (+ (ite q_0_0 1 0) (ite q_0_1 1 0) (ite q_0_2 1 0) (ite q_0_3 1 0)) 1))
(assert (= (+ (ite q_1_0 1 0) (ite q_1_1 1 0) (ite q_1_2 1 0) (ite q_1_3 1 0)) 1))
(assert (= (+ (ite q_2_0 1 0) (ite q_2_1 1 0) (ite q_2_2 1 0) (ite q_2_3 1 0)) 1))
(assert (= (+ (ite q_3_0 1 0) (ite q_3_1 1 0) (ite q_3_2 1 0) (ite q_3_3 1 0)) 1))
(assert (= (+ (ite q_0_0 1 0) (ite q_1_0 1 0) (ite q_2_0 1 0) (ite q_3_0 1 0)) 1))
(assert (= (+ (ite q_0_1 1 0) (ite q_1_1 1 0) (ite q_2_1 1 0) (ite q_3_1 1 0)) 1))
(assert (= (+ (ite q_0_2 1 0) (ite q_1_2 1 0) (ite q_2_2 1 0) (ite q_3_2 1 0)) 1))
(assert (= (+ (ite q_0_3 1 0) (ite q_1_3 1 0) (ite q_2_3 1 0) (ite q_3_3 1 0)) 1))
(assert (not (and q_0_0 q_1_1)))
(assert (not (and q_0_0 q_2_2)))
(assert (not (and q_0_0 q_3_3)))
(assert (not (and q_0_1 q_1_2)))
(assert (not (and q_0_1 q_1_0)))
(assert (not (and q_0_1 q_2_3)))
(assert (not (and q_0_2 q_1_3)))
(assert (not (and q_0_2 q_1_1)))
(assert (not (and q_0_2 q_2_0)))
(assert (not (and q_0_3 q_1_2)))
(assert (not (and q_0_3 q_2_1)))
(assert (not (and q_0_3 q_3_0)))
(assert (not (and q_1_0 q_2_1)))
(assert (not (and q_1_0 q_3_2)))
(assert (not (and q_1_1 q_2_2)))
(assert (not (and q_1_1 q_2_0)))
(assert (not (and q_1_1 q_3_3)))
(assert (not (and q_1_2 q_2_3)))
(assert (not (and q_1_2 q_2_1)))
(assert (not (and q_1_2 q_3_0)))
(assert (not (and q_1_3 q_2_2)))
(assert (not (and q_1_3 q_3_1)))
(assert (not (and q_2_0 q_3_1)))
(assert (not (and q_2_1 q_3_2)))
(assert (not (and q_2_1 q_3_0)))
(assert (not (and q_2_2 q_3_3)))
(assert (not (and q_2_2 q_3_1)))
(assert (not (and q_2_3 q_3_2)))
(check-sat)
(get-value (q_0_0))
(get-value (q_0_1))
(get-value (q_0_2))
(get-value (q_0_3))
(get-value (q_1_0))
(get-value (q_1_1))
(get-value (q_1_2))
(get-value (q_1_3))
(get-value (q_2_0))
(get-value (q_2_1))
(get-value (q_2_2))
(get-value (q_2_3))
(get-value (q_3_0))
(get-value (q_3_1))
(get-value (q_3_2))
(get-value (q_3_3))
