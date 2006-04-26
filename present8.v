(* (c) Copyright Microsoft Corporation and Inria. All rights reserved. *)
Require Import ssreflect.
Require Import ssrbool.
Require Import ssrnat.
Require Import part.
Require Import znat.
Require Import hubcap.
Require Import present.

Set Implicit Arguments.
Unset Strict Implicit.
Import Prenex Implicits.

Lemma exclude8 : reducibility -> excluded_arity 8.
Proof.
move=> Hrec; Presentation.
Pcase L0_1: s[8] <= 5.
  Pcase L1_1: s[7] <= 5.
    Pcase L2_1: s[6] <= 5.
      Pcase L3_1: s[5] <= 5.
        Pcase: s[1] <= 5.
          Reducible.
        Pcase: s[4] <= 5.
          Reducible.
        Pcase L4_1: h[5] <= 5.
          Pcase: s[4] <= 6.
            Reducible.
          Pcase: h[6] <= 6.
            Reducible.
          Pcase: s[2] > 7.
            Hubcap T[1]<=2 T[2]<=0 T[5]<=3 T[7]<=5 T[3,4]<=2 T[6,8]<=8 [].
          Pcase: s[3] > 7.
            Hubcap T[3]<=0 T[4]<=1 T[5]<=3 T[7]<=5 T[1,2]<=3 T[6,8]<=8 [].
          Pcase: s[1] <= 6.
            Pcase: s[2] <= 5.
              Reducible.
            Pcase: h[1] <= 5.
              Reducible.
            Pcase: s[2] > 6.
              Hubcap T[2]<=1 T[5]<=3 T[1,7]<=6 T[3,4]<=2 T[6,8]<=8 [].
            Pcase: h[2] <= 5.
              Reducible.
            Pcase: s[3] > 5.
              Hubcap T[2]<=0 T[5]<=3 T[1,7]<=6 T[3,4]<=3 T[6,8]<=8 [].
            Hubcap T[2]<=1 T[3]<=2 T[4]<=0 T[5]<=3 T[7]<=5 T[8]<=3 T[1,6]<=6 [].
          Pcase: h[3] <= 5.
            Pcase: s[1] > 7.
              Hubcap T[1]<=0 T[4]<=1 T[5]<=3 T[7]<=5 T[2,3]<=3 T[6,8]<=8 [].
            Pcase: s[2] <= 5.
              Hubcap T[1]<=0 T[2]<=2 T[3]<=1 T[4]<=1 T[5]<=3 T[7]<=5 T[6,8]<=8 [].
            Pcase: s[3] > 5.
              Hubcap T[1]<=1 T[4]<=1 T[5]<=3 T[7]<=5 T[2,3]<=2 T[6,8]<=8 [].
            Hubcap T[1]<=1 T[2]<=1 T[3]<=2 T[4]<=0 T[5]<=3 T[7]<=5 T[6,8]<=8 [].
          Pcase: s[4] <= 7.
            Pcase: s[3] <= 5.
              Reducible.
            Pcase: f2[4] <= 5.
              Reducible.
            Pcase: s[1] > 7.
              Hubcap T[1]<=0 T[5]<=3 T[7]<=5 T[6,8]<=8 T[2,3]<=3 T[2,4]<=3
                     T[3,4]<=3 [].
            Pcase: s[2] > 5.
              Hubcap T[5]<=3 T[7]<=5 T[1,3]<=2 T[2,4]<=2 T[6,8]<=8 [].
            Hubcap T[1]<=0 T[2]<=2 T[3]<=1 T[4]<=1 T[5]<=3 T[7]<=5 T[6,8]<=8 [].
          Pcase: s[2] > 5.
            Hubcap T[4]<=0 T[5]<=3 T[7]<=5 T[6,8]<=8 T[1,2]<=3 T[1,3]<=3 T[2,3]<=3
                   [].
          Pcase: s[3] > 5.
            Hubcap T[1]<=0 T[2]<=2 T[3]<=1 T[4]<=0 T[5]<=3 T[6]<=5 T[7]<=5 T[8]<=4
                   [].
          Hubcap T[1]<=(-1) T[2]<=3 T[3]<=3 T[4]<=(-1) T[5]<=3 T[7]<=5 T[6,8]<=8
                 [].
        Pcase: h[1] <= 5.
          Similar to *L4_1[4].
        Pcase: h[7] <= 5.
          Pcase: h[6] <= 6.
            Reducible.
          Pcase: h[8] <= 6.
            Reducible.
          Pcase: s[1] <= 6.
            Hubcap T[1]<=1 T[2]<=1 T[5]<=3 T[6]<=5 T[7]<=5 T[8]<=3 T[3,4]<=2 [].
          Pcase: s[2] > 5.
            Hubcap T[1]<=0 T[2]<=2 T[5]<=3 T[6]<=5 T[7]<=5 T[8]<=3 T[3,4]<=2 [].
          Pcase: s[3] > 5.
            Hubcap T[1]<=0 T[2]<=2 T[3]<=1 T[4]<=1 T[5]<=3 T[6]<=5 T[7]<=5 T[8]<=3
                   [].
          Pcase: s[4] <= 6.
            Reducible.
          Pcase: h[3] <= 5.
            Reducible.
          Hubcap T[1]<=(-1) T[2]<=3 T[3]<=3 T[4]<=(-1) T[5]<=3 T[6]<=5 T[7]<=5
                 T[8]<=3 [].
        Pcase: h[7] <= 6.
          Hubcap T[5]<=3 T[6]<=4 T[7]<=4 T[8]<=3 T[1,2]<=3 T[3,4]<=3 [].
        Pcase L4_2: s[1] <= 6.
          Pcase: s[2] <= 5.
            Reducible.
          Pcase L5_1: s[2] <= 6.
            Pcase: h[2] <= 5.
              Reducible.
            Pcase: s[3] > 7.
              Hubcap T[2]<=0 T[3]<=0 T[6]<=5 T[8]<=4 T[1,7]<=6 T[4,5]<=5 [].
            Pcase: s[4] <= 6.
              Hubcap T[2]<=0 T[3]<=0 T[6]<=5 T[8]<=4 T[1,7]<=6 T[4,5]<=5 [].
            Pcase: s[3] > 5.
              Hubcap T[2]<=0 T[4]<=0 T[5]<=4 T[6]<=5 T[1,7]<=6 T[3,8]<=5 [].
            Pcase: h[3] <= 5.
              Reducible.
            Pcase: h[8] <= 5.
              Reducible.
            Pcase: h[6] > 5.
              Hubcap T[1]<=2 T[2]<=1 T[3]<=2 T[4]<=0 T[5]<=3 T[6]<=4 T[7]<=4
                     T[8]<=3 [].
            Hubcap T[1]<=2 T[2]<=1 T[3]<=2 T[4]<=(-1) T[5]<=4 T[6]<=5 T[7]<=4
                   T[8]<=3 [].
          Pcase: h[6] > 6.
            Hubcap T[2]<=1 T[5]<=3 T[6]<=4 T[8]<=4 T[1,7]<=6 T[3,4]<=2 [].
          Pcase: h[8] > 6.
            Hubcap T[1]<=1 T[6]<=5 T[7]<=4 T[8]<=3 T[2,3]<=2 T[4,5]<=5 [].
          Pcase: s[3] <= 5.
            Pcase: s[4] <= 6.
              Similar to *L5_1[4].
            Pcase: h[6] > 5.
              Hubcap T[1]<=2 T[2]<=0 T[3]<=2 T[4]<=0 T[5]<=3 T[6]<=4 T[7]<=5
                     T[8]<=4 [].
            Hubcap T[2]<=0 T[3]<=2 T[4]<=(-1) T[5]<=4 T[6]<=5 T[8]<=4 T[1,7]<=6
                   [].
          Pcase: s[4] > 6.
            Hubcap T[2]<=1 T[3]<=0 T[4]<=0 T[5]<=4 T[6]<=5 T[8]<=4 T[1,7]<=6 [].
          Pcase: s[3] <= 6.
            Similar to *L5_1[4].
          Pcase L5_2: h[5] <= 6.
            Pcase: h[6] <= 5.
              Reducible.
            Pcase: f1[4] <= 5.
              Reducible.
            Pcase: s[2] > 7.
              Hubcap T[2]<=0 T[3]<=1 T[4]<=2 T[5]<=3 T[6]<=4 T[8]<=4 T[1,7]<=6 [].
            Pcase: s[3] > 7.
              Hubcap T[2]<=1 T[3]<=0 T[4]<=2 T[5]<=3 T[6]<=4 T[8]<=4 T[1,7]<=6 [].
            Pcase: h[2] > 5.
              Hubcap T[2]<=0 T[3]<=1 T[4]<=2 T[5]<=3 T[6]<=4 T[8]<=4 T[1,7]<=6 [].
            Hubcap T[2]<=0 T[3]<=1 T[4]<=2 T[5]<=3 T[6]<=4 T[8]<=4 T[1,7]<=6 [].
          Pcase: h[1] <= 6.
            Similar to *L5_2[4].
          Pcase: h[6] > 5.
            Hubcap T[1]<=1 T[2]<=1 T[3]<=1 T[4]<=1 T[5]<=3 T[6]<=4 T[7]<=5 T[8]<=4
                   [].
          Pcase: h[8] > 5.
            Hubcap T[1]<=1 T[2]<=1 T[3]<=1 T[4]<=1 T[5]<=4 T[6]<=5 T[7]<=4 T[8]<=3
                   [].
          Pcase L5_3: s[2] > 7.
            Pcase: s[3] > 7.
              Hubcap T[1]<=1 T[2]<=0 T[3]<=0 T[4]<=1 T[5]<=4 T[6]<=5 T[7]<=5
                     T[8]<=4 [].
            Pcase: h[4] > 5.
              Hubcap T[1]<=1 T[2]<=0 T[3]<=0 T[4]<=1 T[5]<=4 T[6]<=5 T[7]<=5
                     T[8]<=4 [].
            Hubcap T[1]<=1 T[2]<=0 T[3]<=0 T[4]<=1 T[5]<=4 T[6]<=5 T[7]<=5 T[8]<=4
                   [].
          Pcase: s[3] > 7.
            Similar to *L5_3[4].
          Pcase L5_4: h[2] > 5.
            Pcase: h[4] > 5.
              Hubcap T[1]<=1 T[2]<=0 T[3]<=0 T[4]<=1 T[5]<=4 T[6]<=5 T[7]<=5
                     T[8]<=4 [].
            Hubcap T[1]<=1 T[2]<=0 T[3]<=0 T[4]<=1 T[5]<=4 T[6]<=5 T[7]<=5 T[8]<=4
                   [].
          Pcase: h[4] > 5.
            Similar to *L5_4[4].
          Pcase: f1[2] <= 5.
            Reducible.
          Pcase: f2[3] <= 5.
            Reducible.
          Hubcap T[1]<=1 T[2]<=0 T[3]<=0 T[4]<=1 T[5]<=4 T[6]<=5 T[7]<=5 T[8]<=4
                 [].
        Pcase: s[4] <= 6.
          Similar to *L4_2[4].
        Pcase: s[2] > 7.
          Hubcap T[1]<=0 T[2]<=0 T[3]<=2 T[4]<=0 T[5]<=4 T[6]<=5 T[7]<=5 T[8]<=4
                 [].
        Pcase: s[3] > 7.
          Hubcap T[1]<=0 T[2]<=2 T[3]<=0 T[4]<=0 T[5]<=4 T[6]<=5 T[7]<=5 T[8]<=4
                 [].
        Pcase: h[3] <= 5.
          Pcase: h[6] > 5.
            Hubcap T[1]<=0 T[2]<=2 T[3]<=2 T[4]<=0 T[5]<=3 T[6]<=4 T[7]<=5 T[8]<=4
                   [].
          Pcase: s[3] <= 5.
            Hubcap T[1]<=0 T[2]<=1 T[3]<=2 T[4]<=(-1) T[5]<=4 T[6]<=5 T[7]<=5
                   T[8]<=4 [].
          Pcase: s[2] > 5.
            Hubcap T[1]<=0 T[4]<=0 T[5]<=4 T[6]<=5 T[7]<=5 T[8]<=4 T[2,3]<=2 [].
          Pcase: s[3] <= 6.
            Reducible.
          Pcase: f1[3] <= 5.
            Reducible.
          Pcase: h[8] > 5.
            Hubcap T[1]<=0 T[2]<=2 T[3]<=1 T[4]<=0 T[5]<=4 T[6]<=5 T[7]<=4 T[8]<=3
                   [].
          Hubcap T[1]<=(-1) T[2]<=2 T[3]<=1 T[4]<=0 T[5]<=4 T[6]<=5 T[7]<=5
                 T[8]<=4 [].
        Pcase L4_3: s[2] > 5.
          Pcase: s[3] > 5.
            Hubcap T[1]<=0 T[4]<=0 T[5]<=4 T[6]<=5 T[7]<=5 T[8]<=4 T[2,3]<=2 [].
          Pcase: h[6] > 5.
            Hubcap T[1]<=0 T[2]<=1 T[3]<=2 T[4]<=0 T[5]<=3 T[6]<=4 T[7]<=5 T[8]<=4
                   [].
          Hubcap T[1]<=0 T[2]<=1 T[3]<=2 T[4]<=(-1) T[5]<=4 T[6]<=5 T[7]<=5
                 T[8]<=4 [].
        Pcase: s[3] > 5.
          Similar to *L4_3[4].
        Pcase: h[6] > 5.
          Hubcap T[1]<=(-1) T[2]<=3 T[3]<=3 T[4]<=(-1) T[5]<=3 T[6]<=4 T[7]<=5
                 T[8]<=4 [].
        Pcase: h[8] > 5.
          Hubcap T[1]<=(-1) T[2]<=3 T[3]<=3 T[4]<=(-2) T[5]<=4 T[6]<=5 T[7]<=4
                 T[8]<=3 [].
        Hubcap T[1]<=(-2) T[2]<=3 T[3]<=3 T[4]<=(-2) T[5]<=4 T[6]<=5 T[7]<=5
               T[8]<=4 [].
      Pcase: s[1] <= 5.
        Similar to L3_1[1].
      Pcase L3_2: s[4] <= 5.
        Pcase: s[5] <= 6.
          Reducible.
        Pcase: s[3] <= 5.
          Pcase: s[2] <= 5.
            Reducible.
          Pcase: s[1] > 7.
            Hubcap T[1]<=0 T[3]<=4 T[5]<=(-1) T[7]<=5 T[2,4]<=5 T[6,8]<=7 [].
          Pcase: s[2] <= 6.
            Pcase: h[2] <= 5.
              Reducible.
            Pcase: s[1] > 6.
              Hubcap T[5]<=(-1) T[7]<=5 T[1,3]<=4 T[2,4]<=5 T[6,8]<=7 [].
            Hubcap T[2]<=2 T[3]<=3 T[4]<=3 T[5]<=(-1) T[7]<=5 T[8]<=3 T[1,6]<=5
                   [].
          Pcase: s[1] > 6.
            Hubcap T[5]<=(-1) T[7]<=5 T[1,3]<=5 T[2,4]<=4 T[6,8]<=7 [].
          Pcase: h[3] <= 5.
            Hubcap T[2]<=0 T[3]<=3 T[4]<=3 T[5]<=(-1) T[7]<=5 T[8]<=4 T[1,6]<=6
                   [].
          Pcase: h[4] > 5.
            Hubcap T[2]<=0 T[3]<=3 T[4]<=3 T[5]<=(-1) T[7]<=5 T[8]<=4 T[1,6]<=6
                   [].
          Hubcap T[2]<=0 T[3]<=4 T[4]<=4 T[5]<=(-1) T[1,7]<=6 T[6,8]<=7 [].
        Pcase: s[2] <= 5.
          Pcase: s[1] <= 6.
            Reducible.
          Pcase: s[3] <= 6.
            Reducible.
          Hubcap T[1]<=0 T[2]<=2 T[3]<=4 T[4]<=2 T[5]<=0 T[7]<=5 T[6,8]<=7 [].
        Pcase: s[1] > 7.
          Hubcap T[1]<=0 T[4]<=3 T[5]<=0 T[7]<=5 T[2,3]<=5 T[6,8]<=7 [].
        Pcase: s[3] > 7.
          Hubcap T[1]<=3 T[2]<=1 T[3]<=0 T[4]<=2 T[5]<=0 T[6]<=4 T[7]<=5 T[8]<=4
                 [].
        Pcase: s[1] <= 6.
          Pcase: h[4] > 5.
            Hubcap T[2]<=1 T[4]<=2 T[5]<=0 T[7]<=5 T[1,6]<=6 T[3,8]<=6 [].
          Pcase: s[3] <= 6.
            Hubcap T[1]<=2 T[2]<=0 T[3]<=3 T[4]<=3 T[5]<=0 T[7]<=5 T[6,8]<=7 [].
          Pcase: s[2] > 6.
            Hubcap T[4]<=2 T[5]<=0 T[7]<=5 T[8]<=4 T[1,6]<=6 T[2,3]<=3 [].
          Hubcap T[1]<=2 T[2]<=0 T[3]<=4 T[4]<=2 T[5]<=0 T[6]<=4 T[7]<=5 T[8]<=3
                 [].
        Pcase: s[2] > 7.
          Hubcap T[1]<=2 T[2]<=0 T[3]<=3 T[4]<=3 T[5]<=0 T[7]<=5 T[6,8]<=7 [].
        Pcase: s[3] > 6.
          Hubcap T[1]<=2 T[2]<=0 T[3]<=4 T[4]<=2 T[5]<=0 T[7]<=5 T[6,8]<=7 [].
        Pcase: s[2] > 6.
          Pcase: s[5] <= 7.
            Hubcap T[1]<=2 T[2]<=1 T[3]<=2 T[4]<=3 T[5]<=0 T[7]<=5 T[6,8]<=7 [].
          Pcase: h[3] > 5.
            Hubcap T[1]<=2 T[4]<=3 T[5]<=0 T[7]<=5 T[2,3]<=3 T[6,8]<=7 [].
          Hubcap T[1]<=1 T[2]<=1 T[3]<=3 T[4]<=3 T[5]<=0 T[7]<=5 T[6,8]<=7 [].
        Pcase: h[2] <= 5.
          Reducible.
        Pcase: h[3] > 6.
          Hubcap T[1]<=2 T[2]<=0 T[3]<=3 T[4]<=3 T[5]<=0 T[7]<=5 T[6,8]<=7 [].
        Pcase: h[4] > 5.
          Hubcap T[1]<=2 T[4]<=2 T[5]<=0 T[7]<=5 T[2,3]<=4 T[6,8]<=7 [].
        Hubcap T[1]<=0 T[4]<=3 T[5]<=0 T[7]<=5 T[2,3]<=5 T[6,8]<=7 [].
      Pcase: s[2] <= 5.
        Similar to *L3_2[3].
      Pcase: s[3] <= 5.
        Pcase L4_1: h[7] <= 5.
          Pcase: h[6] <= 5.
            Reducible.
          Pcase: h[8] <= 6.
            Reducible.
          Pcase: s[2] > 7.
            Hubcap T[1]<=2 T[2]<=0 T[6]<=4 T[7]<=5 T[3,8]<=6 T[4,5]<=3 [].
          Pcase: s[1] <= 6.
            Pcase: h[2] <= 5.
              Reducible.
            Pcase: h[3] <= 5.
              Reducible.
            Pcase: s[2] > 6.
              Hubcap T[1]<=2 T[2]<=0 T[6]<=4 T[7]<=5 T[3,8]<=6 T[4,5]<=3 [].
            Hubcap T[1]<=1 T[2]<=2 T[3]<=2 T[6]<=4 T[7]<=5 T[8]<=3 T[4,5]<=3 [].
          Pcase: s[4] <= 6.
            Pcase: s[5] <= 6.
              Reducible.
            Pcase: s[1] > 7.
              Hubcap T[1]<=0 T[2]<=2 T[3]<=3 T[4]<=3 T[5]<=0 T[6]<=4 T[7]<=5
                     T[8]<=3 [].
            Pcase: s[2] <= 6.
              Hubcap T[3]<=3 T[4]<=2 T[5]<=0 T[6]<=4 T[7]<=5 T[8]<=3 T[1,2]<=3 [].
            Pcase: h[3] > 5.
              Hubcap T[1]<=2 T[2]<=1 T[3]<=3 T[4]<=2 T[5]<=0 T[6]<=4 T[7]<=5
                     T[8]<=3 [].
            Pcase: h[4] > 5.
              Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[4]<=2 T[5]<=0 T[6]<=4 T[7]<=5
                     T[8]<=3 [].
            Hubcap T[3]<=3 T[4]<=3 T[5]<=0 T[6]<=4 T[7]<=5 T[8]<=3 T[1,2]<=2 [].
          Pcase: s[5] > 6.
            Pcase: s[1] > 7.
              Hubcap T[1]<=0 T[2]<=3 T[3]<=3 T[6]<=4 T[7]<=5 T[8]<=3 T[4,5]<=2 [].
            Pcase: s[2] > 6.
              Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[6]<=4 T[7]<=5 T[8]<=3 T[4,5]<=2 [].
            Pcase: h[2] <= 5.
              Reducible.
            Pcase: h[3] > 5.
              Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[6]<=4 T[7]<=5 T[8]<=3 T[4,5]<=2 [].
            Hubcap T[1]<=0 T[2]<=3 T[3]<=3 T[6]<=4 T[7]<=5 T[8]<=3 T[4,5]<=2 [].
          Pcase: s[4] <= 7.
            Hubcap T[2]<=2 T[4]<=0 T[6]<=4 T[7]<=5 T[8]<=3 T[1,3]<=4 T[1,5]<=4
                   T[3,5]<=5 [].
          Pcase: s[1] > 7.
            Hubcap T[1]<=0 T[2]<=3 T[4]<=0 T[6]<=4 T[7]<=5 T[8]<=3 T[3,5]<=5 [].
          Pcase: s[2] > 6.
            Hubcap T[2]<=2 T[3]<=2 T[4]<=0 T[6]<=4 T[7]<=5 T[8]<=3 T[1,5]<=4 [].
          Pcase: h[2] <= 5.
            Reducible.
          Pcase: h[3] > 5.
            Hubcap T[2]<=2 T[3]<=2 T[4]<=0 T[6]<=4 T[7]<=5 T[8]<=3 T[1,5]<=4 [].
          Hubcap T[1]<=0 T[2]<=3 T[3]<=3 T[4]<=0 T[5]<=1 T[6]<=4 T[7]<=5 T[8]<=3
                 [].
        Pcase: h[8] <= 5.
          Similar to *L4_1[3].
        Pcase: s[1] > 7.
          Hubcap T[1]<=0 T[2]<=3 T[7]<=4 T[8]<=3 T[3,6]<=6 T[4,5]<=4 [].
        Pcase: s[2] > 7.
          Hubcap T[1]<=2 T[2]<=0 T[7]<=4 T[8]<=4 T[3,5]<=4 T[4,6]<=6 [].
        Pcase: s[4] > 7.
          Hubcap T[1]<=2 T[4]<=0 T[5]<=2 T[7]<=4 T[2,6]<=6 T[3,8]<=6 [].
        Pcase: s[4] <= 6.
          Hubcap T[6]<=3 T[7]<=4 T[1,4]<=4 T[2,8]<=5 T[3,5]<=4 [].
        Pcase: s[5] > 7.
          Hubcap T[1]<=2 T[2]<=3 T[4]<=2 T[5]<=0 T[6]<=3 T[7]<=4 T[3,8]<=6 [].
        Pcase: s[5] <= 6.
          Hubcap T[1]<=2 T[2]<=2 T[4]<=0 T[5]<=2 T[7]<=4 T[8]<=4 T[3,6]<=6 [].
        Pcase: s[1] > 6.
          Hubcap T[4]<=2 T[6]<=3 T[7]<=4 T[8]<=3 T[1,3]<=4 T[2,5]<=4 [].
        Hubcap T[1]<=2 T[3]<=2 T[5]<=2 T[6]<=3 T[7]<=4 T[8]<=4 T[2,4]<=3 [].
      Pcase: s[3] > 7.
        Hubcap T[2]<=1 T[3]<=0 T[4]<=1 T[6]<=4 T[7]<=5 T[8]<=4 T[1,5]<=5 [].
      Pcase L3_3: s[1] > 7.
        Pcase: s[2] > 6.
          Hubcap T[1]<=0 T[2]<=2 T[6]<=4 T[7]<=5 T[3,4]<=3 T[5,8]<=6 [].
        Pcase: s[3] > 6.
          Hubcap T[1]<=0 T[2]<=0 T[3]<=4 T[4]<=1 T[6]<=4 T[7]<=5 T[5,8]<=6 [].
        Pcase: s[4] > 6.
          Hubcap T[1]<=0 T[4]<=2 T[6]<=4 T[7]<=5 T[2,3]<=3 T[5,8]<=6 [].
        Pcase: s[5] > 6.
          Hubcap T[1]<=0 T[2]<=2 T[5]<=2 T[7]<=5 T[3,4]<=4 T[6,8]<=7 [].
        Hubcap T[1]<=0 T[3]<=3 T[6]<=4 T[7]<=5 T[2,4]<=2 T[5,8]<=6 [].
      Pcase: s[5] > 7.
        Similar to *L3_3[3].
      Pcase L3_4: h[2] <= 5.
        Pcase: s[2] <= 6.
          Reducible.
        Pcase: s[4] > 7.
          Hubcap T[3]<=0 T[4]<=0 T[5]<=3 T[6]<=4 T[7]<=5 T[8]<=4 T[1,2]<=4 [].
        Pcase: h[1] > 6.
          Hubcap T[6]<=4 T[7]<=5 T[1,2]<=2 T[3,4]<=3 T[5,8]<=6 [].
        Pcase L4_1: h[7] > 5.
          Pcase: s[1] > 6.
            Hubcap T[2]<=2 T[5]<=2 T[8]<=4 T[1,7]<=6 T[3,4]<=3 T[3,6]<=5 T[4,6]<=5
                   [].
          Pcase: f1[1] <= 6.
            Reducible.
          Pcase: s[2] > 7.
            Hubcap T[1]<=3 T[2]<=0 T[5]<=2 T[7]<=5 T[8]<=4 T[3,4]<=3 T[3,6]<=5
                   T[4,6]<=5 [].
          Pcase: f1[2] <= 5.
            Reducible.
          Pcase: s[4] > 6.
            Hubcap T[1]<=3 T[2]<=1 T[3]<=0 T[5]<=2 T[7]<=5 T[8]<=4 T[4,6]<=5 [].
          Pcase: h[5] <= 5.
            Reducible.
          Pcase: s[5] > 6.
            Hubcap T[1]<=3 T[2]<=1 T[6]<=3 T[8]<=4 T[3,4]<=3 T[5,7]<=6 [].
          Pcase: s[3] > 6.
            Hubcap T[1]<=3 T[2]<=1 T[4]<=0 T[5]<=2 T[7]<=5 T[8]<=4 T[3,6]<=5 [].
          Pcase: h[3] <= 5.
            Reducible.
          Pcase: h[4] > 5.
            Hubcap T[1]<=3 T[2]<=1 T[3]<=0 T[4]<=0 T[5]<=2 T[6]<=4 T[7]<=5 T[8]<=4
                   [].
          Hubcap T[1]<=3 T[2]<=1 T[3]<=1 T[4]<=2 T[6]<=3 T[8]<=4 T[5,7]<=6 [].
        Pcase: h[6] <= 5.
          Reducible.
        Pcase: h[8] <= 6.
          Reducible.
        Pcase: h[5] <= 5.
          Similar to *L4_1[3].
        Pcase: s[2] > 7.
          Hubcap T[1]<=2 T[2]<=0 T[3]<=2 T[6]<=4 T[7]<=5 T[8]<=4 T[4,5]<=3 [].
        Pcase: f1[2] <= 5.
          Reducible.
        Pcase: s[3] > 6.
          Hubcap T[1]<=2 T[2]<=1 T[4]<=0 T[6]<=4 T[7]<=5 T[8]<=4 T[3,5]<=4 [].
        Hubcap T[1]<=2 T[6]<=4 T[7]<=5 T[2,8]<=5 T[3,4]<=3 T[3,5]<=3 T[4,5]<=3 [].
      Pcase: h[5] <= 5.
        Similar to *L3_4[3].
      Pcase L3_5: h[7] <= 5.
        Pcase: h[6] <= 5.
          Reducible.
        Pcase: h[8] <= 6.
          Reducible.
        Pcase: s[2] > 7.
          Hubcap T[1]<=2 T[2]<=0 T[3]<=2 T[6]<=4 T[7]<=5 T[8]<=4 T[4,5]<=3 [].
        Pcase: s[4] > 6.
          Hubcap T[1]<=2 T[6]<=4 T[7]<=5 T[4,5]<=3 T[2,3]<=3 T[2,8]<=5 T[3,8]<=5
                 [].
        Pcase: s[3] > 6.
          Pcase: s[1] > 6.
            Hubcap T[1]<=2 T[2]<=0 T[4]<=0 T[6]<=4 T[7]<=5 T[8]<=3 T[3,5]<=6 [].
          Pcase: s[2] > 6.
            Hubcap T[1]<=2 T[2]<=0 T[3]<=2 T[4]<=0 T[5]<=3 T[6]<=4 T[7]<=5 T[8]<=4
                   [].
          Pcase: s[5] > 6.
            Hubcap T[1]<=2 T[2]<=0 T[3]<=4 T[4]<=0 T[5]<=1 T[6]<=4 T[7]<=5 T[8]<=4
                   [].
          Hubcap T[1]<=2 T[2]<=0 T[4]<=0 T[5]<=3 T[6]<=4 T[7]<=5 T[3,8]<=6 [].
        Pcase: s[2] > 6.
          Hubcap T[1]<=2 T[6]<=4 T[7]<=5 T[2,8]<=5 T[3,4]<=3 T[3,5]<=3 T[4,5]<=3
                 [].
        Pcase: h[3] > 6.
          Hubcap T[1]<=2 T[2]<=0 T[3]<=2 T[6]<=4 T[7]<=5 T[8]<=4 T[4,5]<=3 [].
        Pcase: h[4] > 5.
          Hubcap T[1]<=2 T[6]<=4 T[7]<=5 T[4,5]<=3 T[2,3]<=3 T[2,8]<=5 T[3,8]<=5
                 [].
        Pcase: s[5] <= 6.
          Hubcap T[1]<=2 T[2]<=1 T[4]<=1 T[5]<=1 T[6]<=4 T[7]<=5 T[3,8]<=6 [].
        Pcase: s[1] <= 6.
          Hubcap T[1]<=2 T[2]<=1 T[4]<=1 T[5]<=1 T[6]<=4 T[7]<=5 T[3,8]<=6 [].
        Pcase: h[3] > 5.
          Hubcap T[1]<=2 T[2]<=2 T[5]<=1 T[6]<=4 T[7]<=5 T[8]<=3 T[3,4]<=3 [].
        Hubcap T[1]<=2 T[2]<=1 T[3]<=3 T[4]<=1 T[5]<=1 T[6]<=4 T[7]<=5 T[8]<=3 [].
      Pcase: h[8] <= 5.
        Similar to *L3_5[3].
      Pcase: s[4] > 6.
        Hubcap T[1]<=2 T[2]<=2 T[5]<=2 T[7]<=4 T[3,8]<=5 T[4,6]<=5 [].
      Pcase: s[5] > 6.
        Hubcap T[1]<=2 T[5]<=2 T[6]<=3 T[7]<=4 T[2,8]<=5 T[3,4]<=4 [].
      Pcase: s[1] > 6.
        Hubcap T[1]<=2 T[5]<=2 T[7]<=4 T[8]<=3 T[2,3]<=4 T[4,6]<=5 [].
      Hubcap T[1]<=2 T[5]<=2 T[7]<=4 T[8]<=4 T[2,3]<=3 T[4,6]<=5 [].
    Pcase: s[1] <= 5.
      Similar to L2_1[1].
    Pcase L2_2: s[4] <= 5.
      Pcase: s[5] <= 5.
        Pcase: s[3] <= 5.
          Similar to L2_1[5].
        Pcase: s[6] <= 6.
          Reducible.
        Pcase: s[2] <= 5.
          Pcase L5_1: s[1] <= 6.
            Pcase: s[3] <= 6.
              Reducible.
            Pcase: h[5] <= 5.
              Reducible.
            Pcase: h[2] > 5.
              Hubcap T[1]<=4 T[2]<=2 T[3]<=0 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4
                     T[8]<=4 [].
            Pcase: f1[1] <= 5.
              Reducible.
            Pcase: h[3] <= 5.
              Hubcap T[2]<=3 T[3]<=(-1) T[4]<=3 T[5]<=3 T[6]<=0 T[8]<=4 T[1,7]<=8
                     [].
            Pcase: h[7] <= 5.
              Hubcap T[1]<=4 T[2]<=3 T[3]<=(-1) T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=3
                     T[8]<=4 [].
            Pcase: h[8] > 5.
              Hubcap T[1]<=4 T[2]<=3 T[3]<=(-1) T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=3
                     T[8]<=4 [].
            Hubcap T[1]<=5 T[2]<=3 T[3]<=(-1) T[4]<=3 T[5]<=3 T[6]<=(-1) T[7]<=4
                   T[8]<=4 [].
          Pcase: s[3] <= 6.
            Similar to *L5_1[5].
          Pcase L5_2: h[5] > 5.
            Pcase: s[1] > 7.
              Hubcap T[2]<=2 T[4]<=3 T[5]<=3 T[6]<=0 T[1,7]<=5 T[3,8]<=7 [].
            Pcase: s[3] > 8.
              Hubcap T[1]<=4 T[2]<=2 T[3]<=0 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4
                     T[8]<=4 [].
            Pcase: h[7] <= 5.
              Hubcap T[2]<=2 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3 T[1,3]<=6 [].
            Pcase: h[8] > 5.
              Hubcap T[2]<=2 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3 T[1,3]<=6 [].
            Hubcap T[2]<=2 T[4]<=3 T[5]<=3 T[6]<=(-1) T[7]<=4 T[8]<=4 T[1,3]<=5
                   [].
          Pcase: h[8] > 5.
            Similar to *L5_2[5].
          Pcase: h[4] <= 5.
            Reducible.
          Pcase: h[6] <= 5.
            Reducible.
          Pcase: h[7] <= 5.
            Reducible.
          Pcase: h[1] <= 5.
            Reducible.
          Hubcap T[2]<=2 T[4]<=4 T[5]<=4 T[6]<=(-1) T[7]<=4 T[8]<=4 T[1,3]<=3 [].
        Pcase L4_1: h[4] <= 5.
          Pcase: h[5] <= 6.
            Reducible.
          Pcase: s[1] > 7.
            Hubcap T[1]<=0 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4 T[2,3]<=5 [].
          Pcase: s[2] > 7.
            Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4
                   [].
          Pcase: s[3] > 7.
            Hubcap T[1]<=4 T[2]<=2 T[3]<=0 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4
                   [].
          Pcase: s[3] > 6.
            Pcase: s[1] > 6.
              Hubcap T[2]<=0 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4 T[1,3]<=6 [].
            Pcase: s[2] <= 6.
              Hubcap T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3 T[1,2]<=5 T[1,3]<=7
                     T[2,3]<=5 [].
            Pcase: h[2] > 6.
              Hubcap T[1]<=3 T[2]<=0 T[3]<=3 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4
                     T[8]<=4 [].
            Pcase: h[2] <= 5.
              Hubcap T[1]<=3 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4 T[2,3]<=3 [].
            Pcase: h[3] > 5.
              Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4
                     T[8]<=4 [].
            Pcase: h[7] <= 5.
              Hubcap T[1]<=2 T[2]<=1 T[3]<=3 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=3
                     T[8]<=4 [].
            Pcase: h[8] > 5.
              Hubcap T[1]<=2 T[2]<=1 T[3]<=3 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=3
                     T[8]<=4 [].
            Hubcap T[1]<=3 T[2]<=1 T[3]<=3 T[4]<=3 T[5]<=3 T[6]<=(-1) T[7]<=4
                   T[8]<=4 [].
          Pcase: f1[3] <= 5.
            Reducible.
          Pcase: s[2] > 6.
            Pcase: h[7] <= 5.
              Hubcap T[3]<=2 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=4 T[1,2]<=4 [].
            Pcase: h[8] > 5.
              Hubcap T[3]<=2 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=4 T[1,2]<=4 [].
            Hubcap T[3]<=2 T[4]<=4 T[5]<=3 T[6]<=(-1) T[7]<=4 T[8]<=4 T[1,2]<=4
                   [].
          Pcase: s[1] <= 6.
            Reducible.
          Pcase: h[1] <= 5.
            Reducible.
          Pcase: h[2] > 5.
            Hubcap T[1]<=0 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4 T[2,3]<=5 [].
          Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3
                 [].
        Pcase: h[1] <= 5.
          Similar to *L4_1[5].
        Pcase L4_2: h[6] <= 5.
          Pcase: s[6] <= 7.
            Reducible.
          Pcase: h[5] <= 6.
            Reducible.
          Pcase: s[1] > 6.
            Hubcap T[2]<=2 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4 T[1,3]<=4 [].
          Pcase: s[2] > 6.
            Hubcap T[1]<=3 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4 T[2,3]<=3 [].
          Pcase: s[3] > 7.
            Hubcap T[1]<=4 T[2]<=2 T[3]<=0 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4
                   [].
          Pcase: s[3] <= 6.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4
                   [].
          Pcase: h[2] > 5.
            Hubcap T[4]<=3 T[5]<=3 T[6]<=0 T[8]<=4 T[1,2]<=4 T[3,7]<=6 [].
          Pcase: h[3] > 5.
            Hubcap T[1]<=4 T[2]<=2 T[3]<=0 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4
                   [].
          Pcase: f1[2] <= 6.
            Reducible.
          Pcase: h[4] <= 6.
            Hubcap T[4]<=3 T[5]<=3 T[6]<=0 T[8]<=4 T[1,2]<=5 T[3,7]<=5 [].
          Pcase: h[7] <= 5.
            Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3
                   [].
          Pcase: h[8] > 5.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3
                   [].
          Hubcap T[3]<=2 T[4]<=3 T[5]<=3 T[6]<=(-1) T[7]<=4 T[8]<=4 T[1,2]<=5 [].
        Pcase: h[7] <= 5.
          Similar to *L4_2[5].
        Pcase L4_3: s[1] > 7.
          Pcase: s[2] > 7.
            Hubcap T[1]<=0 T[2]<=0 T[3]<=3 T[4]<=4 T[5]<=4 T[6]<=0 T[7]<=4 T[8]<=4
                   [].
          Pcase: s[3] > 6.
            Hubcap T[1]<=0 T[2]<=0 T[3]<=3 T[4]<=4 T[5]<=4 T[6]<=0 T[7]<=4 T[8]<=4
                   [].
          Pcase: h[3] > 5.
            Hubcap T[1]<=0 T[4]<=4 T[5]<=4 T[6]<=0 T[7]<=4 T[8]<=4 T[2,3]<=4 [].
          Pcase: h[4] > 6.
            Hubcap T[1]<=0 T[4]<=4 T[5]<=4 T[6]<=0 T[7]<=4 T[8]<=4 T[2,3]<=4 [].
          Pcase: f1[3] <= 6.
            Reducible.
          Pcase: h[5] > 5.
            Hubcap T[1]<=0 T[2]<=2 T[3]<=4 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4
                   [].
          Pcase: h[8] > 5.
            Hubcap T[1]<=0 T[2]<=2 T[3]<=4 T[4]<=4 T[5]<=4 T[6]<=(-1) T[7]<=3
                   T[8]<=3 [].
          Hubcap T[1]<=0 T[4]<=4 T[5]<=4 T[6]<=(-1) T[7]<=4 T[8]<=4 T[2,3]<=5 [].
        Pcase: s[3] > 7.
          Similar to *L4_3[5].
        Pcase: s[2] > 7.
          Pcase: h[4] > 6.
            Hubcap T[1]<=3 T[2]<=0 T[3]<=1 T[4]<=4 T[5]<=4 T[6]<=0 T[7]<=4 T[8]<=4
                   [].
          Pcase: h[5] > 5.
            Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4
                   [].
          Pcase: h[8] > 5.
            Hubcap T[1]<=2 T[2]<=0 T[3]<=3 T[4]<=4 T[5]<=4 T[6]<=(-1) T[7]<=3
                   T[8]<=3 [].
          Hubcap T[2]<=0 T[4]<=4 T[5]<=4 T[6]<=(-1) T[7]<=4 T[8]<=4 T[1,3]<=5 [].
        Pcase L4_4: h[5] > 6.
          Pcase: s[1] > 6.
            Hubcap T[2]<=2 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4 T[1,3]<=4 [].
          Pcase: s[2] > 6.
            Hubcap T[1]<=3 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4 T[2,3]<=3 [].
          Pcase: s[3] <= 6.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4
                   [].
          Pcase: h[2] > 5.
            Hubcap T[4]<=3 T[5]<=3 T[6]<=0 T[8]<=4 T[1,2]<=4 T[3,7]<=6 [].
          Pcase: h[3] > 5.
            Hubcap T[1]<=4 T[2]<=2 T[3]<=0 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4
                   [].
          Pcase: f1[2] <= 6.
            Reducible.
          Pcase: h[4] <= 6.
            Hubcap T[4]<=3 T[5]<=3 T[6]<=0 T[8]<=4 T[1,2]<=5 T[3,7]<=5 [].
          Pcase: h[8] > 5.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3
                   [].
          Hubcap T[3]<=2 T[4]<=3 T[5]<=3 T[6]<=(-1) T[7]<=4 T[8]<=4 T[1,2]<=5 [].
        Pcase: h[8] > 6.
          Similar to *L4_4[5].
        Pcase L4_5: h[5] > 5.
          Pcase: s[1] > 6.
            Pcase: s[2] > 6.
              Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4
                     T[8]<=4 [].
            Pcase: s[3] > 6.
              Hubcap T[1]<=3 T[2]<=0 T[3]<=3 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4
                     T[8]<=4 [].
            Pcase: h[2] > 5.
              Hubcap T[1]<=0 T[2]<=2 T[3]<=4 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=4
                     T[8]<=4 [].
            Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3
                   [].
          Pcase: h[2] > 6.
            Hubcap T[1]<=3 T[4]<=3 T[5]<=3 T[6]<=0 T[2,7]<=5 T[3,8]<=6 [].
          Pcase: h[8] > 5.
            Hubcap T[1]<=4 T[2]<=2 T[3]<=2 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3
                   [].
          Hubcap T[3]<=2 T[4]<=3 T[5]<=3 T[6]<=(-1) T[7]<=4 T[8]<=4 T[1,2]<=5 [].
        Pcase: h[8] > 5.
          Similar to *L4_5[5].
        Pcase: s[2] <= 6.
          Pcase: h[2] <= 5.
            Hubcap T[4]<=4 T[5]<=4 T[6]<=(-1) T[7]<=4 T[8]<=4 T[1,2]<=5 T[1,3]<=4
                   T[2,3]<=2 [].
          Pcase: s[1] > 6.
            Hubcap T[4]<=4 T[5]<=4 T[6]<=(-1) T[7]<=4 T[8]<=4 T[1,2]<=2 T[1,3]<=4
                   T[2,3]<=5 [].
          Hubcap T[2]<=1 T[4]<=4 T[5]<=4 T[6]<=(-1) T[7]<=4 T[8]<=4 T[1,3]<=4 [].
        Pcase: s[1] > 6.
          Hubcap T[3]<=3 T[4]<=4 T[5]<=4 T[6]<=(-1) T[7]<=4 T[8]<=4 T[1,2]<=2 [].
        Pcase: s[3] > 6.
          Hubcap T[1]<=3 T[4]<=4 T[5]<=4 T[6]<=(-1) T[7]<=4 T[8]<=4 T[2,3]<=2 [].
        Hubcap T[2]<=1 T[4]<=4 T[5]<=4 T[6]<=(-1) T[7]<=4 T[8]<=4 T[1,3]<=4 [].
      Pcase: s[3] <= 5.
        Pcase: s[2] <= 5.
          Similar to L2_1[4].
        Pcase L4_1: h[4] <= 5.
          Pcase: h[3] <= 5.
            Reducible.
          Pcase: h[5] <= 5.
            Reducible.
          Pcase L5_1: s[1] > 6.
            Pcase: h[7] <= 5.
              Pcase: h[8] <= 6.
                Reducible.
              Pcase: s[2] > 6.
                Hubcap T[3]<=4 T[4]<=4 T[7]<=4 T[8]<=3 T[1,2]<=2 T[5,6]<=3 [].
              Pcase: s[5] > 6.
                Hubcap T[1]<=0 T[2]<=3 T[3]<=4 T[4]<=4 T[7]<=4 T[8]<=3 T[5,6]<=2
                       [].
              Hubcap T[1]<=0 T[2]<=3 T[3]<=4 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=3
                     T[8]<=3 [].
            Pcase: h[8] > 5.
              Hubcap T[3]<=4 T[4]<=4 T[7]<=3 T[8]<=3 T[1,2]<=3 T[5,6]<=3 [].
            Pcase: h[1] <= 5.
              Reducible.
            Pcase L6_1: s[2] > 6.
              Pcase: s[5] <= 6.
                Hubcap T[3]<=4 T[4]<=4 T[6]<=0 T[7]<=4 T[8]<=4 T[1,2]<=2 T[1,5]<=3
                       T[2,5]<=3 [].
              Pcase: s[6] > 6.
                Hubcap T[3]<=4 T[4]<=4 T[7]<=4 T[8]<=4 T[1,2]<=2 T[5,6]<=2 [].
              Hubcap T[3]<=4 T[4]<=4 T[5]<=0 T[7]<=4 T[8]<=4 T[1,2]<=2 T[1,6]<=3
                     T[2,6]<=3 [].
            Pcase: s[5] > 7.
              Hubcap T[1]<=0 T[3]<=4 T[4]<=4 T[5]<=0 T[7]<=4 T[8]<=4 T[2,6]<=4 [].
            Pcase: s[5] <= 6.
              Hubcap T[1]<=0 T[3]<=4 T[4]<=4 T[6]<=0 T[7]<=4 T[8]<=4 T[2,5]<=4 [].
            Pcase: s[6] > 6.
              Similar to L6_1[4].
            Pcase: h[5] <= 6.
              Reducible.
            Pcase: h[6] <= 5.
              Reducible.
            Hubcap T[1]<=0 T[3]<=4 T[4]<=4 T[5]<=0 T[7]<=4 T[8]<=4 T[2,6]<=4 [].
          Pcase: s[6] > 6.
            Similar to *L5_1[2].
          Pcase: s[2] <= 6.
            Reducible.
          Pcase: s[5] <= 6.
            Reducible.
          Pcase: h[8] <= 5.
            Similar to L5_1[4].
          Hubcap T[1]<=2 T[2]<=0 T[3]<=4 T[4]<=4 T[5]<=0 T[6]<=2 T[7]<=4 T[8]<=4
                 [].
        Pcase: h[8] <= 5.
          Similar to L4_1[4].
        Pcase: s[1] > 7.
          Hubcap T[1]<=0 T[2]<=2 T[3]<=4 T[8]<=3 T[4,7]<=7 T[5,6]<=4 [].
        Pcase: s[2] > 7.
          Hubcap T[1]<=2 T[2]<=0 T[3]<=3 T[8]<=4 T[4,7]<=7 T[5,6]<=4 [].
        Pcase: s[5] > 7.
          Hubcap T[4]<=3 T[5]<=0 T[6]<=2 T[7]<=4 T[1,2]<=4 T[3,8]<=7 [].
        Pcase: s[6] > 7.
          Hubcap T[4]<=4 T[5]<=2 T[6]<=0 T[7]<=3 T[1,2]<=4 T[3,8]<=7 [].
        Pcase L4_2: h[2] <= 5.
          Pcase: h[5] <= 5.
            Hubcap T[3]<=3 T[5]<=2 T[7]<=3 T[8]<=3 T[1,2]<=4 T[4,6]<=5 [].
          Pcase: s[5] <= 6.
            Hubcap T[3]<=3 T[4]<=3 T[7]<=3 T[8]<=3 T[1,2]<=4 T[5,6]<=4 [].
          Pcase: s[6] > 6.
            Hubcap T[1]<=3 T[2]<=3 T[3]<=3 T[4]<=3 T[7]<=3 T[8]<=3 T[5,6]<=2 [].
          Pcase: h[6] > 5.
            Hubcap T[3]<=3 T[4]<=3 T[5]<=0 T[6]<=2 T[7]<=4 T[8]<=3 T[1,2]<=4 [].
          Hubcap T[3]<=3 T[4]<=3 T[7]<=3 T[8]<=3 T[1,2]<=4 T[5,6]<=4 [].
        Pcase: h[6] <= 5.
          Similar to L4_2[4].
        Pcase L4_3: h[3] <= 5.
          Pcase: h[4] <= 6.
            Reducible.
          Pcase: s[1] <= 6.
            Hubcap T[1]<=2 T[2]<=1 T[3]<=3 T[8]<=3 T[4,6]<=6 T[5,7]<=5 [].
          Pcase: s[2] <= 6.
            Hubcap T[1]<=0 T[2]<=2 T[3]<=4 T[8]<=3 T[4,6]<=6 T[5,7]<=5 [].
          Pcase: s[5] > 6.
            Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[4]<=3 T[6]<=2 T[8]<=3 T[5,7]<=5 [].
          Pcase: s[6] > 6.
            Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[4]<=4 T[5]<=2 T[6]<=1 T[7]<=3 T[8]<=3
                   [].
          Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[4]<=3 T[7]<=3 T[8]<=3 T[5,6]<=4 [].
        Pcase: h[5] <= 5.
          Similar to *L4_3[2].
        Pcase: h[7] <= 5.
          Similar to L4_3[4].
        Pcase: h[1] <= 5.
          Similar to *L4_3[6].
        Hubcap T[3]<=3 T[4]<=3 T[7]<=3 T[8]<=3 T[1,2]<=4 T[5,6]<=4 [].
      Pcase: s[2] <= 5.
        Pcase: s[3] <= 6.
          Pcase: s[1] <= 6.
            Reducible.
          Pcase: s[6] <= 6.
            Hubcap T[3]<=5 T[7]<=4 T[1,2]<=3 T[4,5]<=3 T[6,8]<=5 [].
          Pcase: h[4] > 5.
            Pcase: s[5] > 7.
              Hubcap T[1]<=1 T[2]<=3 T[3]<=4 T[4]<=2 T[5]<=0 T[6]<=2 T[7]<=4
                     T[8]<=4 [].
            Pcase: s[5] <= 6.
              Hubcap T[3]<=4 T[1,2]<=3 T[5,8]<=5 T[4,6]<=5 T[4,7]<=6 T[6,7]<=6 [].
            Pcase: s[6] > 7.
              Hubcap T[1]<=1 T[2]<=3 T[3]<=4 T[4]<=2 T[5]<=2 T[6]<=0 T[7]<=4
                     T[8]<=4 [].
            Pcase: h[3] > 5.
              Hubcap T[1]<=1 T[2]<=2 T[3]<=3 T[4]<=2 T[5]<=2 T[8]<=4 T[6,7]<=6 [].
            Hubcap T[1]<=(-1) T[2]<=3 T[3]<=4 T[4]<=2 T[5]<=2 T[8]<=4 T[6,7]<=6
                   [].
          Pcase: f1[3] <= 5.
            Reducible.
          Pcase: h[3] > 5.
            Pcase: s[1] > 7.
              Hubcap T[1]<=0 T[2]<=2 T[3]<=4 T[8]<=4 T[4,7]<=7 T[5,6]<=3 [].
            Pcase: h[2] <= 5.
              Reducible.
            Pcase: h[1] <= 5.
              Reducible.
            Pcase: s[5] > 7.
              Hubcap T[1]<=1 T[2]<=2 T[3]<=4 T[4]<=3 T[5]<=0 T[6]<=2 T[7]<=4
                     T[8]<=4 [].
            Pcase: s[5] <= 6.
              Hubcap T[1]<=1 T[2]<=2 T[3]<=4 T[6]<=0 T[4,7]<=7 T[5,8]<=6 [].
            Pcase: s[6] > 7.
              Hubcap T[1]<=1 T[2]<=2 T[3]<=4 T[4]<=3 T[5]<=2 T[6]<=0 T[7]<=4
                     T[8]<=4 [].
            Pcase: h[2] > 6.
              Hubcap T[1]<=0 T[2]<=2 T[3]<=4 T[4]<=3 T[7]<=4 T[8]<=4 T[5,6]<=3 [].
            Pcase: h[5] > 5.
              Hubcap T[1]<=1 T[2]<=2 T[3]<=3 T[4]<=3 T[5]<=1 T[8]<=4 T[6,7]<=6 [].
            Hubcap T[1]<=1 T[2]<=2 T[3]<=4 T[4]<=3 T[7]<=4 T[8]<=4 T[5,6]<=2 [].
          Pcase: f1[3] <= 6.
            Reducible.
          Pcase: s[5] > 7.
            Hubcap T[1]<=(-1) T[2]<=3 T[3]<=5 T[4]<=3 T[5]<=0 T[6]<=2 T[7]<=4
                   T[8]<=4 [].
          Pcase: s[5] <= 6.
            Hubcap T[1]<=(-1) T[2]<=3 T[3]<=5 T[6]<=0 T[4,7]<=7 T[5,8]<=6 [].
          Pcase: s[6] > 7.
            Hubcap T[1]<=(-1) T[2]<=3 T[3]<=5 T[4]<=3 T[5]<=2 T[6]<=0 T[7]<=4
                   T[8]<=4 [].
          Pcase: h[5] > 6.
            Hubcap T[1]<=(-1) T[2]<=3 T[3]<=5 T[4]<=3 T[5]<=0 T[8]<=4 T[6,7]<=6
                   [].
          Pcase: h[5] <= 5.
            Hubcap T[1]<=(-1) T[2]<=3 T[3]<=5 T[4]<=3 T[7]<=4 T[8]<=4 T[5,6]<=2
                   [].
          Pcase: s[1] <= 7.
            Hubcap T[1]<=(-1) T[2]<=3 T[3]<=4 T[4]<=3 T[5]<=1 T[8]<=4 T[6,7]<=6
                   [].
          Pcase: h[2] > 5.
            Hubcap T[1]<=(-1) T[2]<=3 T[3]<=4 T[4]<=3 T[5]<=1 T[8]<=4 T[6,7]<=6
                   [].
          Pcase: h[6] > 5.
            Hubcap T[1]<=(-1) T[2]<=3 T[3]<=5 T[4]<=3 T[5]<=1 T[8]<=4 T[6,7]<=5
                   [].
          Pcase: f1[6] <= 5.
            Reducible.
          Pcase: h[7] > 5.
            Hubcap T[1]<=(-1) T[2]<=3 T[3]<=5 T[4]<=3 T[7]<=4 T[8]<=4 T[5,6]<=2
                   [].
          Hubcap T[1]<=(-1) T[2]<=3 T[3]<=5 T[4]<=3 T[5]<=1 T[6]<=3 T[7]<=3
                 T[8]<=3 [].
        Pcase: h[8] <= 5.
          Pcase: h[7] <= 5.
            Reducible.
          Pcase: h[1] <= 5.
            Reducible.
          Pcase: s[1] > 7.
            Hubcap T[1]<=1 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=6 T[5,6]<=3 [].
          Pcase: s[1] <= 6.
            Hubcap T[1]<=5 T[4]<=2 T[7]<=4 T[8]<=4 T[2,3]<=3 T[5,6]<=2 [].
          Pcase: s[3] > 8.
            Hubcap T[1]<=4 T[2]<=2 T[3]<=0 T[4]<=3 T[7]<=4 T[8]<=4 T[5,6]<=3 [].
          Pcase: h[2] <= 5.
            Hubcap T[2]<=2 T[4]<=2 T[7]<=4 T[8]<=4 T[1,3]<=6 T[5,6]<=2 [].
          Pcase: s[3] > 7.
            Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[4]<=3 T[7]<=4 T[8]<=4 T[5,6]<=3 [].
          Pcase: s[5] > 7.
            Hubcap T[2]<=2 T[3]<=4 T[4]<=2 T[5]<=0 T[7]<=4 T[8]<=4 T[1,6]<=4 [].
          Pcase: s[5] <= 6.
            Hubcap T[1]<=2 T[2]<=2 T[5]<=2 T[6]<=0 T[7]<=4 T[8]<=4 T[3,4]<=6 [].
          Pcase: s[6] > 6.
            Hubcap T[1]<=2 T[2]<=2 T[3]<=4 T[4]<=2 T[7]<=4 T[8]<=4 T[5,6]<=2 [].
          Hubcap T[2]<=2 T[3]<=4 T[4]<=2 T[5]<=0 T[7]<=4 T[8]<=4 T[1,6]<=4 [].
        Pcase: s[1] > 8.
          Hubcap T[1]<=0 T[2]<=2 T[3]<=4 T[8]<=3 T[4,7]<=6 T[5,6]<=5 [].
        Pcase: s[5] > 7.
          Hubcap T[2]<=3 T[4]<=2 T[5]<=0 T[6]<=2 T[1,3]<=6 T[7,8]<=7 [].
        Pcase: s[6] > 7.
          Hubcap T[6]<=0 T[7]<=3 T[1,3]<=6 T[2,4]<=5 T[5,8]<=6 [].
        Pcase: s[1] <= 6.
          Pcase: s[3] <= 7.
            Hubcap T[1]<=4 T[2]<=3 T[3]<=0 T[4]<=2 T[5]<=2 T[6]<=2 T[7]<=3 T[8]<=4
                   [].
          Pcase: s[5] <= 6.
            Hubcap T[1]<=5 T[2]<=3 T[3]<=0 T[4]<=2 T[5]<=2 T[6]<=1 T[7]<=3 T[8]<=4
                   [].
          Pcase: s[6] > 6.
            Hubcap T[1]<=5 T[4]<=2 T[7]<=3 T[8]<=4 T[2,3]<=3 T[5,6]<=3 [].
          Hubcap T[1]<=5 T[2]<=3 T[4]<=2 T[7]<=3 T[3,5]<=2 T[6,8]<=5 [].
        Pcase: s[3] > 8.
          Hubcap T[1]<=4 T[2]<=2 T[3]<=0 T[8]<=3 T[4,7]<=6 T[5,6]<=5 [].
        Pcase: s[6] <= 6.
          Pcase: h[5] <= 5.
            Hubcap T[2]<=2 T[4]<=2 T[5]<=1 T[6]<=2 T[7]<=4 T[8]<=3 T[1,3]<=6 [].
          Pcase: h[6] > 6.
            Hubcap T[2]<=2 T[4]<=2 T[6]<=2 T[8]<=3 T[1,3]<=6 T[5,7]<=5 [].
          Pcase: h[7] > 6.
            Hubcap T[2]<=2 T[4]<=2 T[7]<=3 T[8]<=3 T[1,3]<=6 T[5,6]<=4 [].
          Pcase: f1[6] <= 5.
            Reducible.
          Pcase: s[3] > 7.
            Hubcap T[2]<=2 T[4]<=2 T[8]<=3 T[3,5]<=4 T[1,6]<=6 T[1,7]<=7 T[6,7]<=6
                   [].
          Pcase: h[3] <= 5.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=4 T[4]<=2 T[5]<=0 T[6]<=2 T[7]<=4 T[8]<=3
                   [].
          Pcase: s[1] > 7.
            Hubcap T[1]<=1 T[2]<=2 T[3]<=3 T[4]<=2 T[5]<=3 T[8]<=3 T[6,7]<=6 [].
          Pcase: h[2] <= 5.
            Hubcap T[1]<=4 T[2]<=2 T[3]<=1 T[4]<=2 T[5]<=2 T[8]<=3 T[6,7]<=6 [].
          Pcase: s[5] > 6.
            Hubcap T[2]<=2 T[3]<=3 T[4]<=2 T[5]<=2 T[7]<=4 T[8]<=3 T[1,6]<=4 [].
          Pcase: h[6] <= 5.
            Reducible.
          Pcase: h[7] <= 5.
            Reducible.
          Pcase: h[3] > 6.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=2 T[7]<=3 T[8]<=3 T[5,6]<=5 [].
          Pcase: h[4] > 5.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[4]<=2 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3
                   [].
          Pcase: f2[3] <= 5.
            Reducible.
          Pcase: h[5] > 6.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[4]<=2 T[7]<=3 T[8]<=3 T[5,6]<=4 [].
          Hubcap T[2]<=2 T[3]<=3 T[4]<=2 T[5]<=3 T[7]<=3 T[8]<=3 T[1,6]<=4 [].
        Pcase: s[5] > 6.
          Hubcap T[2]<=2 T[4]<=2 T[7]<=3 T[8]<=3 T[1,3]<=6 T[5,6]<=4 [].
        Pcase: h[5] > 5.
          Pcase: h[6] > 5.
            Hubcap T[2]<=2 T[4]<=2 T[7]<=3 T[8]<=3 T[1,3]<=6 T[5,6]<=4 [].
          Pcase: s[3] > 7.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=2 T[7]<=3 T[8]<=3 T[5,6]<=5 [].
          Pcase: h[4] > 5.
            Hubcap T[2]<=2 T[4]<=2 T[5]<=1 T[6]<=4 T[7]<=3 T[8]<=3 T[1,3]<=5 [].
          Hubcap T[2]<=2 T[4]<=2 T[7]<=3 T[8]<=3 T[1,3]<=6 T[5,6]<=4 [].
        Pcase: h[6] <= 5.
          Reducible.
        Pcase: h[7] <= 5.
          Reducible.
        Pcase: f1[5] <= 5.
          Reducible.
        Pcase: s[1] > 7.
          Hubcap T[1]<=2 T[2]<=2 T[4]<=3 T[5]<=3 T[7]<=3 T[8]<=3 T[3,6]<=4 [].
        Pcase: h[2] <= 5.
          Reducible.
        Pcase: s[3] > 7.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=3 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3
                 [].
        Hubcap T[2]<=2 T[4]<=3 T[7]<=3 T[8]<=3 T[1,3]<=6 T[5,6]<=3 [].
      Pcase: h[8] <= 5.
        Pcase: h[7] <= 5.
          Reducible.
        Pcase: h[1] <= 5.
          Reducible.
        Pcase: s[1] > 7.
          Hubcap T[1]<=0 T[4]<=4 T[7]<=4 T[8]<=4 T[2,3]<=5 T[5,6]<=3 [].
        Pcase: s[2] > 7.
          Hubcap T[2]<=0 T[3]<=3 T[7]<=4 T[8]<=4 T[1,4]<=6 T[5,6]<=3 [].
        Pcase: s[3] > 7.
          Hubcap T[1]<=4 T[2]<=2 T[3]<=0 T[4]<=3 T[7]<=4 T[8]<=4 T[5,6]<=3 [].
        Pcase: s[1] > 6.
          Pcase: s[3] > 6.
            Hubcap T[2]<=0 T[4]<=3 T[7]<=4 T[8]<=4 T[1,3]<=5 T[5,6]<=3 [].
          Pcase: s[5] > 6.
            Hubcap T[4]<=3 T[7]<=4 T[8]<=4 T[5,6]<=3 T[1,2]<=3 T[1,3]<=5 T[2,3]<=5
                   [].
          Pcase: s[6] <= 6.
            Reducible.
          Pcase: s[2] <= 6.
            Hubcap T[1]<=0 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4 T[2,3]<=5 [].
          Pcase: h[2] > 6.
            Hubcap T[3]<=3 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4 T[1,2]<=2 [].
          Pcase: h[2] <= 5.
            Hubcap T[3]<=3 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4 T[1,2]<=2 [].
          Pcase: h[3] > 5.
            Hubcap T[2]<=1 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4 T[1,3]<=4 [].
          Hubcap T[1]<=0 T[2]<=2 T[3]<=3 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4
                 [].
        Pcase: s[2] > 6.
          Pcase: h[4] > 6.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[4]<=3 T[7]<=4 T[8]<=4 T[5,6]<=3 [].
          Pcase: h[1] > 6.
            Hubcap T[1]<=1 T[4]<=4 T[7]<=4 T[8]<=4 T[2,3]<=4 T[5,6]<=3 [].
          Pcase: f1[1] <= 5.
            Reducible.
          Pcase: s[3] > 6.
            Hubcap T[1]<=3 T[4]<=3 T[7]<=4 T[8]<=4 T[2,3]<=3 T[5,6]<=3 [].
          Pcase: f1[3] <= 5.
            Reducible.
          Pcase: s[5] > 7.
            Hubcap T[1]<=3 T[5]<=0 T[7]<=4 T[8]<=4 T[2,3]<=4 T[4,6]<=5 [].
          Pcase: s[5] <= 6.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=3 T[5]<=2 T[6]<=0 T[7]<=4 T[8]<=4
                   [].
          Pcase: s[6] > 6.
            Hubcap T[1]<=3 T[4]<=3 T[7]<=4 T[8]<=4 T[2,3]<=4 T[5,6]<=2 [].
          Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[5]<=0 T[7]<=4 T[8]<=4 T[4,6]<=5 [].
        Pcase: h[4] <= 5.
          Reducible.
        Pcase: s[5] > 6.
          Hubcap T[3]<=2 T[4]<=2 T[7]<=4 T[8]<=4 T[1,2]<=5 T[5,6]<=3 [].
        Hubcap T[3]<=2 T[4]<=3 T[5]<=2 T[6]<=0 T[7]<=4 T[8]<=4 T[1,2]<=5 [].
      Pcase: s[1] > 7.
        Hubcap T[1]<=0 T[8]<=3 T[2,3]<=5 T[4,6]<=6 T[5,7]<=6 [].
      Pcase: s[3] > 7.
        Hubcap T[3]<=0 T[8]<=4 T[1,2]<=5 T[4,7]<=6 T[5,6]<=5 [].
      Pcase: s[6] <= 6.
        Pcase: s[2] > 7.
          Hubcap T[1]<=2 T[2]<=0 T[3]<=3 T[4]<=3 T[5,7]<=6 T[6,8]<=6 [].
        Pcase: h[7] > 5.
          Pcase: s[5] > 7.
            Hubcap T[1]<=4 T[4]<=3 T[5]<=0 T[7]<=3 T[2,3]<=5 T[6,8]<=5 [].
          Pcase: s[2] > 6.
            Hubcap T[7]<=3 T[4,5]<=5 T[6,8]<=6 T[1,2]<=4 T[1,3]<=5 T[2,3]<=4 [].
          Pcase: s[5] > 6.
            Pcase: h[2] > 6.
              Hubcap T[1]<=2 T[7]<=3 T[2,3]<=5 T[4,5]<=5 T[6,8]<=5 [].
            Pcase: h[3] > 6.
              Hubcap T[1]<=4 T[7]<=3 T[2,4]<=4 T[3,8]<=5 T[5,6]<=4 [].
            Pcase: h[4] > 5.
              Hubcap T[4]<=2 T[7]<=3 T[1,2]<=5 T[3,8]<=6 T[5,6]<=4 [].
            Pcase: s[3] <= 6.
              Hubcap T[1]<=2 T[2]<=2 T[3]<=4 T[4]<=3 T[5]<=0 T[6]<=2 T[7]<=3
                     T[8]<=3 [].
            Pcase: s[1] > 6.
              Hubcap T[1]<=4 T[2]<=0 T[3]<=4 T[4]<=2 T[7]<=3 T[8]<=3 T[5,6]<=4 [].
            Pcase: h[1] <= 5.
              Reducible.
            Pcase: h[2] > 5.
              Hubcap T[1]<=4 T[4]<=2 T[7]<=3 T[8]<=3 T[2,3]<=4 T[5,6]<=4 [].
            Hubcap T[3]<=3 T[4]<=2 T[7]<=3 T[8]<=3 T[1,2]<=5 T[5,6]<=4 [].
          Pcase: h[5] <= 5.
            Reducible.
          Pcase: h[6] <= 5.
            Reducible.
          Pcase: s[3] <= 6.
            Hubcap T[1]<=4 T[2]<=2 T[3]<=2 T[4]<=2 T[7]<=3 T[8]<=3 T[5,6]<=4 [].
          Pcase: s[1] > 6.
            Hubcap T[1]<=4 T[2]<=0 T[3]<=3 T[4]<=2 T[7]<=3 T[8]<=3 T[5,6]<=5 [].
          Pcase: h[2] > 5.
            Hubcap T[4]<=2 T[7]<=3 T[1,2]<=4 T[3,5]<=5 T[6,8]<=6 [].
          Hubcap T[3]<=2 T[4]<=2 T[7]<=3 T[1,2]<=5 T[5,6]<=5 T[5,8]<=6 T[6,8]<=6
                 [].
        Pcase: s[5] <= 6.
          Reducible.
        Pcase: h[8] <= 6.
          Reducible.
        Pcase: f1[6] <= 5.
          Reducible.
        Pcase: h[2] > 6.
          Hubcap T[1]<=2 T[6]<=2 T[7]<=4 T[4,5]<=4 T[2,3]<=5 T[2,8]<=5 T[3,8]<=7
                 [].
        Pcase: h[4] > 5.
          Pcase: s[2] > 6.
            Hubcap T[3]<=2 T[4]<=2 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=4 T[1,2]<=4 [].
          Pcase: s[5] > 7.
            Hubcap T[1]<=4 T[2]<=2 T[4]<=2 T[5]<=0 T[6]<=2 T[7]<=4 T[3,8]<=6 [].
          Pcase: h[3] > 6.
            Hubcap T[4]<=2 T[6]<=2 T[7]<=4 T[8]<=4 T[1,2]<=5 T[3,5]<=3 [].
          Pcase: h[5] <= 5.
            Hubcap T[4]<=2 T[5]<=1 T[6]<=2 T[7]<=4 T[1,2]<=5 T[3,8]<=6 [].
          Pcase: s[1] > 6.
            Hubcap T[4]<=2 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=3 T[1,2]<=5 T[1,3]<=6
                   T[2,3]<=4 [].
          Pcase: s[3] <= 6.
            Hubcap T[1]<=1 T[2]<=2 T[3]<=1 T[4]<=2 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=3
                   [].
          Pcase: h[2] > 5.
            Hubcap T[4]<=2 T[5]<=2 T[6]<=2 T[7]<=4 T[1,2]<=4 T[3,8]<=6 [].
          Hubcap T[4]<=2 T[5]<=2 T[6]<=2 T[7]<=4 T[1,3]<=5 T[2,8]<=5 [].
        Pcase: s[1] > 6.
          Hubcap T[4]<=3 T[6]<=2 T[7]<=4 T[8]<=3 T[1,3]<=6 T[2,5]<=2 [].
        Pcase: s[3] <= 6.
          Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[4]<=3 T[5]<=0 T[6]<=2 T[7]<=4 T[8]<=4
                 [].
        Pcase: s[5] > 7.
          Hubcap T[1]<=3 T[2]<=2 T[4]<=2 T[5]<=0 T[6]<=2 T[7]<=4 T[3,8]<=7 [].
        Pcase: s[2] > 6.
          Hubcap T[1]<=2 T[4]<=2 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=4 T[2,3]<=4 [].
        Pcase: h[1] <= 5.
          Reducible.
        Pcase: h[2] > 5.
          Hubcap T[1]<=3 T[4]<=2 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=3 T[2,3]<=4 [].
        Hubcap T[3]<=3 T[4]<=2 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=3 T[1,2]<=4 [].
      Pcase: s[5] > 7.
        Hubcap T[4]<=3 T[5]<=0 T[6]<=2 T[7]<=3 T[1,2]<=5 T[3,8]<=7 [].
      Pcase: s[2] > 6.
        Pcase: h[4] > 6.
          Hubcap T[3]<=1 T[4]<=3 T[7]<=3 T[8]<=4 T[1,2]<=4 T[5,6]<=5 [].
        Pcase: h[5] > 6.
          Hubcap T[5]<=1 T[7]<=3 T[1,8]<=6 T[2,3]<=4 T[4,6]<=6 [].
        Pcase: s[3] > 6.
          Pcase: s[1] > 6.
            Hubcap T[1]<=3 T[2]<=0 T[3]<=3 T[4]<=3 T[7]<=3 T[8]<=3 T[5,6]<=5 [].
          Pcase: s[2] > 7.
            Hubcap T[1]<=2 T[2]<=0 T[3]<=2 T[4]<=3 T[5]<=3 T[6]<=3 T[7]<=3 T[8]<=4
                   [].
          Pcase: s[5] > 6.
            Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[4]<=2 T[7]<=3 T[8]<=4 T[5,6]<=4 [].
          Pcase: f1[5] <= 5.
            Reducible.
          Pcase: s[6] > 7.
            Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=4
                   [].
          Pcase: h[2] > 6.
            Hubcap T[1]<=2 T[2]<=0 T[3]<=3 T[4]<=3 T[7]<=3 T[8]<=4 T[5,6]<=5 [].
          Pcase: h[2] <= 5.
            Hubcap T[1]<=2 T[4]<=3 T[7]<=3 T[8]<=4 T[2,3]<=3 T[5,6]<=5 [].
          Pcase: h[3] > 5.
            Hubcap T[1]<=2 T[2]<=1 T[3]<=2 T[4]<=3 T[7]<=3 T[8]<=4 T[5,6]<=5 [].
          Pcase: h[4] > 5.
            Hubcap T[1]<=2 T[2]<=1 T[3]<=2 T[4]<=3 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=4
                   [].
          Pcase: h[5] > 5.
            Hubcap T[1]<=2 T[2]<=1 T[3]<=3 T[4]<=2 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=4
                   [].
          Hubcap T[1]<=2 T[2]<=1 T[3]<=3 T[4]<=3 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=4
                 [].
        Pcase: f1[3] <= 5.
          Reducible.
        Pcase: s[2] > 7.
          Hubcap T[1]<=2 T[2]<=0 T[3]<=3 T[4]<=4 T[7]<=3 T[8]<=4 T[5,6]<=4 [].
        Pcase: h[4] > 5.
          Hubcap T[3]<=2 T[4]<=3 T[7]<=3 T[8]<=4 T[1,2]<=4 T[5,6]<=4 [].
        Pcase: s[5] > 6.
          Hubcap T[3]<=3 T[4]<=3 T[7]<=3 T[8]<=4 T[1,2]<=4 T[5,6]<=3 [].
        Pcase: f1[5] <= 5.
          Reducible.
        Pcase: s[1] > 6.
          Hubcap T[3]<=3 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3 T[1,2]<=4 [].
        Pcase: h[2] <= 5.
          Reducible.
        Pcase: h[2] > 6.
          Hubcap T[1]<=2 T[3]<=3 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=3 T[2,8]<=5 [].
        Pcase: h[3] > 5.
          Hubcap T[1]<=2 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=4 T[2,3]<=4 [].
        Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3 [].
      Pcase: h[5] <= 5.
        Pcase: h[2] > 6.
          Hubcap T[1]<=2 T[7]<=3 T[2,3]<=5 T[4,6]<=4 T[5,8]<=6 [].
        Pcase: h[3] > 6.
          Hubcap T[7]<=3 T[4,6]<=4 T[5,8]<=6 T[1,2]<=5 T[1,3]<=6 T[2,3]<=4 [].
        Pcase: h[4] > 5.
          Hubcap T[5]<=2 T[7]<=3 T[1,2]<=5 T[3,8]<=6 T[4,6]<=4 [].
        Pcase: s[3] <= 6.
          Hubcap T[1]<=2 T[4]<=4 T[7]<=3 T[8]<=3 T[2,3]<=5 T[5,6]<=3 [].
        Pcase: s[5] > 6.
          Hubcap T[4]<=2 T[5]<=2 T[6]<=2 T[7]<=3 T[8]<=3 T[1,2]<=5 T[1,3]<=7
                 T[2,3]<=5 [].
        Pcase: f1[5] <= 5.
          Reducible.
        Pcase: s[6] > 7.
          Hubcap T[1]<=4 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3 T[2,3]<=4 [].
        Pcase: h[6] <= 5.
          Reducible.
        Pcase: h[7] <= 5.
          Reducible.
        Pcase: s[1] > 6.
          Hubcap T[2]<=0 T[4]<=3 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3 T[1,3]<=6 [].
        Pcase: h[1] <= 5.
          Reducible.
        Pcase: h[2] > 5.
          Hubcap T[4]<=3 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3 T[1,2]<=4 T[1,3]<=7
                 T[2,3]<=4 [].
        Hubcap T[2]<=1 T[4]<=3 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3 T[1,3]<=6 [].
      Pcase: s[6] > 7.
        Hubcap T[1]<=4 T[4]<=3 T[6]<=0 T[7]<=3 T[2,3]<=5 T[5,8]<=5 [].
      Pcase: s[5] > 6.
        Hubcap T[7]<=3 T[5,6]<=3 T[1,2]<=5 T[1,4]<=6 T[2,3]<=5 T[3,8]<=7 T[4,8]<=6
               [].
      Pcase: h[2] > 6.
        Hubcap T[7]<=3 T[1,4]<=4 T[5,6]<=5 T[2,3]<=5 T[2,8]<=5 T[3,8]<=7 [].
      Pcase: h[3] > 6.
        Hubcap T[7]<=3 T[3,8]<=5 T[5,6]<=5 T[1,2]<=5 T[1,4]<=6 T[2,4]<=4 [].
      Pcase: h[8] <= 6.
        Pcase: h[7] <= 5.
          Reducible.
        Pcase: h[1] <= 5.
          Reducible.
        Pcase: s[1] > 6.
          Hubcap T[2]<=2 T[4]<=3 T[7]<=3 T[8]<=3 T[1,3]<=5 T[5,6]<=4 [].
        Pcase: s[3] <= 6.
          Hubcap T[1]<=2 T[2]<=2 T[3]<=1 T[4]<=2 T[5]<=1 T[6]<=3 T[7]<=3 T[8]<=3
                 [].
        Pcase: h[2] > 5.
          Hubcap T[1]<=4 T[4]<=2 T[7]<=3 T[8]<=3 T[2,3]<=4 T[5,6]<=4 [].
        Hubcap T[3]<=3 T[4]<=2 T[7]<=3 T[8]<=3 T[1,2]<=5 T[5,6]<=4 [].
      Pcase: h[6] > 6.
        Hubcap T[7]<=3 T[4,6]<=4 T[5,8]<=5 T[1,2]<=5 T[1,3]<=7 T[2,3]<=5 [].
      Pcase: h[1] > 5.
        Pcase: h[4] > 5.
          Hubcap T[1]<=3 T[4]<=2 T[5]<=1 T[6]<=4 T[7]<=3 T[8]<=3 T[2,3]<=4 [].
        Pcase: s[3] <= 6.
          Hubcap T[1]<=2 T[2]<=2 T[3]<=4 T[4]<=3 T[5]<=2 T[6]<=0 T[7]<=3 T[8]<=3
                 [].
        Pcase: s[1] > 6.
          Hubcap T[1]<=3 T[2]<=0 T[3]<=4 T[4]<=2 T[7]<=3 T[8]<=3 T[5,6]<=5 [].
        Pcase: h[2] > 5.
          Hubcap T[1]<=3 T[4]<=2 T[7]<=3 T[8]<=3 T[2,3]<=4 T[5,6]<=5 [].
        Hubcap T[3]<=3 T[4]<=2 T[7]<=3 T[8]<=3 T[1,2]<=4 T[5,6]<=5 [].
      Pcase: s[1] > 6.
        Hubcap T[4]<=2 T[7]<=3 T[8]<=3 T[5,6]<=5 T[1,2]<=5 T[1,3]<=6 T[2,3]<=4 [].
      Pcase: s[3] <= 6.
        Reducible.
      Pcase: h[4] <= 5.
        Reducible.
      Pcase: f1[1] <= 5.
        Reducible.
      Pcase: h[2] > 5.
        Hubcap T[3]<=2 T[4]<=2 T[5]<=1 T[6]<=4 T[7]<=3 T[8]<=4 T[1,2]<=4 [].
      Hubcap T[2]<=1 T[4]<=2 T[5]<=1 T[6]<=4 T[7]<=3 T[8]<=4 T[1,3]<=5 [].
    Pcase: s[3] <= 5.
      Similar to *L2_2[2].
    Pcase L2_3: s[2] <= 5.
      Pcase: s[5] > 5.
        Pcase: s[1] <= 6.
          Pcase: s[4] > 7.
            Hubcap T[1]<=5 T[2]<=3 T[3]<=1 T[4]<=0 T[5]<=1 T[8]<=4 T[6,7]<=6 [].
          Pcase: s[3] <= 6.
            Pcase: h[3] <= 5.
              Reducible.
            Pcase: s[5] > 7.
              Hubcap T[5]<=0 T[8]<=4 T[1,3]<=7 T[2,4]<=4 T[6,7]<=5 [].
            Pcase: s[4] > 6.
              Pcase: s[5] > 6.
                Hubcap T[1]<=5 T[2]<=3 T[3]<=1 T[4]<=1 T[5]<=1 T[8]<=4 T[6,7]<=5
                       [].
              Pcase: s[6] > 6.
                Hubcap T[1]<=5 T[2]<=3 T[3]<=1 T[4]<=3 T[5]<=0 T[8]<=4 T[6,7]<=4
                       [].
              Hubcap T[3]<=1 T[5]<=1 T[7]<=4 T[8]<=4 T[1,6]<=6 T[2,4]<=4 [].
            Pcase: s[6] > 7.
              Pcase: s[5] > 6.
                Hubcap T[6]<=0 T[7]<=4 T[8]<=4 T[2,5]<=4 T[1,3]<=7 T[1,4]<=6
                       T[3,4]<=4 [].
              Pcase: h[5] <= 5.
                Reducible.
              Pcase: h[2] > 5.
                Hubcap T[1]<=4 T[2]<=2 T[3]<=3 T[6]<=0 T[7]<=4 T[8]<=4 T[4,5]<=3
                       [].
              Hubcap T[1]<=5 T[2]<=3 T[3]<=1 T[4]<=1 T[5]<=1 T[6]<=0 T[7]<=4
                     T[8]<=4 [].
            Pcase: h[2] <= 5.
              Hubcap T[1]<=5 T[2]<=3 T[5]<=1 T[8]<=4 T[3,4]<=2 T[6,7]<=5 [].
            Pcase: s[6] <= 6.
              Hubcap T[1]<=4 T[2]<=2 T[3,4]<=4 T[5,7]<=5 T[6,8]<=5 [].
            Pcase: s[5] <= 6.
              Hubcap T[1]<=4 T[2]<=2 T[3]<=3 T[8]<=4 T[4,5]<=3 T[6,7]<=4 [].
            Pcase: h[3] <= 6.
              Hubcap T[1]<=4 T[2]<=2 T[4]<=1 T[8]<=4 T[3,5]<=4 T[6,7]<=5 [].
            Pcase: h[4] > 5.
              Hubcap T[1]<=4 T[2]<=2 T[3]<=2 T[4]<=1 T[5]<=2 T[8]<=4 T[6,7]<=5 [].
            Pcase: h[5] > 5.
              Hubcap T[1]<=4 T[2]<=2 T[5]<=1 T[8]<=4 T[3,4]<=4 T[6,7]<=5 [].
            Pcase: f1[4] <= 6.
              Reducible.
            Pcase: h[6] > 5.
              Hubcap T[1]<=4 T[2]<=2 T[3]<=2 T[4]<=2 T[5]<=2 T[8]<=4 T[6,7]<=4 [].
            Pcase: h[7] > 5.
              Hubcap T[1]<=4 T[2]<=2 T[3]<=2 T[4]<=2 T[7]<=4 T[8]<=4 T[5,6]<=2 [].
            Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=2 T[5]<=2 T[6]<=2 T[7]<=3 T[8]<=4
                   [].
          Pcase: s[5] > 7.
            Hubcap T[1]<=5 T[4]<=0 T[5]<=0 T[8]<=4 T[2,3]<=6 T[6,7]<=5 [].
          Pcase: s[4] > 6.
            Pcase: s[5] > 6.
              Hubcap T[1]<=5 T[2]<=3 T[3]<=2 T[4]<=0 T[5]<=1 T[8]<=4 T[6,7]<=5 [].
            Pcase: s[6] > 6.
              Hubcap T[1]<=5 T[2]<=3 T[3]<=2 T[4]<=2 T[5]<=0 T[8]<=4 T[6,7]<=4 [].
            Pcase: h[6] <= 5.
              Reducible.
            Pcase: h[7] <= 5.
              Reducible.
            Pcase: s[3] > 7.
              Hubcap T[1]<=5 T[2]<=3 T[3]<=0 T[5]<=1 T[4,7]<=5 T[6,8]<=6 [].
            Pcase: h[2] > 5.
              Hubcap T[1]<=4 T[2]<=2 T[3]<=2 T[5]<=1 T[4,7]<=5 T[6,8]<=6 [].
            Pcase: f1[1] <= 5.
              Reducible.
            Pcase: h[5] > 6.
              Hubcap T[1]<=5 T[2]<=3 T[3]<=2 T[4]<=0 T[5]<=1 T[8]<=4 T[6,7]<=5 [].
            Pcase: h[6] > 6.
              Hubcap T[1]<=5 T[2]<=3 T[3]<=2 T[5]<=0 T[4,7]<=5 T[6,8]<=5 [].
            Pcase: f1[5] <= 5.
              Reducible.
            Pcase: h[8] > 6.
              Hubcap T[1]<=5 T[2]<=3 T[7]<=3 T[8]<=4 T[3,4]<=3 T[5,6]<=2 [].
            Pcase: h[8] <= 5.
              Hubcap T[2]<=3 T[4]<=1 T[7]<=4 T[8]<=4 T[1,3]<=6 T[5,6]<=2 [].
            Pcase: h[1] <= 5.
              Reducible.
            Hubcap T[1]<=5 T[2]<=3 T[7]<=3 T[8]<=3 T[3,4]<=3 T[5,6]<=3 [].
          Pcase: s[3] > 7.
            Hubcap T[1]<=5 T[2]<=3 T[3]<=0 T[8]<=4 T[4,5]<=3 T[6,7]<=5 [].
          Pcase: h[2] > 5.
            Pcase: s[5] > 6.
              Hubcap T[1]<=4 T[2]<=2 T[4]<=0 T[8]<=4 T[3,5]<=5 T[6,7]<=5 [].
            Pcase: s[6] <= 6.
              Hubcap T[1]<=4 T[2]<=2 T[3]<=4 T[4]<=0 T[5]<=1 T[8]<=4 T[6,7]<=5 [].
            Pcase: h[3] > 5.
              Hubcap T[1]<=4 T[2]<=2 T[3]<=3 T[8]<=4 T[4,5]<=3 T[6,7]<=4 [].
            Pcase: f1[3] <= 5.
              Reducible.
            Pcase: h[4] > 5.
              Hubcap T[1]<=4 T[2]<=2 T[3]<=2 T[4]<=2 T[5]<=2 T[8]<=4 T[6,7]<=4 [].
            Pcase: h[5] > 5.
              Hubcap T[1]<=4 T[2]<=2 T[3]<=4 T[8]<=4 T[4,5]<=2 T[6,7]<=4 [].
            Hubcap T[1]<=4 T[2]<=2 T[3]<=3 T[4]<=2 T[5]<=1 T[8]<=4 T[6,7]<=4 [].
          Pcase: h[4] <= 5.
            Reducible.
          Pcase: f1[1] <= 5.
            Reducible.
          Pcase: s[6] <= 6.
            Hubcap T[1]<=5 T[2]<=3 T[3]<=2 T[4]<=0 T[5,7]<=5 T[6,8]<=5 [].
          Pcase: s[5] > 6.
            Pcase: s[6] > 7.
              Hubcap T[1]<=5 T[2]<=3 T[3]<=2 T[4]<=0 T[5]<=2 T[6]<=0 T[7]<=4
                     T[8]<=4 [].
            Pcase: h[3] > 5.
              Hubcap T[1]<=5 T[2]<=3 T[3]<=1 T[4]<=0 T[5]<=2 T[8]<=4 T[6,7]<=5 [].
            Hubcap T[2]<=3 T[3]<=2 T[4]<=0 T[8]<=4 T[1,7]<=8 T[5,6]<=3 [].
          Pcase: s[6] <= 7.
            Hubcap T[1]<=5 T[2]<=3 T[8]<=4 T[6,7]<=4 T[3,4]<=3 T[3,5]<=3 T[4,5]<=3
                   [].
          Pcase: h[3] > 5.
            Hubcap T[1]<=5 T[2]<=3 T[3]<=1 T[6]<=0 T[7]<=4 T[8]<=4 T[4,5]<=3 [].
          Hubcap T[2]<=3 T[3]<=2 T[6]<=0 T[8]<=4 T[1,7]<=8 T[4,5]<=3 [].
        Pcase: s[1] > 7.
          Pcase: s[3] > 7.
            Hubcap T[1]<=2 T[2]<=2 T[3]<=0 T[4]<=2 T[7]<=4 T[8]<=4 T[5,6]<=5 [].
          Pcase: s[4] > 7.
            Hubcap T[3]<=3 T[4]<=0 T[7]<=4 T[8]<=4 T[1,2]<=4 T[5,6]<=5 [].
          Pcase: s[5] > 7.
            Hubcap T[5]<=0 T[6]<=3 T[7]<=4 T[8]<=4 T[1,2]<=4 T[3,4]<=5 [].
          Pcase: h[8] > 5.
            Pcase: s[5] > 6.
              Hubcap T[5]<=2 T[8]<=3 T[1,2]<=4 T[3,4]<=5 T[6,7]<=6 [].
            Pcase: s[6] > 7.
              Hubcap T[1]<=2 T[2]<=3 T[3]<=4 T[6]<=0 T[7]<=3 T[8]<=3 T[4,5]<=5 [].
            Pcase: s[6] > 6.
              Pcase: s[3] > 6.
                Hubcap T[1]<=2 T[2]<=2 T[7]<=3 T[8]<=3 T[3,4]<=5 T[5,6]<=5 [].
              Pcase: s[4] > 6.
                Hubcap T[1]<=1 T[2]<=3 T[3]<=3 T[5]<=0 T[7]<=3 T[8]<=3 T[4,6]<=7
                       [].
              Pcase: h[2] > 6.
                Hubcap T[1]<=0 T[2]<=3 T[7]<=3 T[8]<=3 T[3,4]<=6 T[5,6]<=5 [].
              Pcase: h[3] > 5.
                Hubcap T[1]<=1 T[2]<=2 T[3]<=3 T[4]<=3 T[7]<=3 T[8]<=3 T[5,6]<=5
                       [].
              Pcase: f1[3] <= 5.
                Reducible.
              Pcase: h[4] > 6.
                Hubcap T[1]<=1 T[2]<=3 T[3]<=3 T[4]<=2 T[7]<=3 T[8]<=3 T[5,6]<=5
                       [].
              Pcase: h[5] > 6.
                Hubcap T[1]<=1 T[2]<=3 T[3]<=4 T[4]<=2 T[5]<=0 T[6]<=4 T[7]<=3
                       T[8]<=3 [].
              Pcase: h[8] <= 6.
                Hubcap T[1]<=0 T[2]<=3 T[3]<=4 T[6]<=2 T[7]<=3 T[8]<=3 T[4,5]<=5
                       [].
              Pcase: h[2] > 5.
                Pcase: s[1] > 8.
                  Hubcap T[1]<=0 T[2]<=3 T[7]<=3 T[8]<=3 T[3,4]<=6 T[5,6]<=5 [].
                Pcase: h[5] > 5.
                  Hubcap T[1]<=1 T[2]<=3 T[7]<=3 T[8]<=3 T[3,4]<=5 T[5,6]<=5 [].
                Pcase: h[4] <= 5.
                  Hubcap T[1]<=1 T[2]<=3 T[3]<=3 T[4]<=3 T[5]<=1 T[6]<=3 T[7]<=3
                         T[8]<=3 [].
                Pcase: h[6] > 6.
                  Hubcap T[1]<=1 T[2]<=3 T[5]<=2 T[6]<=2 T[7]<=3 T[8]<=3 T[3,4]<=6
                         [].
                Pcase: h[6] <= 5.
                  Hubcap T[1]<=1 T[2]<=3 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[3,4]<=5
                         [].
                Pcase: h[7] > 5.
                  Hubcap T[1]<=1 T[2]<=3 T[3]<=4 T[6]<=1 T[7]<=3 T[8]<=3 T[4,5]<=5
                         [].
                Pcase: h[1] > 5.
                  Hubcap T[1]<=0 T[2]<=3 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[3,4]<=6
                         [].
                Pcase: f1[1] <= 5.
                  Hubcap T[1]<=0 T[2]<=3 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[3,4]<=6
                         [].
                Pcase: f1[3] > 6.
                  Hubcap T[1]<=1 T[2]<=3 T[3]<=4 T[6]<=3 T[7]<=3 T[8]<=3 T[4,5]<=3
                         [].
                Hubcap T[1]<=1 T[2]<=3 T[3]<=2 T[4]<=4 T[5]<=1 T[6]<=3 T[7]<=3
                       T[8]<=3 [].
              Pcase: f1[4] <= 5.
                Reducible.
              Pcase: s[1] > 8.
                Hubcap T[1]<=0 T[2]<=3 T[7]<=3 T[8]<=3 T[3,4]<=7 T[5,6]<=4 [].
              Pcase: f3[1] <= 5.
                Reducible.
              Pcase: h[5] > 5.
                Hubcap T[1]<=1 T[2]<=3 T[7]<=3 T[8]<=3 T[3,4]<=6 T[5,6]<=4 [].
              Pcase: f1[4] <= 6.
                Reducible.
              Pcase: h[4] > 5.
                Hubcap T[1]<=1 T[2]<=3 T[3]<=3 T[5]<=1 T[7]<=3 T[8]<=3 T[4,6]<=6
                       [].
              Hubcap T[1]<=1 T[2]<=3 T[3]<=4 T[5]<=1 T[7]<=3 T[8]<=3 T[4,6]<=5 [].
            Pcase: s[3] > 6.
              Hubcap T[1]<=2 T[2]<=2 T[7]<=4 T[8]<=3 T[3,4]<=4 T[5,6]<=5 [].
            Pcase: h[3] > 5.
              Hubcap T[1]<=1 T[2]<=2 T[7]<=4 T[8]<=3 T[3,4]<=5 T[5,6]<=5 [].
            Pcase: f1[3] <= 5.
              Reducible.
            Pcase: h[4] > 6.
              Hubcap T[1]<=1 T[2]<=3 T[3]<=3 T[8]<=3 T[4,7]<=5 T[5,6]<=5 [].
            Pcase: h[4] <= 5.
              Hubcap T[1]<=1 T[2]<=3 T[3]<=4 T[8]<=3 T[4,7]<=5 T[5,6]<=4 [].
            Pcase: h[2] > 6.
              Hubcap T[1]<=0 T[2]<=3 T[8]<=3 T[5,6]<=5 T[3,4]<=6 T[3,7]<=6
                     T[4,7]<=7 [].
            Pcase: h[5] <= 5.
              Hubcap T[1]<=1 T[2]<=3 T[8]<=3 T[5,6]<=4 T[3,4]<=6 T[3,7]<=6
                     T[4,7]<=7 [].
            Pcase: s[4] > 6.
              Hubcap T[1]<=1 T[2]<=3 T[7]<=4 T[8]<=3 T[3,4]<=4 T[5,6]<=5 [].
            Hubcap T[1]<=1 T[2]<=3 T[3]<=3 T[5]<=2 T[7]<=4 T[8]<=3 T[4,6]<=4 [].
          Pcase: h[7] <= 5.
            Reducible.
          Pcase: h[1] <= 5.
            Reducible.
          Pcase: s[6] > 7.
            Hubcap T[3]<=4 T[6]<=0 T[7]<=4 T[8]<=4 T[1,2]<=3 T[4,5]<=5 [].
          Pcase: s[6] > 6.
            Pcase: s[3] > 6.
              Hubcap T[1]<=1 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=5 T[5,6]<=4 [].
            Pcase: s[4] > 6.
              Hubcap T[3]<=3 T[5]<=0 T[7]<=4 T[8]<=4 T[1,2]<=3 T[4,6]<=6 [].
            Pcase: s[5] > 6.
              Hubcap T[1]<=1 T[2]<=3 T[7]<=4 T[8]<=4 T[3,4]<=5 T[5,6]<=3 [].
            Pcase: h[3] > 5.
              Hubcap T[1]<=1 T[2]<=2 T[3]<=3 T[7]<=4 T[8]<=4 T[4,5]<=4 T[4,6]<=5
                     T[5,6]<=4 [].
            Pcase: f1[3] <= 5.
              Reducible.
            Pcase: h[4] > 6.
              Hubcap T[1]<=0 T[2]<=3 T[3]<=3 T[4]<=2 T[7]<=4 T[8]<=4 T[5,6]<=4 [].
            Pcase: h[5] > 6.
              Hubcap T[1]<=0 T[2]<=3 T[3]<=4 T[4]<=2 T[5]<=0 T[6]<=3 T[7]<=4
                     T[8]<=4 [].
            Pcase: h[5] > 5.
              Hubcap T[1]<=0 T[2]<=3 T[3]<=4 T[6]<=2 T[7]<=4 T[8]<=4 T[4,5]<=3 [].
            Pcase: h[4] <= 5.
              Hubcap T[1]<=0 T[2]<=3 T[3]<=4 T[5]<=1 T[7]<=4 T[8]<=4 T[4,6]<=4 [].
            Pcase: h[2] <= 5.
              Hubcap T[1]<=0 T[2]<=3 T[3]<=3 T[5]<=1 T[7]<=4 T[8]<=4 T[4,6]<=5 [].
            Pcase: h[6] > 6.
              Hubcap T[1]<=0 T[2]<=3 T[5]<=2 T[6]<=1 T[7]<=4 T[8]<=4 T[3,4]<=6 [].
            Pcase: h[6] <= 5.
              Hubcap T[1]<=0 T[2]<=3 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=4 T[3,4]<=5 [].
            Pcase: h[7] > 6.
              Hubcap T[1]<=0 T[2]<=3 T[5]<=2 T[6]<=1 T[7]<=4 T[8]<=4 T[3,4]<=6 [].
            Pcase: f1[3] > 6.
              Hubcap T[1]<=0 T[2]<=3 T[3]<=4 T[6]<=2 T[7]<=4 T[8]<=4 T[4,5]<=3 [].
            Hubcap T[1]<=0 T[2]<=3 T[3]<=2 T[4]<=4 T[5]<=1 T[6]<=2 T[7]<=4 T[8]<=4
                   [].
          Pcase: s[3] > 6.
            Hubcap T[1]<=1 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=4 T[5,6]<=5 [].
          Pcase: h[4] > 6.
            Hubcap T[3]<=3 T[4]<=1 T[7]<=4 T[8]<=4 T[1,2]<=3 T[5,6]<=5 [].
          Pcase: h[6] > 5.
            Pcase: s[4] > 6.
              Hubcap T[3]<=3 T[4]<=2 T[7]<=4 T[8]<=4 T[1,2]<=3 T[5,6]<=4 [].
            Pcase: s[5] > 6.
              Hubcap T[7]<=4 T[8]<=4 T[1,2]<=3 T[3,4]<=5 T[5,6]<=4 [].
            Pcase: h[2] > 5.
              Hubcap T[1]<=0 T[2]<=3 T[7]<=4 T[8]<=4 T[3,4]<=5 T[5,6]<=4 [].
            Pcase: h[3] > 5.
              Hubcap T[1]<=1 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=5 T[5,6]<=4 [].
            Pcase: f1[3] <= 5.
              Reducible.
            Pcase: f1[4] <= 5.
              Reducible.
            Pcase: h[5] > 5.
              Hubcap T[1]<=0 T[2]<=3 T[5]<=1 T[6]<=3 T[7]<=4 T[8]<=4 T[3,4]<=5 [].
            Hubcap T[1]<=0 T[2]<=3 T[7]<=4 T[8]<=4 T[3,4]<=6 T[5,6]<=3 [].
          Pcase: s[5] <= 6.
            Hubcap T[7]<=4 T[8]<=4 T[1,2]<=3 T[3,4]<=4 T[5,6]<=5 [].
          Pcase: s[1] > 8.
            Hubcap T[1]<=0 T[6]<=3 T[7]<=4 T[8]<=4 T[2,5]<=4 T[3,4]<=5 [].
          Pcase: s[4] > 6.
            Hubcap T[4]<=2 T[6]<=3 T[7]<=4 T[8]<=4 T[1,2]<=3 T[3,5]<=4 [].
          Hubcap T[6]<=3 T[7]<=4 T[8]<=4 T[1,2]<=3 T[3,4]<=5 T[3,5]<=5 T[4,5]<=3
                 [].
        Pcase: h[2] > 5.
          Pcase: s[3] > 7.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=0 T[4]<=2 T[7]<=4 T[8]<=4 T[5,6]<=5 [].
          Pcase: s[4] > 7.
            Hubcap T[3]<=2 T[4]<=0 T[7]<=4 T[8]<=4 T[1,2]<=5 T[5,6]<=5 [].
          Pcase: h[1] <= 5.
            Pcase: h[8] <= 6.
              Reducible.
            Pcase: s[4] > 6.
              Hubcap T[1]<=3 T[2]<=2 T[7]<=3 T[8]<=3 T[3,4]<=5 T[5,6]<=4 [].
            Pcase: s[5] > 6.
              Hubcap T[1]<=3 T[2]<=2 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[3,4]<=4 [].
            Pcase: s[6] > 7.
              Hubcap T[1]<=3 T[2]<=2 T[3]<=4 T[4]<=3 T[5]<=2 T[6]<=0 T[7]<=3
                     T[8]<=3 [].
            Pcase: s[6] <= 6.
              Hubcap T[1]<=3 T[2]<=2 T[7]<=3 T[8]<=3 T[3,4]<=5 T[5,6]<=4 [].
            Pcase: h[4] > 6.
              Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=2 T[7]<=3 T[8]<=3 T[5,6]<=5 [].
            Pcase: h[5] > 6.
              Hubcap T[1]<=3 T[2]<=2 T[5]<=0 T[6]<=4 T[7]<=3 T[8]<=3 T[3,4]<=4 [].
            Pcase: h[6] > 6.
              Hubcap T[1]<=3 T[2]<=2 T[5]<=2 T[6]<=2 T[7]<=3 T[8]<=3 T[3,4]<=5 [].
            Pcase: h[7] > 5.
              Hubcap T[1]<=3 T[2]<=2 T[5]<=2 T[6]<=2 T[7]<=3 T[8]<=3 T[3,4]<=5 [].
            Pcase: f1[4] > 5.
              Hubcap T[1]<=3 T[2]<=2 T[7]<=3 T[8]<=3 T[3,4]<=5 T[5,6]<=4 [].
            Hubcap T[1]<=3 T[2]<=2 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[3,4]<=4 [].
          Pcase: s[5] > 7.
            Hubcap T[5]<=0 T[6]<=3 T[7]<=4 T[8]<=4 T[1,2]<=4 T[3,4]<=5 [].
          Pcase: s[6] > 7.
            Hubcap T[5]<=2 T[6]<=0 T[7]<=4 T[8]<=4 T[1,2]<=4 T[3,4]<=6 [].
          Pcase: h[2] <= 6.
            Pcase: h[7] <= 5.
              Pcase: h[8] <= 6.
                Reducible.
              Pcase: s[3] <= 6.
                Hubcap T[1]<=1 T[2]<=2 T[7]<=4 T[8]<=3 T[3,4]<=5 T[5,6]<=5 [].
              Pcase: s[4] > 6.
                Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[8]<=3 T[4,7]<=5 T[5,6]<=5 [].
              Pcase: s[5] > 6.
                Hubcap T[1]<=2 T[2]<=2 T[3]<=4 T[4]<=0 T[5]<=2 T[6]<=3 T[7]<=4
                       T[8]<=3 [].
              Pcase: s[6] > 6.
                Hubcap T[1]<=2 T[2]<=2 T[7]<=3 T[8]<=3 T[3,4]<=5 T[5,6]<=5 [].
              Hubcap T[1]<=2 T[2]<=2 T[7]<=4 T[8]<=3 T[3,4]<=4 T[5,6]<=5 [].
            Pcase: s[5] > 6.
              Hubcap T[2]<=2 T[5]<=2 T[7]<=4 T[8]<=4 T[1,6]<=4 T[3,4]<=4 [].
            Pcase: h[8] > 5.
              Hubcap T[1]<=2 T[2]<=2 T[7]<=3 T[8]<=3 T[3,4]<=5 T[5,6]<=5 [].
            Pcase: h[4] > 6.
              Hubcap T[1]<=2 T[2]<=2 T[7]<=4 T[8]<=4 T[3,6]<=5 T[4,5]<=3 [].
            Pcase: h[6] > 6.
              Hubcap T[1]<=2 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=5 T[5,6]<=3 [].
            Pcase: h[3] <= 5.
              Pcase: s[3] <= 6.
                Reducible.
              Pcase: s[4] > 6.
                Hubcap T[1]<=2 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=4 T[5,6]<=4 [].
              Pcase: s[6] <= 6.
                Hubcap T[1]<=2 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=4 T[5,6]<=4 [].
              Pcase: h[4] > 5.
                Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[5]<=2 T[7]<=4 T[8]<=4 T[4,6]<=3
                       [].
              Pcase: h[5] > 5.
                Hubcap T[1]<=2 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=4 T[5,6]<=4 [].
              Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[4]<=2 T[5]<=1 T[6]<=2 T[7]<=4
                     T[8]<=4 [].
            Pcase: h[1] > 6.
              Pcase: s[3] > 6.
                Hubcap T[1]<=1 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=4 T[5,6]<=5 [].
              Pcase: s[4] > 6.
                Hubcap T[1]<=1 T[2]<=2 T[3]<=1 T[6]<=4 T[7]<=4 T[8]<=4 T[4,5]<=4
                       [].
              Pcase: s[6] > 6.
                Hubcap T[1]<=1 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=5 T[5,6]<=4 [].
              Pcase: h[3] > 6.
                Hubcap T[1]<=1 T[2]<=2 T[7]<=4 T[8]<=4 T[3,5]<=4 T[4,6]<=5 [].
              Hubcap T[1]<=1 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=4 T[5,6]<=5 [].
            Pcase: f2[1] <= 5.
              Reducible.
            Pcase: s[3] > 6.
              Hubcap T[1]<=2 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=4 T[5,6]<=4 [].
            Pcase: s[4] > 6.
              Hubcap T[1]<=2 T[2]<=2 T[3]<=1 T[6]<=3 T[7]<=4 T[8]<=4 T[4,5]<=4 [].
            Pcase: h[4] > 5.
              Hubcap T[1]<=2 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=4 T[5,6]<=4 [].
            Pcase: s[6] <= 6.
              Hubcap T[1]<=2 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=5 T[5,6]<=3 [].
            Pcase: h[5] > 6.
              Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[4]<=2 T[5]<=0 T[6]<=3 T[7]<=4
                     T[8]<=4 [].
            Pcase: h[5] <= 5.
              Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[4]<=3 T[5]<=1 T[6]<=2 T[7]<=4
                     T[8]<=4 [].
            Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[6]<=2 T[7]<=4 T[8]<=4 T[4,5]<=3 [].
          Pcase: h[7] <= 5.
            Pcase: h[8] <= 6.
              Reducible.
            Pcase: s[3] > 6.
              Hubcap T[1]<=1 T[2]<=2 T[3]<=4 T[8]<=3 T[4,7]<=5 T[5,6]<=5 [].
            Pcase: s[5] > 6.
              Hubcap T[1]<=1 T[2]<=3 T[5]<=2 T[8]<=3 T[3,4]<=5 T[6,7]<=6 [].
            Pcase: s[6] <= 6.
              Hubcap T[1]<=1 T[2]<=3 T[4]<=2 T[7]<=4 T[8]<=3 T[3,5]<=4 T[3,6]<=6
                     T[5,6]<=5 [].
            Pcase: s[4] > 6.
              Hubcap T[1]<=1 T[2]<=3 T[3]<=2 T[4]<=4 T[5]<=0 T[6]<=4 T[7]<=3
                     T[8]<=3 [].
            Pcase: h[3] > 5.
              Hubcap T[1]<=1 T[2]<=2 T[3]<=3 T[4]<=3 T[7]<=3 T[8]<=3 T[5,6]<=5 [].
            Pcase: f1[3] <= 5.
              Reducible.
            Pcase: h[4] > 6.
              Hubcap T[1]<=1 T[2]<=3 T[3]<=2 T[4]<=2 T[5]<=2 T[6]<=4 T[7]<=3
                     T[8]<=3 [].
            Pcase: h[5] > 5.
              Hubcap T[1]<=1 T[2]<=3 T[7]<=3 T[8]<=3 T[3,4]<=5 T[5,6]<=5 [].
            Pcase: h[4] <= 5.
              Hubcap T[1]<=1 T[2]<=3 T[3]<=3 T[4]<=3 T[5]<=1 T[6]<=3 T[7]<=3
                     T[8]<=3 [].
            Pcase: h[6] > 6.
              Hubcap T[1]<=1 T[2]<=3 T[5]<=2 T[6]<=2 T[7]<=3 T[8]<=3 T[3,4]<=6 [].
            Pcase: h[6] <= 5.
              Hubcap T[1]<=1 T[2]<=3 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[3,4]<=5 [].
            Pcase: h[1] > 6.
              Hubcap T[1]<=0 T[2]<=3 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[3,4]<=6 [].
            Pcase: f1[1] > 5.
              Hubcap T[1]<=0 T[2]<=3 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[3,4]<=6 [].
            Pcase: f2[1] <= 5.
              Reducible.
            Pcase: f1[3] > 6.
              Hubcap T[1]<=1 T[2]<=3 T[3]<=4 T[6]<=3 T[7]<=3 T[8]<=3 T[4,5]<=3 [].
            Hubcap T[1]<=1 T[2]<=3 T[3]<=2 T[4]<=4 T[5]<=1 T[6]<=3 T[7]<=3 T[8]<=3
                   [].
          Pcase: h[8] > 6.
            Hubcap T[1]<=1 T[2]<=3 T[7]<=3 T[8]<=3 T[3,4]<=6 T[5,6]<=4 [].
          Pcase: f2[1] <= 5.
            Pcase: h[4] > 6.
              Hubcap T[3]<=2 T[4]<=2 T[7]<=4 T[8]<=4 T[1,2]<=3 T[5,6]<=5 [].
            Pcase: h[8] > 5.
              Hubcap T[1]<=0 T[2]<=3 T[7]<=3 T[8]<=3 T[3,4]<=6 T[5,6]<=5 [].
            Pcase: s[6] > 6.
              Pcase: s[3] > 6.
                Hubcap T[1]<=1 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=5 T[5,6]<=4 [].
              Pcase: s[4] > 6.
                Hubcap T[1]<=1 T[2]<=3 T[3]<=2 T[5]<=0 T[7]<=4 T[8]<=4 T[4,6]<=6
                       [].
              Pcase: s[5] > 6.
                Hubcap T[1]<=1 T[2]<=3 T[7]<=4 T[8]<=4 T[3,4]<=5 T[5,6]<=3 [].
              Pcase: h[3] > 5.
                Hubcap T[1]<=1 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=5 T[5,6]<=4 [].
              Pcase: h[1] <= 6.
                Reducible.
              Pcase: f1[3] <= 5.
                Reducible.
              Pcase: h[5] > 5.
                Hubcap T[1]<=0 T[2]<=3 T[7]<=4 T[8]<=4 T[3,4]<=5 T[5,6]<=4 [].
              Pcase: h[4] <= 5.
                Hubcap T[1]<=0 T[2]<=3 T[3]<=3 T[4]<=3 T[5]<=1 T[6]<=2 T[7]<=4
                       T[8]<=4 [].
              Pcase: h[6] > 6.
                Hubcap T[1]<=0 T[2]<=3 T[5]<=2 T[6]<=1 T[7]<=4 T[8]<=4 T[3,4]<=6
                       [].
              Pcase: h[6] <= 5.
                Hubcap T[1]<=0 T[2]<=3 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=4 T[3,4]<=5
                       [].
              Pcase: h[7] > 6.
                Hubcap T[1]<=0 T[2]<=3 T[5]<=2 T[6]<=1 T[7]<=4 T[8]<=4 T[3,4]<=6
                       [].
              Pcase: f1[3] > 6.
                Hubcap T[1]<=0 T[2]<=3 T[3]<=4 T[6]<=2 T[7]<=4 T[8]<=4 T[4,5]<=3
                       [].
              Hubcap T[1]<=0 T[2]<=3 T[3]<=2 T[4]<=4 T[5]<=1 T[6]<=2 T[7]<=4
                     T[8]<=4 [].
            Pcase: s[3] > 6.
              Hubcap T[1]<=1 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=4 T[5,6]<=5 [].
            Pcase: s[4] > 6.
              Hubcap T[3]<=2 T[4]<=2 T[7]<=4 T[8]<=4 T[1,2]<=3 T[5,6]<=5 [].
            Pcase: h[5] <= 5.
              Hubcap T[7]<=4 T[8]<=4 T[1,2]<=3 T[3,4]<=5 T[5,6]<=4 [].
            Pcase: h[3] > 5.
              Hubcap T[1]<=1 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=4 T[5,6]<=5 [].
            Pcase: h[1] <= 6.
              Reducible.
            Pcase: f1[3] <= 5.
              Reducible.
            Pcase: s[5] > 6.
              Hubcap T[1]<=0 T[2]<=3 T[7]<=4 T[8]<=4 T[3,4]<=5 T[5,6]<=4 [].
            Pcase: h[4] > 5.
              Hubcap T[1]<=0 T[2]<=3 T[3]<=2 T[4]<=2 T[7]<=4 T[8]<=4 T[5,6]<=5 [].
            Hubcap T[1]<=0 T[2]<=3 T[3]<=4 T[4]<=1 T[5]<=1 T[6]<=3 T[7]<=4 T[8]<=4
                   [].
          Pcase: s[5] > 6.
            Pcase: s[3] > 6.
              Hubcap T[2]<=2 T[3]<=4 T[4]<=0 T[5]<=2 T[7]<=4 T[8]<=4 T[1,6]<=3 [].
            Pcase: s[4] > 6.
              Hubcap T[2]<=3 T[3]<=2 T[4]<=2 T[5]<=2 T[7]<=4 T[8]<=4 T[1,6]<=3 [].
            Pcase: s[6] > 6.
              Hubcap T[7]<=4 T[8]<=4 T[1,2]<=4 T[3,4]<=5 T[5,6]<=3 [].
            Pcase: h[3] > 5.
              Hubcap T[2]<=2 T[3]<=3 T[4]<=2 T[5]<=2 T[7]<=4 T[8]<=4 T[1,6]<=3 [].
            Hubcap T[2]<=3 T[8]<=4 T[1,7]<=4 T[3,4]<=5 T[5,6]<=4 [].
          Pcase: f1[5] <= 5.
            Pcase: s[6] > 6.
              Pcase: s[3] > 6.
                Hubcap T[1]<=2 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=5 T[5,6]<=3 [].
              Pcase: s[4] > 6.
                Hubcap T[1]<=2 T[2]<=3 T[3]<=2 T[5]<=0 T[7]<=4 T[8]<=4 T[4,6]<=5
                       [].
              Pcase: h[3] > 5.
                Hubcap T[1]<=2 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=5 T[5,6]<=3 [].
              Hubcap T[2]<=3 T[8]<=4 T[1,7]<=4 T[3,4]<=6 T[5,6]<=3 [].
            Pcase: s[3] > 6.
              Hubcap T[1]<=2 T[2]<=2 T[5]<=1 T[8]<=4 T[3,4]<=4 T[6,7]<=7 [].
            Hubcap T[8]<=4 T[1,2]<=4 T[6,7]<=7 T[3,4]<=5 T[3,5]<=4 T[4,5]<=2 [].
          Pcase: s[3] > 6.
            Hubcap T[2]<=2 T[8]<=4 T[1,6]<=4 T[3,4]<=4 T[5,7]<=6 [].
          Pcase: h[3] > 5.
            Pcase: h[4] > 6.
              Hubcap T[1]<=2 T[2]<=2 T[3]<=1 T[4]<=2 T[7]<=4 T[8]<=4 T[5,6]<=5 [].
            Pcase: h[5] > 6.
              Hubcap T[2]<=2 T[3]<=3 T[7]<=4 T[8]<=4 T[1,6]<=4 T[4,5]<=3 [].
            Pcase: h[6] > 6.
              Hubcap T[1]<=2 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=5 T[5,6]<=3 [].
            Pcase: h[8] > 5.
              Hubcap T[1]<=1 T[2]<=2 T[3]<=3 T[4]<=4 T[7]<=3 T[8]<=3 T[5,6]<=4 [].
            Pcase: s[4] > 6.
              Hubcap T[2]<=2 T[3]<=1 T[7]<=4 T[8]<=4 T[1,6]<=4 T[4,5]<=4 [].
            Pcase: h[3] <= 6.
              Hubcap T[2]<=2 T[5]<=2 T[7]<=4 T[8]<=4 T[1,6]<=4 T[3,4]<=4 [].
            Pcase: h[4] > 5.
              Hubcap T[2]<=2 T[5]<=2 T[7]<=4 T[8]<=4 T[1,6]<=4 T[3,4]<=4 [].
            Pcase: h[5] > 5.
              Hubcap T[1]<=2 T[2]<=2 T[7]<=4 T[8]<=4 T[3,6]<=5 T[4,5]<=3 [].
            Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[4]<=3 T[7]<=4 T[8]<=4 T[5,6]<=3 [].
          Pcase: f1[3] <= 5.
            Reducible.
          Pcase: h[4] > 6.
            Hubcap T[2]<=3 T[3]<=2 T[4]<=2 T[8]<=4 T[1,7]<=4 T[5,6]<=5 [].
          Pcase: h[6] > 6.
            Hubcap T[2]<=3 T[8]<=4 T[1,7]<=4 T[3,4]<=6 T[5,6]<=3 [].
          Pcase: h[8] > 5.
            Hubcap T[1]<=1 T[2]<=3 T[7]<=3 T[8]<=3 T[3,4]<=6 T[5,6]<=4 [].
          Pcase: h[1] <= 6.
            Reducible.
          Pcase: s[4] > 6.
            Hubcap T[1]<=0 T[2]<=3 T[3]<=2 T[7]<=4 T[8]<=4 T[4,5]<=4 T[4,6]<=6
                   T[5,6]<=5 [].
          Pcase: s[6] > 6.
            Hubcap T[1]<=0 T[2]<=3 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=4 T[3,4]<=5 [].
          Pcase: h[4] <= 5.
            Hubcap T[1]<=0 T[2]<=3 T[7]<=4 T[8]<=4 T[3,4]<=5 T[5,6]<=4 [].
          Pcase: f1[4] <= 5.
            Reducible.
          Pcase: h[5] > 5.
            Hubcap T[1]<=0 T[2]<=3 T[3]<=2 T[4]<=2 T[7]<=4 T[8]<=4 T[5,6]<=5 [].
          Hubcap T[1]<=0 T[2]<=3 T[3]<=3 T[4]<=3 T[7]<=4 T[8]<=4 T[5,6]<=3 [].
        Pcase: s[4] > 7.
          Hubcap T[1]<=4 T[2]<=2 T[3]<=2 T[4]<=0 T[7]<=4 T[8]<=4 T[5,6]<=4 [].
        Pcase: s[5] > 7.
          Hubcap T[1]<=4 T[2]<=2 T[5]<=0 T[6]<=2 T[7]<=4 T[8]<=4 T[3,4]<=4 [].
        Pcase: s[4] > 6.
          Pcase: s[3] > 7.
            Hubcap T[1]<=4 T[2]<=2 T[3]<=0 T[4]<=2 T[7]<=4 T[8]<=4 T[5,6]<=4 [].
          Pcase: s[6] > 7.
            Hubcap T[1]<=4 T[2]<=2 T[5]<=0 T[6]<=0 T[7]<=4 T[8]<=4 T[3,4]<=5 [].
          Pcase: h[6] > 6.
            Hubcap T[1]<=4 T[2]<=2 T[5]<=0 T[7]<=4 T[3,4]<=5 T[6,8]<=5 [].
          Pcase: h[1] <= 5.
            Hubcap T[1]<=4 T[2]<=2 T[7]<=3 T[8]<=3 T[3,4]<=5 T[5,6]<=3 [].
          Pcase: h[8] > 5.
            Pcase: s[3] > 6.
              Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[8]<=3 T[4,7]<=5 T[5,6]<=4 [].
            Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[8]<=3 T[4,7]<=7 T[5,6]<=4 [].
          Pcase: h[7] <= 5.
            Reducible.
          Pcase: s[3] > 6.
            Hubcap T[2]<=2 T[7]<=4 T[8]<=4 T[1,3]<=6 T[4,5]<=2 T[4,6]<=4 T[5,6]<=3
                   [].
          Pcase: h[3] <= 6.
            Reducible.
          Pcase: s[5] > 6.
            Hubcap T[1]<=4 T[2]<=2 T[3]<=1 T[4]<=2 T[7]<=4 T[8]<=4 T[5,6]<=3 [].
          Pcase: h[6] <= 5.
            Reducible.
          Pcase: s[6] > 6.
            Hubcap T[2]<=2 T[3]<=1 T[4]<=4 T[5]<=0 T[7]<=4 T[8]<=4 T[1,6]<=5 [].
          Hubcap T[1]<=4 T[2]<=2 T[3]<=1 T[4]<=2 T[7]<=4 T[8]<=4 T[5,6]<=3 [].
        Pcase: s[6] > 7.
          Hubcap T[1]<=4 T[2]<=2 T[6]<=0 T[7]<=4 T[8]<=4 T[3,4]<=5 T[3,5]<=5
                 T[4,5]<=3 [].
        Pcase: s[3] > 7.
          Hubcap T[1]<=4 T[2]<=2 T[3]<=0 T[4]<=2 T[5,7]<=6 T[6,8]<=6 [].
        Pcase: s[6] > 6.
          Pcase: h[5] > 6.
            Hubcap T[1]<=4 T[2]<=2 T[5]<=0 T[8]<=4 T[3,4]<=4 T[6,7]<=6 [].
          Pcase: h[8] > 5.
            Pcase: s[3] <= 6.
              Hubcap T[1]<=4 T[2]<=2 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[3,4]<=3 [].
            Pcase: s[5] > 6.
              Hubcap T[1]<=4 T[2]<=2 T[3]<=4 T[4]<=0 T[7]<=3 T[8]<=3 T[5,6]<=4 [].
            Pcase: h[6] <= 5.
              Reducible.
            Pcase: h[4] > 5.
              Hubcap T[1]<=4 T[2]<=2 T[7]<=3 T[8]<=3 T[3,5]<=4 T[4,6]<=4 [].
            Pcase: h[5] > 5.
              Hubcap T[1]<=4 T[2]<=2 T[7]<=3 T[8]<=3 T[3,5]<=5 T[4,6]<=3 [].
            Hubcap T[1]<=4 T[2]<=2 T[3]<=3 T[5]<=1 T[7]<=3 T[8]<=3 T[4,6]<=4 [].
          Pcase: h[7] <= 5.
            Reducible.
          Pcase: h[1] <= 5.
            Reducible.
          Pcase: s[3] <= 6.
            Hubcap T[1]<=4 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=3 T[5,6]<=3 [].
          Pcase: s[5] > 6.
            Hubcap T[2]<=2 T[4]<=0 T[7]<=4 T[8]<=4 T[1,3]<=7 T[5,6]<=3 [].
          Pcase: h[6] <= 5.
            Reducible.
          Pcase: h[4] > 5.
            Hubcap T[2]<=2 T[7]<=4 T[8]<=4 T[1,3]<=6 T[1,6]<=5 T[3,5]<=4 T[4,5]<=3
                   T[4,6]<=3 [].
          Pcase: h[5] > 5.
            Hubcap T[2]<=2 T[7]<=4 T[8]<=4 T[1,6]<=5 T[3,4]<=4 T[3,5]<=5 T[4,5]<=2
                   [].
          Hubcap T[2]<=2 T[5]<=1 T[7]<=4 T[8]<=4 T[1,3]<=6 T[4,6]<=3 [].
        Pcase: s[3] <= 6.
          Hubcap T[1]<=4 T[2]<=2 T[5]<=2 T[7]<=4 T[3,4]<=3 T[6,8]<=5 [].
        Pcase: h[7] <= 5.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=4 T[4]<=0 T[7]<=4 T[8]<=3 T[5,6]<=4 [].
        Pcase: h[8] > 6.
          Hubcap T[1]<=4 T[2]<=2 T[7]<=3 T[8]<=3 T[3,4]<=4 T[5,6]<=4 [].
        Pcase: h[1] <= 5.
          Reducible.
        Pcase: s[5] > 6.
          Hubcap T[2]<=2 T[4]<=0 T[5]<=2 T[8]<=4 T[1,3]<=7 T[6,7]<=5 [].
        Pcase: h[6] <= 5.
          Reducible.
        Pcase: h[4] > 6.
          Hubcap T[2]<=2 T[4]<=1 T[1,3]<=5 T[5,7]<=6 T[6,8]<=6 [].
        Pcase: h[5] > 5.
          Hubcap T[2]<=2 T[4]<=0 T[5]<=1 T[8]<=4 T[1,3]<=7 T[6,7]<=6 [].
        Pcase: f1[5] <= 5.
          Reducible.
        Pcase: h[6] > 6.
          Hubcap T[1]<=4 T[2]<=2 T[4]<=1 T[8]<=4 T[3,5]<=4 T[6,7]<=5 [].
        Pcase: h[7] <= 6.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[4]<=1 T[7]<=3 T[8]<=3 T[5,6]<=5 [].
        Pcase: h[4] <= 5.
          Hubcap T[2]<=2 T[4]<=1 T[7]<=4 T[8]<=4 T[1,3]<=6 T[5,6]<=3 [].
        Pcase: h[3] > 5.
          Hubcap T[1]<=4 T[2]<=2 T[3]<=1 T[4]<=1 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=4
                 [].
        Pcase: h[8] > 5.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[4]<=1 T[5]<=2 T[6]<=2 T[7]<=3 T[8]<=3
                 [].
        Pcase: f1[1] <= 5.
          Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[4]<=1 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=4
                 [].
        Pcase: f1[3] > 5.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=1 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=4
                 [].
        Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[4]<=1 T[7]<=4 T[8]<=4 T[5,6]<=3 [].
      Pcase L3_1: s[3] > 6.
        Pcase: s[4] > 6.
          Pcase: h[8] > 5.
            Pcase: s[3] > 7.
              Hubcap T[3]<=0 T[1,6]<=7 T[7,8]<=7 T[2,4]<=4 T[2,5]<=5 T[4,5]<=4 [].
            Pcase: s[4] > 7.
              Hubcap T[4]<=0 T[1,6]<=7 T[7,8]<=7 T[2,3]<=4 T[2,5]<=5 T[3,5]<=4 [].
            Pcase: h[4] <= 5.
              Pcase: s[1] <= 6.
                Reducible.
              Pcase: s[6] <= 6.
                Reducible.
              Pcase: s[1] > 7.
                Hubcap T[1]<=2 T[2]<=2 T[5]<=2 T[6]<=4 T[7]<=3 T[8]<=3 T[3,4]<=4
                       [].
              Pcase: s[6] > 7.
                Hubcap T[1]<=4 T[2]<=2 T[5]<=2 T[6]<=2 T[7]<=3 T[8]<=3 T[3,4]<=4
                       [].
              Pcase: h[2] <= 5.
                Hubcap T[1]<=4 T[2]<=2 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[3,4]<=3
                       [].
              Pcase: h[3] > 5.
                Hubcap T[1]<=3 T[2]<=2 T[5]<=2 T[6]<=4 T[7]<=3 T[8]<=3 T[3,4]<=3
                       [].
              Pcase: h[2] <= 6.
                Hubcap T[2]<=2 T[5]<=2 T[7]<=3 T[8]<=3 T[1,6]<=6 T[3,4]<=4 [].
              Pcase: h[5] > 5.
                Hubcap T[1]<=3 T[2]<=2 T[5]<=2 T[6]<=4 T[7]<=3 T[8]<=3 T[3,4]<=3
                       [].
              Hubcap T[1]<=3 T[2]<=2 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[3,4]<=4 [].
            Pcase: s[6] > 7.
              Hubcap T[5]<=2 T[7]<=3 T[1,6]<=6 T[2,3]<=4 T[4,8]<=5 [].
            Pcase: s[1] > 7.
              Hubcap T[2]<=2 T[8]<=3 T[1,6]<=6 T[3,5]<=4 T[4,7]<=5 [].
            Pcase L6_1: s[1] > 6.
              Pcase: h[2] <= 5.
                Hubcap T[1]<=4 T[2]<=2 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[3,4]<=3
                       [].
              Pcase: h[3] > 6.
                Hubcap T[2]<=2 T[3]<=0 T[7]<=4 T[8]<=3 T[1,6]<=7 T[4,5]<=4 [].
              Pcase: h[3] <= 5.
                Hubcap T[2]<=2 T[8]<=3 T[1,7]<=6 T[3,5]<=4 T[4,6]<=5 [].
              Pcase: s[6] > 6.
                Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[4]<=2 T[5]<=2 T[6]<=4 T[7]<=3
                       T[8]<=3 [].
              Pcase: h[2] > 6.
                Hubcap T[2]<=2 T[3]<=1 T[4]<=1 T[5]<=3 T[7]<=4 T[8]<=3 T[1,6]<=6
                       [].
              Pcase: h[5] > 5.
                Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[4]<=0 T[5]<=3 T[6]<=4 T[7]<=4
                       T[8]<=3 [].
              Pcase: f2[4] <= 5.
                Reducible.
              Pcase: h[6] > 5.
                Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[4]<=1 T[5]<=2 T[6]<=4 T[7]<=4
                       T[8]<=3 [].
              Pcase: f1[6] <= 5.
                Reducible.
              Pcase: h[7] > 5.
                Hubcap T[2]<=2 T[3]<=1 T[4]<=1 T[5]<=3 T[7]<=3 T[8]<=3 T[1,6]<=7
                       [].
              Hubcap T[1]<=1 T[2]<=2 T[3]<=1 T[4]<=1 T[5]<=3 T[6]<=5 T[7]<=4
                     T[8]<=3 [].
            Pcase: s[6] > 6.
              Similar to *L6_1[2].
            Reducible.
          Pcase: h[7] <= 5.
            Reducible.
          Pcase: h[1] <= 5.
            Reducible.
          Pcase: s[3] > 7.
            Hubcap T[3]<=0 T[7]<=4 T[8]<=4 T[1,6]<=6 T[2,4]<=4 T[2,5]<=5 T[4,5]<=4
                   [].
          Pcase: s[4] > 7.
            Hubcap T[4]<=0 T[7]<=4 T[8]<=4 T[1,6]<=6 T[2,3]<=4 T[2,5]<=5 T[3,5]<=4
                   [].
          Pcase: h[4] <= 5.
            Pcase: s[1] <= 6.
              Reducible.
            Pcase: s[6] <= 6.
              Reducible.
            Pcase: s[1] > 8.
              Hubcap T[1]<=0 T[2]<=2 T[5]<=2 T[6]<=4 T[7]<=4 T[8]<=4 T[3,4]<=4 [].
            Pcase: s[6] > 8.
              Hubcap T[1]<=4 T[2]<=2 T[5]<=2 T[6]<=0 T[7]<=4 T[8]<=4 T[3,4]<=4 [].
            Pcase: h[3] > 5.
              Hubcap T[2]<=2 T[5]<=2 T[7]<=4 T[8]<=4 T[1,6]<=5 T[3,4]<=3 [].
            Pcase: s[6] > 7.
              Hubcap T[1]<=3 T[2]<=2 T[5]<=2 T[6]<=1 T[7]<=4 T[8]<=4 T[3,4]<=4 [].
            Pcase: h[5] > 5.
              Hubcap T[2]<=2 T[5]<=2 T[7]<=4 T[8]<=4 T[1,6]<=5 T[3,4]<=3 [].
            Hubcap T[1]<=2 T[2]<=2 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=4 T[3,4]<=4 [].
          Pcase: s[6] > 7.
            Hubcap T[5]<=2 T[6]<=1 T[7]<=4 T[8]<=4 T[1,3]<=5 T[2,4]<=4 [].
          Pcase: s[1] > 7.
            Hubcap T[1]<=1 T[2]<=2 T[7]<=4 T[8]<=4 T[3,5]<=4 T[4,6]<=5 [].
          Pcase: h[3] > 6.
            Hubcap T[3]<=0 T[7]<=4 T[8]<=4 T[1,6]<=6 T[2,4]<=4 T[2,5]<=5 T[4,5]<=4
                   [].
          Pcase: h[5] > 6.
            Hubcap T[4]<=0 T[7]<=4 T[8]<=4 T[1,6]<=6 T[2,3]<=4 T[2,5]<=5 T[3,5]<=4
                   [].
          Pcase L5_1: h[3] > 5.
            Pcase: s[1] <= 6.
              Hubcap T[2]<=3 T[3]<=0 T[4]<=1 T[5]<=2 T[7]<=4 T[8]<=4 T[1,6]<=6 [].
            Pcase: s[6] > 6.
              Hubcap T[2]<=2 T[3]<=1 T[4]<=2 T[5]<=2 T[7]<=4 T[8]<=4 T[1,6]<=5 [].
            Hubcap T[1]<=1 T[2]<=2 T[3]<=1 T[5]<=3 T[7]<=4 T[8]<=4 T[4,6]<=5 [].
          Pcase: h[5] > 5.
            Similar to *L5_1[2].
          Pcase: h[2] <= 5.
            Reducible.
          Pcase: h[6] <= 5.
            Reducible.
          Pcase: s[6] <= 6.
            Hubcap T[1]<=2 T[2]<=2 T[3]<=1 T[4]<=1 T[5]<=2 T[6]<=4 T[7]<=4 T[8]<=4
                   [].
          Pcase: s[1] > 6.
            Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[4]<=2 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=4
                   [].
          Hubcap T[1]<=4 T[2]<=2 T[3]<=1 T[4]<=1 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=4
                 [].
        Pcase: s[6] <= 6.
          Pcase: s[1] <= 6.
            Reducible.
          Pcase: h[5] <= 5.
            Reducible.
          Pcase: s[1] > 8.
            Hubcap T[1]<=0 T[2]<=2 T[4]<=1 T[5]<=3 T[7]<=4 T[8]<=4 T[3,6]<=6 [].
          Pcase: s[3] > 7.
            Hubcap T[2]<=2 T[3]<=0 T[4]<=1 T[5]<=3 T[7]<=4 T[8]<=4 T[1,6]<=6 [].
          Pcase: h[3] <= 5.
            Hubcap T[2]<=2 T[4]<=1 T[5]<=2 T[7]<=4 T[1,6]<=5 T[3,8]<=6 [].
          Pcase: s[1] > 7.
            Hubcap T[1]<=1 T[2]<=2 T[4]<=1 T[5]<=3 T[7]<=4 T[8]<=4 T[3,6]<=5 [].
          Pcase: h[2] <= 5.
            Reducible.
          Pcase: h[2] > 6.
            Hubcap T[2]<=2 T[4]<=1 T[7]<=4 T[8]<=4 T[1,6]<=5 T[3,5]<=4 [].
          Pcase: h[4] > 5.
            Hubcap T[2]<=2 T[4]<=1 T[7]<=4 T[8]<=4 T[1,6]<=6 T[3,5]<=3 [].
          Hubcap T[1]<=1 T[2]<=2 T[3]<=2 T[4]<=1 T[5]<=2 T[6]<=3 T[7]<=4 T[8]<=3
                 [].
        Pcase: h[5] > 6.
          Pcase: s[1] > 8.
            Hubcap T[1]<=0 T[2]<=2 T[4]<=1 T[5]<=2 T[7]<=4 T[8]<=4 T[3,6]<=7 [].
          Pcase: s[6] > 8.
            Hubcap T[2]<=3 T[4]<=1 T[5]<=2 T[6]<=0 T[7]<=4 T[8]<=4 T[1,3]<=6 [].
          Pcase: h[8] > 5.
            Pcase: s[1] > 7.
              Hubcap T[1]<=2 T[2]<=2 T[4]<=1 T[5]<=2 T[7]<=3 T[8]<=3 T[3,6]<=7 [].
            Pcase: s[3] > 7.
              Hubcap T[2]<=3 T[3]<=0 T[4]<=1 T[5]<=2 T[7]<=3 T[8]<=4 T[1,6]<=7 [].
            Pcase: s[6] > 7.
              Hubcap T[2]<=3 T[4]<=1 T[5]<=2 T[6]<=1 T[7]<=3 T[8]<=4 T[1,3]<=6 [].
            Pcase: s[1] <= 6.
              Hubcap T[1]<=4 T[4]<=1 T[5]<=2 T[7]<=3 T[2,3]<=4 T[6,8]<=6 [].
            Pcase: h[2] <= 5.
              Hubcap T[2]<=2 T[4]<=1 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[1,3]<=6 [].
            Pcase: h[3] > 5.
              Hubcap T[2]<=2 T[4]<=1 T[5]<=2 T[6]<=4 T[7]<=3 T[8]<=3 T[1,3]<=4 [].
            Hubcap T[2]<=2 T[4]<=1 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[1,3]<=6 [].
          Pcase: h[7] <= 5.
            Reducible.
          Pcase: h[1] <= 5.
            Reducible.
          Pcase: s[1] > 6.
            Hubcap T[2]<=2 T[4]<=1 T[5]<=2 T[7]<=4 T[8]<=4 T[1,3]<=5 T[1,6]<=5
                   T[3,6]<=5 [].
          Hubcap T[1]<=5 T[4]<=1 T[5]<=2 T[6]<=1 T[7]<=4 T[8]<=4 T[2,3]<=3 [].
        Pcase: f1[4] <= 5.
          Reducible.
        Pcase: s[1] > 8.
          Hubcap T[1]<=0 T[2]<=2 T[3]<=3 T[5]<=3 T[7]<=4 T[8]<=4 T[4,6]<=4 [].
        Pcase: h[8] <= 5.
          Pcase: h[7] <= 5.
            Reducible.
          Pcase: h[1] <= 5.
            Reducible.
          Pcase: s[1] > 7.
            Hubcap T[1]<=1 T[2]<=2 T[3]<=3 T[5]<=3 T[7]<=4 T[8]<=4 T[4,6]<=3 [].
          Pcase: s[1] <= 6.
            Hubcap T[1]<=5 T[5]<=2 T[7]<=4 T[8]<=4 T[2,3]<=3 T[4,6]<=2 [].
          Pcase: s[3] > 7.
            Hubcap T[1]<=4 T[2]<=2 T[3]<=0 T[5]<=3 T[7]<=4 T[8]<=4 T[4,6]<=3 [].
          Pcase: h[4] <= 5.
            Reducible.
          Pcase: h[2] <= 5.
            Hubcap T[1]<=4 T[2]<=2 T[3]<=0 T[5]<=3 T[7]<=4 T[8]<=4 T[4,6]<=3 [].
          Pcase: s[6] > 7.
            Hubcap T[1]<=2 T[2]<=2 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4 T[3,4]<=5 [].
          Pcase: h[6] <= 5.
            Reducible.
          Pcase: h[3] > 5.
            Hubcap T[1]<=2 T[2]<=2 T[3]<=1 T[4]<=2 T[5]<=3 T[6]<=2 T[7]<=4 T[8]<=4
                   [].
          Pcase: h[4] > 6.
            Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[4]<=2 T[7]<=4 T[8]<=4 T[5,6]<=4 [].
          Pcase: f2[3] <= 5.
            Reducible.
          Pcase: h[5] > 5.
            Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[4]<=1 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=4
                   [].
          Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[4]<=2 T[5]<=3 T[6]<=0 T[7]<=4 T[8]<=4
                 [].
        Pcase: s[6] > 8.
          Hubcap T[6]<=0 T[7]<=3 T[1,3]<=6 T[2,4]<=5 T[5,8]<=6 [].
        Pcase: s[1] > 7.
          Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[5]<=3 T[7]<=3 T[8]<=3 T[4,6]<=4 [].
        Pcase: s[6] > 7.
          Pcase: s[3] > 7.
            Hubcap T[1]<=5 T[3]<=0 T[6]<=1 T[7]<=3 T[2,4]<=5 T[5,8]<=6 [].
          Pcase: s[1] <= 6.
            Hubcap T[1]<=4 T[4]<=2 T[5]<=2 T[6]<=1 T[7]<=3 T[8]<=4 T[2,3]<=4 [].
          Pcase: h[2] <= 5.
            Hubcap T[2]<=2 T[4]<=3 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3 T[1,3]<=5 [].
          Pcase: h[3] > 5.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=3 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3
                   [].
          Pcase: h[4] > 5.
            Hubcap T[1]<=3 T[2]<=2 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3 T[3,4]<=5 [].
          Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[4]<=3 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3
                 [].
        Pcase: h[6] <= 5.
          Reducible.
        Pcase: s[3] > 7.
          Hubcap T[3]<=0 T[7]<=3 T[1,4]<=6 T[2,5]<=5 T[6,8]<=6 [].
        Pcase: s[1] <= 6.
          Hubcap T[1]<=4 T[4]<=1 T[5]<=2 T[7]<=3 T[2,3]<=4 T[6,8]<=6 [].
        Pcase: h[2] <= 5.
          Hubcap T[2]<=2 T[4]<=2 T[7]<=3 T[8]<=3 T[1,3]<=5 T[5,6]<=5 [].
        Pcase: h[3] > 5.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=2 T[7]<=3 T[8]<=3 T[5,6]<=5 [].
        Pcase: h[4] > 6.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=2 T[7]<=3 T[8]<=3 T[5,6]<=5 [].
        Pcase: h[4] <= 5.
          Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[4]<=2 T[7]<=3 T[8]<=3 T[5,6]<=5 [].
        Pcase: h[5] > 5.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[4]<=1 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3
                 [].
        Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[4]<=2 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3 [].
      Pcase: s[4] > 6.
        Similar to *L3_1[2].
      Pcase: s[1] <= 6.
        Reducible.
      Pcase: s[6] <= 6.
        Reducible.
      Pcase L3_2: h[3] > 5.
        Pcase: h[1] <= 5.
          Hubcap T[1]<=0 T[2]<=2 T[3]<=4 T[5]<=3 T[7]<=3 T[8]<=3 T[4,6]<=5 [].
        Pcase L4_1: h[5] > 6.
          Pcase: s[1] > 8.
            Hubcap T[1]<=0 T[2]<=2 T[5]<=2 T[7]<=4 T[8]<=4 T[3,4]<=5 T[3,6]<=6
                   T[4,6]<=6 [].
          Pcase: s[6] > 8.
            Hubcap T[2]<=2 T[5]<=2 T[6]<=0 T[7]<=4 T[8]<=4 T[1,3]<=6 T[1,4]<=6
                   T[3,4]<=5 [].
          Pcase: h[4] > 6.
            Hubcap T[2]<=2 T[3]<=2 T[4]<=1 T[5]<=2 T[7]<=4 T[8]<=4 T[1,6]<=5 [].
          Pcase: h[4] <= 5.
            Hubcap T[2]<=2 T[5]<=2 T[7]<=4 T[8]<=4 T[1,6]<=3 T[3,4]<=5 [].
          Pcase: s[1] <= 7.
            Hubcap T[2]<=2 T[5]<=2 T[7]<=4 T[8]<=4 T[1,6]<=5 T[3,4]<=3 [].
          Pcase: s[6] > 7.
            Hubcap T[1]<=1 T[2]<=2 T[3]<=2 T[4]<=2 T[5]<=2 T[6]<=1 T[7]<=4 T[8]<=4
                   [].
          Pcase: h[7] <= 5.
            Reducible.
          Pcase: h[2] > 5.
            Hubcap T[1]<=0 T[2]<=2 T[3]<=2 T[4]<=2 T[5]<=2 T[6]<=4 T[7]<=4 T[8]<=4
                   [].
          Pcase: h[3] > 6.
            Hubcap T[1]<=1 T[2]<=2 T[5]<=2 T[6]<=4 T[7]<=4 T[8]<=4 T[3,4]<=3 [].
          Hubcap T[1]<=0 T[2]<=2 T[3]<=2 T[4]<=2 T[5]<=2 T[6]<=4 T[7]<=4 T[8]<=4
                 [].
        Pcase: f1[4] <= 5.
          Reducible.
        Pcase: s[1] > 8.
          Hubcap T[1]<=0 T[2]<=2 T[3,6]<=5 T[4,7]<=7 T[5,8]<=6 [].
        Pcase: s[1] > 7.
          Pcase: s[6] > 7.
            Hubcap T[1]<=1 T[2]<=2 T[3,4]<=7 T[5,7]<=6 T[6,8]<=4 [].
          Pcase: h[6] <= 5.
            Reducible.
          Pcase: h[7] <= 5.
            Reducible.
          Pcase: h[2] > 5.
            Hubcap T[1]<=0 T[2]<=2 T[3]<=3 T[8]<=4 T[4,6]<=5 T[5,7]<=6 [].
          Pcase: h[3] > 6.
            Hubcap T[1]<=1 T[2]<=2 T[3,6]<=4 T[4,7]<=7 T[5,8]<=6 [].
          Hubcap T[1]<=0 T[2]<=2 T[3]<=4 T[8]<=4 T[4,6]<=4 T[5,7]<=6 [].
        Pcase: s[6] > 8.
          Hubcap T[2]<=2 T[6]<=0 T[1,4]<=6 T[3,7]<=6 T[5,8]<=6 [].
        Pcase: h[2] > 5.
          Hubcap T[2]<=2 T[4,7]<=7 T[5,8]<=6 T[1,3]<=4 T[1,6]<=3 T[3,6]<=4 [].
        Pcase: h[3] <= 6.
          Reducible.
        Pcase: h[4] <= 5.
          Reducible.
        Pcase: f2[1] <= 5.
          Reducible.
        Pcase: h[5] > 5.
          Similar to *L4_1[2].
        Pcase: h[8] <= 5.
          Reducible.
        Pcase: s[6] <= 7.
          Hubcap T[1]<=3 T[2]<=2 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3 T[3,4]<=5 [].
        Pcase: h[4] > 6.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[4]<=3 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3
                 [].
        Pcase: h[6] > 5.
          Hubcap T[1]<=3 T[2]<=2 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3 T[3,4]<=5 [].
        Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3 [].
      Pcase: h[5] > 5.
        Similar to *L3_2[2].
      Pcase: h[8] <= 5.
        Reducible.
      Pcase: f1[3] <= 5.
        Reducible.
      Pcase: f1[4] <= 5.
        Reducible.
      Pcase: h[4] > 6.
        Hubcap T[1]<=1 T[2]<=3 T[3]<=3 T[4]<=3 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3 [].
      Pcase: h[4] <= 5.
        Hubcap T[2]<=3 T[5]<=3 T[7]<=3 T[8]<=3 T[1,3]<=4 T[4,6]<=4 [].
      Pcase: s[6] > 8.
        Hubcap T[1]<=1 T[2]<=3 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3 T[3,4]<=7 [].
      Pcase: s[1] > 8.
        Hubcap T[1]<=0 T[2]<=3 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3 T[3,4]<=7 [].
      Pcase: h[2] <= 5.
        Hubcap T[1]<=0 T[2]<=3 T[3]<=3 T[4]<=4 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3 [].
      Pcase: s[6] <= 7.
        Hubcap T[1]<=1 T[2]<=3 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3 T[3,4]<=6 [].
      Pcase: h[6] > 5.
        Hubcap T[1]<=1 T[2]<=3 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3 T[3,4]<=6 [].
      Hubcap T[1]<=1 T[2]<=3 T[3]<=4 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3 [].
    Pcase: s[5] <= 5.
      Similar to *L2_3[2].
    Pcase: s[2] > 7.
      Hubcap T[1]<=3 T[2]<=0 T[7]<=4 T[8]<=4 T[3,4]<=4 T[5,6]<=5 [].
    Pcase: s[3] > 7.
      Hubcap T[3]<=0 T[4]<=2 T[7]<=4 T[8]<=4 T[1,2]<=5 T[5,6]<=5 [].
    Pcase: s[4] > 7.
      Hubcap T[3]<=2 T[4]<=0 T[7]<=4 T[8]<=4 T[1,2]<=5 T[5,6]<=5 [].
    Pcase: s[5] > 7.
      Hubcap T[5]<=0 T[6]<=3 T[7]<=4 T[8]<=4 T[1,2]<=5 T[3,4]<=4 [].
    Pcase L2_4: s[1] > 7.
      Pcase: s[2] > 6.
        Hubcap T[1]<=0 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=4 T[5,6]<=5 [].
      Hubcap T[1]<=0 T[7]<=4 T[8]<=4 T[5,6]<=5 T[2,3]<=4 T[2,4]<=5 T[3,4]<=6 [].
    Pcase: s[6] > 7.
      Similar to *L2_4[2].
    Pcase L2_5: s[2] > 6.
      Pcase: h[4] > 6.
        Hubcap T[1]<=3 T[2]<=2 T[3]<=0 T[4]<=2 T[7]<=4 T[8]<=4 T[5,6]<=5 [].
      Pcase: h[1] > 6.
        Hubcap T[1]<=1 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=4 T[5,6]<=5 [].
      Pcase: h[7] <= 5.
        Pcase: h[8] <= 6.
          Reducible.
        Pcase: s[1] > 6.
          Hubcap T[7]<=4 T[8]<=3 T[1,2]<=4 T[3,4]<=4 T[5,6]<=5 [].
        Pcase: f1[1] <= 5.
          Reducible.
        Pcase: s[3] > 6.
          Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[8]<=4 T[4,7]<=5 T[5,6]<=5 [].
        Pcase: s[4] > 6.
          Hubcap T[1]<=2 T[2]<=2 T[3]<=0 T[8]<=4 T[4,7]<=7 T[5,6]<=5 [].
        Pcase: s[5] > 6.
          Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[4]<=2 T[5]<=2 T[8]<=4 T[6,7]<=6 [].
        Pcase: s[6] > 6.
          Hubcap T[1]<=2 T[2]<=2 T[7]<=3 T[8]<=4 T[3,4]<=4 T[5,6]<=5 [].
        Hubcap T[1]<=2 T[2]<=2 T[4]<=2 T[6]<=4 T[7]<=4 T[8]<=4 T[3,5]<=2 [].
      Pcase: h[8] > 5.
        Hubcap T[7]<=3 T[8]<=4 T[1,2]<=4 T[3,4]<=4 T[5,6]<=5 [].
      Pcase: h[1] <= 5.
        Reducible.
      Pcase: s[1] > 6.
        Hubcap T[7]<=4 T[8]<=4 T[1,2]<=3 T[3,4]<=4 T[5,6]<=5 [].
      Pcase: f1[1] <= 5.
        Reducible.
      Pcase: s[5] > 6.
        Pcase: s[3] > 6.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=0 T[5]<=2 T[6]<=3 T[7]<=4 T[8]<=4
                 [].
        Pcase: s[4] > 6.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=0 T[4]<=2 T[5]<=2 T[6]<=3 T[7]<=4 T[8]<=4
                 [].
        Pcase: s[6] > 6.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=2 T[7]<=4 T[8]<=4 T[5,6]<=3 [].
        Pcase: h[2] > 5.
          Hubcap T[1]<=3 T[2]<=1 T[5]<=2 T[6]<=3 T[7]<=4 T[8]<=4 T[3,4]<=3 [].
        Pcase: h[3] <= 5.
          Reducible.
        Pcase: f1[1] <= 6.
          Reducible.
        Pcase: h[4] > 5.
          Hubcap T[1]<=3 T[2]<=2 T[5]<=2 T[6]<=3 T[7]<=4 T[8]<=4 T[3,4]<=2 [].
        Pcase: f1[4] <= 5.
          Reducible.
        Pcase: h[5] > 6.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[6]<=3 T[7]<=4 T[8]<=4 T[4,5]<=3 [].
        Pcase: h[5] <= 5.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[4]<=2 T[5]<=1 T[6]<=3 T[7]<=4 T[8]<=4
                 [].
        Pcase: h[6] > 5.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[4]<=2 T[7]<=4 T[8]<=4 T[5,6]<=4 [].
        Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[4]<=1 T[5]<=2 T[6]<=3 T[7]<=4 T[8]<=4 [].
      Pcase: s[4] > 6.
        Hubcap T[1]<=3 T[2]<=2 T[3]<=0 T[7]<=4 T[8]<=4 T[4,5]<=4 T[4,6]<=7
               T[5,6]<=4 [].
      Pcase: s[3] > 6.
        Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[5]<=2 T[7]<=4 T[8]<=4 T[4,6]<=3 [].
      Pcase: h[2] > 5.
        Hubcap T[1]<=3 T[2]<=1 T[7]<=4 T[8]<=4 T[3,4]<=4 T[5,6]<=4 [].
      Pcase: h[3] <= 5.
        Reducible.
      Pcase: f1[1] <= 6.
        Reducible.
      Pcase: h[4] > 5.
        Hubcap T[1]<=3 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=3 T[5,6]<=4 [].
      Pcase: f1[4] <= 5.
        Reducible.
      Pcase: s[6] > 6.
        Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[4]<=3 T[7]<=4 T[8]<=4 T[5,6]<=3 [].
      Pcase: h[6] <= 5.
        Reducible.
      Pcase: h[5] > 5.
        Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[4]<=2 T[5]<=1 T[6]<=3 T[7]<=4 T[8]<=4 [].
      Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[4]<=3 T[7]<=4 T[8]<=4 T[5,6]<=3 [].
    Pcase: s[5] > 6.
      Similar to *L2_5[2].
    Pcase L2_6: h[3] > 6.
      Pcase: s[1] > 6.
        Hubcap T[2]<=0 T[7]<=4 T[1,8]<=7 T[3,4]<=4 T[5,6]<=5 [].
      Pcase: h[2] > 6.
        Hubcap T[1]<=3 T[2]<=0 T[7]<=4 T[8]<=4 T[3,4]<=4 T[5,6]<=5 [].
      Pcase: h[4] > 6.
        Hubcap T[3]<=0 T[4]<=2 T[7]<=4 T[8]<=4 T[1,2]<=5 T[5,6]<=5 [].
      Pcase: f1[1] <= 5.
        Pcase: h[1] <= 6.
          Reducible.
        Pcase: f1[2] <= 5.
          Reducible.
        Pcase: h[2] > 5.
          Hubcap T[1]<=1 T[2]<=1 T[7]<=4 T[8]<=4 T[3,4]<=4 T[5,6]<=5 [].
        Pcase: h[5] > 6.
          Hubcap T[1]<=2 T[2]<=2 T[5]<=2 T[6]<=4 T[7]<=4 T[8]<=4 T[3,4]<=2 [].
        Pcase: h[6] > 6.
          Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[6]<=2 T[7]<=4 T[8]<=4 T[4,5]<=4 [].
        Pcase: h[7] > 6.
          Hubcap T[1]<=2 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=4 T[5,6]<=4 [].
        Pcase: h[7] <= 5.
          Hubcap T[1]<=2 T[2]<=2 T[7]<=4 T[8]<=3 T[3,4]<=4 T[5,6]<=5 [].
        Pcase: s[6] > 6.
          Hubcap T[1]<=2 T[2]<=2 T[7]<=4 T[8]<=4 T[3,4]<=4 T[5,6]<=4 [].
        Hubcap T[1]<=2 T[2]<=2 T[7]<=3 T[8]<=3 T[3,4]<=4 T[5,6]<=5 [].
      Pcase: f1[1] <= 6.
        Pcase: h[5] > 6.
          Hubcap T[7]<=4 T[8]<=4 T[1,2]<=4 T[3,4]<=3 T[5,6]<=5 [].
        Pcase: h[6] > 6.
          Hubcap T[7]<=4 T[8]<=4 T[1,2]<=4 T[3,4]<=4 T[5,6]<=4 [].
        Pcase: h[7] > 6.
          Hubcap T[1]<=3 T[8]<=4 T[2,7]<=5 T[3,4]<=4 T[5,6]<=4 [].
        Pcase: s[4] > 6.
          Hubcap T[3]<=0 T[7]<=4 T[8]<=4 T[1,2]<=4 T[4,5]<=5 T[4,6]<=7 T[5,6]<=5
                 [].
        Pcase: h[4] > 5.
          Hubcap T[7]<=4 T[8]<=4 T[1,2]<=4 T[3,4]<=3 T[5,6]<=5 [].
        Pcase: s[3] > 6.
          Hubcap T[3]<=2 T[7]<=4 T[8]<=4 T[1,2]<=4 T[4,5]<=3 T[4,6]<=5 T[5,6]<=5
                 [].
        Pcase: h[2] <= 5.
          Reducible.
        Pcase: h[1] <= 5.
          Reducible.
        Pcase: s[6] <= 6.
          Hubcap T[1]<=3 T[2]<=1 T[3]<=1 T[4]<=3 T[7]<=4 T[8]<=4 T[5,6]<=4 [].
        Pcase: h[5] > 5.
          Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[8]<=4 T[4,5]<=3 T[6,7]<=7 [].
        Hubcap T[1]<=3 T[2]<=1 T[3]<=1 T[4]<=3 T[5]<=1 T[6]<=3 T[7]<=4 T[8]<=4 [].
      Pcase: h[2] > 5.
        Hubcap T[1]<=3 T[2]<=0 T[7]<=4 T[8]<=4 T[3,4]<=4 T[5,6]<=5 [].
      Pcase: h[5] > 6.
        Hubcap T[1]<=4 T[2]<=1 T[7]<=4 T[8]<=4 T[3,4]<=2 T[5,6]<=5 [].
      Pcase: f1[5] <= 5.
        Hubcap T[1]<=4 T[2]<=1 T[7]<=4 T[8]<=4 T[3,6]<=4 T[4,5]<=3 [].
      Pcase: s[4] > 6.
        Pcase: s[3] > 6.
          Hubcap T[1]<=4 T[2]<=1 T[3]<=0 T[4]<=2 T[5]<=2 T[8]<=4 T[6,7]<=7 [].
        Pcase: s[6] > 6.
          Hubcap T[1]<=4 T[2]<=1 T[3]<=0 T[4]<=4 T[5]<=0 T[8]<=4 T[6,7]<=7 [].
        Hubcap T[1]<=4 T[2]<=1 T[3]<=0 T[8]<=4 T[4,7]<=7 T[5,6]<=4 [].
      Pcase: h[5] <= 5.
        Hubcap T[1]<=4 T[2]<=1 T[4]<=1 T[8]<=4 T[3,5]<=4 T[6,7]<=6 [].
      Pcase: s[6] > 6.
        Hubcap T[1]<=4 T[2]<=1 T[3]<=2 T[8]<=4 T[4,5]<=2 T[6,7]<=7 [].
      Hubcap T[1]<=4 T[2]<=1 T[3]<=2 T[4]<=1 T[7]<=4 T[8]<=4 T[5,6]<=4 [].
    Pcase: h[5] > 6.
      Similar to *L2_6[2].
    Pcase: f1[2] <= 5.
      Pcase: s[3] <= 6.
        Pcase: s[1] <= 6.
          Reducible.
        Pcase: h[2] <= 5.
          Reducible.
        Pcase: f1[3] <= 5.
          Reducible.
        Pcase: s[4] <= 6.
          Hubcap T[2]<=1 T[3]<=3 T[7]<=4 T[1,8]<=5 T[4,5]<=4 T[4,6]<=6 T[5,6]<=5
                 [].
        Pcase: s[6] > 6.
          Hubcap T[1]<=2 T[2]<=1 T[3]<=2 T[4]<=4 T[5]<=0 T[8]<=4 T[6,7]<=7 [].
        Hubcap T[2]<=1 T[3]<=2 T[1,8]<=5 T[4,7]<=7 T[5,6]<=5 [].
      Pcase: s[6] > 6.
        Hubcap T[8]<=4 T[1,7]<=7 T[2,3]<=3 T[4,5]<=3 T[4,6]<=5 T[5,6]<=5 [].
      Pcase: s[1] > 6.
        Hubcap T[2]<=0 T[8]<=4 T[1,3]<=6 T[4,7]<=5 T[5,6]<=5 [].
      Pcase: s[4] > 6.
        Hubcap T[1]<=4 T[2]<=1 T[3,8]<=5 T[4,7]<=5 T[5,6]<=5 [].
      Pcase: f1[5] <= 5.
        Reducible.
      Pcase: h[2] > 6.
        Hubcap T[1]<=3 T[2]<=0 T[3]<=3 T[4]<=1 T[7]<=4 T[8]<=4 T[5,6]<=5 [].
      Pcase: f1[1] <= 5.
        Reducible.
      Pcase: h[4] > 5.
        Hubcap T[1]<=4 T[4]<=1 T[7]<=4 T[8]<=4 T[2,3]<=2 T[5,6]<=5 [].
      Pcase: f1[4] <= 6.
        Reducible.
      Pcase: h[2] <= 5.
        Hubcap T[1]<=4 T[2]<=1 T[3]<=2 T[4]<=1 T[7]<=4 T[8]<=4 T[5,6]<=4 [].
      Pcase: h[3] > 5.
        Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[4]<=1 T[5]<=2 T[6]<=4 T[7]<=4 T[8]<=4 [].
      Pcase: h[5] <= 5.
        Hubcap T[1]<=4 T[2]<=0 T[3]<=3 T[4]<=1 T[5]<=2 T[8]<=4 T[6,7]<=6 [].
      Pcase: h[6] > 5.
        Hubcap T[1]<=4 T[2]<=0 T[3]<=3 T[4]<=0 T[5]<=2 T[6]<=3 T[7]<=4 T[8]<=4 [].
      Pcase: h[7] > 5.
        Hubcap T[2]<=0 T[3]<=3 T[4]<=1 T[8]<=4 T[1,7]<=7 T[5,6]<=5 [].
      Hubcap T[1]<=4 T[2]<=0 T[3]<=3 T[4]<=1 T[5]<=1 T[6]<=3 T[7]<=4 T[8]<=4 [].
    Pcase L2_7: s[6] > 6.
      Pcase: h[5] <= 5.
        Pcase: s[4] > 6.
          Hubcap T[5]<=0 T[8]<=4 T[1,2]<=5 T[3,4]<=5 T[6,7]<=6 [].
        Pcase: h[4] > 6.
          Hubcap T[3]<=2 T[8]<=4 T[1,2]<=5 T[4,5]<=3 T[6,7]<=6 [].
        Pcase: f1[4] <= 5.
          Pcase: h[4] <= 5.
            Reducible.
          Pcase: f1[5] <= 5.
            Reducible.
          Pcase: s[1] > 6.
            Hubcap T[3]<=3 T[4]<=1 T[5]<=2 T[8]<=4 T[1,2]<=4 T[6,7]<=6 [].
          Pcase: s[3] > 6.
            Hubcap T[3]<=2 T[4]<=1 T[5]<=2 T[8]<=4 T[1,2]<=5 T[6,7]<=6 [].
          Pcase: f1[3] <= 5.
            Reducible.
          Pcase: h[2] > 5.
            Hubcap T[3]<=3 T[4]<=1 T[5]<=2 T[8]<=4 T[1,2]<=4 T[6,7]<=6 [].
          Hubcap T[3]<=2 T[4]<=1 T[5]<=2 T[8]<=4 T[1,2]<=5 T[6,7]<=6 [].
        Pcase: f1[4] <= 6.
          Hubcap T[3]<=2 T[4]<=2 T[5]<=1 T[8]<=4 T[1,2]<=5 T[6,7]<=6 [].
        Pcase: f1[5] > 5.
          Pcase: s[3] <= 6.
            Hubcap T[5]<=1 T[8]<=4 T[1,2]<=5 T[3,4]<=4 T[6,7]<=6 [].
          Pcase: s[1] > 6.
            Hubcap T[1]<=4 T[2]<=0 T[3]<=4 T[4]<=1 T[5]<=1 T[8]<=4 T[6,7]<=6 [].
          Hubcap T[4]<=1 T[5]<=1 T[1,2]<=5 T[3,8]<=7 T[6,7]<=6 [].
        Pcase: h[6] <= 5.
          Reducible.
        Pcase: s[3] <= 6.
          Hubcap T[3]<=2 T[4]<=3 T[5]<=1 T[8]<=4 T[1,2]<=5 T[6,7]<=5 [].
        Pcase: s[1] > 6.
          Hubcap T[1]<=4 T[2]<=0 T[3]<=4 T[4]<=2 T[5]<=1 T[8]<=4 T[6,7]<=5 [].
        Hubcap T[4]<=2 T[5]<=1 T[1,2]<=5 T[3,8]<=7 T[6,7]<=5 [].
      Pcase: s[4] > 6.
        Pcase: s[1] > 6.
          Hubcap T[5]<=0 T[1,7]<=7 T[6,8]<=7 T[2,3]<=3 T[2,4]<=5 T[3,4]<=5 [].
        Pcase: s[3] > 6.
          Hubcap T[1]<=4 T[2]<=2 T[3]<=2 T[4]<=1 T[5]<=0 T[8]<=4 T[6,7]<=7 [].
        Pcase: h[2] > 6.
          Hubcap T[1]<=3 T[3]<=1 T[5]<=0 T[8]<=4 T[2,4]<=5 T[6,7]<=7 [].
        Pcase: h[2] <= 5.
          Hubcap T[5]<=0 T[8]<=4 T[1,2]<=5 T[3,4]<=4 T[6,7]<=7 [].
        Pcase: h[3] > 5.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=0 T[4]<=4 T[5]<=0 T[8]<=4 T[6,7]<=7 [].
        Hubcap T[3]<=1 T[5]<=0 T[1,7]<=6 T[2,4]<=6 T[6,8]<=7 [].
      Pcase: h[4] > 6.
        Hubcap T[3]<=2 T[4]<=1 T[5]<=1 T[8]<=4 T[1,2]<=5 T[6,7]<=7 [].
      Pcase: h[6] > 6.
        Hubcap T[8]<=4 T[1,2]<=5 T[6,7]<=5 T[3,4]<=5 T[3,5]<=5 T[4,5]<=3 [].
      Pcase: f1[5] <= 5.
        Hubcap T[1]<=4 T[2]<=2 T[5]<=0 T[8]<=4 T[3,4]<=5 T[6,7]<=5 [].
      Pcase: h[8] <= 5.
        Pcase: h[7] <= 5.
          Reducible.
        Pcase: h[1] <= 5.
          Reducible.
        Pcase: s[1] > 6.
          Hubcap T[1]<=2 T[6]<=2 T[7]<=4 T[8]<=4 T[2,3]<=4 T[4,5]<=3 [].
        Pcase: s[3] > 6.
          Hubcap T[3]<=3 T[6]<=2 T[7]<=4 T[8]<=4 T[1,2]<=5 T[4,5]<=2 [].
        Hubcap T[2]<=2 T[6]<=2 T[7]<=4 T[8]<=4 T[1,3]<=5 T[4,5]<=3 [].
      Pcase: s[3] > 6.
        Hubcap T[4]<=1 T[7]<=3 T[1,2]<=4 T[3,8]<=7 T[5,6]<=5 [].
      Pcase: s[1] > 6.
        Hubcap T[7]<=3 T[8]<=3 T[1,2]<=5 T[3,4]<=4 T[5,6]<=5 [].
      Hubcap T[7]<=3 T[8]<=4 T[1,2]<=4 T[3,4]<=4 T[5,6]<=5 [].
    Pcase: s[1] > 6.
      Similar to *L2_7[2].
    Pcase: h[4] > 6.
      Hubcap T[1,2]<=5 T[3,8]<=5 T[4,7]<=5 T[5,6]<=5 [].
    Pcase: f1[5] <= 5.
      Pcase: s[4] <= 6.
        Reducible.
      Pcase: s[3] > 6.
        Hubcap T[6]<=4 T[7]<=4 T[1,2]<=5 T[3,8]<=5 T[4,5]<=2 [].
      Pcase: h[2] > 6.
        Hubcap T[3]<=1 T[6]<=4 T[7]<=4 T[8]<=4 T[1,2]<=4 T[4,5]<=3 [].
      Pcase: h[3] <= 5.
        Hubcap T[3]<=1 T[7]<=4 T[1,2]<=5 T[4,5]<=3 T[6,8]<=7 [].
      Pcase: f1[3] <= 5.
        Reducible.
      Pcase: h[2] > 5.
        Hubcap T[1]<=3 T[2]<=2 T[3]<=0 T[6]<=4 T[7]<=4 T[8]<=4 T[4,5]<=3 [].
      Pcase: h[4] > 5.
        Hubcap T[3]<=1 T[6]<=4 T[7]<=4 T[8]<=4 T[1,2]<=5 T[4,5]<=2 [].
      Pcase: f1[3] <= 6.
        Reducible.
      Pcase: h[6] > 6.
        Hubcap T[1]<=4 T[2]<=2 T[3]<=1 T[4]<=3 T[5]<=0 T[6]<=2 T[7]<=4 T[8]<=4 [].
      Pcase: h[6] <= 5.
        Hubcap T[3]<=1 T[4]<=2 T[5]<=1 T[6]<=4 T[7]<=4 T[8]<=4 T[1,2]<=4 [].
      Pcase: f1[6] <= 5.
        Reducible.
      Pcase: h[5] > 5.
        Hubcap T[1]<=4 T[2]<=2 T[3]<=1 T[4]<=2 T[5]<=0 T[6]<=3 T[7]<=4 T[8]<=4 [].
      Pcase: h[7] > 5.
        Hubcap T[3]<=1 T[4]<=3 T[5]<=0 T[8]<=4 T[1,2]<=5 T[6,7]<=7 [].
      Hubcap T[1]<=3 T[3]<=1 T[4]<=3 T[5]<=0 T[6]<=4 T[7]<=4 T[2,8]<=5 [].
    Pcase L2_8: h[7] <= 5.
      Pcase: h[8] <= 6.
        Reducible.
      Pcase: f1[6] <= 5.
        Reducible.
      Pcase: s[3] > 6.
        Hubcap T[4]<=1 T[7]<=4 T[1,2]<=4 T[3,8]<=7 T[5,6]<=4 [].
      Hubcap T[7]<=4 T[8]<=4 T[1,2]<=4 T[3,4]<=4 T[5,6]<=4 [].
    Pcase: h[1] <= 5.
      Similar to *L2_8[2].
    Pcase: h[8] > 6.
      Hubcap T[1]<=2 T[2]<=3 T[7]<=3 T[8]<=3 T[3,4]<=5 T[5,6]<=4 [].
    Pcase: h[8] > 5.
      Pcase: s[3] > 6.
        Hubcap T[7]<=3 T[8]<=3 T[1,2]<=4 T[3,4]<=5 T[5,6]<=5 [].
      Hubcap T[7]<=3 T[8]<=3 T[1,2]<=5 T[3,4]<=5 T[5,6]<=4 [].
    Pcase: h[2] > 6.
      Hubcap T[7]<=4 T[8]<=4 T[1,2]<=3 T[3,4]<=4 T[5,6]<=5 [].
    Pcase: h[6] > 6.
      Hubcap T[7]<=4 T[8]<=4 T[1,2]<=5 T[3,4]<=4 T[5,6]<=3 [].
    Pcase L2_9: h[2] > 5.
      Pcase: h[3] > 5.
        Hubcap T[1]<=3 T[2]<=1 T[7]<=4 T[8]<=4 T[3,4]<=3 T[5,6]<=5 [].
      Pcase: h[4] > 5.
        Hubcap T[7]<=4 T[8]<=4 T[1,2]<=4 T[3,4]<=3 T[5,6]<=5 [].
      Pcase: s[3] <= 6.
        Hubcap T[7]<=4 T[8]<=4 T[1,2]<=3 T[3,4]<=4 T[5,6]<=5 [].
      Pcase: f1[3] <= 5.
        Reducible.
      Pcase: s[4] > 6.
        Hubcap T[1]<=4 T[2]<=1 T[3]<=1 T[4]<=1 T[7]<=4 T[8]<=4 T[5,6]<=5 [].
      Pcase: f1[4] <= 6.
        Reducible.
      Pcase: h[5] <= 5.
        Hubcap T[1]<=4 T[2]<=1 T[3]<=3 T[4]<=1 T[7]<=4 T[8]<=4 T[5,6]<=3 [].
      Pcase: h[6] > 5.
        Hubcap T[1]<=4 T[2]<=1 T[3]<=3 T[4]<=0 T[5]<=1 T[6]<=3 T[7]<=4 T[8]<=4 [].
      Hubcap T[1]<=2 T[2]<=1 T[3]<=3 T[4]<=1 T[7]<=4 T[8]<=4 T[5,6]<=5 [].
    Pcase: h[6] > 5.
      Similar to *L2_9[2].
    Pcase: h[7] <= 6.
      Reducible.
    Pcase: h[1] <= 6.
      Reducible.
    Hubcap T[1]<=2 T[2]<=2 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=4 T[3,4]<=4 [].
  Pcase: s[1] <= 5.
    Similar to L1_1[1].
  Pcase L1_2: s[5] <= 5.
    Pcase: s[4] <= 5.
      Similar to L1_1[5].
    Pcase: s[6] <= 5.
      Similar to L1_1[6].
    Pcase L2_1: s[3] <= 5.
      Pcase: s[2] <= 5.
        Similar to L1_1[3].
      Pcase L3_1: s[1] <= 6.
        Pcase L4_1: s[2] <= 6.
          Pcase: s[4] <= 6.
            Reducible.
          Pcase: s[6] > 7.
            Hubcap T[1]<=4 T[2]<=4 T[5]<=2 T[6]<=0 T[7]<=2 T[8]<=3 T[3,4]<=5 [].
          Pcase: s[4] > 7.
            Pcase: h[3] > 6.
              Hubcap T[3]<=2 T[4]<=1 T[5]<=3 T[1,2]<=6 T[6,7]<=6 T[6,8]<=6
                     T[7,8]<=5 [].
            Pcase: f1[2] <= 5.
              Reducible.
            Pcase: h[1] > 5.
              Pcase: s[6] > 6.
                Hubcap T[3]<=3 T[4]<=1 T[5]<=2 T[8]<=2 T[1,2]<=7 T[6,7]<=5 [].
              Pcase: s[7] > 7.
                Hubcap T[1]<=4 T[2]<=4 T[3]<=3 T[4]<=1 T[5]<=3 T[6]<=3 T[7]<=0
                       T[8]<=2 [].
              Pcase: s[7] > 6.
                Pcase: s[4] > 8.
                  Hubcap T[3]<=3 T[4]<=0 T[5]<=3 T[8]<=2 T[1,2]<=7 T[6,7]<=5 [].
                Pcase: h[2] > 5.
                  Hubcap T[3]<=3 T[4]<=1 T[8]<=2 T[5,7]<=5 T[1,2]<=7 T[1,6]<=6
                         T[2,6]<=6 [].
                Pcase: f1[2] <= 6.
                  Reducible.
                Pcase: h[3] > 5.
                  Hubcap T[1]<=3 T[2]<=3 T[3]<=2 T[4]<=1 T[5]<=3 T[6]<=3 T[7]<=3
                         T[8]<=2 [].
                Hubcap T[2]<=4 T[3]<=3 T[4]<=1 T[8]<=2 T[1,5]<=5 T[6,7]<=5 [].
              Pcase: h[2] <= 5.
                Reducible.
              Pcase: h[7] <= 5.
                Reducible.
              Pcase: h[8] <= 5.
                Reducible.
              Pcase: s[4] > 8.
                Hubcap T[3]<=3 T[4]<=0 T[5]<=3 T[8]<=2 T[1,2]<=6 T[6,7]<=6 [].
              Pcase: h[2] > 6.
                Hubcap T[1]<=1 T[2]<=3 T[3]<=3 T[4]<=1 T[5]<=3 T[6]<=4 T[7]<=3
                       T[8]<=2 [].
              Pcase: h[3] > 5.
                Hubcap T[1]<=2 T[2]<=3 T[3]<=2 T[4]<=1 T[5]<=3 T[6]<=4 T[7]<=3
                       T[8]<=2 [].
              Pcase: h[4] > 5.
                Hubcap T[3]<=3 T[4]<=1 T[5]<=3 T[8]<=2 T[1,2]<=5 T[6,7]<=6 [].
              Hubcap T[3]<=3 T[4]<=1 T[5]<=3 T[8]<=2 T[1,2]<=6 T[6,7]<=5 [].
            Pcase: f1[1] <= 5.
              Reducible.
            Pcase: s[6] > 6.
              Hubcap T[1]<=4 T[2]<=4 T[3]<=3 T[4]<=1 T[5]<=2 T[8]<=3 T[6,7]<=3 [].
            Pcase: s[7] <= 6.
              Reducible.
            Pcase: s[7] > 7.
              Pcase: s[4] > 8.
                Hubcap T[1]<=4 T[2]<=4 T[3]<=3 T[4]<=0 T[5]<=3 T[6]<=3 T[7]<=0
                       T[8]<=3 [].
              Pcase: h[2] > 5.
                Hubcap T[3]<=3 T[4]<=1 T[5]<=3 T[6]<=3 T[7]<=0 T[8]<=3 T[1,2]<=7
                       [].
              Hubcap T[1]<=4 T[3]<=3 T[4]<=1 T[5]<=3 T[7]<=0 T[8]<=3 T[2,6]<=6 [].
            Pcase: h[7] <= 5.
              Reducible.
            Pcase: h[8] <= 5.
              Reducible.
            Pcase: s[4] > 8.
              Hubcap T[3]<=3 T[4]<=0 T[5]<=3 T[6]<=3 T[7]<=1 T[8]<=3 T[1,2]<=7 [].
            Pcase: h[2] > 6.
              Hubcap T[1]<=2 T[2]<=3 T[3]<=3 T[4]<=1 T[5]<=3 T[6]<=3 T[7]<=1
                     T[8]<=3 [].
            Pcase: h[2] <= 5.
              Hubcap T[1]<=3 T[3]<=3 T[4]<=1 T[5]<=3 T[7]<=1 T[8]<=3 T[2,6]<=6 [].
            Pcase: h[3] > 5.
              Hubcap T[1]<=3 T[2]<=4 T[3]<=2 T[4]<=1 T[5]<=3 T[6]<=3 T[7]<=1
                     T[8]<=3 [].
            Pcase: h[4] > 5.
              Hubcap T[3]<=3 T[4]<=1 T[5]<=3 T[6]<=3 T[7]<=1 T[8]<=3 T[1,2]<=6 [].
            Hubcap T[1]<=4 T[2]<=3 T[3]<=3 T[4]<=1 T[5]<=3 T[6]<=2 T[7]<=1 T[8]<=3
                   [].
          Pcase: h[5] <= 5.
            Reducible.
          Pcase: s[7] > 7.
            Hubcap T[5]<=3 T[6]<=2 T[7]<=0 T[8]<=3 T[1,2]<=7 T[3,4]<=5 [].
          Pcase: s[6] > 6.
            Pcase: h[2] > 6.
              Hubcap T[2]<=3 T[5]<=2 T[7]<=2 T[8]<=3 T[1,6]<=5 T[3,4]<=5 [].
            Pcase: h[7] > 6.
              Hubcap T[5]<=2 T[8]<=3 T[1,2]<=7 T[3,4]<=5 T[6,7]<=3 [].
            Pcase: h[1] > 6.
              Hubcap T[5]<=2 T[8]<=2 T[1,2]<=6 T[3,4]<=5 T[6,7]<=5 [].
            Pcase: h[1] <= 5.
              Hubcap T[5]<=2 T[8]<=3 T[1,2]<=7 T[3,4]<=5 T[6,7]<=3 [].
            Pcase: f1[1] <= 5.
              Reducible.
            Pcase: s[7] > 6.
              Hubcap T[5]<=2 T[8]<=2 T[1,2]<=7 T[3,4]<=5 T[6,7]<=4 [].
            Hubcap T[1]<=3 T[5]<=2 T[7]<=1 T[8]<=2 T[2,6]<=7 T[3,4]<=5 [].
          Pcase: s[7] <= 6.
            Hubcap T[3]<=3 T[4]<=2 T[5]<=3 T[8]<=2 T[1,2]<=5 T[6,7]<=5 [].
          Pcase: h[2] > 6.
            Hubcap T[1]<=2 T[2]<=3 T[5]<=3 T[6]<=2 T[3,4]<=5 T[7,8]<=5 [].
          Pcase: h[4] > 6.
            Hubcap T[5]<=3 T[6]<=2 T[1,2]<=6 T[3,4]<=4 T[7,8]<=5 [].
          Pcase: h[2] <= 5.
            Hubcap T[4]<=2 T[6]<=2 T[1,2]<=6 T[3,5]<=5 T[7,8]<=5 [].
          Pcase: h[3] > 6.
            Hubcap T[3]<=2 T[4]<=3 T[5]<=3 T[6]<=2 T[1,2]<=5 T[7,8]<=5 [].
          Pcase: h[3] <= 5.
            Hubcap T[3]<=3 T[4]<=2 T[5]<=2 T[6]<=1 T[1,2]<=7 T[7,8]<=5 [].
          Pcase: f1[2] <= 5.
            Reducible.
          Pcase: h[4] > 5.
            Hubcap T[1]<=3 T[2]<=3 T[3]<=2 T[4]<=2 T[5]<=3 T[6]<=2 T[7,8]<=5 [].
          Pcase: f1[1] <= 5.
            Reducible.
          Pcase: f1[4] <= 5.
            Reducible.
          Pcase: h[5] > 6.
            Hubcap T[3]<=2 T[4]<=2 T[5]<=3 T[6]<=2 T[1,2]<=6 T[7,8]<=5 [].
          Pcase: h[6] > 5.
            Hubcap T[1]<=3 T[2]<=4 T[3]<=2 T[4]<=3 T[5]<=2 T[6]<=1 T[7,8]<=5 [].
          Hubcap T[3]<=2 T[4]<=3 T[5]<=3 T[6]<=2 T[1,2]<=6 T[7,8]<=4 [].
        Pcase: s[4] > 8.
          Hubcap T[3]<=2 T[4]<=0 T[5]<=3 T[2,8]<=6 T[1,6]<=6 T[1,7]<=6 T[6,7]<=7
                 [].
        Pcase: s[4] > 6.
          Pcase: s[6] > 7.
            Hubcap T[1]<=3 T[3]<=2 T[5]<=2 T[6]<=0 T[7]<=3 T[8]<=4 T[2,4]<=6 [].
          Pcase: s[7] > 7.
            Hubcap T[1]<=3 T[3]<=2 T[5]<=3 T[6]<=3 T[7]<=0 T[8]<=3 T[2,4]<=6 [].
          Pcase: h[1] <= 5.
            Pcase: f1[1] <= 5.
              Reducible.
            Pcase: s[2] > 7.
              Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[4]<=4 T[5]<=3 T[8]<=4 T[6,7]<=4 [].
            Pcase: s[4] > 7.
              Hubcap T[1]<=3 T[2]<=3 T[3]<=2 T[4]<=2 T[5,8]<=6 T[6,7]<=4 [].
            Pcase: s[6] > 6.
              Hubcap T[1]<=3 T[3]<=2 T[5]<=2 T[8]<=4 T[2,4]<=6 T[6,7]<=3 [].
            Hubcap T[1]<=2 T[3]<=2 T[5]<=3 T[6]<=3 T[7]<=1 T[8]<=3 T[2,4]<=6 [].
          Pcase: s[2] > 7.
            Hubcap T[1]<=2 T[2]<=0 T[3]<=2 T[5]<=3 T[8]<=3 T[4,6]<=7 T[4,7]<=7
                   T[6,7]<=7 [].
          Pcase: s[6] > 6.
            Hubcap T[1]<=2 T[3]<=2 T[5]<=2 T[8]<=3 T[2,4]<=6 T[6,7]<=5 [].
          Pcase: s[7] <= 6.
            Similar to *L4_1[1].
          Pcase: s[4] > 7.
            Hubcap T[3]<=2 T[4]<=2 T[5]<=3 T[8]<=2 T[1,2]<=5 T[6,7]<=6 [].
          Hubcap T[1]<=2 T[3]<=2 T[5]<=3 T[8]<=2 T[2,4]<=6 T[6,7]<=5 [].
        Pcase: s[2] > 7.
          Pcase: s[6] > 7.
            Hubcap T[1]<=3 T[2]<=0 T[3]<=3 T[4]<=5 T[5]<=3 T[6]<=0 T[7]<=2 T[8]<=3
                   [].
          Pcase: s[7] > 7.
            Hubcap T[1]<=3 T[2]<=0 T[3]<=3 T[4]<=5 T[5]<=4 T[7]<=0 T[6,8]<=5 [].
          Pcase: s[7] <= 6.
            Hubcap T[1]<=2 T[2]<=0 T[3]<=3 T[4]<=5 T[7]<=2 T[8]<=3 T[5,6]<=5 [].
          Pcase: s[6] <= 6.
            Hubcap T[2]<=0 T[3]<=3 T[1,5]<=5 T[4,7]<=7 T[6,8]<=5 [].
          Pcase: h[3] > 5.
            Hubcap T[2]<=0 T[3]<=3 T[5]<=3 T[8]<=3 T[1,4]<=7 T[6,7]<=4 [].
          Pcase: h[4] > 5.
            Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[4]<=4 T[5]<=3 T[8]<=3 T[6,7]<=4 [].
          Pcase: f1[4] <= 5.
            Reducible.
          Pcase: h[5] > 5.
            Hubcap T[1]<=3 T[2]<=0 T[3]<=3 T[4]<=4 T[5]<=2 T[8]<=3 T[6,7]<=4 [].
          Hubcap T[1]<=3 T[2]<=0 T[3]<=3 T[4]<=5 T[5]<=3 T[8]<=3 T[6,7]<=3 [].
        Pcase: h[2] <= 5.
          Reducible.
        Pcase: h[3] > 5.
          Pcase: s[6] > 7.
            Hubcap T[1]<=3 T[2]<=1 T[3]<=3 T[4]<=5 T[5]<=3 T[6]<=0 T[7]<=2 T[8]<=3
                   [].
          Pcase: s[7] > 7.
            Hubcap T[2]<=1 T[3]<=3 T[4]<=5 T[7]<=0 T[1,5]<=6 T[6,8]<=5 [].
          Pcase: s[7] <= 6.
            Hubcap T[1]<=2 T[2]<=1 T[3]<=3 T[4]<=4 T[7]<=2 T[8]<=3 T[5,6]<=5 [].
          Pcase: s[6] > 6.
            Pcase: h[4] > 5.
              Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[4]<=4 T[5]<=3 T[8]<=3 T[6,7]<=4 [].
            Pcase: f1[4] <= 5.
              Reducible.
            Pcase: h[5] > 5.
              Hubcap T[1]<=3 T[2]<=1 T[3]<=3 T[4]<=4 T[5]<=2 T[8]<=3 T[6,7]<=4 [].
            Hubcap T[2]<=1 T[3]<=3 T[5]<=3 T[8]<=3 T[1,4]<=7 T[6,7]<=3 [].
          Pcase: h[4] > 5.
            Hubcap T[1]<=2 T[2]<=1 T[3]<=2 T[4]<=4 T[5,7]<=6 T[6,8]<=5 [].
          Pcase: f1[4] <= 5.
            Reducible.
          Pcase: h[5] > 5.
            Hubcap T[1]<=2 T[2]<=1 T[3]<=3 T[4]<=4 T[5]<=3 T[6]<=2 T[7,8]<=5 [].
          Hubcap T[1]<=2 T[2]<=1 T[3]<=3 T[4]<=5 T[5]<=4 T[7]<=0 T[6,8]<=5 [].
        Pcase: h[4] <= 5.
          Reducible.
        Pcase: s[6] > 7.
          Hubcap T[1]<=3 T[2]<=3 T[3]<=2 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=2 T[8]<=3
                 [].
        Pcase: s[7] > 7.
          Hubcap T[3]<=2 T[4]<=4 T[5]<=4 T[7]<=0 T[1,2]<=5 T[6,8]<=5 [].
        Pcase: s[6] > 6.
          Pcase: h[5] > 5.
            Hubcap T[1]<=3 T[2]<=3 T[3]<=2 T[4]<=3 T[5]<=2 T[8]<=3 T[6,7]<=4 [].
          Hubcap T[3]<=2 T[4]<=4 T[5]<=3 T[8]<=3 T[1,2]<=5 T[6,7]<=3 [].
        Pcase: s[7] <= 6.
          Similar to *L4_1[1].
        Pcase: h[2] > 6.
          Hubcap T[2]<=2 T[3]<=2 T[1,5]<=5 T[4,7]<=6 T[6,8]<=5 [].
        Pcase: h[5] > 5.
          Hubcap T[1]<=2 T[2]<=3 T[3]<=2 T[4]<=3 T[5]<=3 T[6]<=2 T[7,8]<=5 [].
        Hubcap T[1]<=2 T[2]<=3 T[3]<=2 T[4]<=4 T[5]<=4 T[7]<=0 T[6,8]<=5 [].
      Pcase: s[7] <= 6.
        Similar to *L3_1[1].
      Pcase: s[4] > 8.
        Hubcap T[3]<=3 T[4]<=0 T[5]<=3 T[8]<=2 T[1,2]<=6 T[6,7]<=6 [].
      Pcase: s[4] > 7.
        Pcase: s[1] > 7.
          Hubcap T[1]<=0 T[2]<=3 T[3]<=3 T[4]<=2 T[5]<=3 T[6]<=3 T[7]<=4 T[8]<=2
                 [].
        Pcase: s[2] > 6.
          Hubcap T[3]<=2 T[4]<=2 T[5]<=3 T[6]<=3 T[7]<=4 T[8]<=2 T[1,2]<=4 [].
        Pcase: s[6] > 6.
          Hubcap T[1]<=4 T[2]<=3 T[3]<=3 T[4]<=2 T[5]<=2 T[8]<=2 T[6,7]<=4 [].
        Pcase: s[7] > 7.
          Hubcap T[1]<=4 T[2]<=3 T[3]<=3 T[4]<=2 T[5]<=3 T[6]<=3 T[7]<=0 T[8]<=2
                 [].
        Pcase: h[3] > 5.
          Hubcap T[3]<=2 T[4]<=2 T[5]<=3 T[8]<=2 T[1,2]<=5 T[6,7]<=6 [].
        Hubcap T[1]<=3 T[2]<=3 T[3]<=3 T[8]<=2 T[4,5]<=4 T[6,7]<=5 [].
      Pcase L3_2: s[2] > 7.
        Pcase: s[1] > 7.
          Hubcap T[1]<=0 T[2]<=0 T[3]<=3 T[4]<=5 T[5]<=4 T[8]<=2 T[6,7]<=5 [].
        Pcase: s[4] > 6.
          Hubcap T[1]<=2 T[2]<=0 T[3]<=2 T[4]<=4 T[5]<=3 T[6]<=3 T[7]<=4 T[8]<=2
                 [].
        Pcase: s[6] > 6.
          Hubcap T[1]<=2 T[2]<=0 T[3]<=3 T[4]<=5 T[5]<=3 T[8]<=2 T[6,7]<=4 [].
        Pcase: s[7] > 7.
          Hubcap T[1]<=2 T[2]<=0 T[3]<=3 T[4]<=5 T[5]<=4 T[6]<=3 T[7]<=0 T[8]<=2
                 [].
        Pcase: h[3] <= 5.
          Hubcap T[1]<=2 T[2]<=0 T[3]<=3 T[8]<=2 T[4,5]<=8 T[6,7]<=5 [].
        Pcase: h[4] > 5.
          Hubcap T[1]<=2 T[2]<=0 T[3]<=2 T[4]<=4 T[5]<=4 T[6]<=3 T[7]<=3 T[8]<=2
                 [].
        Pcase: f1[4] <= 5.
          Reducible.
        Pcase: h[5] > 5.
          Hubcap T[1]<=2 T[2]<=0 T[3]<=3 T[4]<=4 T[5]<=3 T[6]<=2 T[7]<=3 T[8]<=2
                 [].
        Hubcap T[1]<=2 T[2]<=0 T[3]<=3 T[4]<=5 T[5]<=4 T[6]<=3 T[7]<=0 T[8]<=2 [].
      Pcase: s[6] > 7.
        Similar to *L3_2[1].
      Pcase L3_3: s[1] > 7.
        Pcase: s[4] > 6.
          Hubcap T[1]<=0 T[2]<=3 T[3]<=3 T[4]<=4 T[5]<=3 T[8]<=2 T[6,7]<=5 [].
        Pcase: s[7] > 7.
          Hubcap T[1]<=0 T[2]<=3 T[4]<=5 T[6]<=3 T[7]<=0 T[8]<=2 T[3,5]<=7 [].
        Pcase: s[6] > 6.
          Pcase: s[2] > 6.
            Hubcap T[1]<=0 T[2]<=2 T[3]<=3 T[4]<=5 T[5]<=3 T[8]<=2 T[6,7]<=4 [].
          Pcase: h[3] > 5.
            Hubcap T[1]<=0 T[2]<=2 T[3]<=3 T[4]<=5 T[5]<=3 T[8]<=2 T[6,7]<=4 [].
          Pcase: f1[2] <= 5.
            Reducible.
          Pcase: h[4] > 5.
            Hubcap T[1]<=0 T[2]<=2 T[3]<=3 T[4]<=4 T[5]<=3 T[6]<=3 T[7]<=3 T[8]<=2
                   [].
          Pcase: f1[4] <= 5.
            Reducible.
          Pcase: h[5] > 5.
            Hubcap T[1]<=0 T[2]<=3 T[3]<=4 T[4]<=4 T[5]<=2 T[8]<=2 T[6,7]<=4 [].
          Hubcap T[1]<=0 T[2]<=3 T[3]<=4 T[4]<=5 T[5]<=3 T[8]<=2 T[6,7]<=3 [].
        Pcase: h[3] > 6.
          Hubcap T[1]<=0 T[2]<=1 T[3]<=3 T[4]<=5 T[5]<=4 T[8]<=2 T[6,7]<=5 [].
        Pcase: h[4] > 5.
          Hubcap T[1]<=0 T[2]<=2 T[3]<=3 T[4]<=4 T[5]<=4 T[8]<=2 T[6,7]<=5 [].
        Pcase: f1[4] <= 5.
          Reducible.
        Pcase: s[2] > 6.
          Hubcap T[1]<=0 T[3]<=3 T[4]<=5 T[8]<=2 T[2,5]<=5 T[6,7]<=5 [].
        Pcase: f1[2] <= 5.
          Reducible.
        Pcase: h[5] <= 5.
          Hubcap T[1]<=0 T[2]<=3 T[4]<=5 T[6]<=3 T[7]<=0 T[8]<=2 T[3,5]<=7 [].
        Pcase: h[3] > 5.
          Hubcap T[1]<=0 T[2]<=2 T[3]<=3 T[4]<=4 T[5]<=3 T[6]<=2 T[7]<=3 T[8]<=2
                 [].
        Hubcap T[1]<=0 T[2]<=3 T[3]<=4 T[4]<=4 T[5]<=3 T[8]<=2 T[6,7]<=4 [].
      Pcase: s[7] > 7.
        Similar to *L3_3[1].
      Pcase: s[4] > 6.
        Pcase: s[2] > 6.
          Hubcap T[3]<=2 T[4]<=4 T[5]<=3 T[8]<=2 T[1,2]<=4 T[6,7]<=5 [].
        Pcase: s[6] > 6.
          Hubcap T[3]<=3 T[4]<=4 T[5]<=2 T[8]<=2 T[1,2]<=5 T[6,7]<=4 [].
        Pcase: h[2] > 6.
          Hubcap T[3]<=3 T[8]<=2 T[1,4]<=5 T[2,5]<=5 T[6,7]<=5 [].
        Pcase: h[3] > 6.
          Hubcap T[2]<=1 T[3]<=2 T[5]<=3 T[8]<=2 T[1,4]<=7 T[6,7]<=5 [].
        Pcase: f1[2] <= 5.
          Reducible.
        Pcase: h[3] > 5.
          Hubcap T[3]<=2 T[4]<=4 T[5]<=3 T[8]<=2 T[1,2]<=4 T[6,7]<=5 [].
        Pcase: h[4] > 5.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[8]<=2 T[4,5]<=5 T[6,7]<=5 [].
        Pcase: h[6] <= 5.
          Reducible.
        Pcase: h[1] <= 5.
          Reducible.
        Pcase: h[2] > 5.
          Hubcap T[1]<=1 T[2]<=3 T[3]<=3 T[4]<=4 T[5]<=2 T[8]<=2 T[6,7]<=5 [].
        Pcase: f1[2] <= 6.
          Reducible.
        Pcase: h[5] > 5.
          Hubcap T[1]<=2 T[2]<=3 T[3]<=3 T[4]<=3 T[5]<=2 T[6]<=1 T[7]<=4 T[8]<=2
                 [].
        Hubcap T[1]<=2 T[2]<=3 T[3]<=3 T[4]<=4 T[5]<=2 T[8]<=2 T[6,7]<=4 [].
      Pcase L3_4: h[4] <= 5.
        Pcase: f1[4] <= 5.
          Reducible.
        Pcase: h[5] <= 5.
          Hubcap T[4]<=5 T[8]<=2 T[1,2]<=3 T[3,5]<=7 T[6,7]<=3 [].
        Pcase: s[6] > 6.
          Hubcap T[3]<=4 T[4]<=4 T[5]<=2 T[8]<=2 T[1,2]<=3 T[6,7]<=4 [].
        Pcase: s[2] > 6.
          Hubcap T[3]<=3 T[4]<=4 T[5]<=3 T[6]<=2 T[7]<=3 T[8]<=2 T[1,2]<=3 [].
        Pcase: h[2] <= 5.
          Reducible.
        Pcase: h[1] <= 5.
          Reducible.
        Pcase: h[3] > 5.
          Hubcap T[1]<=0 T[2]<=2 T[3]<=3 T[4]<=4 T[5]<=3 T[6]<=2 T[7]<=3 T[8]<=2
                 [].
        Hubcap T[1]<=0 T[2]<=3 T[3]<=4 T[4]<=4 T[5]<=3 T[8]<=2 T[6,7]<=4 [].
      Pcase: h[5] <= 5.
        Similar to *L3_4[1].
      Pcase: s[6] > 6.
        Hubcap T[1]<=3 T[2]<=3 T[3]<=3 T[4]<=3 T[5]<=2 T[8]<=2 T[6,7]<=4 [].
      Pcase: s[2] > 6.
        Hubcap T[3]<=2 T[4]<=3 T[5]<=3 T[6]<=2 T[7]<=3 T[8]<=2 T[1,2]<=4 [].
      Pcase: h[2] > 6.
        Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[4]<=3 T[5]<=3 T[6]<=2 T[7]<=3 T[8]<=2 [].
      Pcase: h[3] > 5.
        Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[4]<=3 T[5]<=3 T[6]<=2 T[7]<=3 T[8]<=2 [].
      Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[4]<=3 T[5]<=3 T[8]<=2 T[6,7]<=4 [].
    Pcase: s[2] <= 5.
      Similar to L2_1[5].
    Pcase L2_2: s[6] > 6.
      Pcase: s[2] > 7.
        Hubcap T[1]<=3 T[2]<=0 T[5]<=3 T[7]<=3 T[3,4]<=5 T[6,8]<=6 [].
      Pcase: s[3] > 7.
        Hubcap T[3]<=0 T[4]<=3 T[5]<=3 T[7]<=3 T[1,2]<=5 T[6,8]<=6 [].
      Pcase: s[4] > 7.
        Hubcap T[1]<=4 T[4]<=0 T[5]<=2 T[7]<=3 T[2,3]<=5 T[6,8]<=6 [].
      Pcase: s[7] > 6.
        Pcase: s[1] > 7.
          Hubcap T[1]<=0 T[2]<=2 T[3]<=4 T[4]<=4 T[5]<=3 T[8]<=2 T[6,7]<=4 [].
        Pcase: h[3] > 6.
          Hubcap T[5]<=3 T[8]<=3 T[1,2]<=5 T[3,4]<=5 T[6,7]<=4 [].
        Pcase: h[3] > 5.
          Pcase: s[6] > 7.
            Hubcap T[1]<=4 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=2 T[8]<=3 T[2,3]<=4 [].
          Pcase: s[7] > 7.
            Hubcap T[1]<=4 T[4]<=4 T[5]<=3 T[6]<=2 T[7]<=0 T[8]<=3 T[2,3]<=4 [].
          Pcase: h[5] > 5.
            Hubcap T[1]<=4 T[4]<=3 T[5]<=2 T[8]<=3 T[2,3]<=4 T[6,7]<=4 [].
          Pcase L5_1: s[4] > 6.
            Pcase: s[1] > 6.
              Hubcap T[1]<=4 T[2]<=2 T[3]<=2 T[4]<=4 T[5]<=2 T[8]<=2 T[6,7]<=4 [].
            Pcase: s[2] > 6.
              Hubcap T[1]<=3 T[2]<=4 T[3]<=0 T[4]<=4 T[5]<=2 T[8]<=3 T[6,7]<=4 [].
            Hubcap T[1]<=4 T[4]<=4 T[5]<=2 T[8]<=3 T[2,3]<=3 T[6,7]<=4 [].
          Pcase: s[1] > 6.
            Similar to *L5_1[4].
          Pcase: f1[4] <= 5.
            Reducible.
          Hubcap T[5]<=3 T[8]<=3 T[1,4]<=7 T[2,3]<=4 T[6,7]<=3 [].
        Pcase L4_1: s[1] > 6.
          Pcase: s[2] > 6.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=4 T[5]<=3 T[8]<=2 T[6,7]<=4 [].
          Pcase: s[3] > 6.
            Hubcap T[1]<=3 T[2]<=0 T[3]<=4 T[4]<=3 T[5]<=3 T[8]<=2 T[6,7]<=4 [].
          Pcase: s[4] > 6.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=3 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=2
                   [].
          Pcase: s[6] > 7.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=4 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=2 T[8]<=2
                   [].
          Pcase: s[7] > 7.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=4 T[4]<=4 T[5]<=3 T[6]<=2 T[7]<=0 T[8]<=2
                   [].
          Pcase: h[2] > 6.
            Hubcap T[1]<=2 T[2]<=2 T[5]<=3 T[8]<=2 T[3,4]<=7 T[6,7]<=4 [].
          Pcase: h[2] <= 5.
            Hubcap T[1]<=3 T[2]<=2 T[5]<=3 T[8]<=2 T[3,4]<=6 T[6,7]<=4 [].
          Pcase: h[4] > 6.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=3 T[5]<=3 T[8]<=2 T[6,7]<=4 [].
          Pcase: h[4] <= 5.
            Hubcap T[1]<=3 T[2]<=1 T[3]<=3 T[4]<=4 T[5]<=3 T[8]<=2 T[6,7]<=4 [].
          Pcase: h[5] > 5.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[4]<=3 T[5]<=2 T[8]<=2 T[6,7]<=4 [].
          Hubcap T[1]<=3 T[2]<=2 T[5]<=3 T[8]<=2 T[3,4]<=7 T[6,7]<=3 [].
        Pcase: s[4] > 6.
          Similar to *L4_1[4].
        Pcase L4_2: h[5] > 5.
          Pcase: s[2] > 6.
            Hubcap T[1]<=3 T[2]<=4 T[5]<=2 T[8]<=3 T[3,4]<=4 T[6,7]<=4 [].
          Pcase: s[3] > 6.
            Hubcap T[1]<=4 T[2]<=2 T[5]<=2 T[8]<=3 T[3,4]<=5 T[6,7]<=4 [].
          Pcase: s[6] > 7.
            Hubcap T[1]<=4 T[4]<=3 T[5]<=2 T[6]<=0 T[7]<=2 T[8]<=3 T[2,3]<=5 [].
          Pcase: s[7] > 7.
            Hubcap T[1]<=4 T[4]<=3 T[5]<=2 T[6]<=2 T[7]<=0 T[8]<=3 T[2,3]<=5 [].
          Hubcap T[5]<=2 T[8]<=3 T[1,4]<=6 T[2,3]<=5 T[6,7]<=4 [].
        Pcase: h[1] > 5.
          Similar to *L4_2[4].
        Pcase: f1[1] <= 5.
          Reducible.
        Pcase: f1[4] <= 5.
          Reducible.
        Pcase: s[2] > 6.
          Hubcap T[5]<=3 T[8]<=3 T[1,2]<=6 T[3,4]<=5 T[6,7]<=3 [].
        Pcase: s[3] > 6.
          Hubcap T[1]<=4 T[4]<=2 T[5]<=3 T[8]<=3 T[2,3]<=5 T[6,7]<=3 [].
        Pcase: h[2] > 6.
          Hubcap T[1]<=3 T[5]<=3 T[8]<=3 T[6,7]<=3 T[2,3]<=5 T[2,4]<=5 T[3,4]<=7
                 [].
        Pcase: h[2] <= 5.
          Hubcap T[1]<=4 T[2]<=3 T[3]<=1 T[4]<=3 T[5]<=3 T[8]<=3 T[6,7]<=3 [].
        Pcase: f1[2] <= 5.
          Reducible.
        Pcase: s[6] > 7.
          Hubcap T[1]<=3 T[5]<=3 T[6]<=0 T[7]<=2 T[8]<=3 T[2,3]<=6 T[2,4]<=7
                 T[3,4]<=6 [].
        Pcase: s[7] > 7.
          Hubcap T[1]<=3 T[5]<=3 T[6]<=2 T[7]<=0 T[8]<=3 T[2,3]<=6 T[2,4]<=7
                 T[3,4]<=6 [].
        Pcase: h[4] > 6.
          Hubcap T[1]<=3 T[2]<=4 T[3]<=1 T[4]<=3 T[5]<=3 T[8]<=3 T[6,7]<=3 [].
        Pcase: h[4] <= 5.
          Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[4]<=4 T[5]<=3 T[8]<=3 T[6,7]<=3 [].
        Pcase: f1[3] <= 5.
          Reducible.
        Pcase: h[6] > 5.
          Hubcap T[1]<=3 T[2]<=3 T[5]<=3 T[8]<=3 T[3,4]<=5 T[6,7]<=3 [].
        Hubcap T[3]<=3 T[4]<=3 T[5]<=3 T[8]<=3 T[1,2]<=5 T[6,7]<=3 [].
      Pcase: s[6] > 7.
        Pcase: s[1] > 7.
          Hubcap T[1]<=0 T[2]<=2 T[3]<=4 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3
                 [].
        Pcase: s[4] > 6.
          Hubcap T[5]<=2 T[6]<=0 T[7]<=3 T[8]<=4 T[1,2]<=6 T[3,4]<=5 [].
        Pcase: h[3] > 6.
          Hubcap T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=4 T[1,2]<=5 T[3,4]<=5 [].
        Pcase: h[4] > 6.
          Hubcap T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=3 T[1,2]<=6 T[3,8]<=5 [].
        Pcase: s[2] > 6.
          Pcase: s[1] > 6.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3
                   [].
          Pcase: s[3] > 6.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=4
                   [].
          Pcase: h[2] > 6.
            Hubcap T[1]<=3 T[2]<=2 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=4 T[3,4]<=5 [].
          Pcase: h[2] <= 5.
            Hubcap T[1]<=3 T[5]<=3 T[6]<=0 T[8]<=4 T[2,7]<=5 T[3,4]<=5 [].
          Pcase: h[3] > 5.
            Hubcap T[1]<=3 T[2]<=2 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=4 T[3,4]<=5 [].
          Hubcap T[1]<=2 T[2]<=4 T[3]<=2 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=2 T[8]<=3
                 [].
        Pcase: h[5] > 5.
          Hubcap T[5]<=2 T[6]<=0 T[7]<=3 T[8]<=4 T[1,2]<=5 T[3,4]<=6 [].
        Pcase: f1[4] <= 5.
          Reducible.
        Pcase: h[8] > 5.
          Hubcap T[5]<=3 T[6]<=0 T[7]<=2 T[8]<=3 T[1,2]<=5 T[3,4]<=7 [].
        Pcase: f1[7] <= 5.
          Reducible.
        Pcase: h[1] > 5.
          Hubcap T[1]<=3 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=2 T[8]<=3 T[2,3]<=5 [].
        Pcase: s[1] > 6.
          Pcase: s[3] > 6.
            Hubcap T[1]<=4 T[2]<=0 T[3]<=4 T[4]<=3 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3
                   [].
          Pcase: h[2] > 6.
            Hubcap T[1]<=2 T[2]<=2 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3 T[3,4]<=7 [].
          Pcase: h[3] > 5.
            Hubcap T[1]<=4 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3 T[2,3]<=3 [].
          Hubcap T[1]<=3 T[2]<=1 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=3 T[3,4]<=7 [].
        Pcase: f1[1] <= 5.
          Reducible.
        Pcase: s[3] > 6.
          Hubcap T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=4 T[1,2]<=5 T[3,4]<=5 [].
        Hubcap T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=4 T[1,3]<=5 T[2,4]<=5 [].
      Pcase: s[1] > 7.
        Hubcap T[1]<=0 T[2]<=2 T[5]<=3 T[8]<=3 T[3,4]<=6 T[6,7]<=6 [].
      Pcase: h[6] > 5.
        Pcase: h[7] <= 5.
          Pcase: s[1] > 6.
            Hubcap T[5]<=2 T[8]<=3 T[1,2]<=5 T[3,4]<=5 T[6,7]<=5 [].
          Hubcap T[5]<=2 T[8]<=3 T[1,2]<=6 T[3,4]<=5 T[6,7]<=4 [].
        Pcase: s[4] > 6.
          Hubcap T[5]<=2 T[7]<=3 T[1,2]<=6 T[3,4]<=5 T[6,8]<=4 [].
        Pcase: h[2] > 6.
          Hubcap T[5]<=3 T[7]<=3 T[1,2]<=4 T[3,4]<=6 T[6,8]<=4 [].
        Pcase: h[3] > 6.
          Hubcap T[5]<=3 T[7]<=3 T[1,2]<=5 T[3,4]<=5 T[6,8]<=4 [].
        Pcase: h[4] > 6.
          Hubcap T[3]<=2 T[4]<=2 T[5]<=3 T[7]<=3 T[1,2]<=6 T[6,8]<=4 [].
        Pcase: s[2] > 6.
          Pcase: s[1] > 6.
            Hubcap T[1]<=3 T[2]<=2 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3 T[3,4]<=5 [].
          Pcase: s[3] > 6.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=2 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=4
                   [].
          Pcase: h[2] <= 5.
            Hubcap T[1]<=3 T[5]<=3 T[2,7]<=5 T[3,4]<=5 T[6,8]<=4 [].
          Pcase: h[3] > 5.
            Hubcap T[1]<=3 T[2]<=2 T[5]<=3 T[8]<=4 T[3,4]<=5 T[6,7]<=3 [].
          Hubcap T[1]<=2 T[2]<=4 T[5]<=3 T[6]<=1 T[7]<=2 T[8]<=3 T[3,4]<=4 [].
        Pcase: h[5] > 5.
          Hubcap T[5]<=2 T[6]<=1 T[7]<=3 T[8]<=4 T[1,2]<=5 T[3,4]<=5 [].
        Pcase: f1[4] <= 5.
          Reducible.
        Pcase: h[8] > 5.
          Hubcap T[5]<=3 T[6]<=1 T[7]<=2 T[8]<=3 T[1,2]<=5 T[3,4]<=6 [].
        Pcase: f1[7] <= 5.
          Reducible.
        Pcase: s[1] <= 6.
          Hubcap T[5]<=3 T[8]<=4 T[1,2]<=5 T[3,4]<=5 T[6,7]<=3 [].
        Pcase: s[3] > 6.
          Hubcap T[1]<=4 T[2]<=0 T[3]<=4 T[4]<=2 T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3
                 [].
        Pcase: h[3] > 5.
          Hubcap T[5]<=3 T[6]<=1 T[7]<=3 T[8]<=3 T[1,4]<=7 T[2,3]<=3 [].
        Hubcap T[1]<=3 T[5]<=3 T[6]<=1 T[8]<=3 T[2,7]<=4 T[3,4]<=6 [].
      Pcase: s[2] > 6.
        Hubcap T[5]<=2 T[8]<=3 T[1,2]<=5 T[3,4]<=4 T[6,7]<=6 [].
      Pcase: s[3] > 6.
        Hubcap T[5]<=2 T[8]<=3 T[1,2]<=4 T[3,4]<=5 T[6,7]<=6 [].
      Pcase: s[1] > 6.
        Pcase: h[2] > 6.
          Hubcap T[1]<=2 T[5]<=2 T[8]<=3 T[6,7]<=6 T[2,3]<=4 T[2,4]<=5 T[3,4]<=6
                 [].
        Pcase: h[3] > 6.
          Hubcap T[1]<=4 T[2]<=0 T[5]<=2 T[6]<=4 T[7]<=3 T[8]<=3 T[3,4]<=4 [].
        Pcase: h[4] > 6.
          Hubcap T[1]<=4 T[4]<=2 T[5]<=2 T[8]<=3 T[2,3]<=3 T[6,7]<=6 [].
        Pcase: h[8] > 5.
          Hubcap T[5]<=2 T[8]<=2 T[1,2]<=5 T[3,4]<=6 T[6,7]<=5 [].
        Pcase: f1[7] <= 5.
          Reducible.
        Pcase: h[4] > 5.
          Hubcap T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[1,2]<=4 T[3,4]<=5 [].
        Pcase: h[1] > 5.
          Hubcap T[5]<=2 T[6]<=3 T[7]<=2 T[8]<=3 T[1,2]<=4 T[3,4]<=6 [].
        Pcase: h[3] > 5.
          Pcase: s[4] > 6.
            Hubcap T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[1,4]<=7 T[2,3]<=2 [].
          Pcase: h[5] <= 5.
            Reducible.
          Pcase: h[2] > 5.
            Hubcap T[1]<=3 T[4]<=3 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[2,3]<=3 [].
          Pcase: h[5] > 6.
            Hubcap T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[1,4]<=6 T[2,3]<=3 [].
          Hubcap T[4]<=3 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[1,2]<=4 T[1,3]<=6
                 T[2,3]<=3 [].
        Pcase: f1[3] <= 6.
          Reducible.
        Pcase: s[4] > 6.
          Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[4]<=3 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3
                 [].
        Pcase: h[5] <= 5.
          Reducible.
        Pcase: h[2] <= 5.
          Hubcap T[1]<=3 T[2]<=1 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[3,4]<=5 [].
        Pcase: h[5] > 6.
          Hubcap T[1]<=3 T[2]<=1 T[3]<=3 T[4]<=2 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3
                 [].
        Hubcap T[2]<=1 T[4]<=3 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[1,3]<=5 [].
      Pcase: h[1] <= 5.
        Reducible.
      Pcase: s[4] > 6.
        Pcase: h[2] > 5.
          Hubcap T[5]<=2 T[8]<=3 T[1,2]<=5 T[3,4]<=5 T[6,7]<=5 [].
        Pcase: h[3] > 5.
          Hubcap T[1]<=3 T[4]<=4 T[5]<=2 T[8]<=3 T[2,3]<=3 T[6,7]<=5 [].
        Hubcap T[1]<=3 T[2]<=3 T[3]<=1 T[4]<=3 T[5]<=2 T[8]<=3 T[6,7]<=5 [].
      Pcase: h[5] <= 5.
        Reducible.
      Pcase: h[2] > 6.
        Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[4]<=3 T[5]<=2 T[8]<=3 T[6,7]<=5 [].
      Pcase: h[2] > 5.
        Hubcap T[5]<=2 T[8]<=3 T[1,2]<=5 T[3,4]<=5 T[6,7]<=5 [].
      Pcase: h[4] <= 5.
        Reducible.
      Pcase: h[3] > 5.
        Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[4]<=2 T[5]<=2 T[8]<=3 T[6,7]<=5 [].
      Hubcap T[1]<=3 T[2]<=3 T[5]<=2 T[8]<=3 T[3,4]<=4 T[6,7]<=5 [].
    Pcase: s[7] > 6.
      Similar to *L2_2[4].
    Pcase: s[2] > 7.
      Hubcap T[1]<=2 T[2]<=0 T[5]<=3 T[6]<=4 T[7]<=4 T[8]<=3 T[3,4]<=4 [].
    Pcase: s[3] > 7.
      Hubcap T[3]<=0 T[4]<=2 T[5]<=3 T[6]<=4 T[7]<=4 T[8]<=3 T[1,2]<=4 [].
    Pcase L2_3: s[1] > 6.
      Pcase: s[4] > 7.
        Hubcap T[1]<=3 T[4]<=0 T[5]<=3 T[6]<=4 T[7]<=4 T[8]<=3 T[2,3]<=3 [].
      Pcase: s[4] > 6.
        Pcase: s[1] > 7.
          Hubcap T[1]<=0 T[2]<=2 T[5]<=3 T[6]<=4 T[7]<=4 T[8]<=3 T[3,4]<=4 [].
        Pcase: s[2] > 6.
          Hubcap T[1]<=2 T[3]<=0 T[5]<=3 T[6]<=4 T[7]<=4 T[8]<=3 T[2,4]<=4 [].
        Pcase: s[3] > 6.
          Hubcap T[1]<=3 T[2]<=0 T[5]<=3 T[6]<=4 T[7]<=4 T[8]<=3 T[3,4]<=3 [].
        Pcase: h[3] > 6.
          Hubcap T[1]<=3 T[2]<=0 T[3]<=0 T[4]<=3 T[5]<=3 T[6]<=4 T[7]<=4 T[8]<=3
                 [].
        Pcase: h[6] > 5.
          Hubcap T[5]<=2 T[8]<=3 T[1,2]<=4 T[3,4]<=4 T[6,7]<=7 [].
        Pcase: f1[6] <= 5.
          Reducible.
        Pcase: h[7] > 6.
          Hubcap T[1]<=3 T[5]<=3 T[7]<=3 T[8]<=3 T[2,3]<=3 T[4,6]<=5 [].
        Pcase: h[8] > 5.
          Hubcap T[5]<=3 T[8]<=2 T[1,2]<=4 T[3,4]<=4 T[6,7]<=7 [].
        Pcase: f1[7] <= 5.
          Reducible.
        Pcase: h[3] <= 5.
          Hubcap T[5]<=3 T[6]<=4 T[7]<=4 T[8]<=3 T[1,3]<=3 T[2,4]<=3 [].
        Pcase: h[2] > 6.
          Hubcap T[1]<=1 T[2]<=2 T[5]<=3 T[6]<=4 T[7]<=4 T[8]<=3 T[3,4]<=3 [].
        Pcase: h[2] <= 5.
          Hubcap T[5]<=3 T[8]<=3 T[1,4]<=5 T[2,3]<=2 T[6,7]<=7 [].
        Pcase: h[4] > 5.
          Hubcap T[1]<=2 T[2]<=1 T[3]<=1 T[4]<=2 T[5]<=3 T[6]<=4 T[7]<=4 T[8]<=3
                 [].
        Hubcap T[1]<=2 T[2]<=2 T[5]<=3 T[8]<=3 T[3,4]<=3 T[6,7]<=7 [].
      Pcase: h[5] <= 5.
        Reducible.
      Pcase: s[1] > 7.
        Hubcap T[1]<=0 T[2]<=2 T[5]<=3 T[8]<=3 T[3,4]<=5 T[6,7]<=7 [].
      Pcase: s[2] > 6.
        Hubcap T[1]<=2 T[8]<=3 T[2,5]<=4 T[3,4]<=4 T[6,7]<=7 [].
      Pcase: h[3] > 6.
        Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[4]<=2 T[5]<=3 T[8]<=3 T[6,7]<=7 [].
      Pcase: h[6] > 5.
        Hubcap T[5]<=2 T[8]<=3 T[1,2]<=4 T[3,4]<=5 T[6,7]<=6 [].
      Pcase: f1[6] <= 5.
        Reducible.
      Pcase: h[4] > 6.
        Hubcap T[4]<=2 T[5]<=3 T[8]<=3 T[6,7]<=7 T[1,2]<=4 T[1,3]<=4 T[2,3]<=3 [].
      Pcase: h[7] > 6.
        Hubcap T[1]<=3 T[5]<=3 T[6]<=2 T[8]<=3 T[2,7]<=4 T[3,4]<=5 [].
      Pcase: h[8] > 5.
        Hubcap T[5]<=3 T[8]<=2 T[1,2]<=4 T[3,4]<=5 T[6,7]<=6 [].
      Pcase: f1[7] <= 5.
        Reducible.
      Pcase: h[2] > 5.
        Pcase: s[3] > 6.
          Hubcap T[1]<=2 T[2]<=0 T[5]<=3 T[8]<=3 T[3,4]<=5 T[6,7]<=7 [].
        Pcase: h[4] <= 5.
          Reducible.
        Pcase: h[3] > 5.
          Hubcap T[1]<=2 T[2]<=1 T[3]<=1 T[4]<=2 T[5]<=3 T[6]<=4 T[7]<=4 T[8]<=3
                 [].
        Pcase: h[5] > 6.
          Hubcap T[5]<=3 T[8]<=3 T[1,2]<=3 T[3,4]<=4 T[6,7]<=7 [].
        Pcase: f1[3] <= 5.
          Reducible.
        Pcase: f1[4] <= 5.
          Reducible.
        Pcase: h[2] > 6.
          Hubcap T[1]<=1 T[2]<=1 T[5]<=3 T[8]<=3 T[3,4]<=5 T[6,7]<=7 [].
        Pcase: h[1] > 5.
          Hubcap T[1]<=1 T[2]<=1 T[3]<=3 T[4]<=3 T[5]<=3 T[8]<=3 T[6,7]<=6 [].
        Pcase: f1[1] <= 5.
          Reducible.
        Pcase: f1[6] <= 6.
          Reducible.
        Pcase: f1[1] <= 6.
          Hubcap T[1]<=1 T[2]<=1 T[5]<=3 T[8]<=3 T[3,4]<=5 T[6,7]<=7 [].
        Pcase: f1[2] > 5.
          Hubcap T[1]<=2 T[2]<=1 T[5]<=3 T[8]<=3 T[3,4]<=4 T[6,7]<=7 [].
        Hubcap T[1]<=1 T[2]<=1 T[5]<=3 T[8]<=3 T[3,4]<=5 T[6,7]<=7 [].
      Pcase: h[1] <= 5.
        Reducible.
      Pcase: s[3] > 6.
        Hubcap T[1]<=3 T[2]<=0 T[5]<=3 T[8]<=3 T[3,4]<=5 T[6,7]<=6 [].
      Hubcap T[1]<=2 T[2]<=2 T[5]<=3 T[8]<=3 T[3,4]<=4 T[6,7]<=6 [].
    Pcase: s[4] > 6.
      Similar to *L2_3[4].
    Pcase: h[5] <= 5.
      Reducible.
    Pcase: h[1] <= 5.
      Reducible.
    Pcase: h[3] > 5.
      Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[4]<=2 T[5]<=3 T[8]<=3 T[6,7]<=6 [].
    Pcase: h[7] > 6.
      Hubcap T[5]<=3 T[6]<=2 T[7]<=2 T[8]<=3 T[1,2]<=5 T[3,4]<=5 [].
    Pcase: f1[1] <= 5.
      Hubcap T[1]<=1 T[4]<=3 T[5]<=3 T[8]<=3 T[2,3]<=4 T[6,7]<=6 [].
    Pcase: f1[4] <= 5.
      Hubcap T[1]<=3 T[4]<=1 T[5]<=3 T[8]<=3 T[2,3]<=4 T[6,7]<=6 [].
    Pcase L2_4: h[2] <= 5.
      Pcase: s[2] <= 6.
        Reducible.
      Pcase: s[3] > 6.
        Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[4]<=2 T[5]<=3 T[8]<=3 T[6,7]<=6 [].
      Hubcap T[1]<=2 T[2]<=3 T[5]<=3 T[8]<=3 T[3,4]<=3 T[6,7]<=6 [].
    Pcase: h[4] <= 5.
      Similar to *L2_4[4].
    Pcase: s[3] > 6.
      Hubcap T[5]<=3 T[8]<=3 T[1,2]<=3 T[3,4]<=5 T[6,7]<=6 [].
    Pcase: s[2] > 6.
      Hubcap T[1]<=2 T[8]<=3 T[2,5]<=6 T[3,4]<=3 T[6,7]<=6 [].
    Pcase: h[2] > 6.
      Hubcap T[1]<=2 T[5]<=3 T[8]<=3 T[6,7]<=6 T[2,3]<=4 T[2,4]<=4 T[3,4]<=5 [].
    Pcase: f1[2] <= 5.
      Reducible.
    Pcase: h[4] > 6.
      Hubcap T[3]<=1 T[4]<=2 T[5]<=3 T[8]<=3 T[1,2]<=5 T[6,7]<=6 [].
    Hubcap T[5]<=3 T[8]<=3 T[1,2]<=4 T[3,4]<=4 T[6,7]<=6 [].
  Pcase: s[3] <= 5.
    Similar to L1_2[3].
  Pcase L1_3: s[6] <= 5.
    Pcase L2_1: s[4] <= 5.
      Pcase: s[2] <= 5.
        Pcase: s[1] > 8.
          Hubcap T[1]<=0 T[2,6]<=5 T[4,8]<=5 T[3,5]<=6 T[3,7]<=9 T[5,7]<=6 [].
        Pcase: s[1] <= 6.
          Hubcap T[1]<=5 T[2]<=3 T[3]<=1 T[4]<=2 T[5]<=4 T[6]<=2 T[7,8]<=3 [].
        Pcase: s[3] > 8.
          Hubcap T[1]<=4 T[2]<=2 T[3]<=0 T[6]<=3 T[4,8]<=5 T[5,7]<=6 [].
        Pcase: s[3] <= 6.
          Hubcap T[1]<=1 T[2]<=3 T[3]<=5 T[6]<=2 T[7]<=4 T[8]<=2 T[4,5]<=3 [].
        Pcase: s[5] > 8.
          Hubcap T[2]<=2 T[3]<=4 T[4]<=2 T[5]<=0 T[6]<=3 T[8]<=3 T[1,7]<=6 [].
        Pcase: s[5] <= 6.
          Hubcap T[1]<=4 T[2]<=2 T[3]<=1 T[4]<=3 T[5]<=5 T[8]<=2 T[6,7]<=3 [].
        Pcase: s[7] > 6.
          Hubcap T[2]<=2 T[4]<=2 T[6]<=2 T[8]<=2 T[1,3]<=6 T[5,7]<=6 [].
        Hubcap T[1]<=1 T[2]<=2 T[3]<=4 T[4]<=2 T[7]<=5 T[8]<=3 T[5,6]<=3 [].
      Pcase: s[1] > 7.
        Hubcap T[1]<=0 T[6]<=3 T[2,3]<=5 T[4,8]<=6 T[5,7]<=6 [].
      Pcase: s[3] > 7.
        Hubcap T[3]<=0 T[6]<=3 T[1,2]<=5 T[4,8]<=6 T[5,7]<=6 [].
      Pcase L3_1: s[5] <= 6.
        Pcase: s[7] <= 6.
          Reducible.
        Pcase: s[2] > 7.
          Hubcap T[1]<=3 T[2]<=0 T[3]<=3 T[5]<=5 T[4,8]<=6 T[6,7]<=3 [].
        Pcase: h[5] > 5.
          Hubcap T[5]<=4 T[1,2]<=5 T[6,7]<=3 T[3,4]<=6 T[3,8]<=6 T[4,8]<=5 [].
        Pcase: f1[5] <= 5.
          Reducible.
        Pcase: h[4] > 6.
          Hubcap T[4]<=3 T[5]<=5 T[1,2]<=5 T[3,8]<=4 T[6,7]<=3 [].
        Pcase: h[6] > 5.
          Hubcap T[5]<=4 T[6]<=2 T[7]<=1 T[4,8]<=6 T[1,2]<=5 T[1,3]<=6 T[2,3]<=4
                 [].
        Pcase: f1[5] <= 6.
          Reducible.
        Pcase: h[1] > 5.
          Hubcap T[5]<=5 T[6]<=3 T[7]<=0 T[8]<=2 T[1,4]<=6 T[2,3]<=4 [].
        Pcase: s[1] > 6.
          Pcase: s[2] > 6.
            Hubcap T[3]<=3 T[4]<=4 T[5]<=5 T[6]<=3 T[7]<=0 T[8]<=2 T[1,2]<=3 [].
          Hubcap T[1]<=4 T[4]<=3 T[5]<=5 T[6]<=3 T[7]<=0 T[8]<=2 T[2,3]<=3 [].
        Pcase: f1[1] <= 5.
          Reducible.
        Pcase: s[2] <= 6.
          Hubcap T[3]<=1 T[4]<=3 T[5]<=5 T[6]<=3 T[7]<=0 T[8]<=3 T[1,2]<=5 [].
        Pcase: s[3] <= 6.
          Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[4]<=3 T[5]<=5 T[6]<=3 T[7]<=0 T[8]<=3
                 [].
        Pcase: s[7] <= 7.
          Hubcap T[1]<=2 T[4]<=3 T[5]<=5 T[6]<=3 T[7]<=0 T[8]<=3 T[2,3]<=4 [].
        Pcase: h[2] > 6.
          Hubcap T[1]<=3 T[2]<=0 T[3]<=3 T[4]<=3 T[5]<=5 T[6]<=3 T[7]<=0 T[8]<=3
                 [].
        Pcase: h[2] <= 5.
          Hubcap T[1]<=3 T[4]<=3 T[5]<=5 T[6]<=3 T[7]<=0 T[8]<=3 T[2,3]<=3 [].
        Pcase: h[3] > 5.
          Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[4]<=3 T[5]<=5 T[6]<=3 T[7]<=0 T[8]<=3
                 [].
        Pcase: h[4] > 5.
          Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[4]<=3 T[5]<=5 T[6]<=3 T[7]<=0 T[8]<=3
                 [].
        Pcase: h[7] <= 5.
          Reducible.
        Pcase: h[8] > 5.
          Hubcap T[1]<=2 T[2]<=1 T[3]<=3 T[4]<=3 T[5]<=5 T[6]<=3 T[7]<=0 T[8]<=3
                 [].
        Hubcap T[1]<=3 T[4]<=3 T[5]<=5 T[6]<=3 T[7]<=0 T[8]<=3 T[2,3]<=3 [].
      Pcase: s[7] <= 6.
        Similar to *L3_1[5].
      Pcase: s[2] > 7.
        Hubcap T[1]<=3 T[2]<=0 T[3]<=3 T[4]<=3 T[6]<=2 T[8]<=3 T[5,7]<=6 [].
      Pcase L3_2: h[2] > 5.
        Pcase: s[1] > 6.
          Hubcap T[6]<=2 T[8]<=2 T[1,4]<=5 T[2,3]<=5 T[5,7]<=6 [].
        Pcase: s[5] > 8.
          Hubcap T[5]<=0 T[6]<=2 T[7]<=4 T[8]<=3 T[1,2]<=5 T[3,4]<=6 [].
        Pcase: s[7] > 8.
          Hubcap T[5]<=4 T[6]<=2 T[7]<=0 T[8]<=3 T[1,2]<=5 T[3,4]<=6 [].
        Pcase: h[3] > 5.
          Pcase: s[2] <= 6.
            Hubcap T[1]<=3 T[2]<=2 T[4]<=2 T[6]<=2 T[3,8]<=5 T[5,7]<=6 [].
          Pcase: s[3] > 6.
            Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[4]<=2 T[6]<=2 T[8]<=3 T[5,7]<=6 [].
          Pcase: h[4] > 5.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=2 T[6]<=2 T[8]<=3 T[5,7]<=6 [].
          Pcase: f1[3] <= 5.
            Reducible.
          Pcase: s[5] > 7.
            Hubcap T[1]<=3 T[4]<=3 T[6]<=2 T[8]<=3 T[2,3]<=4 T[5,7]<=5 [].
          Pcase: h[2] > 6.
            Hubcap T[1]<=3 T[4]<=3 T[6]<=2 T[8]<=3 T[2,3]<=3 T[5,7]<=6 [].
          Pcase: h[5] > 5.
            Hubcap T[3]<=2 T[4]<=3 T[6]<=2 T[8]<=3 T[1,2]<=4 T[5,7]<=6 [].
          Pcase: s[7] <= 7.
            Hubcap T[3]<=3 T[4]<=3 T[6]<=2 T[8]<=3 T[1,2]<=3 T[5,7]<=6 [].
          Pcase: h[6] > 5.
            Hubcap T[1]<=3 T[2]<=1 T[3]<=3 T[4]<=3 T[5]<=3 T[6]<=2 T[7]<=2 T[8]<=3
                   [].
          Hubcap T[1]<=3 T[2]<=1 T[3]<=3 T[4]<=3 T[5]<=4 T[6]<=2 T[7,8]<=4 [].
        Pcase: h[2] > 6.
          Hubcap T[6]<=2 T[1,2]<=4 T[5,7]<=6 T[3,4]<=6 T[3,8]<=6 T[4,8]<=5 [].
        Pcase: f1[1] <= 5.
          Hubcap T[1]<=1 T[2]<=2 T[3]<=3 T[4]<=3 T[6]<=2 T[8]<=2 T[5,7]<=6 [].
        Pcase: s[2] > 6.
          Pcase: s[3] > 6.
            Hubcap T[1]<=3 T[2]<=1 T[3]<=3 T[4]<=2 T[6]<=2 T[8]<=3 T[5,7]<=6 [].
          Pcase: h[1] <= 5.
            Reducible.
          Pcase: h[4] > 5.
            Hubcap T[1]<=2 T[2]<=4 T[3]<=2 T[4]<=2 T[6]<=2 T[8]<=2 T[5,7]<=6 [].
          Pcase: f1[3] <= 6.
            Reducible.
          Pcase: s[5] > 7.
            Hubcap T[1]<=2 T[4]<=3 T[6]<=2 T[8]<=2 T[2,3]<=6 T[5,7]<=5 [].
          Pcase: h[5] > 5.
            Hubcap T[3]<=2 T[4]<=3 T[6]<=2 T[8]<=2 T[1,2]<=5 T[5,7]<=6 [].
          Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[4]<=3 T[6]<=2 T[8]<=2 T[5,7]<=6 [].
        Pcase: s[3] <= 6.
          Reducible.
        Pcase: s[5] > 7.
          Hubcap T[4]<=2 T[5]<=2 T[6]<=2 T[8]<=3 T[1,7]<=7 T[2,3]<=4 [].
        Pcase: s[7] > 7.
          Hubcap T[4]<=2 T[5]<=4 T[6]<=2 T[8]<=3 T[1,7]<=5 T[2,3]<=4 [].
        Pcase: h[4] <= 5.
          Hubcap T[1]<=3 T[2]<=1 T[3]<=4 T[4]<=2 T[6]<=2 T[8]<=2 T[5,7]<=6 [].
        Pcase: h[6] <= 5.
          Hubcap T[3]<=3 T[4]<=2 T[6]<=2 T[8]<=3 T[1,2]<=4 T[5,7]<=6 [].
        Pcase: h[5] > 5.
          Hubcap T[4]<=2 T[5]<=2 T[6]<=2 T[8]<=3 T[1,7]<=7 T[2,3]<=4 [].
        Hubcap T[4]<=2 T[5]<=3 T[6]<=2 T[8]<=3 T[1,7]<=6 T[2,3]<=4 [].
      Pcase: h[3] > 5.
        Similar to *L3_2[5].
      Pcase: s[3] > 6.
        Hubcap T[4]<=2 T[6]<=2 T[1,2]<=5 T[3,8]<=5 T[5,7]<=6 [].
      Hubcap T[6]<=2 T[8]<=2 T[1,4]<=5 T[2,3]<=5 T[5,7]<=6 [].
    Pcase: s[2] <= 5.
      Similar to L2_1[2].
    Pcase: s[7] <= 6.
      Pcase: s[3] > 7.
        Hubcap T[3]<=0 T[7]<=5 T[1,2]<=4 T[4,5]<=4 T[6,8]<=7 [].
      Pcase: s[3] > 6.
        Pcase: s[1] > 7.
          Hubcap T[1]<=0 T[2]<=0 T[3]<=4 T[6]<=4 T[7]<=5 T[8]<=3 T[4,5]<=4 [].
        Pcase: s[5] > 7.
          Hubcap T[3]<=4 T[4]<=0 T[5]<=0 T[6]<=3 T[7]<=5 T[8]<=4 T[1,2]<=4 [].
        Pcase: f1[7] <= 5.
          Hubcap T[3]<=4 T[6]<=3 T[7]<=2 T[8]<=3 T[1,2]<=4 T[4,5]<=4 [].
        Pcase: f1[7] <= 6.
          Pcase: s[2] > 7.
            Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[7]<=4 T[4,5]<=4 T[6,8]<=7 [].
          Pcase: s[4] > 7.
            Hubcap T[3]<=2 T[4]<=0 T[5]<=3 T[7]<=4 T[1,2]<=4 T[6,8]<=7 [].
          Pcase: s[1] > 6.
            Pcase: s[2] > 6.
              Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[6]<=4 T[7]<=4 T[8]<=3 T[4,5]<=4 [].
            Pcase: s[4] > 6.
              Hubcap T[1]<=4 T[2]<=0 T[3]<=2 T[4]<=1 T[5]<=3 T[7]<=4 T[6,8]<=6 [].
            Pcase: s[5] > 6.
              Hubcap T[1]<=4 T[2]<=0 T[4]<=0 T[7]<=4 T[3,5]<=7 T[6,8]<=5 [].
            Pcase: h[2] > 6.
              Hubcap T[1]<=2 T[2]<=0 T[3]<=4 T[5]<=3 T[7]<=4 T[8]<=3 T[4,6]<=4 [].
            Pcase: h[2] <= 5.
              Hubcap T[1]<=4 T[2]<=0 T[5]<=3 T[8]<=2 T[3,7]<=7 T[4,6]<=4 [].
            Pcase: h[3] > 6.
              Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[4]<=2 T[5]<=3 T[7]<=4 T[6,8]<=6 [].
            Pcase: h[3] <= 5.
              Hubcap T[1]<=3 T[2]<=0 T[3]<=3 T[5]<=3 T[7]<=4 T[8]<=3 T[4,6]<=4 [].
            Pcase: h[4] > 5.
              Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[4]<=2 T[5]<=3 T[7]<=4 T[6,8]<=6 [].
            Pcase: h[5] > 5.
              Hubcap T[1]<=3 T[2]<=0 T[3]<=4 T[7]<=4 T[4,5]<=3 T[6,8]<=6 [].
            Hubcap T[1]<=3 T[2]<=0 T[3]<=4 T[4]<=2 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=3
                   [].
          Pcase: f1[1] <= 5.
            Pcase: h[1] <= 6.
              Reducible.
            Pcase: s[2] > 6.
              Hubcap T[1]<=1 T[2]<=1 T[3]<=2 T[4]<=2 T[5]<=4 T[6]<=4 T[7,8]<=6 [].
            Pcase: s[4] > 6.
              Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[4]<=1 T[5]<=3 T[6]<=4 T[7,8]<=6 [].
            Pcase: s[5] > 6.
              Hubcap T[1]<=2 T[2]<=2 T[3]<=4 T[4]<=0 T[5,6]<=6 T[7,8]<=6 [].
            Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[5]<=3 T[4,6]<=4 T[7,8]<=6 [].
          Pcase: s[2] > 6.
            Pcase: s[4] > 6.
              Hubcap T[1]<=3 T[2]<=1 T[3]<=0 T[4]<=1 T[5]<=3 T[6]<=4 T[7]<=4
                     T[8]<=4 [].
            Pcase: s[5] > 6.
              Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[4]<=0 T[5]<=4 T[7]<=4 T[6,8]<=6 [].
            Pcase: h[2] > 6.
              Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[5]<=3 T[7]<=4 T[8]<=4 T[4,6]<=4 [].
            Pcase: h[4] > 5.
              Hubcap T[1]<=3 T[2]<=1 T[3]<=1 T[5]<=3 T[7]<=4 T[8]<=4 T[4,6]<=4 [].
            Pcase: h[5] > 5.
              Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[7]<=4 T[4,5]<=3 T[6,8]<=7 [].
            Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[4]<=2 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=4
                   [].
          Pcase: h[3] > 6.
            Hubcap T[1]<=3 T[7]<=4 T[2,8]<=4 T[3,6]<=5 T[4,5]<=4 [].
          Pcase: h[6] > 5.
            Hubcap T[1]<=3 T[2,7]<=4 T[6,8]<=6 T[3,4]<=5 T[3,5]<=6 T[4,5]<=4 [].
          Pcase: s[4] > 6.
            Pcase: s[5] > 6.
              Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[4]<=0 T[5]<=3 T[6]<=3 T[7]<=4
                     T[8]<=4 [].
            Pcase: f1[5] <= 5.
              Reducible.
            Pcase: h[2] > 5.
              Hubcap T[3]<=2 T[4]<=1 T[5]<=3 T[7]<=4 T[1,2]<=3 T[6,8]<=7 [].
            Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[4]<=1 T[5]<=3 T[6]<=4 T[7]<=4 T[8]<=2
                   [].
          Pcase: h[2] <= 5.
            Hubcap T[1]<=3 T[2]<=1 T[4]<=0 T[8]<=2 T[3,6]<=7 T[5,7]<=7 [].
          Pcase: s[5] > 6.
            Hubcap T[4]<=0 T[7]<=4 T[1,2]<=3 T[3,5]<=7 T[6,8]<=6 [].
          Hubcap T[3]<=3 T[4]<=0 T[5]<=3 T[7]<=4 T[1,2]<=3 T[6,8]<=7 [].
        Pcase L4_1: s[2] > 7.
          Pcase: s[1] > 6.
            Hubcap T[1]<=2 T[2]<=0 T[3]<=2 T[6]<=4 T[7]<=5 T[8]<=3 T[4,5]<=4 [].
          Pcase: s[4] > 6.
            Hubcap T[1]<=3 T[2]<=0 T[3]<=0 T[4]<=1 T[5]<=3 T[6]<=4 T[7]<=5 T[8]<=4
                   [].
          Pcase: s[5] > 6.
            Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[4]<=0 T[7]<=5 T[8]<=4 T[5,6]<=6 [].
          Hubcap T[1]<=3 T[2]<=0 T[5]<=3 T[8]<=4 T[3,7]<=6 T[4,6]<=4 [].
        Pcase: s[4] > 7.
          Similar to *L4_1[3].
        Pcase L4_2: s[1] > 6.
          Pcase: s[2] > 6.
            Hubcap T[1]<=3 T[2]<=0 T[7]<=5 T[8]<=3 T[3,6]<=5 T[4,5]<=4 [].
          Pcase: h[3] > 6.
            Hubcap T[2]<=0 T[8]<=3 T[1,7]<=8 T[3,6]<=5 T[4,5]<=4 [].
          Pcase L5_1: h[2] <= 5.
            Pcase: h[8] <= 5.
              Reducible.
            Pcase: s[4] > 6.
              Hubcap T[1]<=4 T[2]<=0 T[3]<=2 T[4]<=1 T[5]<=3 T[6]<=4 T[7]<=4
                     T[8]<=2 [].
            Hubcap T[2]<=0 T[8]<=2 T[1,3]<=7 T[4,6]<=4 T[5,7]<=7 [].
          Pcase: h[8] > 5.
            Hubcap T[1]<=3 T[2]<=0 T[7]<=4 T[8]<=2 T[3,6]<=7 T[4,5]<=4 [].
          Pcase: s[4] > 6.
            Hubcap T[2]<=0 T[3]<=2 T[4]<=1 T[5]<=3 T[7]<=5 T[8]<=3 T[1,6]<=6 [].
          Pcase: s[5] > 6.
            Pcase: h[5] <= 5.
              Similar to *L5_1[3].
            Pcase: h[2] > 6.
              Hubcap T[1]<=2 T[2]<=0 T[3]<=4 T[4]<=0 T[5]<=3 T[6]<=3 T[7]<=5
                     T[8]<=3 [].
            Pcase: h[4] > 6.
              Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[4]<=0 T[5]<=3 T[6]<=3 T[7]<=5
                     T[8]<=3 [].
            Pcase: h[5] > 6.
              Hubcap T[1]<=3 T[2]<=0 T[3]<=4 T[4]<=0 T[5]<=2 T[6]<=3 T[7]<=5
                     T[8]<=3 [].
            Pcase: h[6] > 5.
              Hubcap T[1]<=3 T[2]<=0 T[3]<=4 T[4]<=0 T[5]<=1 T[6]<=3 T[7]<=5
                     T[8]<=3 [].
            Hubcap T[2]<=0 T[3]<=4 T[4]<=0 T[5]<=3 T[7]<=5 T[8]<=3 T[1,6]<=5 [].
          Pcase: h[2] > 6.
            Hubcap T[1]<=2 T[2]<=0 T[5]<=3 T[8]<=3 T[3,7]<=8 T[4,6]<=4 [].
          Pcase: h[4] > 5.
            Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[5]<=3 T[7]<=5 T[8]<=3 T[4,6]<=4 [].
          Pcase: h[5] > 5.
            Hubcap T[2]<=0 T[8]<=3 T[1,6]<=6 T[3,7]<=8 T[4,5]<=3 [].
          Hubcap T[1]<=3 T[2]<=0 T[3]<=4 T[4]<=2 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=3
                 [].
        Pcase: s[5] > 6.
          Similar to *L4_2[3].
        Pcase: f1[1] <= 5.
          Pcase: h[1] <= 6.
            Reducible.
          Pcase: s[2] > 6.
            Hubcap T[1]<=1 T[2]<=1 T[3]<=2 T[6]<=4 T[7]<=5 T[8]<=3 T[4,5]<=4 [].
          Pcase: s[4] > 6.
            Hubcap T[1]<=2 T[4]<=1 T[5]<=3 T[6]<=4 T[2,7]<=6 T[3,8]<=4 [].
          Hubcap T[1]<=2 T[5]<=3 T[2,8]<=4 T[3,7]<=7 T[4,6]<=4 [].
        Pcase: f1[5] <= 5.
          Pcase: h[6] <= 6.
            Reducible.
          Pcase: s[2] > 6.
            Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[8]<=4 T[4,6]<=4 T[5,7]<=6 [].
          Hubcap T[1]<=3 T[3]<=3 T[2,8]<=4 T[4,6]<=4 T[5,7]<=6 [].
        Pcase L4_3: s[2] > 6.
          Pcase: s[4] > 6.
            Hubcap T[1]<=3 T[2]<=1 T[3]<=0 T[4]<=1 T[5]<=3 T[7]<=5 T[6,8]<=7 [].
          Pcase: h[2] > 6.
            Hubcap T[1]<=3 T[2]<=0 T[4]<=1 T[5]<=3 T[3,7]<=6 T[6,8]<=7 [].
          Pcase: h[4] > 6.
            Hubcap T[1]<=3 T[2]<=1 T[3]<=0 T[4]<=1 T[5]<=3 T[7]<=5 T[6,8]<=7 [].
          Pcase: h[4] <= 5.
            Hubcap T[1]<=3 T[2]<=1 T[3,7]<=6 T[4,5]<=3 T[6,8]<=7 [].
          Pcase: h[5] > 5.
            Hubcap T[1]<=3 T[2]<=1 T[3]<=1 T[7]<=5 T[4,5]<=3 T[6,8]<=7 [].
          Hubcap T[1]<=3 T[2]<=1 T[3]<=1 T[4]<=1 T[5]<=3 T[6]<=2 T[7]<=4 T[8]<=4
                 [].
        Pcase: s[4] > 6.
          Similar to *L4_3[3].
        Pcase: h[2] <= 5.
          Hubcap T[1]<=3 T[2]<=1 T[3]<=3 T[5]<=3 T[7]<=4 T[8]<=2 T[4,6]<=4 [].
        Pcase: h[3] > 6.
          Hubcap T[1]<=3 T[5]<=3 T[2,8]<=4 T[3,7]<=6 T[4,6]<=4 [].
        Pcase: h[4] > 6.
          Hubcap T[1]<=3 T[5]<=3 T[2,8]<=4 T[3,7]<=6 T[4,6]<=4 [].
        Pcase: h[4] <= 5.
          Hubcap T[1,2]<=3 T[3,7]<=7 T[4,5]<=3 T[6,8]<=7 [].
        Pcase: h[5] > 5.
          Hubcap T[3]<=2 T[7]<=5 T[1,2]<=3 T[4,5]<=3 T[6,8]<=7 [].
        Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[4]<=1 T[5]<=3 T[6]<=2 T[7]<=4 T[8]<=4 [].
      Pcase L3_1: h[7] > 5.
        Pcase: s[1] > 7.
          Hubcap T[1]<=0 T[2]<=2 T[3]<=3 T[6]<=3 T[7]<=4 T[8]<=3 T[4,5]<=5 [].
        Pcase: s[2] > 7.
          Hubcap T[1]<=3 T[2]<=0 T[7]<=4 T[8]<=4 T[3,4]<=3 T[5,6]<=6 [].
        Pcase: s[4] > 7.
          Hubcap T[1]<=4 T[4]<=0 T[5]<=2 T[6]<=3 T[7]<=4 T[8]<=4 T[2,3]<=3 [].
        Pcase: s[5] > 7.
          Hubcap T[3]<=3 T[4]<=2 T[5]<=0 T[6]<=2 T[7]<=4 T[8]<=4 T[1,2]<=5 [].
        Pcase L4_1: s[2] > 6.
          Pcase: s[1] > 6.
            Hubcap T[7]<=4 T[8]<=3 T[1,2]<=4 T[3,4]<=3 T[5,6]<=6 [].
          Pcase: h[3] <= 5.
            Hubcap T[1]<=2 T[2]<=3 T[7]<=3 T[8]<=3 T[3,4]<=3 T[5,6]<=6 [].
          Pcase: s[4] > 6.
            Hubcap T[1]<=3 T[3]<=0 T[4]<=3 T[7]<=4 T[2,8]<=5 T[5,6]<=5 [].
          Pcase: s[5] <= 6.
            Hubcap T[1]<=3 T[7]<=4 T[2,8]<=5 T[3,4]<=3 T[5,6]<=5 [].
          Pcase: h[2] > 6.
            Hubcap T[1]<=3 T[3]<=2 T[6]<=2 T[7]<=4 T[2,8]<=4 T[4,5]<=5 [].
          Pcase: h[4] > 5.
            Hubcap T[1]<=3 T[3]<=2 T[6]<=2 T[7]<=4 T[2,8]<=5 T[4,5]<=4 [].
          Hubcap T[1]<=3 T[5]<=3 T[6]<=2 T[7]<=4 T[2,8]<=5 T[3,4]<=3 [].
        Pcase: h[2] <= 5.
          Hubcap T[7]<=3 T[8]<=2 T[1,2]<=5 T[3,6]<=5 T[4,5]<=5 [].
        Pcase: s[5] > 6.
          Pcase: s[4] > 6.
            Hubcap T[1]<=3 T[6]<=2 T[7]<=4 T[8]<=4 T[2,3]<=3 T[4,5]<=4 [].
          Pcase: h[3] > 6.
            Hubcap T[1]<=3 T[3]<=2 T[6]<=2 T[7]<=4 T[2,8]<=4 T[4,5]<=5 [].
          Pcase: h[4] > 6.
            Hubcap T[1]<=3 T[2]<=2 T[4]<=0 T[5]<=4 T[6]<=2 T[7]<=4 T[3,8]<=5 [].
          Pcase: h[5] > 6.
            Hubcap T[1]<=3 T[5]<=2 T[6]<=2 T[7]<=4 T[2,3]<=4 T[4,8]<=5 [].
          Pcase: h[6] > 5.
            Hubcap T[1]<=3 T[6]<=2 T[7]<=4 T[4,5]<=4 T[2,3]<=4 T[2,8]<=5 T[3,8]<=6
                   [].
          Pcase: h[7] <= 6.
            Hubcap T[6]<=2 T[8]<=3 T[1,7]<=6 T[2,3]<=4 T[4,5]<=5 [].
          Pcase: h[8] > 5.
            Hubcap T[1]<=3 T[6]<=2 T[7]<=3 T[8]<=3 T[2,3]<=4 T[4,5]<=5 [].
          Pcase: f1[7] <= 5.
            Reducible.
          Pcase: s[1] <= 6.
            Hubcap T[1]<=3 T[3]<=2 T[6]<=2 T[8]<=4 T[2,7]<=5 T[4,5]<=4 [].
          Pcase: h[2] > 6.
            Hubcap T[1]<=2 T[6]<=2 T[7]<=4 T[8]<=3 T[2,3]<=4 T[4,5]<=5 [].
          Pcase: h[3] > 5.
            Hubcap T[1]<=3 T[6]<=2 T[7]<=4 T[8]<=3 T[2,3]<=3 T[4,5]<=5 [].
          Pcase: h[4] > 5.
            Hubcap T[1]<=3 T[6]<=2 T[7]<=4 T[8]<=3 T[2,5]<=5 T[3,4]<=3 [].
          Hubcap T[1]<=3 T[2]<=1 T[3]<=3 T[4]<=1 T[5]<=3 T[6]<=2 T[7]<=4 T[8]<=3
                 [].
        Pcase: h[3] > 6.
          Hubcap T[1]<=3 T[2]<=1 T[7]<=4 T[8]<=4 T[3,4]<=3 T[5,6]<=5 [].
        Pcase: h[4] > 6.
          Hubcap T[1]<=3 T[7]<=4 T[2,4]<=3 T[3,8]<=5 T[5,6]<=5 [].
        Pcase: h[6] > 5.
          Hubcap T[1]<=3 T[6]<=2 T[7]<=4 T[8]<=4 T[2,3]<=3 T[4,5]<=4 [].
        Pcase: f1[5] <= 5.
          Reducible.
        Pcase: s[4] <= 6.
          Hubcap T[1]<=3 T[5]<=2 T[6]<=3 T[7]<=4 T[2,3]<=3 T[4,8]<=5 [].
        Pcase: h[8] > 5.
          Similar to *L4_1[3].
        Pcase: f1[7] <= 5.
          Reducible.
        Pcase: h[3] <= 5.
          Hubcap T[5]<=2 T[6]<=3 T[7]<=4 T[8]<=3 T[1,2]<=4 T[3,4]<=4 [].
        Pcase: s[1] > 6.
          Hubcap T[1]<=3 T[4]<=3 T[5]<=2 T[6]<=3 T[7]<=4 T[8]<=3 T[2,3]<=2 [].
        Pcase: f1[3] <= 5.
          Reducible.
        Pcase: h[2] > 6.
          Hubcap T[1]<=3 T[4]<=3 T[5]<=2 T[6]<=3 T[7]<=4 T[8]<=4 T[2,3]<=1 [].
        Hubcap T[1]<=3 T[3]<=0 T[4]<=3 T[5]<=2 T[6]<=3 T[7]<=4 T[2,8]<=5 [].
      Pcase: h[8] > 5.
        Similar to *L3_1[3].
      Pcase: f1[7] <= 6.
        Reducible.
      Pcase: s[4] > 7.
        Hubcap T[4]<=0 T[7]<=5 T[1,5]<=5 T[2,3]<=3 T[6,8]<=7 [].
      Pcase: s[5] > 7.
        Hubcap T[1]<=3 T[5]<=0 T[6]<=3 T[7]<=5 T[2,8]<=5 T[3,4]<=4 [].
      Pcase: s[1] > 7.
        Hubcap T[1]<=0 T[5]<=3 T[7]<=5 T[8]<=3 T[2,3]<=4 T[4,6]<=5 [].
      Pcase: s[2] > 7.
        Hubcap T[2]<=0 T[7]<=5 T[1,5]<=5 T[3,4]<=3 T[6,8]<=7 [].
      Pcase L3_2: h[2] <= 5.
        Pcase: s[2] <= 6.
          Reducible.
        Pcase: s[4] > 6.
          Hubcap T[3]<=0 T[7]<=5 T[1,2]<=4 T[4,5]<=4 T[6,8]<=7 [].
        Pcase: h[5] <= 5.
          Reducible.
        Pcase: h[4] > 6.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=0 T[7]<=5 T[4,5]<=3 T[6,8]<=7 [].
        Pcase: h[6] > 6.
          Hubcap T[1]<=3 T[5]<=1 T[6]<=3 T[7]<=5 T[2,8]<=5 T[3,4]<=3 [].
        Pcase: h[1] > 6.
          Hubcap T[1]<=1 T[2]<=2 T[7]<=5 T[8]<=3 T[3,5]<=4 T[4,6]<=5 [].
        Pcase: f1[2] <= 5.
          Hubcap T[2]<=1 T[7]<=5 T[8]<=3 T[1,5]<=5 T[3,4]<=3 T[3,6]<=5 T[4,6]<=5
                 [].
        Pcase: s[1] > 6.
          Hubcap T[2]<=2 T[7]<=5 T[8]<=3 T[1,5]<=4 T[3,4]<=3 T[3,6]<=5 T[4,6]<=5
                 [].
        Pcase: h[3] <= 5.
          Reducible.
        Pcase: f1[1] <= 6.
          Reducible.
        Pcase: s[5] <= 6.
          Hubcap T[3]<=1 T[7]<=5 T[1,2]<=4 T[4,5]<=3 T[6,8]<=7 [].
        Pcase: h[4] > 5.
          Hubcap T[1]<=3 T[2]<=2 T[6]<=3 T[7]<=5 T[3,4]<=1 T[5,8]<=6 [].
        Pcase: f1[4] <= 5.
          Reducible.
        Pcase: h[5] > 6.
          Hubcap T[1]<=3 T[3]<=1 T[6]<=3 T[7]<=5 T[2,8]<=5 T[4,5]<=3 [].
        Pcase: h[6] > 5.
          Hubcap T[1]<=3 T[3]<=1 T[4]<=2 T[5]<=1 T[6]<=3 T[8]<=4 T[2,7]<=6 [].
        Hubcap T[1]<=2 T[2]<=2 T[3]<=1 T[4]<=1 T[5]<=3 T[6]<=3 T[7]<=5 T[8]<=3 [].
      Pcase: h[5] <= 5.
        Similar to *L3_2[3].
      Pcase L3_3: s[1] <= 6.
        Pcase: h[3] <= 5.
          Reducible.
        Pcase: s[5] <= 6.
          Hubcap T[2]<=1 T[7]<=5 T[1,5]<=5 T[3,4]<=2 T[6,8]<=7 [].
        Pcase: s[4] > 6.
          Hubcap T[1]<=3 T[4]<=2 T[6]<=3 T[7]<=5 T[2,3]<=2 T[5,8]<=5 [].
        Pcase: h[4] > 5.
          Hubcap T[1]<=3 T[2]<=1 T[6]<=3 T[7]<=5 T[3,4]<=2 T[5,8]<=6 [].
        Pcase: h[5] > 6.
          Hubcap T[6]<=3 T[7]<=5 T[1,2]<=4 T[3,4]<=3 T[5,8]<=5 [].
        Pcase: h[6] > 5.
          Hubcap T[1]<=3 T[5]<=1 T[6]<=3 T[8]<=4 T[2,7]<=6 T[3,4]<=3 [].
        Pcase: h[1] <= 5.
          Reducible.
        Pcase: f1[3] <= 5.
          Reducible.
        Pcase: s[2] > 6.
          Hubcap T[1]<=2 T[2]<=1 T[3]<=2 T[4]<=1 T[5]<=3 T[6]<=3 T[7]<=5 T[8]<=3
                 [].
        Pcase: h[2] > 6.
          Hubcap T[1]<=2 T[2]<=1 T[3]<=2 T[4]<=1 T[5]<=3 T[6]<=3 T[7]<=5 T[8]<=3
                 [].
        Hubcap T[1]<=2 T[2]<=2 T[4]<=1 T[6]<=3 T[7]<=5 T[8]<=3 T[3,5]<=4 [].
      Pcase: s[5] <= 6.
        Similar to *L3_3[3].
      Pcase: s[4] > 6.
        Hubcap T[4]<=2 T[6]<=3 T[7]<=5 T[8]<=3 T[1,5]<=4 T[2,3]<=3 [].
      Pcase: s[2] > 6.
        Hubcap T[2]<=2 T[6]<=3 T[7]<=5 T[8]<=3 T[1,5]<=4 T[3,4]<=3 [].
      Pcase: h[3] > 5.
        Hubcap T[2]<=2 T[6]<=3 T[7]<=5 T[8]<=3 T[1,5]<=4 T[3,4]<=3 [].
      Pcase: h[4] > 5.
        Hubcap T[2]<=2 T[6]<=3 T[7]<=5 T[8]<=3 T[1,5]<=4 T[3,4]<=3 [].
      Hubcap T[2]<=1 T[3]<=3 T[4]<=1 T[6]<=3 T[7]<=5 T[8]<=3 T[1,5]<=4 [].
    Pcase: s[1] > 7.
      Hubcap T[1]<=0 T[6]<=3 T[7]<=4 T[8]<=2 T[2,3]<=4 T[4,5]<=7 [].
    Pcase: s[3] > 7.
      Hubcap T[3]<=0 T[6]<=3 T[7]<=4 T[8]<=3 T[1,2]<=5 T[4,5]<=5 [].
    Pcase: s[5] > 7.
      Hubcap T[5]<=0 T[6]<=2 T[7]<=4 T[8]<=3 T[1,2]<=7 T[3,4]<=4 [].
    Pcase: s[7] > 7.
      Pcase: s[2] > 7.
        Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[6]<=3 T[7]<=2 T[8]<=3 T[4,5]<=7 [].
      Pcase: s[4] > 7.
        Hubcap T[1]<=4 T[4]<=0 T[5]<=3 T[6]<=3 T[7]<=2 T[8]<=3 T[2,3]<=5 [].
      Pcase L3_1: h[6] > 5.
        Pcase: s[1] > 6.
          Hubcap T[1]<=4 T[6]<=2 T[7]<=2 T[8]<=2 T[2,3]<=4 T[4,5]<=6 [].
        Pcase: s[2] > 6.
          Hubcap T[1]<=3 T[5]<=3 T[6]<=2 T[8]<=3 T[2,7]<=5 T[3,4]<=4 [].
        Pcase: s[3] > 6.
          Hubcap T[3]<=4 T[6]<=2 T[7]<=2 T[8]<=3 T[1,2]<=5 T[4,5]<=4 [].
        Pcase: s[4] > 6.
          Pcase: s[5] > 6.
            Hubcap T[1]<=4 T[2]<=4 T[3]<=2 T[6]<=2 T[7]<=2 T[8]<=3 T[4,5]<=3 [].
          Pcase: s[7] > 8.
            Hubcap T[1]<=4 T[2]<=4 T[3]<=2 T[6]<=2 T[7]<=0 T[8]<=3 T[4,5]<=5 [].
          Pcase: h[2] > 5.
            Hubcap T[6]<=2 T[8]<=3 T[1,7]<=5 T[2,3]<=5 T[4,5]<=5 [].
          Hubcap T[1]<=4 T[2]<=3 T[6]<=2 T[8]<=3 T[3,7]<=3 T[4,5]<=5 [].
        Pcase: s[7] > 8.
          Hubcap T[1]<=4 T[3]<=3 T[5]<=3 T[6]<=2 T[7]<=0 T[8]<=3 T[2,4]<=5 [].
        Pcase: s[5] > 6.
          Pcase: h[2] > 5.
            Hubcap T[6]<=2 T[8]<=3 T[1,7]<=5 T[2,3]<=6 T[4,5]<=4 [].
          Hubcap T[1]<=4 T[2]<=3 T[3]<=3 T[6]<=2 T[7]<=2 T[8]<=3 T[4,5]<=3 [].
        Pcase: h[2] > 5.
          Hubcap T[5]<=3 T[6]<=2 T[8]<=3 T[1,7]<=5 T[2,3]<=5 T[2,4]<=5 T[3,4]<=5
                 [].
        Hubcap T[1]<=4 T[2]<=3 T[3]<=2 T[6]<=2 T[7]<=2 T[8]<=3 T[4,5]<=4 [].
      Pcase: h[1] > 5.
        Similar to *L3_1[3].
      Pcase L3_2: s[1] > 6.
        Pcase: s[2] > 6.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[6]<=3 T[7]<=1 T[8]<=2 T[4,5]<=7 [].
        Pcase: s[3] > 6.
          Hubcap T[1]<=4 T[2]<=0 T[3]<=4 T[4]<=2 T[5]<=4 T[6]<=3 T[7]<=1 T[8]<=2
                 [].
        Pcase: s[4] > 6.
          Hubcap T[1]<=4 T[2]<=2 T[3]<=2 T[6]<=3 T[7]<=1 T[8]<=2 T[4,5]<=6 [].
        Pcase: s[5] > 6.
          Hubcap T[1]<=4 T[2]<=2 T[3]<=3 T[4]<=2 T[5]<=4 T[6]<=2 T[7]<=1 T[8]<=2
                 [].
        Pcase: f1[5] <= 5.
          Reducible.
        Pcase: s[7] > 8.
          Hubcap T[1]<=4 T[3]<=3 T[5]<=4 T[6]<=3 T[7]<=0 T[8]<=2 T[2,4]<=4 [].
        Pcase: h[2] > 5.
          Hubcap T[1]<=3 T[2]<=2 T[5]<=4 T[6]<=3 T[7]<=1 T[8]<=2 T[3,4]<=5 [].
        Pcase: h[3] > 5.
          Hubcap T[1]<=4 T[6]<=3 T[7]<=1 T[8]<=2 T[2,3]<=3 T[4,5]<=7 [].
        Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[4]<=2 T[5]<=4 T[6]<=3 T[7]<=1 T[8]<=2 [].
      Pcase: s[5] > 6.
        Similar to *L3_2[3].
      Pcase: f1[1] <= 5.
        Reducible.
      Pcase: f1[5] <= 5.
        Reducible.
      Pcase: s[3] > 6.
        Hubcap T[3]<=3 T[6]<=3 T[7]<=1 T[8]<=3 T[1,2]<=5 T[4,5]<=5 [].
      Pcase L3_3: s[2] > 6.
        Pcase: s[4] > 6.
          Hubcap T[1]<=3 T[2]<=4 T[3]<=0 T[6]<=3 T[7]<=1 T[8]<=3 T[4,5]<=6 [].
        Pcase: h[4] > 5.
          Hubcap T[5]<=4 T[6]<=3 T[7]<=1 T[8]<=3 T[1,2]<=6 T[3,4]<=3 [].
        Pcase: h[3] > 6.
          Hubcap T[1]<=3 T[6]<=3 T[7]<=1 T[8]<=3 T[2,3]<=3 T[4,5]<=7 [].
        Pcase: h[5] > 6.
          Hubcap T[1]<=3 T[2]<=4 T[5]<=3 T[6]<=3 T[7]<=1 T[8]<=3 T[3,4]<=3 [].
        Pcase: h[7] > 5.
          Pcase: s[7] > 8.
            Hubcap T[3]<=2 T[6]<=3 T[7]<=0 T[8]<=3 T[1,2]<=6 T[4,5]<=6 [].
          Pcase: h[2] > 6.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[6]<=3 T[7]<=1 T[8]<=3 T[4,5]<=6 [].
          Pcase: h[2] <= 5.
            Hubcap T[1]<=3 T[3]<=1 T[6]<=3 T[8]<=3 T[2,7]<=4 T[4,5]<=6 [].
          Pcase: h[3] > 5.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[6]<=3 T[7]<=1 T[8]<=3 T[4,5]<=6 [].
          Hubcap T[1]<=3 T[3]<=2 T[6]<=3 T[8]<=3 T[2,7]<=4 T[4,5]<=5 [].
        Pcase: f1[4] <= 6.
          Reducible.
        Pcase: s[7] > 8.
          Hubcap T[3]<=1 T[6]<=3 T[7]<=0 T[8]<=3 T[1,2]<=6 T[4,5]<=7 [].
        Pcase: h[2] > 6.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[6]<=3 T[7]<=1 T[8]<=3 T[4,5]<=7 [].
        Pcase: h[3] <= 5.
          Hubcap T[3]<=1 T[6]<=3 T[7]<=1 T[8]<=3 T[1,2]<=6 T[4,5]<=6 [].
        Pcase: h[2] > 5.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[6]<=3 T[7]<=1 T[8]<=3 T[4,5]<=7 [].
        Pcase: f1[1] <= 6.
          Reducible.
        Pcase: h[8] <= 5.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[6]<=3 T[7]<=1 T[8]<=3 T[4,5]<=7 [].
        Pcase: h[5] > 5.
          Hubcap T[1]<=2 T[3]<=1 T[5]<=3 T[6]<=3 T[7]<=1 T[8]<=3 T[2,4]<=7 [].
        Hubcap T[1]<=2 T[3]<=1 T[5]<=4 T[6]<=3 T[7]<=1 T[8]<=3 T[2,4]<=6 [].
      Pcase: s[4] > 6.
        Similar to *L3_3[3].
      Pcase: h[2] > 6.
        Hubcap T[1]<=3 T[6]<=3 T[7]<=1 T[8]<=3 T[2,5]<=5 T[3,4]<=5 [].
      Pcase: h[2] <= 5.
        Hubcap T[1]<=4 T[3]<=2 T[5]<=4 T[6]<=3 T[7]<=1 T[8]<=3 T[2,4]<=3 [].
      Pcase: s[7] > 8.
        Hubcap T[3]<=3 T[6]<=3 T[7]<=0 T[8]<=3 T[1,5]<=7 T[2,4]<=4 [].
      Pcase: h[3] > 5.
        Hubcap T[1]<=3 T[3]<=2 T[5]<=4 T[6]<=3 T[7]<=1 T[8]<=3 T[2,4]<=4 [].
      Hubcap T[4]<=1 T[6]<=3 T[7]<=1 T[8]<=3 T[1,5]<=7 T[2,3]<=5 [].
    Pcase: s[2] > 7.
      Hubcap T[2]<=0 T[3]<=2 T[7]<=4 T[8]<=3 T[1,6]<=5 T[4,5]<=6 [].
    Pcase: s[4] > 7.
      Hubcap T[3]<=2 T[4]<=0 T[6]<=3 T[7]<=4 T[1,2]<=6 T[5,8]<=5 [].
    Pcase L2_2: h[7] > 5.
      Pcase: h[8] > 5.
        Pcase: h[2] > 6.
          Hubcap T[1]<=2 T[6]<=3 T[7]<=2 T[8]<=3 T[2,3]<=4 T[4,5]<=6 [].
        Pcase: h[5] > 6.
          Hubcap T[5]<=2 T[6]<=3 T[7]<=2 T[8]<=3 T[1,2]<=6 T[3,4]<=4 [].
        Pcase L4_1: h[7] <= 6.
          Pcase: h[3] > 6.
            Hubcap T[3]<=2 T[7]<=2 T[1,2]<=5 T[4,5]<=6 T[6,8]<=5 [].
          Pcase: h[4] > 6.
            Hubcap T[3]<=2 T[7]<=2 T[1,2]<=6 T[4,5]<=5 T[6,8]<=5 [].
          Pcase: s[1] > 6.
            Pcase: s[2] > 6.
              Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[6]<=3 T[7]<=2 T[8]<=2 T[4,5]<=6 [].
            Pcase: s[3] > 6.
              Hubcap T[1]<=4 T[2]<=0 T[3]<=4 T[6]<=3 T[7]<=2 T[8]<=2 T[4,5]<=5 [].
            Pcase: s[4] > 6.
              Hubcap T[1]<=4 T[4]<=4 T[7]<=2 T[8]<=2 T[2,3]<=3 T[5,6]<=5 [].
            Hubcap T[1]<=4 T[6]<=3 T[7]<=2 T[8]<=2 T[2,3]<=4 T[4,5]<=5 [].
          Pcase: s[3] > 6.
            Hubcap T[7]<=2 T[1,2]<=5 T[6,8]<=5 T[3,4]<=5 T[3,5]<=7 T[4,5]<=5 [].
          Pcase: h[1] > 5.
            Pcase: s[2] > 6.
              Hubcap T[1]<=1 T[2]<=4 T[3]<=2 T[6]<=3 T[7]<=2 T[8]<=2 T[4,5]<=6 [].
            Pcase: s[4] > 6.
              Hubcap T[1]<=3 T[4]<=4 T[7]<=2 T[8]<=2 T[2,3]<=4 T[5,6]<=5 [].
            Hubcap T[3]<=3 T[6]<=3 T[7]<=2 T[8]<=2 T[1,2]<=5 T[4,5]<=5 [].
          Pcase: f1[1] <= 5.
            Reducible.
          Pcase: s[4] > 6.
            Hubcap T[3]<=2 T[6]<=2 T[7]<=2 T[8]<=3 T[1,2]<=6 T[4,5]<=5 [].
          Pcase: s[2] > 6.
            Hubcap T[1]<=2 T[2]<=4 T[3]<=2 T[6]<=2 T[7]<=2 T[8]<=3 T[4,5]<=5 [].
          Hubcap T[3]<=3 T[6]<=2 T[7]<=2 T[8]<=3 T[1,2]<=5 T[4,5]<=5 [].
        Pcase: h[8] <= 6.
          Similar to *L4_1[3].
        Pcase: s[4] > 6.
          Hubcap T[3]<=2 T[4]<=4 T[7]<=0 T[8]<=3 T[1,2]<=6 T[5,6]<=5 [].
        Pcase: s[5] > 6.
          Hubcap T[1]<=4 T[6]<=2 T[7]<=0 T[8]<=3 T[2,3]<=6 T[4,5]<=5 [].
        Pcase: s[1] > 6.
          Hubcap T[1]<=4 T[6]<=3 T[7]<=0 T[8]<=2 T[2,3]<=4 T[4,5]<=6 [].
        Pcase: s[2] > 6.
          Hubcap T[1]<=2 T[2]<=4 T[3]<=2 T[6]<=3 T[7]<=0 T[8]<=3 T[4,5]<=6 [].
        Pcase: s[3] > 6.
          Hubcap T[1]<=4 T[2]<=2 T[3]<=3 T[6]<=3 T[7]<=0 T[8]<=3 T[4,5]<=5 [].
        Pcase: h[2] > 5.
          Hubcap T[6]<=3 T[7]<=0 T[8]<=3 T[1,5]<=7 T[2,3]<=5 T[2,4]<=5 T[3,4]<=5
                 [].
        Hubcap T[1]<=4 T[2]<=3 T[3]<=2 T[6]<=3 T[7]<=0 T[8]<=3 T[4,5]<=5 [].
      Pcase: h[4] > 6.
        Hubcap T[7]<=3 T[4,5]<=5 T[6,8]<=5 T[1,2]<=6 T[1,3]<=5 T[2,3]<=4 [].
      Pcase: h[5] > 6.
        Hubcap T[5]<=2 T[7]<=3 T[1,2]<=6 T[3,4]<=4 T[6,8]<=5 [].
      Pcase: s[3] > 6.
        Pcase: s[1] > 6.
          Hubcap T[2]<=0 T[6]<=3 T[7]<=3 T[8]<=2 T[1,3]<=7 T[4,5]<=5 [].
        Pcase: s[2] > 6.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[7]<=3 T[4,5]<=5 T[6,8]<=5 [].
        Pcase: h[2] <= 5.
          Reducible.
        Pcase: s[4] > 6.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=2 T[5]<=3 T[7]<=3 T[6,8]<=5 [].
        Pcase: s[5] > 6.
          Hubcap T[1]<=3 T[2]<=2 T[4]<=0 T[6]<=2 T[7]<=3 T[8]<=3 T[3,5]<=7 [].
        Pcase: h[2] > 6.
          Hubcap T[1]<=3 T[2]<=0 T[3]<=3 T[4]<=2 T[5]<=4 T[7]<=3 T[6,8]<=5 [].
        Pcase: h[3] > 5.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[7]<=3 T[4,5]<=5 T[6,8]<=5 [].
        Pcase: h[4] > 5.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[7]<=3 T[4,5]<=5 T[6,8]<=5 [].
        Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[7]<=3 T[4,5]<=4 T[6,8]<=5 [].
      Pcase: s[1] > 6.
        Pcase: s[2] > 6.
          Hubcap T[3]<=2 T[6]<=3 T[7]<=3 T[8]<=2 T[1,2]<=4 T[4,5]<=6 [].
        Pcase: s[4] > 6.
          Hubcap T[7]<=3 T[8]<=2 T[1,3]<=5 T[2,4]<=5 T[5,6]<=5 [].
        Pcase: s[5] > 6.
          Hubcap T[1]<=4 T[6]<=2 T[7]<=3 T[8]<=2 T[2,3]<=4 T[4,5]<=5 [].
        Pcase: h[2] > 6.
          Hubcap T[1]<=2 T[6]<=3 T[7]<=3 T[8]<=2 T[2,3]<=4 T[4,5]<=6 [].
        Pcase: h[3] > 6.
          Hubcap T[1]<=4 T[2]<=0 T[3]<=2 T[6]<=3 T[7]<=3 T[8]<=2 T[4,5]<=6 [].
        Pcase: h[3] <= 5.
          Hubcap T[1]<=3 T[6]<=3 T[7]<=3 T[8]<=2 T[2,3]<=4 T[4,5]<=5 [].
        Pcase: f1[3] <= 5.
          Reducible.
        Hubcap T[1]<=4 T[6]<=3 T[7]<=3 T[8]<=2 T[2,3]<=3 T[4,5]<=5 [].
      Pcase: h[1] > 5.
        Pcase: s[2] <= 6.
          Hubcap T[1]<=2 T[6]<=3 T[7]<=3 T[8]<=2 T[2,3]<=4 T[4,5]<=6 [].
        Pcase: s[4] > 6.
          Hubcap T[1]<=2 T[2]<=4 T[3]<=0 T[4]<=4 T[7]<=3 T[8]<=2 T[5,6]<=5 [].
        Pcase: s[5] > 6.
          Hubcap T[1]<=2 T[2]<=4 T[3]<=2 T[6]<=2 T[7]<=3 T[8]<=2 T[4,5]<=5 [].
        Pcase: h[2] > 6.
          Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[6]<=3 T[7]<=3 T[8]<=2 T[4,5]<=6 [].
        Pcase: h[3] > 6.
          Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[6]<=3 T[7]<=3 T[8]<=2 T[4,5]<=6 [].
        Pcase: h[4] > 5.
          Hubcap T[5]<=4 T[6]<=3 T[7]<=3 T[8]<=2 T[1,2]<=5 T[3,4]<=3 [].
        Pcase: h[2] <= 5.
          Hubcap T[3]<=1 T[6]<=3 T[7]<=3 T[8]<=2 T[1,2]<=5 T[4,5]<=6 [].
        Pcase: h[3] > 5.
          Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[6]<=3 T[7]<=3 T[8]<=2 T[4,5]<=6 [].
        Hubcap T[3]<=2 T[6]<=3 T[7]<=3 T[8]<=2 T[1,2]<=5 T[4,5]<=5 [].
      Pcase: f1[1] <= 5.
        Reducible.
      Pcase: s[4] > 6.
        Hubcap T[1]<=3 T[2]<=3 T[3]<=1 T[6]<=2 T[7]<=3 T[8]<=3 T[4,5]<=5 [].
      Pcase: s[2] <= 6.
        Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[6]<=2 T[7]<=3 T[8]<=3 T[4,5]<=5 [].
      Pcase: h[2] > 5.
        Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[6]<=2 T[7]<=3 T[8]<=3 T[4,5]<=5 [].
      Pcase: f1[1] <= 6.
        Reducible.
      Pcase: h[3] > 5.
        Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[6]<=2 T[7]<=3 T[8]<=3 T[4,5]<=5 [].
      Pcase: s[5] > 6.
        Hubcap T[1]<=3 T[2]<=3 T[5]<=4 T[6]<=2 T[7]<=3 T[8]<=3 T[3,4]<=2 [].
      Pcase: h[6] <= 5.
        Reducible.
      Pcase: h[4] > 5.
        Hubcap T[1]<=3 T[2]<=3 T[5]<=3 T[6]<=2 T[7]<=3 T[8]<=3 T[3,4]<=3 [].
      Hubcap T[1]<=3 T[2]<=3 T[3]<=1 T[4]<=3 T[5]<=2 T[6]<=2 T[7]<=3 T[8]<=3 [].
    Pcase: h[8] > 5.
      Similar to *L2_2[3].
    Pcase: s[3] > 6.
      Pcase: h[2] > 6.
        Hubcap T[1]<=3 T[2]<=0 T[7]<=4 T[6,8]<=5 T[3,4]<=5 T[3,5]<=7 T[4,5]<=5 [].
      Pcase: h[5] > 6.
        Hubcap T[4]<=0 T[5]<=3 T[7]<=4 T[6,8]<=5 T[1,2]<=5 T[1,3]<=7 T[2,3]<=5 [].
      Pcase: h[6] > 6.
        Hubcap T[6]<=2 T[7]<=4 T[1,8]<=6 T[2,3]<=5 T[4,5]<=3 [].
      Pcase: h[1] > 6.
        Hubcap T[7]<=4 T[8]<=2 T[1,2]<=3 T[3,4]<=5 T[5,6]<=6 [].
      Pcase: f1[7] <= 5.
        Pcase: h[1] <= 5.
          Reducible.
        Pcase: f2[7] <= 6.
          Reducible.
        Pcase: s[1] > 6.
          Hubcap T[1]<=3 T[2]<=0 T[7]<=4 T[8]<=2 T[3,4]<=5 T[5,6]<=6 [].
        Pcase: f1[1] <= 5.
          Reducible.
        Pcase: s[2] > 6.
          Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[4]<=2 T[7]<=4 T[8]<=2 T[5,6]<=6 [].
        Hubcap T[7]<=4 T[8]<=2 T[1,2]<=3 T[3,4]<=5 T[5,6]<=6 [].
      Pcase: h[1] > 5.
        Hubcap T[8]<=2 T[1,2]<=4 T[3,4]<=5 T[5,6]<=6 T[5,7]<=7 T[6,7]<=6 [].
      Pcase L3_1: s[1] > 6.
        Pcase: s[2] > 6.
          Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[4]<=2 T[5]<=4 T[6]<=3 T[7]<=4 T[8]<=2
                 [].
        Pcase: s[4] > 6.
          Hubcap T[1]<=4 T[2]<=0 T[3]<=2 T[4]<=2 T[5]<=3 T[6]<=3 T[7]<=4 T[8]<=2
                 [].
        Pcase: s[5] > 6.
          Hubcap T[1]<=4 T[2]<=0 T[3]<=4 T[4]<=0 T[5]<=4 T[6]<=2 T[7]<=4 T[8]<=2
                 [].
        Pcase: h[5] <= 5.
          Reducible.
        Pcase: f1[4] <= 5.
          Reducible.
        Pcase: f1[5] <= 5.
          Reducible.
        Pcase: h[2] > 5.
          Hubcap T[1]<=3 T[2]<=0 T[5]<=3 T[6]<=3 T[7]<=4 T[8]<=2 T[3,4]<=5 [].
        Pcase: h[3] > 6.
          Hubcap T[1]<=4 T[2]<=0 T[3]<=2 T[4]<=2 T[5]<=3 T[6]<=3 T[7]<=4 T[8]<=2
                 [].
        Pcase: h[3] <= 5.
          Hubcap T[1]<=3 T[2]<=0 T[3]<=3 T[4]<=2 T[5]<=3 T[6]<=3 T[7]<=4 T[8]<=2
                 [].
        Pcase: h[4] > 5.
          Hubcap T[1]<=4 T[2]<=0 T[3]<=2 T[4]<=2 T[5]<=3 T[6]<=3 T[7]<=4 T[8]<=2
                 [].
        Pcase: h[6] > 5.
          Hubcap T[1]<=4 T[2]<=0 T[3]<=4 T[4]<=1 T[5]<=3 T[6]<=2 T[7]<=4 T[8]<=2
                 [].
        Hubcap T[1]<=4 T[2]<=0 T[5]<=3 T[6]<=3 T[7]<=4 T[8]<=2 T[3,4]<=4 [].
      Pcase: s[5] > 6.
        Similar to *L3_1[3].
      Pcase: h[6] <= 5.
        Reducible.
      Pcase: f1[1] <= 5.
        Reducible.
      Pcase: f1[5] <= 5.
        Reducible.
      Pcase: s[2] > 6.
        Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[6]<=2 T[7]<=4 T[8]<=3 T[4,5]<=4 [].
      Pcase: h[2] <= 5.
        Reducible.
      Pcase: f1[2] <= 5.
        Reducible.
      Pcase: s[4] > 6.
        Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=2 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=3 [].
      Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[6]<=2 T[7]<=4 T[8]<=3 T[4,5]<=3 [].
    Pcase: f1[3] <= 5.
      Pcase: s[1] > 6.
        Pcase: s[2] > 6.
          Hubcap T[1]<=3 T[2]<=2 T[7]<=4 T[8]<=2 T[3,4]<=3 T[5,6]<=6 [].
        Pcase: s[4] > 6.
          Hubcap T[5]<=3 T[6]<=3 T[7]<=4 T[8]<=2 T[1,2]<=5 T[3,4]<=3 [].
        Hubcap T[3]<=1 T[6]<=3 T[7]<=4 T[8]<=2 T[1,2]<=5 T[4,5]<=5 [].
      Pcase: s[2] <= 6.
        Hubcap T[7]<=4 T[1,2]<=5 T[6,8]<=5 T[3,4]<=3 T[3,5]<=4 T[4,5]<=6 [].
      Pcase: s[4] > 6.
        Hubcap T[1]<=3 T[3]<=0 T[5]<=3 T[7]<=4 T[2,4]<=5 T[6,8]<=5 [].
      Hubcap T[1]<=3 T[7]<=4 T[2,3]<=3 T[4,5]<=5 T[6,8]<=5 [].
    Pcase: f1[7] <= 5.
      Pcase: h[1] <= 5.
        Reducible.
      Pcase: f2[7] <= 6.
        Reducible.
      Pcase: s[1] > 6.
        Hubcap T[7]<=4 T[8]<=2 T[1,2]<=3 T[3,6]<=5 T[4,5]<=6 [].
      Pcase: s[4] <= 6.
        Hubcap T[7]<=4 T[8]<=2 T[1,2]<=5 T[3,4]<=3 T[5,6]<=6 [].
      Pcase: s[5] > 6.
        Hubcap T[1]<=2 T[2]<=4 T[3]<=1 T[4]<=2 T[5]<=3 T[6]<=2 T[7]<=4 T[8]<=2 [].
      Pcase: s[2] > 6.
        Hubcap T[3]<=0 T[6]<=3 T[7]<=4 T[8]<=2 T[1,2]<=5 T[4,5]<=6 [].
      Hubcap T[1]<=2 T[2]<=2 T[3]<=1 T[6]<=3 T[7]<=4 T[8]<=2 T[4,5]<=6 [].
    Pcase: f2[7] <= 5.
      Pcase: h[6] <= 5.
        Reducible.
      Pcase: f1[7] <= 6.
        Reducible.
      Pcase: s[1] > 6.
        Hubcap T[3]<=3 T[6]<=2 T[7]<=4 T[8]<=2 T[1,2]<=4 T[4,5]<=5 [].
      Pcase: s[5] > 6.
        Hubcap T[1]<=3 T[3]<=2 T[6]<=2 T[7]<=4 T[2,8]<=6 T[4,5]<=3 [].
      Pcase: s[2] <= 6.
        Hubcap T[1]<=3 T[6]<=2 T[7]<=4 T[8]<=3 T[2,3]<=3 T[4,5]<=5 [].
      Pcase: s[4] > 6.
        Hubcap T[1]<=3 T[3]<=0 T[6]<=2 T[7]<=4 T[2,8]<=6 T[4,5]<=5 [].
      Hubcap T[1]<=3 T[2]<=4 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=3 T[3,4]<=2 [].
    Pcase L2_3: s[1] > 6.
      Pcase: s[2] > 6.
        Hubcap T[7]<=4 T[8]<=2 T[1,2]<=4 T[3,4]<=4 T[5,6]<=6 [].
      Pcase: s[4] <= 6.
        Hubcap T[7]<=4 T[8]<=2 T[1,2]<=4 T[3,4]<=4 T[5,6]<=6 [].
      Pcase: s[5] > 6.
        Hubcap T[1]<=4 T[2]<=1 T[3]<=2 T[4]<=2 T[5]<=3 T[6]<=2 T[7]<=4 T[8]<=2 [].
      Pcase: h[2] > 5.
        Hubcap T[2]<=1 T[6]<=3 T[7]<=4 T[8]<=2 T[1,3]<=4 T[4,5]<=6 [].
      Hubcap T[6]<=3 T[7]<=4 T[8]<=2 T[4,5]<=6 T[1,2]<=4 T[1,3]<=5 T[2,3]<=2 [].
    Pcase: s[5] > 6.
      Similar to *L2_3[3].
    Pcase: s[2] <= 6.
      Hubcap T[1]<=3 T[7]<=3 T[2,3]<=3 T[4,5]<=6 T[6,8]<=5 [].
    Pcase: s[4] > 6.
      Hubcap T[3]<=0 T[7]<=3 T[1,2]<=6 T[4,5]<=6 T[6,8]<=5 [].
    Hubcap T[5]<=3 T[7]<=3 T[1,2]<=6 T[3,4]<=3 T[6,8]<=5 [].
  Pcase: s[2] <= 5.
    Similar to L1_3[2].
  Pcase: s[4] <= 5.
    Pcase L2_1: h[4] > 5.
      Pcase: s[1] > 7.
        Hubcap T[1]<=0 T[2]<=2 T[3]<=3 T[4]<=3 T[5,8]<=6 T[6,7]<=6 [].
      Pcase: s[5] > 7.
        Hubcap T[1]<=4 T[4]<=2 T[5]<=0 T[8]<=4 T[2,3]<=5 T[6,7]<=5 [].
      Pcase: s[6] > 7.
        Hubcap T[4]<=3 T[5]<=2 T[6]<=0 T[7]<=3 T[1,2]<=6 T[3,8]<=6 [].
      Pcase: s[7] > 7.
        Hubcap T[1]<=4 T[4]<=3 T[7]<=0 T[8]<=3 T[2,3]<=5 T[5,6]<=5 [].
      Pcase L3_1: s[6] > 6.
        Pcase: s[2] > 7.
          Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[8]<=4 T[4,5]<=5 T[6,7]<=6 [].
        Pcase: s[3] > 7.
          Hubcap T[3]<=0 T[8]<=4 T[1,2]<=5 T[4,5]<=5 T[6,7]<=6 [].
        Pcase: h[5] > 5.
          Pcase: s[5] > 6.
            Hubcap T[4]<=2 T[7]<=3 T[1,2]<=6 T[3,8]<=6 T[5,6]<=3 [].
          Pcase: s[7] > 6.
            Hubcap T[1]<=4 T[4]<=2 T[5]<=1 T[6]<=2 T[7]<=3 T[8]<=3 T[2,3]<=5 [].
          Pcase: s[1] > 6.
            Hubcap T[1]<=4 T[4]<=2 T[5]<=1 T[8]<=3 T[2,3]<=4 T[6,7]<=6 [].
          Pcase: s[2] <= 6.
            Hubcap T[4]<=2 T[5]<=1 T[1,2]<=5 T[3,7]<=5 T[6,8]<=7 [].
          Pcase: s[3] > 6.
            Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=2 T[5]<=1 T[8]<=4 T[6,7]<=6 [].
          Hubcap T[1]<=3 T[3]<=1 T[4]<=2 T[5]<=1 T[2,7]<=6 T[6,8]<=7 [].
        Pcase: h[2] > 6.
          Hubcap T[1,2]<=4 T[3,8]<=6 T[4,5]<=5 T[6,7]<=5 [].
        Pcase: s[2] <= 6.
          Pcase: s[5] > 6.
            Hubcap T[4]<=2 T[7]<=3 T[1,2]<=5 T[3,8]<=6 T[5,6]<=4 [].
          Pcase: f1[5] <= 5.
            Reducible.
          Pcase: s[7] > 6.
            Hubcap T[1]<=4 T[4]<=3 T[5]<=2 T[8]<=3 T[2,3]<=4 T[6,7]<=4 [].
          Pcase: h[7] <= 5.
            Reducible.
          Pcase: s[1] > 6.
            Hubcap T[4]<=3 T[5]<=2 T[8]<=3 T[6,7]<=5 T[1,2]<=5 T[1,3]<=6 T[2,3]<=4
                   [].
          Pcase: s[3] <= 6.
            Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[4]<=3 T[5]<=2 T[6]<=4 T[7]<=2 T[8]<=3
                   [].
          Pcase: h[3] > 5.
            Hubcap T[3]<=1 T[4]<=3 T[5]<=2 T[8]<=4 T[1,2]<=5 T[6,7]<=5 [].
          Pcase: h[6] > 5.
            Hubcap T[4]<=3 T[5]<=2 T[1,2]<=5 T[3,7]<=5 T[6,8]<=5 [].
          Hubcap T[3]<=3 T[4]<=3 T[5]<=2 T[8]<=3 T[1,2]<=4 T[6,7]<=5 [].
        Pcase: s[1] > 6.
          Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[8]<=3 T[4,5]<=5 T[6,7]<=5 [].
        Pcase: s[3] > 6.
          Hubcap T[1]<=3 T[8]<=4 T[2,3]<=3 T[4,5]<=5 T[6,7]<=5 [].
        Pcase: s[7] > 6.
          Hubcap T[1]<=3 T[8]<=3 T[2,3]<=5 T[4,5]<=5 T[6,7]<=4 [].
        Pcase: h[3] <= 5.
          Hubcap T[1]<=2 T[8]<=3 T[2,3]<=5 T[4,5]<=5 T[6,7]<=5 [].
        Pcase: h[2] > 5.
          Hubcap T[1]<=3 T[8]<=4 T[2,3]<=3 T[4,5]<=5 T[6,7]<=5 [].
        Pcase: h[7] <= 5.
          Hubcap T[1]<=3 T[4]<=2 T[7]<=3 T[8]<=4 T[2,3]<=5 T[5,6]<=3 [].
        Pcase: h[8] > 5.
          Hubcap T[1]<=2 T[8]<=3 T[2,3]<=5 T[4,5]<=5 T[6,7]<=5 [].
        Hubcap T[3]<=2 T[8]<=4 T[1,2]<=5 T[4,5]<=5 T[6,7]<=4 [].
      Pcase: s[2] > 7.
        Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[4]<=3 T[5,8]<=7 T[6,7]<=5 [].
      Pcase: s[3] > 7.
        Hubcap T[3]<=0 T[4]<=3 T[1,2]<=5 T[5,8]<=7 T[6,7]<=5 [].
      Pcase: s[2] > 6.
        Pcase: h[5] > 5.
          Similar to *L3_1[1].
        Pcase: h[8] > 5.
          Similar to L3_1[4].
        Pcase: s[5] <= 6.
          Reducible.
        Pcase: s[7] <= 6.
          Reducible.
        Hubcap T[1]<=3 T[2]<=4 T[3]<=2 T[4]<=2 T[6]<=0 T[8]<=3 T[5,7]<=6 [].
      Pcase: h[6] > 6.
        Hubcap T[1]<=4 T[2,3]<=4 T[5,8]<=5 T[4,6]<=4 T[4,7]<=6 T[6,7]<=5 [].
      Pcase: h[1] > 5.
        Hubcap T[1]<=3 T[2,3]<=4 T[4,8]<=5 T[5,6]<=5 T[5,7]<=7 T[6,7]<=5 [].
      Pcase: h[2] > 6.
        Hubcap T[3]<=3 T[1,4]<=5 T[2,8]<=4 T[5,6]<=5 T[5,7]<=7 T[6,7]<=5 [].
      Pcase: h[5] > 5.
        Hubcap T[4]<=2 T[1,2]<=5 T[3,8]<=6 T[5,6]<=4 T[5,7]<=6 T[6,7]<=5 [].
      Pcase: s[7] <= 6.
        Hubcap T[1]<=4 T[4]<=2 T[2,3]<=4 T[5,8]<=6 T[6,7]<=4 [].
      Pcase: s[3] <= 6.
        Hubcap T[5]<=4 T[8]<=2 T[1,4]<=6 T[2,3]<=4 T[6,7]<=4 [].
      Pcase: s[5] > 6.
        Hubcap T[1]<=4 T[2]<=2 T[3]<=3 T[4]<=2 T[6]<=0 T[8]<=3 T[5,7]<=6 [].
      Pcase: h[8] <= 5.
        Reducible.
      Pcase: f1[5] <= 5.
        Reducible.
      Pcase: s[1] > 6.
        Hubcap T[1]<=4 T[2]<=0 T[3]<=3 T[4]<=3 T[5]<=4 T[8]<=2 T[6,7]<=4 [].
      Pcase: f1[1] <= 5.
        Reducible.
      Pcase: h[2] <= 5.
        Hubcap T[2]<=1 T[4]<=3 T[5]<=4 T[8]<=3 T[1,3]<=5 T[6,7]<=4 [].
      Pcase: h[3] > 5.
        Hubcap T[1]<=3 T[2]<=2 T[3]<=1 T[4]<=3 T[5]<=4 T[8]<=3 T[6,7]<=4 [].
      Pcase: h[6] > 5.
        Hubcap T[3]<=3 T[4]<=3 T[7]<=3 T[8]<=3 T[1,2]<=4 T[5,6]<=4 [].
      Hubcap T[3]<=3 T[4]<=3 T[5]<=4 T[6]<=1 T[7]<=2 T[8]<=3 T[1,2]<=4 [].
    Pcase: h[5] > 5.
      Similar to *L2_1[1].
    Pcase: h[8] > 5.
      Similar to L2_1[4].
    Pcase: h[1] > 5.
      Similar to *L2_1[5].
    Pcase: s[1] > 7.
      Hubcap T[1]<=0 T[4]<=4 T[6]<=2 T[8]<=3 T[2,3]<=5 T[5,7]<=6 [].
    Pcase: s[3] > 7.
      Hubcap T[3]<=0 T[4]<=3 T[6]<=2 T[8]<=4 T[1,2]<=5 T[5,7]<=6 [].
    Pcase: s[5] > 7.
      Hubcap T[2]<=2 T[4]<=3 T[5]<=0 T[8]<=4 T[1,3]<=6 T[6,7]<=5 [].
    Pcase: s[7] > 7.
      Hubcap T[2]<=2 T[4]<=4 T[7]<=0 T[8]<=3 T[1,3]<=6 T[5,6]<=5 [].
    Pcase: s[2] <= 6.
      Hubcap T[2]<=0 T[4]<=3 T[6]<=2 T[8]<=3 T[1,3]<=6 T[5,7]<=6 [].
    Pcase: s[6] <= 6.
      Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[4]<=3 T[6]<=0 T[8]<=3 T[5,7]<=6 [].
    Pcase L2_2: s[1] > 6.
      Pcase: s[2] > 7.
        Hubcap T[1]<=2 T[2]<=0 T[3]<=3 T[4]<=4 T[5]<=3 T[6]<=2 T[7]<=3 T[8]<=3 [].
      Pcase: s[3] > 6.
        Hubcap T[1]<=3 T[2]<=0 T[3]<=3 T[4]<=3 T[5]<=3 T[6]<=2 T[7]<=3 T[8]<=3 [].
      Pcase: f1[3] <= 5.
        Reducible.
      Pcase: s[5] > 6.
        Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[4]<=3 T[7]<=3 T[8]<=3 T[5,6]<=3 [].
      Hubcap T[3]<=3 T[4]<=4 T[5]<=3 T[8]<=3 T[1,2]<=3 T[6,7]<=4 [].
    Pcase: s[3] > 6.
      Similar to *L2_2[5].
    Pcase: s[5] > 6.
      Similar to L2_2[4].
    Pcase: s[7] > 6.
      Similar to *L2_2[1].
    Pcase: f1[1] <= 5.
      Reducible.
    Pcase: f1[3] <= 5.
      Reducible.
    Pcase: f1[5] <= 5.
      Reducible.
    Pcase: f1[7] <= 5.
      Reducible.
    Hubcap T[1]<=3 T[2]<=0 T[3]<=3 T[4]<=4 T[5]<=3 T[6]<=0 T[7]<=3 T[8]<=4 [].
  Pcase: s[1] > 7.
    Hubcap T[1]<=0 T[8]<=3 T[2,3]<=4 T[4,5]<=6 T[6,7]<=7 [].
  Pcase: s[3] > 7.
    Hubcap T[3]<=0 T[8]<=4 T[1,2]<=5 T[4,5]<=4 T[6,7]<=7 [].
  Pcase: s[5] > 7.
    Hubcap T[1]<=4 T[5]<=0 T[2,8]<=7 T[3,4]<=4 T[6,7]<=5 [].
  Pcase: s[7] > 7.
    Hubcap T[7]<=0 T[8]<=3 T[1,2]<=7 T[3,4]<=6 T[5,6]<=4 [].
  Pcase L1_4: s[3] > 6.
    Pcase: s[2] > 7.
      Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[8]<=4 T[4,5]<=4 T[6,7]<=7 [].
    Pcase: s[4] > 7.
      Hubcap T[1]<=4 T[2]<=2 T[3]<=2 T[4]<=0 T[5,8]<=5 T[6,7]<=7 [].
    Pcase: s[6] > 7.
      Hubcap T[1]<=4 T[2]<=2 T[3]<=4 T[6]<=0 T[7]<=3 T[8]<=4 T[4,5]<=3 [].
    Pcase: s[1] > 6.
      Pcase: s[2] > 6.
        Hubcap T[1]<=3 T[2]<=0 T[3]<=2 T[4]<=2 T[7]<=4 T[8]<=3 T[5,6]<=6 [].
      Pcase: s[4] > 6.
        Hubcap T[1]<=4 T[2]<=0 T[3]<=2 T[4]<=2 T[5]<=2 T[8]<=3 T[6,7]<=7 [].
      Pcase: s[5] > 6.
        Hubcap T[1]<=4 T[2]<=0 T[3]<=4 T[4]<=0 T[5]<=4 T[8]<=3 T[6,7]<=5 [].
      Pcase: s[6] > 6.
        Hubcap T[1]<=4 T[2]<=0 T[3]<=4 T[8]<=3 T[4,5]<=3 T[6,7]<=6 [].
      Pcase: s[7] > 6.
        Hubcap T[1]<=4 T[2]<=0 T[3]<=4 T[4]<=2 T[5]<=3 T[8]<=2 T[6,7]<=5 [].
      Pcase: h[2] > 6.
        Hubcap T[1]<=2 T[2]<=0 T[3]<=4 T[8]<=3 T[4,5]<=4 T[6,7]<=7 [].
      Pcase: h[3] > 6.
        Hubcap T[1]<=4 T[2]<=0 T[3]<=2 T[8]<=3 T[4,5]<=4 T[6,7]<=7 [].
      Pcase: h[4] > 5.
        Hubcap T[2]<=0 T[8]<=3 T[1,3]<=7 T[4,7]<=5 T[5,6]<=5 [].
      Pcase: h[3] <= 5.
        Hubcap T[1]<=3 T[2]<=0 T[3]<=3 T[8]<=3 T[4,5]<=4 T[6,7]<=7 [].
      Pcase: h[5] > 5.
        Hubcap T[2]<=0 T[8]<=3 T[1,3]<=7 T[4,5]<=3 T[6,7]<=7 [].
      Hubcap T[1]<=4 T[2]<=0 T[3]<=4 T[8]<=3 T[4,5]<=4 T[6,7]<=5 [].
    Pcase: s[4] > 6.
      Hubcap T[3]<=2 T[4]<=2 T[1,2]<=5 T[5,8]<=5 T[6,7]<=6 [].
    Pcase: h[2] > 6.
      Hubcap T[1]<=3 T[2]<=0 T[3,8]<=7 T[4,5]<=4 T[6,7]<=6 [].
    Pcase: h[4] > 6.
      Hubcap T[1,2]<=5 T[3,8]<=5 T[4,5]<=4 T[6,7]<=6 [].
    Pcase: h[5] > 6.
      Hubcap T[3]<=4 T[4]<=0 T[1,2]<=5 T[5,8]<=5 T[6,7]<=6 [].
    Pcase: s[6] > 6.
      Pcase: s[2] > 6.
        Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[8]<=4 T[4,5]<=3 T[6,7]<=6 [].
      Pcase: s[5] > 6.
        Hubcap T[1]<=4 T[2]<=2 T[4]<=0 T[5]<=2 T[6]<=2 T[7]<=3 T[3,8]<=7 [].
      Pcase: s[7] > 6.
        Hubcap T[1]<=4 T[2]<=2 T[3]<=4 T[8]<=3 T[4,5]<=3 T[6,7]<=4 [].
      Pcase: h[3] > 5.
        Hubcap T[3]<=2 T[8]<=4 T[1,2]<=5 T[4,5]<=3 T[6,7]<=6 [].
      Pcase: h[5] > 5.
        Hubcap T[1,2]<=5 T[3,7]<=6 T[4,5]<=2 T[6,8]<=7 [].
      Pcase: h[6] > 6.
        Hubcap T[4]<=2 T[8]<=4 T[1,2]<=5 T[3,7]<=6 T[5,6]<=3 [].
      Pcase: h[7] > 6.
        Hubcap T[7]<=3 T[8]<=4 T[1,2]<=5 T[3,5]<=5 T[4,6]<=3 [].
      Pcase: h[8] > 5.
        Hubcap T[3]<=4 T[4]<=2 T[5]<=2 T[8]<=3 T[1,2]<=4 T[6,7]<=5 [].
      Pcase: f1[3] <= 5.
        Reducible.
      Pcase: f1[7] <= 5.
        Reducible.
      Pcase: h[4] > 5.
        Hubcap T[3]<=2 T[8]<=4 T[1,2]<=5 T[4,5]<=3 T[6,7]<=6 [].
      Pcase: f1[4] <= 6.
        Reducible.
      Pcase: h[6] <= 5.
        Hubcap T[3]<=3 T[4]<=1 T[5]<=1 T[8]<=4 T[1,2]<=5 T[6,7]<=6 [].
      Pcase: h[7] > 5.
        Hubcap T[1]<=4 T[2]<=2 T[3]<=3 T[4]<=2 T[5]<=1 T[8]<=4 T[6,7]<=4 [].
      Pcase: f1[7] <= 6.
        Reducible.
      Pcase: h[1] > 5.
        Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[4]<=2 T[5]<=1 T[6]<=4 T[7]<=2 T[8]<=3 [].
      Hubcap T[3]<=3 T[4]<=2 T[5]<=1 T[6]<=2 T[7]<=3 T[8]<=4 T[1,2]<=5 [].
    Pcase: s[2] > 6.
      Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[8]<=4 T[4,5]<=4 T[6,7]<=5 [].
    Pcase: h[3] > 5.
      Hubcap T[3]<=2 T[8]<=4 T[1,2]<=5 T[4,5]<=4 T[6,7]<=5 [].
    Pcase: h[6] > 6.
      Hubcap T[1,2]<=5 T[3,8]<=7 T[4,5]<=3 T[6,7]<=5 [].
    Pcase: h[7] > 6.
      Hubcap T[1,2]<=5 T[3,7]<=6 T[4,5]<=4 T[6,8]<=5 [].
    Pcase: h[8] > 5.
      Hubcap T[3]<=4 T[8]<=3 T[1,2]<=4 T[4,5]<=4 T[6,7]<=5 [].
    Pcase: s[5] > 6.
      Hubcap T[4]<=0 T[1,2]<=5 T[3,8]<=7 T[5,6]<=5 T[5,7]<=7 T[6,7]<=5 [].
    Pcase: s[7] <= 6.
      Hubcap T[3]<=3 T[1,2]<=5 T[6,7]<=5 T[4,5]<=4 T[4,8]<=5 T[5,8]<=6 [].
    Pcase: h[2] > 5.
      Hubcap T[1]<=3 T[8]<=3 T[2,3]<=5 T[4,5]<=4 T[6,7]<=5 [].
    Pcase: f1[2] <= 6.
      Reducible.
    Pcase: h[4] <= 5.
      Hubcap T[1]<=4 T[3]<=3 T[2,8]<=4 T[4,5]<=4 T[6,7]<=5 [].
    Pcase: h[5] > 5.
      Hubcap T[1]<=4 T[3]<=4 T[2,8]<=4 T[4,5]<=3 T[6,7]<=5 [].
    Pcase: h[6] > 5.
      Hubcap T[1]<=4 T[3]<=4 T[2,8]<=4 T[4,7]<=5 T[5,6]<=3 [].
    Hubcap T[1]<=4 T[3]<=4 T[4]<=1 T[5]<=3 T[6]<=1 T[7]<=3 T[2,8]<=4 [].
  Pcase: s[5] > 6.
    Similar to *L1_4[1].
  Pcase: s[2] > 7.
    Hubcap T[1]<=3 T[2]<=0 T[3,4]<=4 T[5,8]<=6 T[6,7]<=7 [].
  Pcase: s[6] > 7.
    Hubcap T[1]<=4 T[6]<=0 T[2,7]<=6 T[3,8]<=6 T[4,5]<=4 [].
  Pcase L1_5: s[1] > 6.
    Pcase: s[4] > 7.
      Hubcap T[1]<=4 T[2]<=2 T[3]<=2 T[4]<=0 T[5]<=2 T[8]<=3 T[6,7]<=7 [].
    Pcase: h[6] > 6.
      Hubcap T[1]<=4 T[8]<=3 T[2,3]<=4 T[4,5]<=4 T[6,7]<=5 [].
    Pcase: h[3] > 5.
      Pcase: s[6] > 6.
        Hubcap T[1]<=4 T[8]<=3 T[2,3]<=3 T[4,5]<=4 T[6,7]<=6 [].
      Pcase: s[7] > 6.
        Hubcap T[1]<=4 T[8]<=2 T[2,3]<=3 T[4,5]<=6 T[6,7]<=5 [].
      Pcase: h[4] > 6.
        Hubcap T[1]<=4 T[4]<=2 T[7]<=4 T[8]<=3 T[2,3]<=2 T[5,6]<=5 [].
      Pcase: h[7] > 6.
        Hubcap T[1]<=4 T[7]<=3 T[8]<=3 T[2,3]<=3 T[4,5]<=6 T[4,6]<=5 T[5,6]<=4 [].
      Pcase: h[8] > 6.
        Hubcap T[1]<=4 T[8]<=2 T[2,3]<=3 T[4,5]<=6 T[6,7]<=5 [].
      Pcase: f1[7] <= 5.
        Reducible.
      Pcase: h[5] > 6.
        Hubcap T[4]<=2 T[8]<=3 T[1,5]<=5 T[2,3]<=3 T[6,7]<=7 [].
      Pcase: s[4] > 6.
        Pcase: s[2] > 6.
          Hubcap T[1]<=3 T[2]<=1 T[3]<=0 T[4]<=4 T[5]<=2 T[8]<=3 T[6,7]<=7 [].
        Pcase: h[2] > 5.
          Hubcap T[5]<=2 T[8]<=3 T[1,3]<=3 T[2,4]<=5 T[6,7]<=7 [].
        Pcase: h[3] > 6.
          Hubcap T[1]<=4 T[2]<=0 T[3]<=0 T[4]<=4 T[5]<=2 T[8]<=3 T[6,7]<=7 [].
        Pcase: h[5] > 5.
          Hubcap T[8]<=3 T[1,5]<=5 T[6,7]<=7 T[2,3]<=2 T[2,4]<=5 T[3,4]<=4 [].
        Pcase: h[4] <= 5.
          Hubcap T[1]<=4 T[4]<=3 T[7]<=4 T[8]<=3 T[2,3]<=2 T[5,6]<=4 [].
        Pcase: h[6] > 5.
          Hubcap T[1]<=4 T[4]<=4 T[7]<=4 T[8]<=3 T[2,3]<=2 T[5,6]<=3 [].
        Hubcap T[4]<=4 T[8]<=3 T[1,5]<=5 T[2,3]<=2 T[6,7]<=6 [].
      Pcase: s[2] > 6.
        Hubcap T[1]<=3 T[2]<=1 T[5]<=3 T[8]<=3 T[3,4]<=4 T[6,7]<=6 [].
      Pcase: h[2] > 6.
        Hubcap T[1]<=2 T[4]<=3 T[5]<=3 T[8]<=3 T[2,3]<=3 T[6,7]<=6 [].
      Pcase: h[3] > 6.
        Hubcap T[1]<=4 T[2]<=0 T[5]<=3 T[8]<=3 T[3,4]<=4 T[6,7]<=6 [].
      Pcase: h[4] > 5.
        Hubcap T[1]<=4 T[4]<=2 T[5]<=3 T[8]<=3 T[2,3]<=2 T[6,7]<=6 [].
      Pcase: h[5] <= 5.
        Hubcap T[4]<=3 T[8]<=3 T[1,5]<=6 T[2,3]<=3 T[6,7]<=5 [].
      Pcase: f1[5] <= 5.
        Reducible.
      Pcase: h[2] > 5.
        Hubcap T[1]<=3 T[8]<=3 T[2,3]<=3 T[4,5]<=5 T[6,7]<=6 [].
      Pcase: h[6] > 5.
        Hubcap T[1]<=4 T[4]<=2 T[5]<=2 T[6]<=2 T[7]<=4 T[8]<=3 T[2,3]<=3 [].
      Pcase: h[7] <= 5.
        Hubcap T[1]<=4 T[6]<=2 T[7]<=4 T[8]<=3 T[2,3]<=3 T[4,5]<=4 [].
      Pcase: h[8] > 5.
        Hubcap T[1]<=4 T[4]<=3 T[5]<=3 T[6]<=2 T[7]<=3 T[8]<=2 T[2,3]<=3 [].
      Pcase: h[1] > 5.
        Hubcap T[1]<=3 T[4]<=3 T[5]<=3 T[8]<=3 T[2,3]<=3 T[6,7]<=5 [].
      Hubcap T[1]<=4 T[6]<=3 T[7]<=3 T[8]<=3 T[2,3]<=3 T[4,5]<=4 [].
    Pcase: s[6] > 6.
      Hubcap T[1]<=3 T[8]<=3 T[2,3]<=4 T[4,5]<=4 T[6,7]<=6 [].
    Pcase: s[7] > 6.
      Hubcap T[1]<=3 T[8]<=2 T[2,3]<=4 T[4,5]<=6 T[6,7]<=5 [].
    Pcase: h[4] > 6.
      Hubcap T[1]<=3 T[4]<=2 T[7]<=4 T[8]<=3 T[2,3]<=3 T[5,6]<=5 [].
    Pcase: h[7] > 6.
      Hubcap T[1]<=3 T[7]<=3 T[8]<=3 T[2,3]<=4 T[4,5]<=6 T[4,6]<=5 T[5,6]<=4 [].
    Pcase: h[8] > 6.
      Hubcap T[1]<=3 T[8]<=2 T[2,3]<=4 T[4,5]<=6 T[6,7]<=5 [].
    Pcase: f1[7] <= 5.
      Reducible.
    Pcase: h[5] > 6.
      Hubcap T[2]<=2 T[8]<=3 T[1,5]<=4 T[3,4]<=4 T[6,7]<=7 [].
    Pcase: s[4] > 6.
      Pcase: s[2] > 6.
        Hubcap T[3]<=0 T[4]<=4 T[5]<=2 T[8]<=3 T[1,2]<=4 T[6,7]<=7 [].
      Pcase: h[2] > 6.
        Hubcap T[4]<=4 T[8]<=3 T[1,5]<=3 T[2,3]<=3 T[6,7]<=7 [].
      Pcase: h[2] <= 5.
        Hubcap T[3]<=1 T[8]<=3 T[1,5]<=4 T[2,4]<=5 T[6,7]<=7 [].
      Pcase: h[5] <= 5.
        Hubcap T[7]<=4 T[8]<=3 T[1,3]<=4 T[2,4]<=5 T[5,6]<=4 [].
      Pcase: h[4] > 5.
        Hubcap T[1]<=3 T[4]<=2 T[5]<=2 T[8]<=3 T[2,3]<=3 T[6,7]<=7 [].
      Pcase: f1[3] <= 6.
        Reducible.
      Pcase: h[6] > 5.
        Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[4]<=4 T[7]<=4 T[8]<=3 T[5,6]<=3 [].
      Pcase: h[7] <= 5.
        Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[5]<=1 T[7]<=4 T[8]<=3 T[4,6]<=6 [].
      Pcase: h[8] > 5.
        Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[4]<=4 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=2 [].
      Pcase: h[1] > 5.
        Hubcap T[1]<=1 T[2]<=1 T[3]<=2 T[4]<=4 T[5]<=2 T[8]<=3 T[6,7]<=6 [].
      Hubcap T[1]<=3 T[2]<=1 T[3]<=2 T[5]<=1 T[7]<=3 T[8]<=3 T[4,6]<=7 [].
    Pcase: s[2] > 6.
      Hubcap T[5]<=3 T[8]<=3 T[1,2]<=4 T[3,4]<=4 T[6,7]<=6 [].
    Pcase: h[5] > 5.
      Hubcap T[1]<=3 T[8]<=3 T[2,3]<=4 T[4,5]<=4 T[6,7]<=6 [].
    Pcase: h[7] <= 5.
      Reducible.
    Pcase: h[2] > 6.
      Hubcap T[1]<=2 T[4]<=3 T[5]<=3 T[8]<=3 T[2,3]<=4 T[6,7]<=5 [].
    Pcase: h[4] <= 5.
      Hubcap T[1]<=3 T[2]<=1 T[3]<=3 T[8]<=3 T[4,5]<=5 T[6,7]<=5 [].
    Pcase: h[2] <= 5.
      Hubcap T[1]<=3 T[2]<=2 T[5]<=3 T[8]<=3 T[3,4]<=4 T[6,7]<=5 [].
    Pcase: h[6] > 5.
      Hubcap T[1]<=3 T[2]<=2 T[5]<=2 T[8]<=3 T[3,4]<=5 T[6,7]<=5 [].
    Hubcap T[1]<=3 T[2]<=2 T[5]<=3 T[8]<=3 T[3,4]<=4 T[6,7]<=5 [].
  Pcase: s[7] > 6.
    Similar to *L1_5[1].
  Pcase: s[4] > 7.
    Hubcap T[3]<=2 T[4]<=0 T[5]<=2 T[8]<=4 T[1,2]<=6 T[6,7]<=6 [].
  Pcase: f1[3] <= 5.
    Pcase: s[4] > 6.
      Hubcap T[1,2]<=6 T[3,4]<=3 T[5,8]<=5 T[6,7]<=6 [].
    Pcase: h[4] > 6.
      Hubcap T[1,2]<=6 T[3,8]<=4 T[4,5]<=4 T[6,7]<=6 [].
    Pcase: f1[4] <= 5.
      Reducible.
    Pcase: s[2] <= 6.
      Hubcap T[3]<=1 T[4]<=3 T[1,2]<=4 T[5,8]<=6 T[6,7]<=6 [].
    Pcase: s[6] > 6.
      Hubcap T[1]<=3 T[4]<=3 T[5]<=1 T[8]<=4 T[2,3]<=3 T[6,7]<=6 [].
    Pcase: h[2] > 5.
      Hubcap T[1]<=3 T[4]<=3 T[2,3]<=2 T[5,8]<=6 T[6,7]<=6 [].
    Pcase: h[5] > 5.
      Hubcap T[1,4]<=5 T[2,3]<=3 T[5,8]<=6 T[6,7]<=6 [].
    Hubcap T[1]<=3 T[4]<=3 T[2,3]<=3 T[5,6]<=4 T[7,8]<=7 [].
  Pcase: s[4] > 6.
    Pcase: h[3] > 6.
      Hubcap T[3]<=0 T[4]<=4 T[1,2]<=5 T[5,8]<=5 T[6,7]<=6 [].
    Pcase: h[6] > 6.
      Hubcap T[4]<=4 T[5]<=0 T[1,2]<=6 T[3,8]<=5 T[6,7]<=5 [].
    Pcase L2_1: h[8] > 5.
      Pcase: s[2] > 6.
        Hubcap T[1]<=2 T[2]<=4 T[3]<=0 T[4]<=4 T[7]<=3 T[8]<=3 T[5,6]<=4 [].
      Pcase: s[6] > 6.
        Hubcap T[3]<=2 T[4]<=4 T[5]<=0 T[6]<=4 T[7]<=2 T[8]<=3 T[1,2]<=5 [].
      Pcase: h[2] > 6.
        Hubcap T[1]<=2 T[2]<=1 T[3]<=2 T[4]<=4 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 [].
      Pcase: h[4] > 6.
        Hubcap T[3]<=2 T[4]<=2 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[1,2]<=5 [].
      Pcase: h[5] > 6.
        Hubcap T[3]<=2 T[4]<=2 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=3 T[1,2]<=5 [].
      Pcase: h[6] > 5.
        Hubcap T[3]<=2 T[4]<=4 T[7]<=3 T[8]<=3 T[1,2]<=5 T[5,6]<=3 [].
      Pcase: h[7] > 6.
        Hubcap T[3]<=2 T[4]<=4 T[5]<=2 T[6]<=2 T[7]<=2 T[8]<=3 T[1,2]<=5 [].
      Pcase: h[8] <= 6.
        Hubcap T[3]<=2 T[7]<=3 T[1,2]<=5 T[4,6]<=6 T[5,8]<=4 [].
      Pcase: h[7] > 5.
        Hubcap T[3]<=2 T[4]<=4 T[5]<=2 T[8]<=3 T[1,2]<=5 T[6,7]<=4 [].
      Hubcap T[3]<=2 T[4]<=4 T[5]<=1 T[6]<=3 T[7]<=2 T[8]<=3 T[1,2]<=5 [].
    Pcase: h[1] > 5.
      Similar to *L2_1[1].
    Pcase: f1[1] <= 5.
      Reducible.
    Pcase: f1[7] <= 5.
      Reducible.
    Pcase: h[2] > 6.
      Hubcap T[1]<=3 T[4]<=4 T[5]<=1 T[8]<=4 T[2,3]<=2 T[6,7]<=6 [].
    Pcase: h[4] > 6.
      Hubcap T[1]<=4 T[4]<=2 T[5]<=1 T[8]<=4 T[2,3]<=3 T[6,7]<=6 [].
    Pcase: h[5] > 6.
      Hubcap T[1]<=4 T[4]<=2 T[5]<=1 T[8]<=4 T[2,3]<=3 T[6,7]<=6 [].
    Pcase: h[7] > 6.
      Hubcap T[1]<=4 T[4]<=4 T[7]<=3 T[8]<=4 T[2,3]<=3 T[5,6]<=2 [].
    Pcase L2_2: h[4] > 5.
      Pcase: s[2] > 6.
        Hubcap T[1]<=3 T[2]<=3 T[3]<=0 T[8]<=4 T[4,5]<=4 T[6,7]<=6 [].
      Hubcap T[1]<=4 T[8]<=4 T[2,3]<=2 T[4,5]<=4 T[6,7]<=6 [].
    Pcase: h[5] > 5.
      Similar to *L2_2[1].
    Pcase: s[6] > 6.
      Hubcap T[1]<=4 T[4]<=3 T[5]<=0 T[6]<=3 T[7]<=3 T[8]<=4 T[2,3]<=3 [].
    Pcase: h[6] <= 5.
      Reducible.
    Pcase: f1[5] <= 5.
      Reducible.
    Pcase: f1[6] <= 5.
      Reducible.
    Pcase: s[2] > 6.
      Hubcap T[1]<=3 T[2]<=3 T[3]<=0 T[4]<=3 T[5]<=1 T[8]<=4 T[6,7]<=6 [].
    Pcase: h[3] <= 5.
      Reducible.
    Pcase: f1[2] <= 5.
      Reducible.
    Pcase: h[2] > 5.
      Hubcap T[1]<=3 T[2]<=3 T[3]<=0 T[4]<=3 T[5]<=1 T[8]<=4 T[6,7]<=6 [].
    Hubcap T[1]<=4 T[4]<=3 T[5]<=1 T[8]<=4 T[2,3]<=2 T[6,7]<=6 [].
  Pcase L1_6: s[2] > 6.
    Pcase: h[4] > 6.
      Hubcap T[1]<=3 T[3]<=0 T[2,8]<=7 T[4,5]<=4 T[6,7]<=6 [].
    Pcase: h[5] > 6.
      Hubcap T[3]<=2 T[4]<=1 T[1,2]<=6 T[5,8]<=5 T[6,7]<=6 [].
    Pcase: f1[1] <= 5.
      Hubcap T[1]<=1 T[2]<=3 T[3]<=2 T[8]<=3 T[4,5]<=5 T[6,7]<=6 [].
    Pcase: f1[5] > 5.
      Pcase: s[6] <= 6.
        Hubcap T[1,2]<=6 T[3,4]<=3 T[5,8]<=6 T[6,7]<=5 [].
      Pcase: h[2] > 6.
        Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[8]<=4 T[4,5]<=3 T[6,7]<=6 [].
      Pcase: h[3] > 6.
        Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[8]<=4 T[4,5]<=3 T[6,7]<=6 [].
      Pcase: h[6] > 6.
        Hubcap T[1]<=3 T[3]<=2 T[6]<=2 T[8]<=4 T[2,7]<=6 T[4,5]<=3 [].
      Pcase: h[7] > 6.
        Hubcap T[1]<=3 T[3]<=2 T[6]<=2 T[8]<=4 T[2,7]<=6 T[4,5]<=3 [].
      Pcase: h[8] > 5.
        Hubcap T[1]<=2 T[2]<=4 T[3]<=2 T[4]<=2 T[5]<=2 T[8]<=3 T[6,7]<=5 [].
      Pcase: f1[7] <= 5.
        Reducible.
      Pcase: h[2] > 5.
        Hubcap T[3]<=2 T[8]<=4 T[1,2]<=5 T[4,5]<=3 T[6,7]<=6 [].
      Pcase: h[3] > 5.
        Hubcap T[3]<=2 T[8]<=4 T[1,2]<=5 T[4,5]<=3 T[6,7]<=6 [].
      Pcase: h[4] <= 5.
        Hubcap T[1]<=3 T[2]<=3 T[3]<=1 T[4]<=2 T[5]<=1 T[8]<=4 T[6,7]<=6 [].
      Pcase: h[5] > 5.
        Hubcap T[1]<=3 T[2]<=3 T[3]<=1 T[4]<=2 T[5]<=1 T[8]<=4 T[6,7]<=6 [].
      Pcase: h[7] <= 5.
        Hubcap T[1]<=3 T[2]<=3 T[3]<=1 T[4]<=2 T[5]<=1 T[8]<=4 T[6,7]<=6 [].
      Pcase: h[6] > 5.
        Hubcap T[1]<=3 T[2]<=3 T[3]<=2 T[4]<=2 T[5]<=2 T[8]<=4 T[6,7]<=4 [].
      Pcase: f1[5] <= 6.
        Reducible.
      Pcase: h[1] > 5.
        Hubcap T[1]<=2 T[2]<=3 T[3]<=2 T[4]<=2 T[5]<=2 T[6]<=4 T[7]<=2 T[8]<=3 [].
      Hubcap T[1]<=3 T[2]<=3 T[3]<=2 T[6]<=2 T[7]<=3 T[8]<=4 T[4,5]<=3 [].
    Pcase: f1[4] <= 5.
      Reducible.
    Pcase: s[6] > 6.
      Hubcap T[1]<=3 T[3]<=1 T[4]<=3 T[8]<=4 T[2,7]<=6 T[5,6]<=3 [].
    Hubcap T[1]<=3 T[2]<=4 T[3]<=1 T[4]<=3 T[5]<=1 T[8]<=4 T[6,7]<=4 [].
  Pcase: s[6] > 6.
    Similar to *L1_6[1].
  Pcase: h[4] > 6.
    Hubcap T[1,2]<=5 T[3,8]<=5 T[4,5]<=4 T[6,7]<=6 [].
  Pcase: h[5] > 6.
    Hubcap T[3]<=3 T[4]<=1 T[1,2]<=5 T[5,8]<=5 T[6,7]<=6 [].
  Pcase: h[2] > 6.
    Hubcap T[1]<=3 T[2]<=1 T[3,8]<=6 T[4,5]<=5 T[6,7]<=5 [].
  Pcase: h[2] <= 5.
    Hubcap T[1,2]<=5 T[3,4]<=4 T[5,8]<=6 T[6,7]<=5 [].
  Pcase: h[3] > 6.
    Hubcap T[1]<=3 T[2]<=2 T[3,4]<=4 T[5,8]<=6 T[6,7]<=5 [].
  Pcase: h[5] > 5.
    Hubcap T[1,2]<=5 T[3,8]<=6 T[4,5]<=4 T[6,7]<=5 [].
  Pcase: h[7] <= 5.
    Reducible.
  Pcase: h[3] > 5.
    Hubcap T[2]<=2 T[3]<=2 T[1,7]<=6 T[4,5]<=5 T[6,8]<=5 [].
  Pcase: h[6] > 5.
    Hubcap T[3]<=3 T[4]<=3 T[5]<=2 T[8]<=3 T[1,2]<=5 T[6,7]<=4 [].
  Pcase: f1[5] <= 6.
    Reducible.
  Pcase: h[4] > 5.
    Hubcap T[5]<=3 T[8]<=3 T[1,2]<=5 T[3,4]<=4 T[6,7]<=5 [].
  Hubcap T[4]<=2 T[8]<=3 T[1,7]<=7 T[2,3]<=4 T[5,6]<=4 [].
Pcase: s[1] <= 5.
  Similar to L0_1[1].
Pcase: s[2] <= 5.
  Similar to L0_1[2].
Pcase: s[3] <= 5.
  Similar to L0_1[3].
Pcase: s[4] <= 5.
  Similar to L0_1[4].
Pcase: s[5] <= 5.
  Similar to L0_1[5].
Pcase: s[6] <= 5.
  Similar to L0_1[6].
Pcase: s[7] <= 5.
  Similar to L0_1[7].
Pcase: s[1] > 7.
  Hubcap T[1]<=0 T[2]<=2 T[3]<=4 T[4]<=4 T[5,6]<=6 T[7,8]<=4 [].
Pcase: s[2] > 7.
  Hubcap T[1]<=2 T[2]<=0 T[3]<=2 T[4]<=4 T[5,6]<=6 T[7,8]<=6 [].
Pcase: s[3] > 7.
  Hubcap T[1]<=4 T[2]<=2 T[3]<=0 T[4]<=2 T[5,6]<=6 T[7,8]<=6 [].
Pcase: s[4] > 7.
  Hubcap T[1]<=4 T[2]<=4 T[3]<=2 T[4]<=0 T[5,6]<=4 T[7,8]<=6 [].
Pcase: s[5] > 7.
  Hubcap T[1]<=4 T[2]<=4 T[5]<=0 T[6]<=2 T[3,4]<=4 T[7,8]<=6 [].
Pcase: s[6] > 7.
  Hubcap T[1]<=4 T[2]<=4 T[3]<=4 T[6]<=0 T[4,5]<=4 T[7,8]<=4 [].
Pcase: s[7] > 7.
  Hubcap T[1]<=4 T[2]<=4 T[7]<=0 T[8]<=2 T[3,4]<=6 T[5,6]<=4 [].
Pcase: s[8] > 7.
  Hubcap T[1]<=2 T[2]<=4 T[3]<=4 T[8]<=0 T[4,5]<=6 T[6,7]<=4 [].
Pcase: h[2] > 6.
  Hubcap T[1,8]<=4 T[2,3]<=4 T[4,5]<=6 T[6,7]<=6 [].
Pcase: h[3] > 6.
  Hubcap T[1,2]<=4 T[3,4]<=4 T[5,6]<=6 T[7,8]<=6 [].
Pcase: h[4] > 6.
  Hubcap T[1,8]<=6 T[2,3]<=4 T[4,5]<=4 T[6,7]<=6 [].
Pcase: h[5] > 6.
  Hubcap T[1,2]<=6 T[3,4]<=4 T[5,6]<=4 T[7,8]<=6 [].
Pcase: h[6] > 6.
  Hubcap T[1,8]<=6 T[2,3]<=6 T[4,5]<=4 T[6,7]<=4 [].
Pcase: h[7] > 6.
  Hubcap T[1,2]<=6 T[3,4]<=6 T[5,6]<=4 T[7,8]<=4 [].
Pcase: h[8] > 6.
  Hubcap T[1,8]<=4 T[2,3]<=6 T[4,5]<=6 T[6,7]<=4 [].
Pcase: h[1] > 6.
  Hubcap T[1,2]<=4 T[3,4]<=6 T[5,6]<=6 T[7,8]<=4 [].
Pcase L0_2: s[1] > 6.
  Pcase: s[2] > 6.
    Hubcap T[1]<=2 T[2]<=2 T[3]<=2 T[4]<=4 T[5,6]<=6 T[7,8]<=4 [].
  Pcase: s[3] > 6.
    Hubcap T[1]<=4 T[2]<=0 T[3]<=4 T[4]<=2 T[5,6]<=6 T[7,8]<=4 [].
  Pcase: s[4] > 6.
    Hubcap T[1]<=4 T[2]<=2 T[3]<=2 T[4]<=4 T[5,6]<=4 T[7,8]<=4 [].
  Pcase: s[5] > 6.
    Hubcap T[1]<=4 T[2]<=2 T[5]<=4 T[6]<=2 T[3,4]<=4 T[7,8]<=4 [].
  Pcase: s[6] > 6.
    Hubcap T[1]<=4 T[2]<=2 T[3]<=3 T[6]<=4 T[4,5]<=4 T[7,8]<=3 [].
  Pcase: s[7] > 6.
    Hubcap T[1]<=4 T[2]<=2 T[3]<=3 T[4]<=3 T[7]<=4 T[8]<=0 T[5,6]<=4 [].
  Pcase: s[8] > 6.
    Hubcap T[1]<=2 T[2]<=2 T[3]<=3 T[4]<=3 T[5]<=3 T[6]<=3 T[7]<=2 T[8]<=2 [].
  Pcase: h[3] > 5.
    Hubcap T[1]<=4 T[4]<=3 T[5]<=3 T[6]<=3 T[2,3]<=3 T[7,8]<=4 [].
  Pcase: h[4] <= 5.
    Hubcap T[1]<=4 T[2]<=1 T[3]<=3 T[6]<=3 T[4,5]<=5 T[7,8]<=4 [].
  Pcase: h[2] <= 5.
    Hubcap T[1]<=4 T[2]<=2 T[5]<=3 T[6]<=3 T[3,4]<=4 T[7,8]<=4 [].
  Pcase: h[5] > 5.
    Hubcap T[1]<=4 T[2]<=2 T[3]<=2 T[4]<=2 T[5]<=2 T[6]<=3 T[7]<=3 T[8]<=2 [].
  Pcase: h[6] > 5.
    Hubcap T[1]<=4 T[2]<=2 T[3,4]<=5 T[5,6]<=5 T[7,8]<=4 [].
  Hubcap T[1]<=4 T[2]<=2 T[5]<=3 T[6]<=3 T[3,4]<=4 T[7,8]<=4 [].
Pcase: s[2] > 6.
  Similar to L0_2[1].
Pcase: s[3] > 6.
  Similar to L0_2[2].
Pcase: s[4] > 6.
  Similar to L0_2[3].
Pcase: s[5] > 6.
  Similar to L0_2[4].
Pcase: s[6] > 6.
  Similar to L0_2[5].
Pcase: s[7] > 6.
  Similar to L0_2[6].
Pcase: s[8] > 6.
  Similar to L0_2[7].
Pcase: f1[1] <= 5.
  Hubcap T[1]<=1 T[2]<=3 T[3]<=3 T[8]<=3 T[4,5]<=5 T[6,7]<=5 [].
Pcase: f1[2] <= 5.
  Hubcap T[1]<=3 T[2]<=1 T[3]<=3 T[4]<=3 T[5,6]<=5 T[7,8]<=5 [].
Pcase: f1[3] <= 5.
  Hubcap T[1]<=3 T[2]<=3 T[3]<=1 T[4]<=3 T[5,6]<=5 T[7,8]<=5 [].
Pcase: h[2] > 5.
  Hubcap T[3]<=3 T[6]<=3 T[1,2]<=4 T[4,5]<=5 T[7,8]<=5 [].
Pcase: h[3] > 5.
  Hubcap T[1]<=3 T[6]<=3 T[2,3]<=4 T[4,5]<=5 T[7,8]<=5 [].
Pcase: f1[2] <= 6.
  Reducible.
Pcase: h[4] > 5.
  Hubcap T[1]<=3 T[2]<=2 T[5]<=3 T[6]<=3 T[3,4]<=4 T[7,8]<=5 [].
Pcase: f1[3] <= 6.
  Reducible.
Pcase: h[5] > 5.
  Hubcap T[1]<=3 T[2]<=2 T[3]<=3 T[6]<=3 T[4,5]<=4 T[7,8]<=5 [].
Hubcap T[1]<=3 T[2]<=2 T[3]<=2 T[4]<=3 T[5,6]<=5 T[7,8]<=5 [].
Qed.
