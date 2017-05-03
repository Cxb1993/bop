Tools for BOP (brick of particles) files
========================================

Introduction
------------
`file.bop` format (ascii, `<N>` is a number of particles):

	 <N>
	 DATA_FILE: <file.values>
	 DATA_FORMAT: <float|double|ascii>
	 VARIABLES: <x> <y> <z> <vx> <vy> <vz> <id> ...

`file.values` format:


	x[0] y[0] z[0] vx[0] vy[0] vz[0] id[0]
	...

	x[N-1] y[N-1] ...

Installation
------------

The following will install the binaries into `${HOME}/bin`. This folder needs to be in the `PATH` variable.
```sh
make && make install
```

Usage
-----

Convert bop files `in1.bop`, `in2.bop`, ..., `inN.bop` into a single vtk file `out.vtk`:
```sh
bop2vtk out.vtk in1.bop in2.bop ... inN.bop
```

Dump ascii data from bop files `in1.bop`, `in2.bop`, ..., `inN.bop` into out.txt:
```sh
bop2vtk in1.bop in2.bop ... inN.bop > out.txt
```
