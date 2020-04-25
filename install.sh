#/bin/sh

# config
INSTALL_DIR=/opt/vnote
DESKTOP_DIR=~/Desktop
VERSION="VNote-2.9-x86_64.AppImage"

# copy files
sudo mkdir -p $INSTALL_DIR/bin/
sudo cp -f $VERSION $INSTALL_DIR/bin/
sudo cp -f vnote $INSTALL_DIR/bin/
sudo cp -f vnote.png $INSTALL_DIR/bin/

sudo cp -f vnote.desktop /usr/share/applications/
cp -f vnote.desktop $DESKTOP_DIR/vnote.desktop

# fix privilleges
sudo chmod a+x  $DESKTOP_DIR/vnote.desktop
sudo chmod a+x  $INSTALL_DIR/bin/vnote
sudo chmod a+x  $INSTALL_DIR/bin/$VERSION

# create links for terminal
sudo ln -s -f  $INSTALL_DIR/bin/vnote /usr/bin/vnote

echo "Installation Finished."
echo "安装完成。"

