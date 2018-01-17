#!/bin/bash
MAINSIMDIR=../../../plasasim/src/
MAINSIMEXEC=swim

RUNS=""
if [ "$2" != "" ] && [ "$2" != "all" ]; then
    RUNS="-r $2"
fi

INIFILE="swim_sa.ini"
if [ "$3" != "" ]; then
    INIFILE="$3"
fi

opp_runall -j1 $MAINSIMDIR/$MAINSIMEXEC $INIFILE -u Cmdenv -c $1 -n ..:$MAINSIMDIR:../../../queueinglib:../../out/gcc-debug:../../src -lqueueinglib $RUNS

