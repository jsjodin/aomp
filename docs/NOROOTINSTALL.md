# Install Without Root
By default, the packages install their content to the release directory /usr/lib/aomp_0.X-Y and then a  symbolic link is created at /usr/lib/aomp to the release directory. This requires root access.

Once installed go to [TESTINSTALL](TESTINSTALL.md) for instructions on getting started with AOMP examples.

### Debian
To install the debian package without root access into your home directory, you can run these commands.<br>

On Ubuntu 20.04:
```
   wget https://github.com/ROCm-Developer-Tools/aomp/releases/download/rel_18.0-0/aomp_Ubuntu2004_18.0-0_amd64.deb
   dpkg -x aomp_Ubuntu2004_18.0-0_amd64.deb /tmp/temproot
```
On Ubuntu 22.04:
```
   wget https://github.com/ROCm-Developer-Tools/aomp/releases/download/rel_18.0-0/aomp_Ubuntu2204_18.0-0_amd64.deb
   dpkg -x aomp_Ubuntu2204_18.0-0_amd64.deb /tmp/temproot
```
Move to $HOME and set variables:
```
   mv /tmp/temproot/usr $HOME
   export PATH=$PATH:$HOME/usr/lib/aomp/bin
   export AOMP=$HOME/usr/lib/aomp
```
The last two commands could be put into your .bash_profile file so you can always access the compiler.

### RPM
To install the rpm package without root access into your home directory, you can run these commands.
```
   mkdir /tmp/temproot ; cd /tmp/temproot 
```
For SLES15-SP4:
```
   wget https://github.com/ROCm-Developer-Tools/aomp/releases/download/rel_18.0-0/aomp_SLES15_SP4-18.0-0.x86_64.rpm
   rpm2cpio aomp_SLES15_SP4-18.0-0.x86_64.rpm | cpio -idmv
```
For CentOS/RHEL 7:
```
   wget https://github.com/ROCm-Developer-Tools/aomp/releases/download/rel_18.0-0/aomp_CENTOS_7-18.0-0.x86_64.rpm
   rpm2cpio aomp_CENTOS_7-18.0-0.x86_64.rpm | cpio -idmv
```
For CentOS 8:
```
   wget https://github.com/ROCm-Developer-Tools/aomp/releases/download/rel_18.0-0/aomp_CENTOS_8-18.0-0.x86_64.rpm
   rpm2cpio aomp_CENTOS_8-18.0-0.x86_64.rpm | cpio -idmv
```
For CentOS 9:
```
   wget https://github.com/ROCm-Developer-Tools/aomp/releases/download/rel_18.0-0/aomp_CENTOS_9-18.0-0.x86_64.rpm
   rpm2cpio aomp_CENTOS_9-18.0-0.x86_64.rpm | cpio -idmv
```
Move to $HOME and set variables:
```
   mv /tmp/temproot/usr $HOME
   export PATH=$PATH:$HOME/usr/lib/aomp/bin
   export AOMP=$HOME/usr/lib/aomp
```
The last two commands could be put into your .bash_profile file so you can always access the compiler.
