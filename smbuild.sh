env MOZCONFIG=/@TOPSRCDIR@/obj-@CONFIG_GUESS@/sm

time hg pull -u; (cd comm; hg pull -u)
time ./mach build
time ./mach package


