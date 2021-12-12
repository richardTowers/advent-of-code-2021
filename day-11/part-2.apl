⍝ Make ]DISPLAY work in dialog APL:
)load buildse
BUILD_SESSION 'UK'

⍝ Set the print width wider than the tiny 80 character default
⎕PW ← 200

i ← ↑⍎¨¨⊃⎕NGET'input.txt'1

flash ← { f a ← ⍵ ⋄ f ← (f ∨ 9<a) ⋄ fnc ← (⊃+/+⌿0 ¯1 ¯2∘.⊖0 ¯1 ¯2⌽¨⊂(2+⍴a)↑a>9)[(⊂1 1)+⍳(⍴a)] ⋄ res ← (~f)∧(a + fnc) ⋄ (f res) }
step ← { it c a ← ⍵ ⋄ res ← flash ⍣≡ ((⍴a)⍴0) (a + 1) ⋄ (it + 1) (⊃res[1]) (⊃res[2]) }
]DISPLAY ¯1 + 1⌷(step⍣{ it c a ← ⍵ ⋄ c≡((⍴i)⍴1) }) 0 0 i
