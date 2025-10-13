class UTTWindow extends UMenuFramedWindow;

var UWindowSmallCloseButton CloseButton;

function Created ()
{
	Super.Created();
	bSizable = false;
	SetSize( 220.0, 375.0 );
	WinLeft = (Root.WinWidth-WinWidth)/float(2);
	WinTop = (Root.WinHeight-WinHeight)/float(2);
  CloseButton = UWindowSmallCloseButton(UTTClient(ClientArea).CreateControl(Class'UWindowSmallCloseButton',WinWidth-float(56),WinHeight-float(40),48.0,26.0));
}

defaultproperties
{
    ClientClass=Class'UTTClient'
    
    WindowTitle="UT Tweaks v2.0 by rX"
}