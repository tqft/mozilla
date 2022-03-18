cd ~/sourcetrees/programs/mozilla/mozilla/mozilla-central
cp ../mozconfigsm mozconfig
env MOZCONFIG=/@TOPSRCDIR@/obj-@CONFIG_GUESS@/sm
time hg pull -u; (cd comm; hg pull -u)
time ./mach build
time ./mach package
cd ..
rm -rf ../sm/seamonkey/*
#tar xvf ./mozilla-central/obj-x86_64-pc-linux-gnu/tb/dist/thunderbird-91.0a1.en-US.linux-x86_64.tar.bz2 -C ../tb/thunderbird/

