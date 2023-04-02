module 0Trinitarianism.Quest3 where

open import 0Trinitarianism.Preambles.P3

{-
This is how I learnt to so this in PLTA
-}

_+_ : ℕ → ℕ → ℕ
zero    + n = n
(suc m) + n = suc (m + n)

infixl 6 _+_

-- forward declaration of mutual definitions
data even : ℕ → Type
data odd : ℕ → Type

data even where

  zero :
    ---------
    even zero
    
  suc : ∀ {n : ℕ}
    → odd n
      ------
    → even (suc n)
    
data odd where

  suc : ∀ {n : ℕ}
    → even n
      -----------
    → odd (suc n)

{-
Write here you proof that the sum of even naturals is even.
-}

e+e≡e : ∀ {m n : ℕ}
  → even m
  → even n
    ------------
  → even (m + n)

o+e≡o : ∀ {m n : ℕ}
  → odd m
  → even n
    -----------
  → odd (m + n)

e+e≡e zero     en = en
e+e≡e (suc om) en = suc (o+e≡o om en)

o+e≡o (suc em) en = suc (e+e≡e em en)
