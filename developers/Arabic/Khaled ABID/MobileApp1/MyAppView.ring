# Form/Window View - Generated Source Code File 
# Generated by the Ring 1.7 Form Designer
# Date : 20/05/2018
# Time : 07:49:07

Load "stdlib.ring"
Load "guilib.ring"

import System.GUI

if IsMainSourceFile() { 
	new App {
		StyleFusion()
		new MyAppView { win.show() } 
		exec()
	}
}

class MyAppView from WindowsViewParent
	win = new MainWindow() { 
		move(68,49)
		resize(400,400)
		setWindowTitle("FirstAppForMobile")
		setstylesheet("background-color:;") 
		Button1 = new pushbutton(win) {
			move(74,16)
			resize(253,50)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Tell me Hello")
			setClickEvent(Method(:TellMeHello))
			setBtnImage(Button1,"")
			
		}
		Button2 = new pushbutton(win) {
			move(74,86)
			resize(253,50)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Go Out")
			setClickEvent(Method(:CloseApp))
			setBtnImage(Button2,"")
			
		}
		Layout1 = new QVBoxLayout() {
			AddWidget(Button1)
			AddWidget(Button2)
			
		}

		oMWLayoutWidget = new qWidget() { setLayout(Layout1) }
		setCentralWidget(oMWLayoutWidget) 
	}

# End of the Generated Source Code File...