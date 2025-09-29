# Day 17 - Linux Package Management with DNF

Today’s focus was on **managing packages** on Amazon Linux 2023 using the `dnf` package manager.

##Check OS Release
cat /etc/os-release
* Confirms distro → Amazon Linux 2023 (Fedora-based).

##Check for Updates
sudo dnf check-update
* Shows available updates and notifies about **newer releases**.

##Install & Remove Packages
sudo dnf install -y htop
htop      # run htop
sudo dnf remove -y htop

* Installed and then removed **htop**.
* Verified package transactions.

## 4. Search & Get Package Info
dnf search nginx
dnf info nginx
* Found nginx package and viewed details (version, repo, description).

## 5. List Installed Packages
dnf list installed | head
* Displays installed software.

## 6. Upgrade Packages
sudo dnf upgrade -y
* No updates pending, but learned the upgrade workflow.

## 7. Clean Metadata Cache
sudo dnf clean all
* Cleans cached repo data and frees space.


##Key Takeaways
* `dnf` is the modern replacement for `yum`.
* Typical workflow:

  1. `dnf check-update` → check for updates
  2. `dnf install/remove <pkg>` → manage software
  3. `dnf search/info <pkg>` → explore packages
  4. `dnf upgrade` → update system
  5. `dnf clean all` → cleanup metadata
