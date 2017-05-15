// handle each variable of the message


section = "UPDATE"

latest_version = ini_read_real(section,"latest_version",0)
message_old = ini_read_string(section,"message_old","")
message_new = ini_read_string(section,"message_new","")
message_url = ini_read_string(section,"message_url","")
message_date = ini_read_string(section,"message_date","")

// if the version of the file is newer than game version
if global.version < latest_version
{
    // OUTDATED VERSION
    instance_create(WIDTH/2,80,obj_update_available_text)
    download = instance_create(WIDTH/2,140,obj_download_here_button)
    download.link = message_url
    write_text(message_old)
    
} else {
    // up-to-date version
    
    write_text(message_date + "##" + message_new)
}


ini_close()

instance_destroy()
