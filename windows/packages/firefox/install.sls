# install firefox
install_firefox:
  pkg.installed:
    - name: firefox_x64
    - refresh: False