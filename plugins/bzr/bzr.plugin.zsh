# qbzr plugin aliases
qdiff() { bzr qdiff $* & }
qb()    { bzr qbrowse $* & }
qlog()  { bzr qlog $* & }
qpush() { bzr qpush $* & }
qpull() { bzr qpull $* & }
qci()   { bzr qci $* & }
qrevert() { bzr qrevert $* & }
missing() { bzr missing $* & }
alias s='bzr status'
alias mergeu='bzr merge --uncommitted'
alias btop='bzr top'
alias rebase='bzr rebase'
