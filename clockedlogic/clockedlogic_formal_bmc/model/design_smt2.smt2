; SMT-LIBv2 description generated by Yosys 0.34+43 (git sha1 d21c464ae, clang 10.0.0-4ubuntu1 -fPIC -Os)
; yosys-smt2-module clockedlogic
(declare-sort |clockedlogic_s| 0)
(declare-fun |clockedlogic_is| (|clockedlogic_s|) Bool)
; yosys-smt2-anyinit clockedlogic#0 64 clockedlogic.v:13.1-18.4
; yosys-smt2-witness {"offset": 0, "path": ["\\r"], "smtname": 0, "smtoffset": 0, "type": "init", "width": 64}
(declare-fun |clockedlogic#0| (|clockedlogic_s|) (_ BitVec 64)) ; \r
; yosys-smt2-output y 64
; yosys-smt2-wire y 64
(define-fun |clockedlogic_n y| ((state |clockedlogic_s|)) (_ BitVec 64) (|clockedlogic#0| state))
; yosys-smt2-register r 64
; yosys-smt2-wire r 64
(define-fun |clockedlogic_n r| ((state |clockedlogic_s|)) (_ BitVec 64) (|clockedlogic#0| state))
(declare-fun |clockedlogic#1| (|clockedlogic_s|) Bool) ; \clk
; yosys-smt2-input clk 1
; yosys-smt2-wire clk 1
; yosys-smt2-clock clk posedge
; yosys-smt2-witness {"offset": 0, "path": ["\\clk"], "smtname": "clk", "smtoffset": 0, "type": "posedge", "width": 1}
; yosys-smt2-witness {"offset": 0, "path": ["\\clk"], "smtname": "clk", "smtoffset": 0, "type": "input", "width": 1}
(define-fun |clockedlogic_n clk| ((state |clockedlogic_s|)) Bool (|clockedlogic#1| state))
(define-fun |clockedlogic#2| ((state |clockedlogic_s|)) (_ BitVec 1) (bvnot (ite (|clockedlogic#1| state) #b1 #b0))) ; $auto$rtlil.cc:2461:Not$34
; yosys-smt2-assume 0 $auto$formalff.cc:758:execute$35
(define-fun |clockedlogic_u 0| ((state |clockedlogic_s|)) Bool (or (= ((_ extract 0 0) (|clockedlogic#2| state)) #b1) (not true))) ; $auto$formalff.cc:758:execute$35
(define-fun |clockedlogic#3| ((state |clockedlogic_s|)) (_ BitVec 64) (bvadd (|clockedlogic#0| state) #b0000000000000000000000000000000000000000000000000000000000000001)) ; $add$clockedlogic.v:17$13_Y
(define-fun |clockedlogic#4| ((state |clockedlogic_s|)) Bool (= (|clockedlogic#0| state) #b0000000000000000000000000000000000000000000000001010101010101010)) ; $eq$clockedlogic.v:14$12_Y
(define-fun |clockedlogic#5| ((state |clockedlogic_s|)) (_ BitVec 64) (ite (|clockedlogic#4| state) #b0000000000000000000000000000000000000000000000000000000000000000 (|clockedlogic#3| state))) ; $0\r[63:0]
(define-fun |clockedlogic_a| ((state |clockedlogic_s|)) Bool true)
(define-fun |clockedlogic_u| ((state |clockedlogic_s|)) Bool 
  (|clockedlogic_u 0| state)
)
(define-fun |clockedlogic_i| ((state |clockedlogic_s|)) Bool true)
(define-fun |clockedlogic_h| ((state |clockedlogic_s|)) Bool true)
(define-fun |clockedlogic_t| ((state |clockedlogic_s|) (next_state |clockedlogic_s|)) Bool 
  (= (|clockedlogic#5| state) (|clockedlogic#0| next_state)) ; $procdff$21 \r
) ; end of module clockedlogic
; yosys-smt2-module clockedlogic_formal
(declare-sort |clockedlogic_formal_s| 0)
(declare-fun |clockedlogic_formal_is| (|clockedlogic_formal_s|) Bool)
; yosys-smt2-cell clockedlogic clockedlogic
; yosys-smt2-witness {"path": ["\\clockedlogic"], "smtname": "clockedlogic", "type": "cell"}
(declare-fun |clockedlogic_formal#0| (|clockedlogic_formal_s|) (_ BitVec 64)) ; \y
(declare-fun |clockedlogic_formal_h clockedlogic| (|clockedlogic_formal_s|) |clockedlogic_s|)
; yosys-smt2-output y 64
; yosys-smt2-wire y 64
(define-fun |clockedlogic_formal_n y| ((state |clockedlogic_formal_s|)) (_ BitVec 64) (|clockedlogic_formal#0| state))
; yosys-smt2-anyinit clockedlogic_formal#1 64 clockedlogic_formal.v:21.1-21.32
; yosys-smt2-witness {"offset": 0, "path": ["\\past_y"], "smtname": 1, "smtoffset": 0, "type": "init", "width": 64}
(declare-fun |clockedlogic_formal#1| (|clockedlogic_formal_s|) (_ BitVec 64)) ; \past_y
; yosys-smt2-register past_y 64
; yosys-smt2-wire past_y 64
(define-fun |clockedlogic_formal_n past_y| ((state |clockedlogic_formal_s|)) (_ BitVec 64) (|clockedlogic_formal#1| state))
; yosys-smt2-witness {"offset": 0, "path": ["\\past_valid"], "smtname": 2, "smtoffset": 0, "type": "reg", "width": 1}
(declare-fun |clockedlogic_formal#2| (|clockedlogic_formal_s|) (_ BitVec 1)) ; \past_valid
; yosys-smt2-register past_valid 1
; yosys-smt2-wire past_valid 1
(define-fun |clockedlogic_formal_n past_valid| ((state |clockedlogic_formal_s|)) Bool (= ((_ extract 0 0) (|clockedlogic_formal#2| state)) #b1))
(declare-fun |clockedlogic_formal#3| (|clockedlogic_formal_s|) Bool) ; \clk
; yosys-smt2-input clk 1
; yosys-smt2-wire clk 1
; yosys-smt2-clock clk posedge
; yosys-smt2-witness {"offset": 0, "path": ["\\clk"], "smtname": "clk", "smtoffset": 0, "type": "posedge", "width": 1}
; yosys-smt2-witness {"offset": 0, "path": ["\\clk"], "smtname": "clk", "smtoffset": 0, "type": "input", "width": 1}
(define-fun |clockedlogic_formal_n clk| ((state |clockedlogic_formal_s|)) Bool (|clockedlogic_formal#3| state))
; yosys-smt2-anyseq clockedlogic_formal#4 1 $auto$setundef.cc:533:execute$28
; yosys-smt2-witness {"offset": 0, "path": ["\\_witness_", "\\anyseq_auto_setundef_cc_533_execute_28"], "smtname": 4, "smtoffset": 0, "type": "seq", "width": 1}
(declare-fun |clockedlogic_formal#4| (|clockedlogic_formal_s|) (_ BitVec 1)) ; \_witness_.anyseq_auto_setundef_cc_533_execute_28
; yosys-smt2-wire _witness_.anyseq_auto_setundef_cc_533_execute_28 1
(define-fun |clockedlogic_formal_n _witness_.anyseq_auto_setundef_cc_533_execute_28| ((state |clockedlogic_formal_s|)) Bool (= ((_ extract 0 0) (|clockedlogic_formal#4| state)) #b1))
(define-fun |clockedlogic_formal#5| ((state |clockedlogic_formal_s|)) (_ BitVec 1) (bvnot (ite (|clockedlogic_formal#3| state) #b1 #b0))) ; $auto$rtlil.cc:2461:Not$31
; yosys-smt2-assume 0 $auto$formalff.cc:758:execute$32
(define-fun |clockedlogic_formal_u 0| ((state |clockedlogic_formal_s|)) Bool (or (= ((_ extract 0 0) (|clockedlogic_formal#5| state)) #b1) (not true))) ; $auto$formalff.cc:758:execute$32
(define-fun |clockedlogic_formal#6| ((state |clockedlogic_formal_s|)) (_ BitVec 64) (bvadd (|clockedlogic_formal#1| state) #b0000000000000000000000000000000000000000000000000000000000000001)) ; $add$clockedlogic_formal.v:24$7_Y
(define-fun |clockedlogic_formal#7| ((state |clockedlogic_formal_s|)) Bool (= (|clockedlogic_formal#0| state) (|clockedlogic_formal#6| state))) ; $eq$clockedlogic_formal.v:24$8_Y
(define-fun |clockedlogic_formal#8| ((state |clockedlogic_formal_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|clockedlogic_formal#2| state)) #b1) (ite (|clockedlogic_formal#7| state) #b1 #b0) (|clockedlogic_formal#4| state))) ; $0$formal$clockedlogic_formal.v:23$1_CHECK[0:0]$5
(define-fun |clockedlogic_formal#9| ((state |clockedlogic_formal_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|clockedlogic_formal#2| state)) #b1) #b1 #b0)) ; $0$formal$clockedlogic_formal.v:23$1_EN[0:0]$6
; yosys-smt2-assert 0 $assert$clockedlogic_formal.v:23$9 clockedlogic_formal.v:23.19-24.28
(define-fun |clockedlogic_formal_a 0| ((state |clockedlogic_formal_s|)) Bool (or (= ((_ extract 0 0) (|clockedlogic_formal#8| state)) #b1) (not (= ((_ extract 0 0) (|clockedlogic_formal#9| state)) #b1)))) ; $assert$clockedlogic_formal.v:23$9
(define-fun |clockedlogic_formal_a| ((state |clockedlogic_formal_s|)) Bool (and
  (|clockedlogic_formal_a 0| state)
  (|clockedlogic_a| (|clockedlogic_formal_h clockedlogic| state))
))
(define-fun |clockedlogic_formal_u| ((state |clockedlogic_formal_s|)) Bool (and
  (|clockedlogic_formal_u 0| state)
  (|clockedlogic_u| (|clockedlogic_formal_h clockedlogic| state))
))
(define-fun |clockedlogic_formal_i| ((state |clockedlogic_formal_s|)) Bool (and
  (= (= ((_ extract 0 0) (|clockedlogic_formal#2| state)) #b1) false) ; past_valid
  (|clockedlogic_i| (|clockedlogic_formal_h clockedlogic| state))
))
(define-fun |clockedlogic_formal_h| ((state |clockedlogic_formal_s|)) Bool (and
  (= (|clockedlogic_formal_is| state) (|clockedlogic_is| (|clockedlogic_formal_h clockedlogic| state)))
  (= (|clockedlogic_formal#0| state) (|clockedlogic_n y| (|clockedlogic_formal_h clockedlogic| state))) ; clockedlogic.y
  (= (|clockedlogic_formal#3| state) (|clockedlogic_n clk| (|clockedlogic_formal_h clockedlogic| state))) ; clockedlogic.clk
  (|clockedlogic_h| (|clockedlogic_formal_h clockedlogic| state))
))
(define-fun |clockedlogic_formal_t| ((state |clockedlogic_formal_s|) (next_state |clockedlogic_formal_s|)) Bool (and
  (= #b1 (|clockedlogic_formal#2| next_state)) ; $procdff$23 \past_valid
  (= (|clockedlogic_formal#0| state) (|clockedlogic_formal#1| next_state)) ; $procdff$22 \past_y
  (|clockedlogic_t| (|clockedlogic_formal_h clockedlogic| state) (|clockedlogic_formal_h clockedlogic| next_state))
)) ; end of module clockedlogic_formal
; yosys-smt2-topmod clockedlogic_formal
; end of yosys output
