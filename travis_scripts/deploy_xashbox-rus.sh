rm -rf touch userconfig.d xashbox
echo CLONING REPOSITORY
git clone -b xashbox-rus https://github.com/$GIT_NAME/xashbox xashbox-rus
echo CHECKING AVAILABILITY
ls -a
cd xashbox-rus
sh $SCRIPT_DIR/encode_to_cp1251.sh
sh $SCRIPT_DIR/cleanup.sh
export XASHBOX_NAME=xashbox-rus
export XASHBOX_DIR=$BUILD_DIR/$XASHBOX_NAME
cd $SCRIPT_DIR
sh makepak.sh
sh makezip.sh
cd $BUILD_DIR
mv $XASHBOX_NAME.zip $BUILD_HOME/$XASHBOX_NAME.zip
mv $XASHBOX_NAME.pak $BUILD_HOME/$XASHBOX_NAME.pak
cd $BUILD_H
