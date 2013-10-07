THIS_SCRIPT_HOME=`pwd`

cd ../miui
MIUI_THISVER_RAW=`git show -s --format="%ci" HEAD | sed -e "s/\s.*//"`
MIUI_THISVER_MAJOR=`echo ${MIUI_THISVER_RAW} | sed -e "s/-.*//"`
MIUI_THISVER_RAW=`echo ${MIUI_THISVER_RAW} | sed -e "s/^${MIUI_THISVER_MAJOR}-//"`
MIUI_THISVER_MAJOR=$(( ${MIUI_THISVER_MAJOR} - 2010 ))
MIUI_THISVER_MINOR=`echo ${MIUI_THISVER_RAW} | sed -e "s/-.*//"`
MIUI_THISVER_RAW=`echo ${MIUI_THISVER_RAW} | sed -e "s/^${MIUI_THISVER_MINOR}-//"`
MIUI_THISVER_MINOR=`echo ${MIUI_THISVER_MINOR} | sed -e "s/^[0]//"`
MIUI_THISVER_REV=`echo ${MIUI_THISVER_RAW} | sed -e "s/^[0]//"`

export MIUI_THISVER_PARSED="${MIUI_THISVER_MAJOR}.${MIUI_THISVER_MINOR}.${MIUI_THISVER_REV}"

export OUT_ZIP="Xtreamer_Q-MIUI_${MIUI_THISVER_PARSED}.zip"


cd ${THIS_SCRIPT_HOME}
echo "[i] Begin full ZIP build to ${OUT_ZIP}"
make fullota
mv -f ./out/fullota.zip ./${OUT_ZIP}

# Modify build.prop
echo "[#] Modifying build.prop..."
unzip ${OUT_ZIP} system/build.prop
cat ./system/build.prop | sed -e "s/ro\.build\.version\.incremental=.*/ro\.build\.version\.incremental=${MIUI_THISVER_PARSED}/" \
    | sed -e "s/ro\.product\.mod_device=.*/ro\.product\.mod_device=Xtreamer_Q/" > build.prop.new

sed -n -e :a -e '/^\n*$/{$d;N;};/\n$/ba' build.prop.new
echo >> build.prop.new
mv -f ./build.prop.new ./system/build.prop
zip -9mr Xtreamer_Q-MIUI_3.9.27.zip ./system
echo "[i] ${OUT_ZIP} is ready"
