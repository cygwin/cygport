ocaml = find_program('ocamlc.opt', required: false)
if ocaml.found()
test('ocaml/findlib',
     test_driver,
     args: 'ocaml/findlib',
     env: testenv,
     timeout: 120)
endif
