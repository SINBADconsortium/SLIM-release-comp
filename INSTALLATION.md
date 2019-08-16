# INSTALLATION instructions
## 1 INTRODUCTION
 We provided simple installation scripts for each software package for
 your convenience; however, we cannot guarantee that they will be
 sufficient to successfully complete installation. Please, contact
 SLIM's developers (see SUPPORT section) with any questions or problems
 encountered during installation.
 
 The 3-rd party software packages included with SLIM software release
 might require additional prerequisites depending on the version of the
 operating system and type and/or completeness of its installation.
 This installation was tested and completes successfully on full
 installation of x86_64 Linux with operating systems CentOS 5.5 or
 later (equivalent to RedHat 5.5 or later).
 
 If any step of the installation fails for the 3-rd party software, it
 might be more effective to consult first your IT support if some of
 the prerequisites are missing or the included web site for specific
 instructions suitable for your operating system.
 
 Note! This document covers only installation of SLIM-release-comp part
 of software release. For notes on installation of SLIM-release-apps
 refer to INSTALLATION file in SLIM-release-apps repository.
## 2 DOWNLOADING
 In terminal, change directory to the location where you want to
 install the software and execute the following git command:
 
 	git clone git@github.com:SINBADconsortium/SLIM-release-comp.git
 
 and the cloned software will be in SLIM-release-comp sub-directory.
## 3 GIT BRANCHES
 SLIM is using master branch to develop/add software to repository. To
 avoid using the software that is not complete or fully tested, you
 should use `stable` branch. You might switch to `stable` branch using
 the following
 
 	git checkout stable
## 4 SHELL ENVIRONMENT
 You must configure your shell environment before you can proceed with
 installation.
### 4.1 Importing shell environment
 Open terminal window, change directory to the home of
 SLIM-release-comp and do either of the following:
#### 4.1.1 in bash-like shell execute
 	. environment.sh
#### 4.1.2 in csh-like shell execute
 	source environment.csh
### 4.2 Note for csh-like shell
 After each step of the installation, you should use rehash command to
 rebuild shell's lookup tables for executables. Simply type
 
 	rehash
 
 on the command line.
### 4.3 Testing the environment
 You can check if the SLIM_COMP environment is set correctly and verify
 if MATLAB executables are in the PATH using
#### 4.3.1 in bash-like shell execute
 	test_env4slim.sh
#### 4.3.2 in csh-like shell execute
 	test_env4slim.csh
## 5 INSTALLATION
 All installation scripts rely on correctly set shell environment (see
 SHELL ENVIRONMENT section) and should be executed in the terminal
 window only after that particular terminal session have the
 environment configured. Before starting/continuing with the
 installation, make sure that your environment was setup according to
 the instruction above.
 
 The installation of each software package consists typically of the
 following stages: configuration, build, installation, and cleanup. Our
 installation scripts will print to the screen the information about
 current stage and the name of the output log. If the script stops
 before it reports that installation is completed, check the last
 output log for the errors. Please, complete the installation steps in
 the order in which they are listed below.
 
 The installation scripts are located in the ibin/ subdirectory of of
 the software release. This directory is added to PATH environment, so
 those script can be executed from any place provided that shell
 environment is properly configured first.
 
 If you encounter problems during installation (FATAL ERRORS), please,
 remember to attach the log files from the failing stage of
 installation while contacting us for support.
### 5.1 Location
 Pick the appropriate location for software. Make sure that the
 location is accessible by those users from the system on which they
 intend to run the applications. The users of SLIM-release-apps will
 need the path to home of SLIM-release-comp to define SLIM_COMP
 variable in their environment.* scripts.
### 5.2 One-step installation
 You may install all software provided in the release with single
 command in the terminal:
 
 	install_ALL
 
 If any step of the installation fails, you may rerun this script after
 fixing the problem with that particular step. However, some of the
 steps are time consuming (especially GCC's build stage, which can take
 a couple of hours to complete) so it might be faster to either switch
 to installing each next package separately, or modify install_ALL
 script in ibin/ directory to comment out the commands that correspond
 to already completed stages. The names of the install commands for
 each package are given in the next section.
