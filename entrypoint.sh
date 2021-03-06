#!/bin/sh
skip=49

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

case $TMPDIR in
  / | /*/) ;;
  /*) TMPDIR=$TMPDIR/;;
  *) TMPDIR=/tmp/;;
esac
if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -d "${TMPDIR}gztmpXXXXXXXXX"`
else
  gztmpdir=${TMPDIR}gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `printf 'X\n' | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  printf >&2 '%s\n' "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
?֚bentrypoint.sh ?U?N?@}߯?DZ?zI
?RT?????&*B??^_??6?ͥ???'????讝?6??>?;s?x???d???Q?#?t??Ͽ?}???
\??|????w?\]???Y? T?m?T2!???~9Uo?L????#?i?m?A???Y?)nͣ;;?;?N?ۆ??s{V?????6ޠ??)?vp??n??Kg?ަ?/?8????΋?ܲ?
?+?ה???t^S??OS6??"?eo?AtS?+]?????m?L?&?zL?=?`?R&?!4	L/?~?g?1')KbA.NN???㔩`Ȩ`?Lh?A0p8̠!??jH?u#ʙa???/??x?c^???0?U?i??q?
??)???4?Ms?@,lb?A֒??'H??TY?#@?S<???=;>hO?*uT׋?0??+?!J??[?]????(?G1?}f?`??2p[?R??#uf?P??s???c?F`f?P ????A?8?8??$i
??㈩Φw??8????~$$Cx/y8?o?7???+?.F?*???]??? 5???@(3?|\"??Q???,H?????+C?;??r_=y3???????+?|???q?f?0%??v??I?????2L?e??(s3??T::<>՝??????ڝBK??z*C?EE???Q???)??v??P?C???q,V}>??>?.?Yل?R)d?$?:Nj@??k?!n??ꒂw??I???ϏF!t??????N??a?3?BX6????>??}?a??V2>?L?F1c?V??,???9?a.??e9?4ʸ???n?????	  