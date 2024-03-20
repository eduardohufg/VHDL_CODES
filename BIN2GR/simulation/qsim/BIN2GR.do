onerror {exit -code 1}
vlib work
vcom -work work BIN2GR.vho
vcom -work work BIN2GR.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.BIN2GR_vhd_vec_tst
vcd file -direction BIN2GR.msim.vcd
vcd add -internal BIN2GR_vhd_vec_tst/*
vcd add -internal BIN2GR_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