### 5.3 Install each package separately
 Follow the steps listed here in order to install each package
 separately.
#### 5.3.1 3rd-party software packages
##### 5.3.1.1 MATLAB version R2014a or later (http://www.mathworks.com/)
 We cannot provide here the installation for MATLAB software due to
 MATLAB license limitation. However, please, make sure to have version
 R2014a installed at the very least. The test_env4slim.* (mentioned
 above in SHELL environment section) will check the if necessary MATLAB
 commands are present, and warn you if version of MATLAB is too old.
##### 5.3.1.2 Bison parser generator 2.3 (http://www.gnu.org/software/bison/)
 Check the version of your Bison parser using the following commands 
 in the terminal:
 
 	bison --version
 
 If the command reports version 2.3, you may skip Bison installation.
 
 To install Bison execute the following in the terminal:
 
 	install_Bison
##### 5.3.1.3 Binutils binary tools 2.22 (http://www.gnu.org/software/binutils/)
 Check version of your binutils using the following command command in
 terminal:
 
 	ldd --version
 	as --version
 
 If both of those commands report version 2.22, you may skip Binutils
 installation
 
 To install Binutils execute the following in the terminal:
 
 	install_Binutils
##### 5.3.1.4 GCC compiler version 4.7.4 (http://gcc.gnu.org/) including GMP version
 4.3.2 (http://gmplib.org/), MPFR version 2.4.2 (http://www.mpfr.org/),
 and MPC version 0.8.2 (http://www.multiprecision.org/)
 Check the version of your gcc and gfortran compiler executing the
 following commands in the terminal:
 
 	gcc -v
 	gfortran -v
 
 If both of those commands report version 4.4, you may skip GCC
 installation.
 
 To install GCC execute the following in the terminal:
 
 	install_GCC
 
 Note: installing GCC might take a couple of hours depending on the
 speed of the system.
##### 5.3.1.5 Python interpreter version 2.7.12 (http://www.python.org/)
 Check the version of your Python interpreter using the following
 commands  in the terminal:
 
 	python -V
 
 If the command reports version 2.7, you may skip Python installation.
 
 To install Python execute the following in the terminal:
 
 	install_Python
##### 5.3.1.6 SCons software construction tool version 2.1.0 (http://www.scons.org/)
 Check the version of your SCons tool  executing the following command 
 in the terminal:
 
 	scons -v
 
 If the command reports version 2.1, you may skip SCons installation.
 
 To install SCons execute the following in the terminal:
 
 	install_SCons
##### 5.3.1.7 MADAGASCAR SVN v. 10766+ (http://www.reproducibility.org/)
 To install MADAGASCAR SVN v. 10766+ execute the following in the
 terminal
 
 	install_MADAGASCAR
##### 5.3.1.8 FFTW 2.1.5 (http://www.fftw.org/)
 To install FFTW 2.1.5 execute the following in the terminal
 
 	install_FFTW2
##### 5.3.1.9 FFTW 3.3.1 (http://www.fftw.org/)
 To install FFTW 3.1.2 execute the following in the terminal
 
 	install_FFTW3
##### 5.3.1.10 NFFT 3.3.0  (https://www-user.tu-chemnitz.de/~potts/nfft/)
 To install NFFT 3.3.0 execute the following in the terminal
 
 	install_NFFT
#### 5.3.2 SLIM's software packages
##### 5.3.2.1 SLIM version of CurveLab 2.1.2
 To install CurveLab 2.1.2 execute the following in the terminal
 
 	install_CurveLab
### 5.4 Make note of the path to home of SLIM-release-comp installation
 The users of SLIM-release-apps will need the path to home of
 SLIM-release-comp to define SLIM_COMP variable in their environment.*
 scripts.
## 6 SUPPORT
 You may contact developers of SINBAD software by means of:
### 6.1 GitHub issue tracker
 Submit issue at [SLIM-release-comp
 issues](https://github.com/SINBADconsortium/SLIM-release-comp/issues).
### 6.2 Direct mail
 Contact [SLIM administrator](mailto:softadmin@slimweb.eos.ubc.ca)
 with any questions related to the SINBAD software release.
