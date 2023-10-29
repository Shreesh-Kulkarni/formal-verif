; SMT-LIBv2 description generated by Yosys 0.34+43 (git sha1 d21c464ae, clang 10.0.0-4ubuntu1 -fPIC -Os)
; yosys-smt2-module counter
(declare-sort |counter_s| 0)
(declare-fun |counter_is| (|counter_s|) Bool)
; yosys-smt2-anyinit counter#0 64 counter.v:18.1-23.4
; yosys-smt2-witness {"offset": 0, "path": ["\\r"], "smtname": 0, "smtoffset": 0, "type": "init", "width": 64}
(declare-fun |counter#0| (|counter_s|) (_ BitVec 64)) ; \r
; yosys-smt2-output y 64
; yosys-smt2-wire y 64
(define-fun |counter_n y| ((state |counter_s|)) (_ BitVec 64) (|counter#0| state))
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
(define-fun |counter#2| ((state |counter_s|)) (_ BitVec 1) (bvnot (ite (|counter#1| state) #b1 #b0))) ; $auto$rtlil.cc:2461:Not$44
; yosys-smt2-assume 0 $auto$formalff.cc:758:execute$45
(define-fun |counter_u 0| ((state |counter_s|)) Bool (or (= ((_ extract 0 0) (|counter#2| state)) #b1) (not true))) ; $auto$formalff.cc:758:execute$45
(define-fun |counter#3| ((state |counter_s|)) (_ BitVec 64) (bvadd (|counter#0| state) #b0000000000000000000000000000000000000000000000000000000000000001)) ; $add$counter.v:22$21_Y
(define-fun |counter#4| ((state |counter_s|)) Bool (= (|counter#0| state) #b0000000000000000000000000000000010101010101010100000000000000000)) ; $eq$counter.v:19$20_Y
(define-fun |counter#5| ((state |counter_s|)) (_ BitVec 64) (ite (|counter#4| state) #b0000000000000000000000000000000000000000000000000000000000000000 (|counter#3| state))) ; $0\r[63:0]
(define-fun |counter_a| ((state |counter_s|)) Bool true)
(define-fun |counter_u| ((state |counter_s|)) Bool 
  (|counter_u 0| state)
)
(define-fun |counter_i| ((state |counter_s|)) Bool true)
(define-fun |counter_h| ((state |counter_s|)) Bool true)
(define-fun |counter_t| ((state |counter_s|) (next_state |counter_s|)) Bool 
  (= (|counter#5| state) (|counter#0| next_state)) ; $procdff$29 \r
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
; yosys-smt2-anyinit counter_formal#1 64 counter_formal.v:21.1-21.32
; yosys-smt2-witness {"offset": 0, "path": ["\\past_y"], "smtname": 1, "smtoffset": 0, "type": "init", "width": 64}
(declare-fun |counter_formal#1| (|counter_formal_s|) (_ BitVec 64)) ; \past_y
; yosys-smt2-register past_y 64
; yosys-smt2-wire past_y 64
(define-fun |counter_formal_n past_y| ((state |counter_formal_s|)) (_ BitVec 64) (|counter_formal#1| state))
; yosys-smt2-anyinit counter_formal#2 1 counter_formal.v:18.1-20.4
; yosys-smt2-witness {"offset": 0, "path": ["\\past_valid"], "smtname": 2, "smtoffset": 0, "type": "init", "width": 1}
(declare-fun |counter_formal#2| (|counter_formal_s|) (_ BitVec 1)) ; \past_valid
; yosys-smt2-register past_valid 1
; yosys-smt2-wire past_valid 1
(define-fun |counter_formal_n past_valid| ((state |counter_formal_s|)) Bool (= ((_ extract 0 0) (|counter_formal#2| state)) #b1))
(declare-fun |counter_formal#3| (|counter_formal_s|) Bool) ; \clk
; yosys-smt2-input clk 1
; yosys-smt2-wire clk 1
; yosys-smt2-clock clk posedge
; yosys-smt2-witness {"offset": 0, "path": ["\\clk"], "smtname": "clk", "smtoffset": 0, "type": "posedge", "width": 1}
; yosys-smt2-witness {"offset": 0, "path": ["\\clk"], "smtname": "clk", "smtoffset": 0, "type": "input", "width": 1}
(define-fun |counter_formal_n clk| ((state |counter_formal_s|)) Bool (|counter_formal#3| state))
; yosys-smt2-anyseq counter_formal#4 1 $auto$setundef.cc:533:execute$38
; yosys-smt2-witness {"offset": 0, "path": ["\\_witness_", "\\anyseq_auto_setundef_cc_533_execute_38"], "smtname": 4, "smtoffset": 0, "type": "seq", "width": 1}
(declare-fun |counter_formal#4| (|counter_formal_s|) (_ BitVec 1)) ; \_witness_.anyseq_auto_setundef_cc_533_execute_38
; yosys-smt2-wire _witness_.anyseq_auto_setundef_cc_533_execute_38 1
(define-fun |counter_formal_n _witness_.anyseq_auto_setundef_cc_533_execute_38| ((state |counter_formal_s|)) Bool (= ((_ extract 0 0) (|counter_formal#4| state)) #b1))
; yosys-smt2-anyinit counter_formal#5 1 counter_formal.v:22.1-25.4
; yosys-smt2-witness {"offset": 0, "path": ["\\_witness_", "\\anyinit_procdff_30"], "smtname": 5, "smtoffset": 0, "type": "init", "width": 1}
(declare-fun |counter_formal#5| (|counter_formal_s|) (_ BitVec 1)) ; \_witness_.anyinit_procdff_30
; yosys-smt2-register _witness_.anyinit_procdff_30 1
; yosys-smt2-wire _witness_.anyinit_procdff_30 1
(define-fun |counter_formal_n _witness_.anyinit_procdff_30| ((state |counter_formal_s|)) Bool (= ((_ extract 0 0) (|counter_formal#5| state)) #b1))
; yosys-smt2-witness {"offset": 0, "path": ["$formal$counter_formal.v:23$3_EN"], "smtname": 6, "smtoffset": 0, "type": "reg", "width": 1}
(declare-fun |counter_formal#6| (|counter_formal_s|) (_ BitVec 1)) ; $formal$counter_formal.v:23$3_EN
; yosys-smt2-register $formal$counter_formal.v:23$3_EN 1
(define-fun |counter_formal_n $formal$counter_formal.v:23$3_EN| ((state |counter_formal_s|)) Bool (= ((_ extract 0 0) (|counter_formal#6| state)) #b1))
(define-fun |counter_formal#7| ((state |counter_formal_s|)) (_ BitVec 1) (bvnot (ite (|counter_formal#3| state) #b1 #b0))) ; $auto$rtlil.cc:2461:Not$41
; yosys-smt2-assume 0 $auto$formalff.cc:758:execute$42
(define-fun |counter_formal_u 0| ((state |counter_formal_s|)) Bool (or (= ((_ extract 0 0) (|counter_formal#7| state)) #b1) (not true))) ; $auto$formalff.cc:758:execute$42
(define-fun |counter_formal#8| ((state |counter_formal_s|)) (_ BitVec 1) (bvnot (|counter_formal#2| state))) ; $0$formal$counter_formal.v:15$1_CHECK[0:0]$14
(define-fun |counter_formal#9| ((state |counter_formal_s|)) Bool (|counter_formal_is| state)) ; $0$formal$counter_formal.v:15$1_EN[0:0]$15
; yosys-smt2-assume 1 $assume$counter_formal.v:15$11 counter_formal.v:15.14-16.26
(define-fun |counter_formal_u 1| ((state |counter_formal_s|)) Bool (or (= ((_ extract 0 0) (|counter_formal#8| state)) #b1) (not (|counter_formal#9| state)))) ; $assume$counter_formal.v:15$11
; yosys-smt2-assert 0 $assert$counter_formal.v:23$12 counter_formal.v:23.19-24.28
(define-fun |counter_formal_a 0| ((state |counter_formal_s|)) Bool (or (= ((_ extract 0 0) (|counter_formal#5| state)) #b1) (not (= ((_ extract 0 0) (|counter_formal#6| state)) #b1)))) ; $assert$counter_formal.v:23$12
(define-fun |counter_formal#10| ((state |counter_formal_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|counter_formal#2| state)) #b1) #b1 #b0)) ; $0$formal$counter_formal.v:23$3_EN[0:0]$8
(define-fun |counter_formal#11| ((state |counter_formal_s|)) (_ BitVec 64) (bvadd (|counter_formal#1| state) #b0000000000000000000000000000000000000000000000000000000000000001)) ; $add$counter_formal.v:24$9_Y
(define-fun |counter_formal#12| ((state |counter_formal_s|)) Bool (= (|counter_formal#0| state) (|counter_formal#11| state))) ; $eq$counter_formal.v:24$10_Y
(define-fun |counter_formal#13| ((state |counter_formal_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|counter_formal#2| state)) #b1) (ite (|counter_formal#12| state) #b1 #b0) (|counter_formal#4| state))) ; $0$formal$counter_formal.v:23$3_CHECK[0:0]$7
(define-fun |counter_formal_a| ((state |counter_formal_s|)) Bool (and
  (|counter_formal_a 0| state)
  (|counter_a| (|counter_formal_h counter| state))
))
(define-fun |counter_formal_u| ((state |counter_formal_s|)) Bool (and
  (|counter_formal_u 0| state)
  (|counter_formal_u 1| state)
  (|counter_u| (|counter_formal_h counter| state))
))
(define-fun |counter_formal_i| ((state |counter_formal_s|)) Bool (and
  (= (= ((_ extract 0 0) (|counter_formal#6| state)) #b1) false) ; $formal$counter_formal.v:23$3_EN
  (|counter_i| (|counter_formal_h counter| state))
))
(define-fun |counter_formal_h| ((state |counter_formal_s|)) Bool (and
  (= (|counter_formal_is| state) (|counter_is| (|counter_formal_h counter| state)))
  (= (|counter_formal#0| state) (|counter_n y| (|counter_formal_h counter| state))) ; counter.y
  (= (|counter_formal#3| state) (|counter_n clk| (|counter_formal_h counter| state))) ; counter.clk
  (|counter_h| (|counter_formal_h counter| state))
))
(define-fun |counter_formal_t| ((state |counter_formal_s|) (next_state |counter_formal_s|)) Bool (and
  (= (|counter_formal#10| state) (|counter_formal#6| next_state)) ; $procdff$31 $formal$counter_formal.v:23$3_EN
  (= (|counter_formal#13| state) (|counter_formal#5| next_state)) ; $procdff$30 \_witness_.anyinit_procdff_30
  (= #b1 (|counter_formal#2| next_state)) ; $procdff$33 \past_valid
  (= (|counter_formal#0| state) (|counter_formal#1| next_state)) ; $procdff$32 \past_y
  (|counter_t| (|counter_formal_h counter| state) (|counter_formal_h counter| next_state))
)) ; end of module counter_formal
; yosys-smt2-topmod counter_formal
; end of yosys output