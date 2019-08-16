# set the path to the home of SLIM-release-comp
export SLIM_COMP=`pwd`
hash -r

# set PATH environment
export PATH=$SLIM_COMP/bin:$SLIM_COMP/ibin:$SLIM_COMP/external/bin:$PATH

# set library paths for dynamic compile-time linker
if [ -n "$LD_LIBRARY_PATH" ]; then
	export LD_LIBRARY_PATH=$SLIM_COMP/external/lib64:$SLIM_COMP/external/lib:$LD_LIBRARY_PATH
else
	export LD_LIBRARY_PATH=$SLIM_COMP/external/lib64:$SLIM_COMP/external/lib
fi
if [ -n "$LD_RUN_PATH" ]; then
	export LD_RUN_PATH=$SLIM_COMP/external/lib64:$SLIM_COMP/external/lib:$LD_RUN_PATH
else
	export LD_RUN_PATH=$SLIM_COMP/external/lib64:$SLIM_COMP/external/lib
fi
if [ -n "$PYTHONPATH" ]; then
	export PYTHONPATH=$SLIM_COMP/external/lib64:$SLIM_COMP/external/lib:$SLIM_COMP/external/pylib:$PYTHONPATH
else
	export PYTHONPATH=$SLIM_COMP/external/lib64:$SLIM_COMP/external/lib:$SLIM_COMP/external/pylib
fi
if [ -n "$MANPATH" ]; then
	export MANPATH=$SLIM_COMP/external/man:$SLIM_COMP/external/share/man:$MANPATH
else
	export MANPATH=$SLIM_COMP/external/man:$SLIM_COMP/external/share/man:`manpath`
fi

# MADAGASCAR specific setup
export RSFROOT=$SLIM_COMP/external
# Path for binary data files part of RSF datasets
export DATAPATH=/tmp/
