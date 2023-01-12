resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

this_is_a_map 'yes'

game 'gta5'

files {
    "interiorproxies.meta"
}

file 'gabz_timecycle_mods_1.xml'
data_file 'TIMECYCLEMOD_FILE' 'gabz_timecycle_mods_1.xml'
data_file "INTERIOR_PROXY_ORDER_FILE" "interiorproxies.meta"
data_file('DLC_ITYP_REQUEST')('stream/pill_props.ytyp')
data_file 'DLC_ITYP_REQUEST' 'stream/vesp_props.ytyp'

client_script {
    "main.lua"
}

