default:
	opam update
	opam install . --deps-only
	make build

install:
	eval $(opam config env)
	opam update
	opam install --yes . --deps-only
	eval $(opam env)

.PHONY: build
build:
	make pre-build
	dune build
	make pos-build

.SILENT: pre-build
pre-build:
	# hack: create opam files so libraries can be exposed publicly
	cp babi.opam ast.opam
	cp babi.opam parser.opam

.SILENT: pos-build
pos-build:
	rm ast.opam
	rm parser.opam

lint:
	make clean
	make pre-build
	dune build @lint
	dune build @fmt
