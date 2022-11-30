transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/PCO_complex/rtl {E:/PCO_complex/rtl/r0.v}
vlog -vlog01compat -work work +incdir+E:/PCO_complex/rtl {E:/PCO_complex/rtl/r1.v}
vlog -vlog01compat -work work +incdir+E:/PCO_complex/rtl {E:/PCO_complex/rtl/ram.v}
vlog -vlog01compat -work work +incdir+E:/PCO_complex/rtl {E:/PCO_complex/rtl/z.v}
vlog -vlog01compat -work work +incdir+E:/PCO_complex/rtl {E:/PCO_complex/rtl/tr.v}
vlog -vlog01compat -work work +incdir+E:/PCO_complex/rtl {E:/PCO_complex/rtl/top.v}
vlog -vlog01compat -work work +incdir+E:/PCO_complex/rtl {E:/PCO_complex/rtl/pc.v}
vlog -vlog01compat -work work +incdir+E:/PCO_complex/rtl {E:/PCO_complex/rtl/ir.v}
vlog -vlog01compat -work work +incdir+E:/PCO_complex/rtl {E:/PCO_complex/rtl/dr.v}
vlog -vlog01compat -work work +incdir+E:/PCO_complex/rtl {E:/PCO_complex/rtl/cpu.v}
vlog -vlog01compat -work work +incdir+E:/PCO_complex/rtl {E:/PCO_complex/rtl/control.v}
vlog -vlog01compat -work work +incdir+E:/PCO_complex/rtl {E:/PCO_complex/rtl/ar.v}
vlog -vlog01compat -work work +incdir+E:/PCO_complex/rtl {E:/PCO_complex/rtl/alu.v}
vlog -vlog01compat -work work +incdir+E:/PCO_complex/rtl {E:/PCO_complex/rtl/light_show.v}
vlog -vlog01compat -work work +incdir+E:/PCO_complex/rtl {E:/PCO_complex/rtl/clk_div.v}
vlog -vlog01compat -work work +incdir+E:/PCO_complex/rtl {E:/PCO_complex/rtl/CPU_Controller.v}
vlog -vlog01compat -work work +incdir+E:/PCO_complex/rtl {E:/PCO_complex/rtl/qtsj.v}
vlog -vlog01compat -work work +incdir+E:/PCO_complex/rtl {E:/PCO_complex/rtl/x.v}

vlog -vlog01compat -work work +incdir+E:/PCO_complex/simulation/modelsim {E:/PCO_complex/simulation/modelsim/top.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  top_vlg_tst

add wave *
view structure
view signals
run -all
