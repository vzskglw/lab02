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

function check(num)

end

function ui.eNum1:on_changed()
num1 = tonumber(ui.eNum1.text)
if (type(num1)~=number)
then ui.lNum1.label="put the NUMBER here"
else ui.lNum1.label="1st num: "
end
end

function ui.eNum2:on_changed()
num2 = tonumber(ui.eNum2.text)
if (type(num2)~=Number)
then ui.lNum2.label="put the NUMBER here"
else ui.lNum1.label="2nd num: "
end
end

function ui.eNum3:on_changed()
num3 = tonumber(ui.eNum3.text)
if (type(num)~=Number)
then ui.lNumTr.label="put the NUMBER here"
else ui.lNumTr.label="trigonometric calculation"
end
end

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


function ui.btnSin:on_clicked(...)

ui.resTr.label = ""
end



gtk.main()
