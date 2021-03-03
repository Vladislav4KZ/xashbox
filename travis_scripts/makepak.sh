echo Making pak...

cd $SCRIPT_DIR
curl https://raw.githubusercontent.com/FWGS/xash3d-fwgs/master/scripts/makepak.py > makepak.py
cd $XASHBOX_DIR && mkdir makepak
cp -r -t makepak/ touch userconfig.d xashbox
python3 $SCRIPT_DIR/makepak.py $XASHBOX_DIR/makepak/ $XASHBOX_NAME.pak
