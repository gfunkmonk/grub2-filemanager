#!lua
dir = "(memdisk)/boot/grubfm/themes/"

function enum_file (name)
  command = "export theme_std=(memdisk)/boot/grubfm/themes/" .. name .. "/theme.txt;" .. 
  "export theme_fm=(memdisk)/boot/grubfm/themes/" .. name .. "/fm.txt;" .. 
  "export theme_info=(memdisk)/boot/grubfm/themes/" .. name .. "/info.txt;" .. 
  "export theme_hw_grub=(memdisk)/boot/grubfm/themes/" .. name .. "/hwinfo/grub.txt;" .. 
  "export theme_hw_cpu=(memdisk)/boot/grubfm/themes/" .. name .. "/hwinfo/cpu.txt;" .. 
  "export theme_hw_ram=(memdisk)/boot/grubfm/themes/" .. name .. "/hwinfo/ram.txt;" .. 
  "export theme_hw_board=(memdisk)/boot/grubfm/themes/" .. name .. "/hwinfo/board.txt;" .. 
  "configfile  ${prefix}/settings.sh;"
  grub.add_icon_menu ("screen", command, name)
end

grub.clear_menu ()
grub.enum_file (enum_file, dir)

grub.script ("source ${prefix}/global.sh")
