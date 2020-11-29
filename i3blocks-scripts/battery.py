import subprocess
import re
import math
import colorsys

p = re.compile('^Battery 0: (\w+), ([0-9]+%)(?:, ([0-9:]+) .*)?\n$')
bat = p.match(subprocess.run(['acpi', '-b'], capture_output = True).stdout.decode("utf-8"))
num = int(bat.group(2)[:-1])

symbol_dis = ["","","","","","","","","","",""]
symbol_charge = ""
symbol_unknown = ""

battery_symbol = ""

if bat.group(1) == "Charging":
    battery_symbol = symbol_charge 
elif bat.group(1) == "Unknown":
    battery_symbol = symbol_unknown
else:
    battery_symbol = symbol_dis[num // 10]

remaining = "--:--"
if bat.group(3) != None:
    remaining = "%s" % bat.group(3)[:-3]

col = [(hex(math.floor(255 * x))[2:]).zfill(2) for x in list(colorsys.hls_to_rgb(120/360 * num/100, 0.5, 1))]

print("%s <span foreground=\"#%s\">%s%%</span> %s" % (battery_symbol, ''.join(col), num, remaining))

