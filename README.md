#### Gentoo ebuild for https://github.com/lwfinger/rtl8723bu

##### Install:
- Create a file `/etc/portage/repos.conf/rtl8723bu.conf` with this content:
```
[rtl8723bu]
sync-type = git
sync-uri = git://github.com/g-maxime/rtl8723bu-ebuild.git
location = /usr/local/portage/rtl8723bu
```

- Update portage: `emerge --sync`
- Unmask rtl8723bu: `emerge --autounmask-write rtl8723bu && dispatch-conf`
- Install the driver:  `emerge -a rtl8723bu`

