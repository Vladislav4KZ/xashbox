rm -rf touch userconfig.d xashbox
cd $BUILD_HOME
git clone -b xashbox-rus https://github.com/$GIT_NAME/xashbox xashbox-rus
export SCRIPT_DIR=$BUILD_DIR/travis_scripts
cd xashbox-rus
export BUILD_DIR=$PWD
sh $SCRIPT_DIR/encode_to_cp1251.sh
sh $SCRIPT_DIR/cleanup.sh
export XASHBOX_NAME=xashbox-rus
sh $SCRIPT_DIR/makepak.sh
sh $SCRIPT_DIR/makezip.sh
cd $BUILD_DIR
mv $XASHBOX_NAME.zip $BUILD_HOME/$XASHBOX_NAME.zip
mv $XASHBOX_NAME.pak $BUILD_HOME/$XASHBOX_NAME.pak
cd $BUILD_HOME
