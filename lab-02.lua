#!/bin/lua5.3
lgi = require 'lgi'
gtk = lgi.Gtk
gtk.init()
bld = gtk.Builder()
bld:add_from_file('lab-02.glade')
ui = bld.objects
ui.wnd.title = 'lab-02-zhuravleva'
ui.wnd.on_destroy = gtk.main_quit
ui.wnd:show_all()

function res()
print('bfzsdfbz')
end


ui.wnd.on_clicked = res()


function ui.btnAdd:on_clicked(...)
num1 = tonumber(ui.eNum1.text)
num2 = tonumber(ui.eNum2.text)
print(num1, num2)
ui.res.label = num1 + num2
end
function ui.btnSub:on_clicked(...)
num1 = tonumber(ui.eNum1.text)
num2 = tonumber(ui.eNum2.text)
ui.res.label = num1 - num2
end
function ui.btnMult:on_clicked(...)
num1 = tonumber(ui.eNum1.text)
num2 = tonumber(ui.eNum2.text)
ui.res.label =  num1 * num2
end
function ui.btnDiv:on_clicked(...)
num1 = tonumber(ui.eNum1.text)
num2 = tonumber(ui.eNum2.text)
ui.res.label =  num1 / num2
end
gtk.main()
