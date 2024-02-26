;; keywords 
(("\\" @keyword) (#set! conceal "λ"))
(("forall" @keyword.repeat) (#set! conceal "∀"))
(("let" @keyword) (#set! conceal "ℒ"))


;; operators
(("->" @operator) (#set! conceal "→"))
(("<-" @operator) (#set! conceal "←"))
(((operator) @operator (#eq? @operator "/=")) (#set! conceal "≠"))
(((operator) @operator (#eq? @operator "<=")) (#set! conceal "≤"))
(((operator) @operator (#eq? @operator ">=")) (#set! conceal "≥"))
(((operator) @operator (#eq? @operator "==")) (#set! conceal "≡"))
(((operator) @operator (#eq? @operator ".")) (#set! conceal "∘"))
(((operator) @operator (#eq? @operator "$")) (#set! conceal "⋅"))
(((operator) @operator (#eq? @operator "++")) (#set! conceal "∪"))
(((operator) @operator (#eq? @operator "&&")) (#set! conceal "∧"))
(((operator) @operator (#eq? @operator "||")) (#set! conceal "∨"))

((exp_infix (constructor_operator) @operator) (#set! conceal "∪"))
((exp_infix (variable) @variable) (#set! conceal "∈"))
;; Functions

(((exp_name) @function.call (#eq? @function.call "sum")) (#set! conceal "∑"))
(((exp_name) @function.call (#eq? @function.call "not")) (#set! conceal "¬"))
(((exp_name) @function.call (#eq? @function.call "any")) (#set! conceal "∃"))
(((exp_name) @function.call (#eq? @function.call "all")) (#set! conceal "∀"))
(((exp_name) @function.call (#eq? @function.call "elem")) (#set! conceal "∈"))
;; Directives
((pragma) @keyword.directive (#set! conceal "⊢"))

