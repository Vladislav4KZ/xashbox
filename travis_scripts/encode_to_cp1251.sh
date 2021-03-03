cd $BUILD_DIR/xashbox
for i in *.cfg; do iconv -f UTF-8 -t WINDOWS-1251 "$i" >tmp; mv tmp "$i"; done
