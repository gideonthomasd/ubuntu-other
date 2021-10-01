# pylint: disable=C0111,R0903

"""Displays the system uptime.

contributed by `ccoors <https://github.com/ccoors>`_ - many thanks!
"""

from datetime import timedelta

import core.module
import core.widget
#import subprocess

#line1 = subprocess.Popen('/home/phil/.config/i3/weather.sh'), stdout=subprocess.PIPE, text=True
#line1 = line0.text
class Module(core.module.Module):
    def __init__(self, config, theme):
        super().__init__(config, theme, core.widget.Widget(self.output))
        self.__uptime = ""

    def output(self, _):
        #return "{}".format(self.__uptime)
        return self.__uptime

    def update(self):
		
        f = open("/home/phil/.config/i3/weather")
        line1 = f.readline()
        self.__uptime = "\n " + line1
		

# vim: tabstop=8 expandtab shiftwidth=4 softtabstop=4
