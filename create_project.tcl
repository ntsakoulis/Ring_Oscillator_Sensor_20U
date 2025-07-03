# Set project name and target directory

set project_name "RO_Sensor_Project"

set project_dir "./vivado_project"



# Set the target FPGA part (ZCU7EV)

set part "xczu7ev-ffvc1156-2-e"

# Create the project

create_project $project_name $project_dir -part $part



# Add source files in the current folder

add_files [glob ./*.vhd]



# Add constraint file in the current folder

add_files -fileset constrs_1 [glob ./constraint_0.xdc]

# Set the top module

set_property top Ring_Oscillator_20u_3s_v1 [current_fileset]



# Save and exit

update_compile_order -fileset sources_1

puts "Project '$project_name' created successfully at '$project_dir'"


