from Prophet.Legacy import App as _App, ConsoleApp as _ConsoleApp, X11App as _X11App
from Keywords import Keyword as Kw, Set as KwS
from Prophet.Categories import *

class xpcd(_App, _X11App) :
        name = "XPCD"
        comment = "PhotoCD Viewer"
        keywords = KwS(Graphics, Photograph, Viewer)




class ufraw(_App, _X11App) :
	name = "ufraw"
	comment = "Unidentified Flying RAW"
	keywords = KwS(Graphics, Photograph)
