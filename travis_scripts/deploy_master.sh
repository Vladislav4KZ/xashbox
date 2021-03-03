cd $BUILD_DIR/travis_scripts
export XASHBOX_NAME=xashbox
sh cleanup.sh
sh makepak.sh
sh makezip.sh

mv $XASHBOX_NAME.zip $BUILD_HOME/$XASHBOX_NAME.zip
mv $XASHBOX_NAME.pak $BUILD_HOME/$XASHBOX_NAME.pak
