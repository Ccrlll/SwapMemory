SKIPMOUNT=true
PROPFILE=false
POSTFSDATA=true
LATESTARTSERVICE=true

print_modname() {
  ui_print "############"
  ui_print " SwapMemory "
  ui_print "############"
}

on_install() {
  ui_print "- Extracting module files"
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}