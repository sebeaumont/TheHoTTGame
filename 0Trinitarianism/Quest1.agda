module 0Trinitarianism.Quest1 where

open import 0Trinitarianism.Preambles.P1

isEven : ℕ → Type
isEven zero = ⊤
isEven (suc zero) = ⊥
isEven (suc (suc n)) = isEven n

{-
  Interpretations of isEven ℕ → Type
  ----------------------------------
  
  1. Propostionally: isEven is a predicate on ℕ

  2. Constructively: isEven is a dependant construction, it is either
  ⊤ or ⊥ depending on n : ℕ

  3. Geometrically: seen as a map from the space ℕ to the space of
  spaces: Type, isEven

-}


-- here's my div2

div2 : Σ ℕ isEven → ℕ
div2 (zero , _) = zero
div2 (suc (suc n) , p) = suc (div2 (n , p))


_×_ : Type → Type → Type
A × C = Σ A (λ a → C)

{-
  From the dependent pair Σ A B, which in general A : Type, B : A → Type
  in the case where B is not dependant on a : A we have the regular product/pair
  which can be interpreted as:
  
  1. Proposition. A and C

  2. Construction. a : A with a construction c : C
  
  3. Geometrically. B is the trivial bundle since the fibres B a are constant w.r.t a : A
-}

