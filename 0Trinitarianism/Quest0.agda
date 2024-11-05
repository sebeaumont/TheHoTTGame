module 0Trinitarianism.Quest0 where
open import 0Trinitarianism.Preambles.P0

data ⊤ : Type where
  tt : ⊤

TrueToTrue : ⊤ → ⊤
TrueToTrue = λ _ → tt

TrueToTrue' : ⊤ → ⊤
TrueToTrue' x = x

data ⊥ : Type where

-- ex-falso quod libet!
explosion : ⊥ → ⊤
explosion _ = tt

-- Natural numbers
data ℕ : Type where
  zero : ℕ
  suc : ℕ → ℕ
 
