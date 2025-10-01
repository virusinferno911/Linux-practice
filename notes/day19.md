# Day 19 – Linux Package Management with DNF & YUM

Today I practiced **package management** on Amazon Linux 2023, focusing on `dnf` (the default package manager) and confirming the presence of `yum` (which is symlinked to `dnf`).


##Checking Package Managers

which yum
# /usr/bin/yum

which dnf
# /usr/bin/dnf

Both exist, but on Amazon Linux 2023, yum is just an alias for dnf.

##Updating System Packages
sudo dnf update -y


Checked for updates.
System reported newer Amazon Linux releases are available (--releasever).
No package updates pending on my instance.

##Installing a Package (htop)
sudo dnf install -y htop
htop

Installed htop (system monitoring tool).
Verified installation by running htop.

##Removing a Package
sudo dnf remove -y htop
Cleanly uninstalled htop.
Freed space and verified removal.

##Searching for a Package (nginx)
dnf search nginx
Listed available nginx packages and modules (core, mimetypes, mail, stream, etc.).

##Getting Detailed Info about a Package
dnf info nginx
Showed installed nginx version: 1.28.0
Source: Amazon Linux repo
Summary: High performance web server & reverse proxy

##Listing Installed Packages
dnf list installed | head
Displayed first few installed packages (system components + Amazon Linux base).

###Key Takeaways
dnf is the modern package manager on RHEL-based distros (Amazon Linux, Fedora, CentOS 8+).
yum still exists for compatibility but redirects to dnf.

#Common commands:
-dnf install <pkg> → Install package
-dnf remove <pkg> → Remove package
-dnf update → Update installed packages
-dnf upgrade --releasever=<version> → Upgrade to new Amazon Linux release
-dnf search <term> → Search for a package
-dnf info <pkg> → Show package details
-dnf list installed → List installed packages

Reflection:
Today reinforced the importance of package management in Linux. Knowing how to install, remove, update, and search for packages is foundational for system administration and DevOps workflows
