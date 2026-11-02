#!/bin/bash
# Full-page screenshots with headless Chrome: measure document height at each width, then shoot at that height.  usage: ./shoot.sh
cd "$(dirname "$0")"
shot(){ page=$1; w=$2; out=$3; dir=$(dirname $page)
  sed 's#</body>#<style>html{width:'$w'px}</style><script>addEventListener("load",()=>{document.body.setAttribute("data-h",document.documentElement.scrollHeight)})</script></body>#' $page > $dir/_measure.html
  h=$(google-chrome --headless=new --no-sandbox --disable-gpu --hide-scrollbars --window-size=$w,800 --virtual-time-budget=3000 --dump-dom file://$PWD/$dir/_measure.html 2>/dev/null | grep -o 'data-h="[0-9]*"' | grep -o '[0-9]*')
  google-chrome --headless=new --no-sandbox --disable-gpu --hide-scrollbars --window-size=$w,$h --virtual-time-budget=3000 --screenshot=$PWD/$out file://$PWD/$page 2>/dev/null
  rm -f $dir/_measure.html; echo "$out ${w}x$h"; }
mkdir -p shots
shot index.html 1440 hearthbots_home_desktop_1440.png
shot index.html 390 hearthbots_home_mobile_390.png
shot privacy/index.html 1440 shots/privacy_desktop_1440.png
shot privacy/index.html 390 shots/privacy_mobile_390.png
shot support/index.html 1440 shots/support_desktop_1440.png
shot support/index.html 390 shots/support_mobile_390.png
