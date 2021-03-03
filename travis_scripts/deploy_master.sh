cd $BUILD_DIR/travis_scripts
export XASHBOX_NAME=xashbox
export XASHBOX_DIR=$BUILD_DIR
sh cleanup.sh
sh makepak.sh
sh makezip.sh
