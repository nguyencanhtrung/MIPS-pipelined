
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name pipelineCPU -dir "/home/ctnguyen/Works/pipelineCPU/planAhead_run_2" -part xc7a100tcsg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/ctnguyen/Works/pipelineCPU/MEM_Instruction.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/ctnguyen/Works/pipelineCPU} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "MEM_Instruction.ucf" [current_fileset -constrset]
add_files [list {MEM_Instruction.ucf}] -fileset [get_property constrset [current_run]]
link_design
