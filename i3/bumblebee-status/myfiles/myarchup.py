# pylint: disable=C0111,R0903

"""Displays the system uptime.

contributed by `ccoors <https://github.com/ccoors>`_ - many thanks!
"""

from datetime import timedelta

import core.module
import core.widget
import util.cli

#line1 = subprocess.Popen('/home/phil/.config/i3/weather.sh'), stdout=subprocess.PIPE, text=True
#line1 = line0.text
class Module(core.module.Module):
    def __init__(self, config, theme):
        super().__init__(config, theme, core.widget.Widget(self.output))
        self.__uptime = ""

    def output(self, _):
        #return "{}".format(self.__uptime)
        return " " + str(self.__uptime)

    def update(self):
        self.__error = False
        code, result = util.cli.execute(
            "checkupdates", ignore_errors=True, return_exitcode=True
        )

        if code == 0:
            self.__packages = len(result.strip().split("\n"))
        elif code == 2:
            self.__packages = 0
        else:
            self.__error = True
            logging.error("checkupdates exited with {}: {}".format(code, result))
        self.__uptime = self.__packages
		
        
		

# vim: tabstop=8 expandtab shiftwidth=4 softtabstop=4
