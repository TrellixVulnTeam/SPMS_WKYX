#! /bin/sh

sea bpf -g --bmc="${BMC}" --inline --crab --track=mem --dsa=sea-cs -m64 -DDISABLE_PROTOOP_PRINTF -DDISABLE_QLOG -Ipquic/picoquic pquic/picoquic/getset.c pquic-formal-model/verifier/verifier.c /mount/${1}/${2}.c pquic-formal-model/checks/specs_check__${2}.c
