#!/usr/bin/env octave-qf

pkg load bop

[Bs, Fs] = bop_read_off("test_data/sph.162.off");
B        = bop_read("test_data/1000.bop");

ker    = @bop_cubic;
cutoff = 1.0;

l  = {"vx", "vy", "vz"};
Bs = bop_p2p_accum(Bs, B, l, ker, cutoff); # accumulate
Bs = bop_p2p_accum(Bs, B, l, ker, cutoff); # accumulate
Bs = bop_p2p_accum(Bs, B, l, ker, cutoff); # accumulate

Bs = bop_p2p_norm (Bs, l);    # normalize by "den"
bop_write_tri(Bs, Fs, "t.vtk");
