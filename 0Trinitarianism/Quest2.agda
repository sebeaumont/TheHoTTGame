module 0Trinitarianism.Quest2 where

open import 0Trinitarianism.Preambles.P2

-- DRY
open import 0Trinitarianism.Quest1

private
  -- why do we need a postulate?
  variable
    A B C : Type

uncurry : (A → B → C) → (A × B → C)
uncurry f (a , b) = f a b

curry : (A × B → C) → (A → B → C)
curry f a b = f (a , b)

