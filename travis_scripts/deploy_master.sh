cd $TRAVIS_BUILD_DIR/travis_scripts
export XASHBOX_NAME=xashbox
sh cleanup.sh
sh makepak.sh
sh makezip.sh
