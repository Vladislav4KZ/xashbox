cd $TRAVIS_BUILD_DIR/travis_scripts
curl https://raw.githubusercontent.com/FWGS/xash3d-fwgs/master/scripts/makepak.py > makepak.py
cd $TRAVIS_BUILD_DIR && mkdir makepak
cp -r -t makepak/ touch userconfig.d xashbox
python3 travis_scripts/makepak.py $TRAVIS_BUILD_DIR/makepak/ $XASHBOX_NAME.pak