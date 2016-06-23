## rtl8723bu Gentoo Ebuild

#### Gentoo ebuild for https://github.com/lwfinger/rtl8723bu

##### Usage:
- Create a file `/etc/portage/repos.conf/rtl8723bu.conf` with this content:
```
[rtl8723bu]
sync-type = git
sync-uri = git://github.com/g-maxime/rtl8723bu-ebuild.git
location = /usr/local/portage/rtl8723bu
```
- Run: `emerge --sync && emerge -a rtl8723bu`

