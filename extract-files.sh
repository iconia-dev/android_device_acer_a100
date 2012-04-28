#/bin/sh

VENDOR=acer
DEVICE=a100

OUTD=../../../vendor/$VENDOR/$DEVICE
PROPD=$OUTD/proprietary

[ ! -d $OUTD ] && mkdir -p $OUTD || rm -rf $OUTD/*

while read file; do
    dir=$PROPD/$(dirname $file)
    [ ! -d $dir ] && mkdir $dir
    adb pull /system/$file $PROPD/$file
done < proprietary-files.txt

./setup-makefiles.sh
