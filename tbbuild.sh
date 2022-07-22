cd ~/sourcetrees/programs/mozilla/mozilla/mozilla-central
cp ../mozconfigtb mozconfig
env MOZCONFIG=/@TOPSRCDIR@/obj-@CONFIG_GUESS@/tb
time hg pull -u; (cd comm; hg pull -u)
time ./mach build
time ./mach package
cd ..
rm -rf ../tb/thunderbird/*
versionstring=$(<mozilla-central/browser/config/version.txt)
tar xvf ./mozilla-central/obj-x86_64-pc-linux-gnu/tb/dist/thunderbird-$versionstring.en-US.linux-x86_64.tar.bz2 -C ../tb/thunderbird/
\cp -f ./mozilla-central/obj-x86_64-pc-linux-gnu/tb/dist/thunderbird-$versionstring.en-US.linux-x86_64.tar.bz2  mozExeBackup/.
