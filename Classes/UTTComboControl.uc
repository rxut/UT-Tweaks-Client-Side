class UTTComboControl extends UWindowComboControl;

var bool bDisabled;
var Color EnabledColor;
var Color DisabledColor;

function Created()
{
    Super.Created();
    EnabledColor = EditBox.TextColor; // Save the original color
}

function Paint(Canvas C, float X, float Y)
{
    if (bDisabled)
    {
        EditBox.SetTextColor(DisabledColor);
    }
    else
    {
        EditBox.SetTextColor(EnabledColor);
    }

    Super.Paint(C, X, Y);
}

function Notify(byte E)
{
    if (bDisabled)
    {
        return;
    }

    Super.Notify(E);
}

defaultproperties
{
    DisabledColor=(R=110,G=110,B=110,A=255)
}