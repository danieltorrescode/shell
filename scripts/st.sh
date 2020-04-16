#!/bin/bash
echo "###########################################" 
echo "cloning and building st" 
echo "###########################################" 
st=`ls | grep st`
if [ $st ]
then
    echo "st already exist in directory"
else
    su daniel -c "git clone https://gitlab.com/danieltorresgitlab/st.git"
    su daniel -c "git --git-dir st/.git/ checkout custom"
fi
rm st/config.h
make -C st/
make -C st/ clean install

# to add color to st use http://terminal.sexy/
# generate palette with pywall or colorz
# and edit st/config.def.h and rebuild 
# patching ex:
# patch < $patch
# su daniel -c "patch -d st/ < patches/$patch"