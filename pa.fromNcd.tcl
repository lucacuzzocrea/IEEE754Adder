
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name IEEE754Adder -dir "/home/Luca/ISE/IEEE754Adder/planAhead_run_1" -part xa6slx4csg225-3
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "/home/Luca/ISE/IEEE754Adder/SpecialCasesCheck.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/Luca/ISE/IEEE754Adder} }
set_property target_constrs_file "SpecialCasesCheck.ucf" [current_fileset -constrset]
add_files [list {SpecialCasesCheck.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "/home/Luca/ISE/IEEE754Adder/SpecialCasesCheck.ncd"
if {[catch {read_twx -name results_1 -file "/home/Luca/ISE/IEEE754Adder/SpecialCasesCheck.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/home/Luca/ISE/IEEE754Adder/SpecialCasesCheck.twx\": $eInfo"
}
