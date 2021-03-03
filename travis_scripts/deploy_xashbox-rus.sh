ls -a
export BUILD_HOME=$PWD
rm -rf touch userconfig.d xashbox
git clone -b xashbox-rus https://github.com/$GIT_NAME/xashbox xashbox-rus
export XASHBOX_RUS=$BUILD_HOME/xashbox-rus
cd travis_scripts
sh encode_to_cp1251.sh
sh cleanup.sh
export XASHBOX_NAME=xashbox-rus
sh makepak.sh
sh makezip.sh
cd $BUILD_HOME
mv $XASHBOX_NAME.zip $BUILD_HOME/$XASHBOX_NAME.zip
mv $XASHBOX_NAME.pak $BUILD_HOME/$XASHBOX_NAME.pak
cd $BUILD_HOME
