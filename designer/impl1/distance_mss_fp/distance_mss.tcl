open_project -project {D:\distance\designer\impl1\distance_mss_fp\distance_mss.pro}
set_programming_file -no_file
set_device_type -type {A2F200M3F}
set_device_package -package {484 FBGA}
update_programming_file \
    -feature {prog_fpga:on} \
    -fdb_source {fdb} \
    -fdb_file {D:\distance\designer\impl1\distance_mss.fdb} \
    -feature {prog_from:off} \
    -feature {prog_nvm:on} \
    -efm_content {location:0;source:efc} \
    -efm_block {location:0;config_file:{D:\distance\component\work\distance_mss_MSS\MSS_ENVM_0\MSS_ENVM_0.efc}} \
    -pdb_file {D:\distance\designer\impl1\distance_mss_fp\distance_mss.pdb}
set_programming_action -action {PROGRAM}
run_selected_actions
save_project
close_project
