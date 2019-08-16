# set the path to the home of SLIM-release-comp
setenv SLIM_COMP `pwd`

# set PATH environment
setenv PATH $SLIM_COMP/bin:$SLIM_COMP/ibin:$SLIM_COMP/external/bin:$PATH
rehash

# set library paths for dynamic compile-time linker
if ( $?LD_LIBRARY_PATH ) then
	setenv LD_LIBRARY_PATH $SLIM_COMP/external/lib64:$SLIM_COMP/external/lib:$LD_LIBRARY_PATH
else
	setenv LD_LIBRARY_PATH $SLIM_COMP/external/lib64:$SLIM_COMP/external/lib
endif
if ( $?LD_RUN_PATH ) then
	setenv LD_RUN_PATH $SLIM_COMP/external/lib64:$SLIM_COMP/external/lib:$LD_RUN_PATH
else
	setenv LD_RUN_PATH $SLIM_COMP/external/lib64:$SLIM_COMP/external/lib
endif
if ( $?PYTHONPATH ) then
	setenv PYTHONPATH $SLIM_COMP/external/lib64:$SLIM_COMP/external/lib:$SLIM_COMP/external/pylib:$PYTHONPATH
else
	setenv PYTHONPATH $SLIM_COMP/external/lib64:$SLIM_COMP/external/lib:$SLIM_COMP/external/pylib
endif
if ( $?MANPATH ) then
	setenv MANPATH $SLIM_COMP/external/man:$SLIM_COMP/external/share/man:$MANPATH
else
	setenv MANPATH $SLIM_COMP/external/man:$SLIM_COMP/external/share/man:`manpath`
endif

# MADAGASCAR specific setup
setenv RSFROOT $SLIM_COMP/external
# Path for binary data files part of RSF datasets
setenv DATAPATH /tmp/
