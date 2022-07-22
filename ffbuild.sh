
cd ~/sourcetrees/programs/mozilla/mozilla/mozilla-central
cp ../mozconfigff mozconfig
env MOZCONFIG=/@TOPSRCDIR@/obj-@CONFIG_GUESS@/ff
time hg pull -u
time ./mach build
time ./mach package
cd ..
rm -rf ../ff/firefox/*
versionstring=$(<mozilla-central/browser/config/version.txt)
tar xvf ./mozilla-central/obj-x86_64-pc-linux-gnu/ff/dist/firefox-$versionstring.en-US.linux-x86_64.tar.bz2 -C ../ff/firefox/
\cp -f ./mozilla-central/obj-x86_64-pc-linux-gnu/ff/dist/firefox-$versionstring.en-US.linux-x86_64.tar.bz2  mozExeBackup/.
