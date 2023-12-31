; SMT-LIBv2 description generated by Yosys 0.34+43 (git sha1 d21c464ae, clang 10.0.0-4ubuntu1 -fPIC -Os)
; yosys-smt2-module counter
(declare-sort |counter_s| 0)
(declare-fun |counter_is| (|counter_s|) Bool)
; yosys-smt2-anyinit counter#0 64 counter.v:15.1-20.4
; yosys-smt2-witness {"offset": 0, "path": ["\\r"], "smtname": 0, "smtoffset": 0, "type": "init", "width": 64}
(declare-fun |counter#0| (|counter_s|) (_ BitVec 64)) ; \r
; yosys-smt2-output y 64
; yosys-smt2-wire y 64
(define-fun |counter_n y| ((state |counter_s|)) (_ BitVec 64) (|counter#0| state))
; yosys-smt2-wire reset 1
(define-fun |counter_n reset| ((state |counter_s|)) Bool true)
; yosys-smt2-register r 64
; yosys-smt2-wire r 64
(define-fun |counter_n r| ((state |counter_s|)) (_ BitVec 64) (|counter#0| state))
(declare-fun |counter#1| (|counter_s|) Bool) ; \clk
; yosys-smt2-input clk 1
; yosys-smt2-wire clk 1
; yosys-smt2-clock clk posedge
; yosys-smt2-witness {"offset": 0, "path": ["\\clk"], "smtname": "clk", "smtoffset": 0, "type": "posedge", "width": 1}
; yosys-smt2-witness {"offset": 0, "path": ["\\clk"], "smtname": "clk", "smtoffset": 0, "type": "input", "width": 1}
(define-fun |counter_n clk| ((state |counter_s|)) Bool (|counter#1| state))
(define-fun |counter#2| ((state |counter_s|)) (_ BitVec 1) (bvnot (ite (|counter#1| state) #b1 #b0))) ; $auto$rtlil.cc:2461:Not$33
; yosys-smt2-assume 0 $auto$formalff.cc:758:execute$34
(define-fun |counter_u 0| ((state |counter_s|)) Bool (or (= ((_ extract 0 0) (|counter#2| state)) #b1) (not true))) ; $auto$formalff.cc:758:execute$34
(define-fun |counter_a| ((state |counter_s|)) Bool true)
(define-fun |counter_u| ((state |counter_s|)) Bool 
  (|counter_u 0| state)
)
(define-fun |counter_i| ((state |counter_s|)) Bool true)
(define-fun |counter_h| ((state |counter_s|)) Bool true)
(define-fun |counter_t| ((state |counter_s|) (next_state |counter_s|)) Bool 
  (= #b0000000000000000000000000000000000000000000000000000000000000000 (|counter#0| next_state)) ; $procdff$20 \r
) ; end of module counter
; yosys-smt2-module counter_formal
(declare-sort |counter_formal_s| 0)
(declare-fun |counter_formal_is| (|counter_formal_s|) Bool)
; yosys-smt2-cell counter counter
; yosys-smt2-witness {"path": ["\\counter"], "smtname": "counter", "type": "cell"}
(declare-fun |counter_formal#0| (|counter_formal_s|) (_ BitVec 64)) ; \y
(declare-fun |counter_formal_h counter| (|counter_formal_s|) |counter_s|)
; yosys-smt2-output y 64
; yosys-smt2-wire y 64
(define-fun |counter_formal_n y| ((state |counter_formal_s|)) (_ BitVec 64) (|counter_formal#0| state))
; yosys-smt2-witness {"offset": 0, "path": ["\\past_valid"], "smtname": 1, "smtoffset": 0, "type": "reg", "width": 1}
(declare-fun |counter_formal#1| (|counter_formal_s|) (_ BitVec 1)) ; \past_valid
; yosys-smt2-register past_valid 1
; yosys-smt2-wire past_valid 1
(define-fun |counter_formal_n past_valid| ((state |counter_formal_s|)) Bool (= ((_ extract 0 0) (|counter_formal#1| state)) #b1))
(declare-fun |counter_formal#2| (|counter_formal_s|) Bool) ; \clk
; yosys-smt2-input clk 1
; yosys-smt2-wire clk 1
; yosys-smt2-clock clk posedge
; yosys-smt2-witness {"offset": 0, "path": ["\\clk"], "smtname": "clk", "smtoffset": 0, "type": "posedge", "width": 1}
; yosys-smt2-witness {"offset": 0, "path": ["\\clk"], "smtname": "clk", "smtoffset": 0, "type": "input", "width": 1}
(define-fun |counter_formal_n clk| ((state |counter_formal_s|)) Bool (|counter_formal#2| state))
; yosys-smt2-anyseq counter_formal#3 1 $auto$setundef.cc:533:execute$27
; yosys-smt2-witness {"offset": 0, "path": ["\\_witness_", "\\anyseq_auto_setundef_cc_533_execute_27"], "smtname": 3, "smtoffset": 0, "type": "seq", "width": 1}
(declare-fun |counter_formal#3| (|counter_formal_s|) (_ BitVec 1)) ; \_witness_.anyseq_auto_setundef_cc_533_execute_27
; yosys-smt2-wire _witness_.anyseq_auto_setundef_cc_533_execute_27 1
(define-fun |counter_formal_n _witness_.anyseq_auto_setundef_cc_533_execute_27| ((state |counter_formal_s|)) Bool (= ((_ extract 0 0) (|counter_formal#3| state)) #b1))
(define-fun |counter_formal#4| ((state |counter_formal_s|)) (_ BitVec 1) (bvnot (ite (|counter_formal#2| state) #b1 #b0))) ; $auto$rtlil.cc:2461:Not$30
; yosys-smt2-assume 0 $auto$formalff.cc:758:execute$31
(define-fun |counter_formal_u 0| ((state |counter_formal_s|)) Bool (or (= ((_ extract 0 0) (|counter_formal#4| state)) #b1) (not true))) ; $auto$formalff.cc:758:execute$31
(define-fun |counter_formal#5| ((state |counter_formal_s|)) Bool (not (or  (= ((_ extract 0 0) (|counter_formal#0| state)) #b1) (= ((_ extract 1 1) (|counter_formal#0| state)) #b1) (= ((_ extract 2 2) (|counter_formal#0| state)) #b1) (= ((_ extract 3 3) (|counter_formal#0| state)) #b1) (= ((_ extract 4 4) (|counter_formal#0| state)) #b1) (= ((_ extract 5 5) (|counter_formal#0| state)) #b1) (= ((_ extract 6 6) (|counter_formal#0| state)) #b1) (= ((_ extract 7 7) (|counter_formal#0| state)) #b1) (= ((_ extract 8 8) (|counter_formal#0| state)) #b1) (= ((_ extract 9 9) (|counter_formal#0| state)) #b1) (= ((_ extract 10 10) (|counter_formal#0| state)) #b1) (= ((_ extract 11 11) (|counter_formal#0| state)) #b1) (= ((_ extract 12 12) (|counter_formal#0| state)) #b1) (= ((_ extract 13 13) (|counter_formal#0| state)) #b1) (= ((_ extract 14 14) (|counter_formal#0| state)) #b1) (= ((_ extract 15 15) (|counter_formal#0| state)) #b1) (= ((_ extract 16 16) (|counter_formal#0| state)) #b1) (= ((_ extract 17 17) (|counter_formal#0| state)) #b1) (= ((_ extract 18 18) (|counter_formal#0| state)) #b1) (= ((_ extract 19 19) (|counter_formal#0| state)) #b1) (= ((_ extract 20 20) (|counter_formal#0| state)) #b1) (= ((_ extract 21 21) (|counter_formal#0| state)) #b1) (= ((_ extract 22 22) (|counter_formal#0| state)) #b1) (= ((_ extract 23 23) (|counter_formal#0| state)) #b1) (= ((_ extract 24 24) (|counter_formal#0| state)) #b1) (= ((_ extract 25 25) (|counter_formal#0| state)) #b1) (= ((_ extract 26 26) (|counter_formal#0| state)) #b1) (= ((_ extract 27 27) (|counter_formal#0| state)) #b1) (= ((_ extract 28 28) (|counter_formal#0| state)) #b1) (= ((_ extract 29 29) (|counter_formal#0| state)) #b1) (= ((_ extract 30 30) (|counter_formal#0| state)) #b1) (= ((_ extract 31 31) (|counter_formal#0| state)) #b1) (= ((_ extract 32 32) (|counter_formal#0| state)) #b1) (= ((_ extract 33 33) (|counter_formal#0| state)) #b1) (= ((_ extract 34 34) (|counter_formal#0| state)) #b1) (= ((_ extract 35 35) (|counter_formal#0| state)) #b1) (= ((_ extract 36 36) (|counter_formal#0| state)) #b1) (= ((_ extract 37 37) (|counter_formal#0| state)) #b1) (= ((_ extract 38 38) (|counter_formal#0| state)) #b1) (= ((_ extract 39 39) (|counter_formal#0| state)) #b1) (= ((_ extract 40 40) (|counter_formal#0| state)) #b1) (= ((_ extract 41 41) (|counter_formal#0| state)) #b1) (= ((_ extract 42 42) (|counter_formal#0| state)) #b1) (= ((_ extract 43 43) (|counter_formal#0| state)) #b1) (= ((_ extract 44 44) (|counter_formal#0| state)) #b1) (= ((_ extract 45 45) (|counter_formal#0| state)) #b1) (= ((_ extract 46 46) (|counter_formal#0| state)) #b1) (= ((_ extract 47 47) (|counter_formal#0| state)) #b1) (= ((_ extract 48 48) (|counter_formal#0| state)) #b1) (= ((_ extract 49 49) (|counter_formal#0| state)) #b1) (= ((_ extract 50 50) (|counter_formal#0| state)) #b1) (= ((_ extract 51 51) (|counter_formal#0| state)) #b1) (= ((_ extract 52 52) (|counter_formal#0| state)) #b1) (= ((_ extract 53 53) (|counter_formal#0| state)) #b1) (= ((_ extract 54 54) (|counter_formal#0| state)) #b1) (= ((_ extract 55 55) (|counter_formal#0| state)) #b1) (= ((_ extract 56 56) (|counter_formal#0| state)) #b1) (= ((_ extract 57 57) (|counter_formal#0| state)) #b1) (= ((_ extract 58 58) (|counter_formal#0| state)) #b1) (= ((_ extract 59 59) (|counter_formal#0| state)) #b1) (= ((_ extract 60 60) (|counter_formal#0| state)) #b1) (= ((_ extract 61 61) (|counter_formal#0| state)) #b1) (= ((_ extract 62 62) (|counter_formal#0| state)) #b1) (= ((_ extract 63 63) (|counter_formal#0| state)) #b1)))) ; $eq$counter_formal.v:24$7_Y
(define-fun |counter_formal#6| ((state |counter_formal_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|counter_formal#1| state)) #b1) (ite (|counter_formal#5| state) #b1 #b0) (|counter_formal#3| state))) ; $0$formal$counter_formal.v:23$1_CHECK[0:0]$5
(define-fun |counter_formal#7| ((state |counter_formal_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|counter_formal#1| state)) #b1) #b1 #b0)) ; $0$formal$counter_formal.v:23$1_EN[0:0]$6
; yosys-smt2-assert 0 $assert$counter_formal.v:23$8 counter_formal.v:23.19-24.21
(define-fun |counter_formal_a 0| ((state |counter_formal_s|)) Bool (or (= ((_ extract 0 0) (|counter_formal#6| state)) #b1) (not (= ((_ extract 0 0) (|counter_formal#7| state)) #b1)))) ; $assert$counter_formal.v:23$8
(define-fun |counter_formal_a| ((state |counter_formal_s|)) Bool (and
  (|counter_formal_a 0| state)
  (|counter_a| (|counter_formal_h counter| state))
))
(define-fun |counter_formal_u| ((state |counter_formal_s|)) Bool (and
  (|counter_formal_u 0| state)
  (|counter_u| (|counter_formal_h counter| state))
))
(define-fun |counter_formal_i| ((state |counter_formal_s|)) Bool (and
  (= (= ((_ extract 0 0) (|counter_formal#1| state)) #b1) false) ; past_valid
  (|counter_i| (|counter_formal_h counter| state))
))
(define-fun |counter_formal_h| ((state |counter_formal_s|)) Bool (and
  (= (|counter_formal_is| state) (|counter_is| (|counter_formal_h counter| state)))
  (= (|counter_formal#0| state) (|counter_n y| (|counter_formal_h counter| state))) ; counter.y
  (= (|counter_formal#2| state) (|counter_n clk| (|counter_formal_h counter| state))) ; counter.clk
  (|counter_h| (|counter_formal_h counter| state))
))
(define-fun |counter_formal_t| ((state |counter_formal_s|) (next_state |counter_formal_s|)) Bool (and
  (= #b1 (|counter_formal#1| next_state)) ; $procdff$22 \past_valid
  (|counter_t| (|counter_formal_h counter| state) (|counter_formal_h counter| next_state))
)) ; end of module counter_formal
; yosys-smt2-topmod counter_formal
; end of yosys output
