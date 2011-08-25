yum update
yum install -y yum-plugin-fastestmirror
rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm
rpm -ivh http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm
rpm -ivh http://linuxdownload.adobe.com/adobe-release/adobe-release-i386-1.0-1.noarch.rpm
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux
yum groupinstall -y 'Development Tools'
yum groupinstall -y 'Java Development'
yum groupinstall -y "Office/Productivity"
yum install -y gcc make git
yum install -y nspluginwrapper.{i686,x86_64} alsa-plugins-pulseaudio.i686
yum install -y rubygem-rails readline-devel openssl-devel ruby-mysql keepassx gkrellm amarok vlc pidgin meld gnome-do gnome-do-plugins vim gvim ruby ruby-devel ruby-libs ruby-mode ruby-rdoc ruby-irb ruby-ri ruby-docs ruby-mysql ruby-sqlite3 wget libxslt-devel libxml2-devel vim gvim homebank parcellite libxml samba samba-client samba samba-client
yum install ccsm emerald-themes compizconfig-backend-gconf fusion-icon-gtk compiz-fusion-extras 
yum install -y xine-lib-extras-freeworld

exit
ssh-keygen -t rsa
