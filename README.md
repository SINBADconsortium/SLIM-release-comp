# Public legacy release of 3rd-party software for SLIM software release to SINBAD consortium
## 1 DESCRIPTION
 This is the repository for SLIM's software release for SINBAD
 consortium members. The release contains applications and tools
 (including 3-rd party prerequisites) necessary to demonstrate and use
 algorithms developed by SLIM's researchers. SLIM's software release is
 organized in two repositories:
### 1.1 SLIM-release-comp repository - this repository
 Repository at [SLIM-release-comp]
 (https://github.com/SINBADconsortium/SLIM-release-comp) containing
 extra 3rd-part software for multi-user installation - not needed for
 some applications from repository listed below. The installation of
 software from this repository may be shared by multiple users and may
 require lengthy installation.
### 1.2 SLIM-release-apps repository
 Repository at [SLIM-release-apps]
 (https://github.com/SINBADconsortium/SLIM-release-apps) containing
 core of SLIM's software, i.e. all applications, algorithms, tools, and
 utilities. The software in this repository requires minimal
 installation, but some of the applications depend on installation of
 SLIM-release-comp listed above.
## 2 COPYRIGHT
 You may use this code only under the conditions and terms of the
 license contained in the file LICENSE provided with this source code.
 If you do not agree to these terms you may not use this software.
## 3 PREREQUISITES
 All prerequisites, except for MATLAB, are provided with the software
 release and should be installed as necessary before using SLIM's
 software. Installation of SLIM's software requires MATLAB version
 R2014a or later  from [MathWorks] (http://www.mathworks.com/)
 including Parallel Computing Toolbox (check file MATLAB-details in
 this repository for more information).
 Included in this repository are:
### 3.1 3rd-party software packages in SLIM-release-comp repository
 - [Bison parser generator 2.3] (http://www.gnu.org/software/bison/)  
 - [Binutils binary tools 2.22] (http://www.gnu.org/software/binutils/)
  
 - [GCC compiler version 4.7.4] (http://gcc.gnu.org/) including:  
 	- [GMP 4.3.2] (http://gmplib.org/)  
 	- [MPFR 2.4.2] (http://www.mpfr.org/)  
 	- [MPC 0.8.2] (http://www.multiprecision.org/)  
 - [Python interpreter 2.7.12] (http://www.python.org/)  
 - [SCons software construction tool 2.1.0] (http://www.scons.org/)  
 - [MADAGASCAR SVN v. 10766+] (http://www.reproducibility.org/)  
 - [SegyMAT 1.5.1] (http://sourceforge.net/projects/segymat/)  
 - [FFTW 2.1.5] (http://www.fftw.org/)  
 - [FFTW 3.3.1] (http://www.fftw.org/)  
 - [NFFT 3.3.0] (https://www-user.tu-chemnitz.de/~potts/nfft/)  
 
### 3.2 SLIM's software packages in SLIM-release-comp
 - SLIM version of [CurveLab 2.1.2] (http://www.curvelet.org/).
 !!! Since license from Caltech is required to use CurveLab, we were obliged to
 remove our version of CurveLab from repository, as we cannot distribute derivatives
 of that package. All applications requiring CurveLab will not work, unless you
 substitute it with another transform.
 
## 4 INSTALLATION
 Follow the instructions in the INSTALLATION file to install all 3-rd
 party software (except for MATLAB) and SLIM's software. You will need
 to have MATLAB installed and added to your PATH environment before you
 can proceed. If you encounter any problems during the installation,
 please, let us know. See SUPPORT section at the end for contact
 information.
## 5 SHELL ENVIRONMENT
 The path to home directory of installation of SLIM-release-comp will
 be required be users of SLIM-release-apps to define SLIM_COMP
 environment variable in appropriate environment.* scripts.
## 6 SUPPORT
 You may contact SLIM's developers of SINBAD software via issue tracker for this repository. We do not have resources to actively support public version of our software. However, we will try to answer the questions as much as possible.
