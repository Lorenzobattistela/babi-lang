default:
	opam update
	opam install . --deps-only
	make build

.PHONY build
build:
	make pre-build
	dune build

.SILENT: pre-build
pre-build:
	# hack: create opam files so libraries can be exposed publicly
	cp babi.opam ast.opam
	cp babi.opam parser.opam