
import logging
import sys

g_logger=None

g_warnings=None

def init_logger():
    global g_logger
    g_logger=logging.getLogger('NumBAT log')

def report(msg):
    if g_logger is None:
        init_logger()
    g_logger.warning(msg)

def report_and_exit(msg):
    if g_logger is None:
        init_logger()
    g_logger.error('\nFatal error: \n %s', msg)
#g_logger.error('from logger')
    sys.exit(1)


class NBWarnings(object):
    def __init__(self) -> None:
        self._warnings=[]

    def add_warning(self, s):
        self._warnings.append(s)

    def report(self):
        if self._warnings:
            s='''

            The following warnings were generated by NumBAT during this calculation:'''
            s+='\n'.join(self._warnings)
            print(s)

        else:
            print('''

                  No warnings were generated by NumBAT during this calculation.''')


def report_warnings():
    g_warnings.report()

def init_warnings():
    global g_warnings
    g_warnings = NBWarnings()

def register_warning(s):
    if g_warnings is None:
        init_warnings()
    g_warnings.add_warning(s)
