cd $TRAVIS_BUILD_DIR
rm -rf touch userconfig.d xashbox
git clone -b xashbox-rus https://github.com/$GIT_NAME/xashbox xashbox-rus
export TRAVIS_BUILD_HOME=$TRAVIS_BUILD_DIR
export TRAVIS_BUILD_DIR=$TRAVIS_BUILD_DIR/xashbox-rus
cd travis_scripts
sh encode_to_cp1251.sh
sh cleanup.sh
export XASHBOX_NAME=xashbox-rus
sh makepak.sh
sh makezip.sh
cd $TRAVIS_BUILD_DIR
mv $XASHBOX_NAME.zip $TRAVIS_BUILD_HOME/$XASHBOX_NAME.zip
mv $XASHBOX_NAME.pak $TRAVIS_BUILD_HOME/$XASHBOX_NAME.pak
cd $TRAVIS_BUILD_HOME