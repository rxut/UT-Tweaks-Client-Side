class UTTItem extends UMenuModMenuItem config(UTTweaks);

var config string BioRifleTweaks;

var config string ShockBeamTweaks;
var config string ShockProjectileTweaks;
var config string ShockComboTweaks;

var config string PulsePrimaryTweaks;
var config string PulseBeamTweaks;

var config string FlakCannonTweaks;

var config bool RocketLauncherSmokeTweaks;
var config bool StopRocketRotationTweaks;

var config bool ShellCaseTweaks;

var config bool RemoveWeaponShake;

var config bool BrighterPlayerModels;

var config bool BrighterPickups;

var config bool SimplePickupMessages;
var config bool SimpleFragMessages;

var config bool bEnabled;

function Setup ()
{
  Class'UTTweaks'.static.setoptions();
}

function Execute ()
{
  MenuItem.Owner.Root.CreateWindow( Class'UTTWindow', 10.0, 10.0, 200.0, 200.0 );
}

defaultproperties
{
    bEnabled=true
    BioRifleTweaks="Default"
    ShockBeamTweaks="Default"
    ShockProjectileTweaks="Default"
    ShockComboTweaks="Default"
    PulsePrimaryTweaks="Default"
    PulseBeamTweaks="Default"
    FlakCannonTweaks="Default"
    RocketLauncherSmokeTweaks=false
    StopRocketRotationTweaks=false
    ShellCaseTweaks=false
    RemoveWeaponShake=false
    BrighterPlayerModels=false
    BrighterPickups=false
    SimplePickupMessages=false
    SimpleFragMessages=false

    MenuCaption="UT Tweaks"
    MenuHelp="Configure UT Tweaks"
}