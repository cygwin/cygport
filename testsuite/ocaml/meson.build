ocaml = find_program('ocamlc.opt', required: false)
if ocaml.found()
tests += [['ocaml/findlib']]
endif

ocaml_dune = find_program('dune', required: false)
if ocaml_dune.found()
tests += [['ocaml/dune']]
endif
