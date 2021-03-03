rm -rf touch userconfig.d xashbox
cd $BUILD_HOME
echo CLONING REPOSITORY
git clone -b xashbox-rus https://github.com/$GIT_NAME/xashbox xashbox-rus
echo CHECKING AVAILABILITY
ls -a
cd xashbox-rus
export BUILD_DIR=$PWD
echo !!! CHECKING VARIABLE !!!
ls $BUILD_HOME
sh $SCRIPT_DIR/encode_to_cp1251.sh
sh $SCRIPT_DIR/cleanup.sh
export XASHBOX_NAME=xashbox-rus
cd $SCRIPT_DIR
sh makepak.sh
sh makezip.sh
cd $BUILD_DIR
mv $XASHBOX_NAME.zip $BUILD_HOME/$XASHBOX_NAME.zip
mv $XASHBOX_NAME.pak $BUILD_HOME/$XASHBOX_NAME.pak
cd $BUILD_HOME
