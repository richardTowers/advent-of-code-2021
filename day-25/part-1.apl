next ← {e←('>'@(⍸('.'=⍵)∧('>'=¯1⌽⍵)))('.'@(⍸('>'=⍵)∧('.'=1⌽⍵)))⍵ ⋄ ('v'@(⍸('.'=e)∧('v'=¯1⊖e)))('.'@(⍸('v'=e)∧('.'=1⊖e)))e}
fp ← (next⍣≡)i
1{((next⍣⍺)⍵)≡fp:⍺ ⋄ (⍺+1) ∇ ⍵}i
