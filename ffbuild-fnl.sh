
cd ~/sourcetrees/programs/mozilla/mozilla/mozilla-central
cp ../mozconfigff-fnl mozconfig
env MOZCONFIG=/@TOPSRCDIR@/obj-@CONFIG_GUESS@/ff
time hg pull -u
time ./mach build
time ./mach package
cd ..
rm -rf ../ff/firefoxnightlylocal/*
versionstring=$(<mozilla-central/browser/config/version.txt)
tar xvf ./mozilla-central/obj-x86_64-pc-linux-gnu/ff/dist/firefoxnightlylocal-$versionstring.en-US.linux-x86_64.tar.bz2 -C ../ff/firefoxnightlylocal/
\cp -f ./mozilla-central/obj-x86_64-pc-linux-gnu/ff/dist/firefoxnightlylocal-$versionstring.en-US.linux-x86_64.tar.bz2  mozExeBackup/.
