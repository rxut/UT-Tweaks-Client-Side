class UTTClient extends UMenuDialogClientWindow;

var UTTComboControl BioRifleTweaks;

var UTTComboControl ShockBeamTweaks;
var UTTComboControl ShockProjectileTweaks;
var UTTComboControl ShockComboTweaks;

var UTTComboControl PulsePrimaryTweaks;
var UTTComboControl PulseBeamTweaks;

var UTTComboControl FlakCannonTweaks;

var UWindowCheckbox RocketLauncherSmokeTweaks;
var UWindowCheckbox StopRocketRotationTweaks;

var UWindowCheckbox ShellCaseTweaks;
var UWindowCheckbox RemoveWeaponShake;

var UWindowCheckbox BrighterPlayerModels;
var UWindowCheckbox BrighterPickups;

var UWindowCheckbox SimplePickupMessages;

var UWindowCheckbox SimpleFragMessages;

var UWindowSmallButton ToggleAllOptionsButton;

var UWindowLabelControl WeaponTweaksLabel;

var UWindowSmallCloseButton CloseButton;

function Created ()
{  
  Super.Created();

  BioRifleTweaks = UTTComboControl(CreateControl(Class'UTTComboControl',10.0,10.0,190.0,1.0));
  BioRifleTweaks.SetText( "Bio Rifle Style" );
  BioRifleTweaks.SetHelpText( "Select a style for the Bio Rifle" );
  BioRifleTweaks.SetFont( 0 );
  BioRifleTweaks.Align = TA_Left;

  BioRifleTweaks.AddItem("Default");
  BioRifleTweaks.AddItem("Blue");
  BioRifleTweaks.AddItem("Cyan");  
  BioRifleTweaks.AddItem("Red");
  BioRifleTweaks.AddItem("Yellow");

  if (Class'UTTItem'.default.BioRifleTweaks == "Default") {
    BioRifleTweaks.SetSelectedIndex(0);
    } else if (Class'UTTItem'.default.BioRifleTweaks == "Blue") {
    BioRifleTweaks.SetSelectedIndex(1);
    } else if (Class'UTTItem'.default.BioRifleTweaks == "Cyan") {
    BioRifleTweaks.SetSelectedIndex(2);
    } else if (Class'UTTItem'.default.BioRifleTweaks == "Red") {
    BioRifleTweaks.SetSelectedIndex(3);
    } else if (Class'UTTItem'.default.BioRifleTweaks == "Yellow") {
    BioRifleTweaks.SetSelectedIndex(3);
    }

  ShockBeamTweaks = UTTComboControl(CreateControl(Class'UTTComboControl',10.0,30.0,190.0,1.0));
  ShockBeamTweaks.SetText( "Shock Beam Style" );
  ShockBeamTweaks.SetHelpText( "Select a Shock Beam Style" );
  ShockBeamTweaks.SetFont( 0 );
  ShockBeamTweaks.Align = TA_Left;

  ShockBeamTweaks.AddItem("Default");
  ShockBeamTweaks.AddItem("Light Blue");
  ShockBeamTweaks.AddItem("Cyan");
  ShockBeamTweaks.AddItem("Red");
  ShockBeamTweaks.AddItem("Green");
  ShockBeamTweaks.AddItem("Orange");

  if (Class'UTTItem'.default.ShockBeamTweaks == "Default") {
    ShockBeamTweaks.SetSelectedIndex(0);
    } else if (Class'UTTItem'.default.ShockBeamTweaks == "Light Blue") {
    ShockBeamTweaks.SetSelectedIndex(1);
    } else if (Class'UTTItem'.default.ShockBeamTweaks == "Cyan") {
    ShockBeamTweaks.SetSelectedIndex(2);
    } else if (Class'UTTItem'.default.ShockBeamTweaks == "Red") {
    ShockBeamTweaks.SetSelectedIndex(3);
    } else if (Class'UTTItem'.default.ShockBeamTweaks == "Green") {
    ShockBeamTweaks.SetSelectedIndex(4);
    } else if (Class'UTTItem'.default.ShockBeamTweaks == "Orange") {
    ShockBeamTweaks.SetSelectedIndex(5);
    }

  ShockProjectileTweaks = UTTComboControl(CreateControl(Class'UTTComboControl',10.0,50.0,190.0,1.0));
  ShockProjectileTweaks.SetText( "Shock Projectile Style" );
  ShockProjectileTweaks.SetHelpText( "Select a Shock Projectile Style" );
  ShockProjectileTweaks.SetFont( 0 );
  ShockProjectileTweaks.Align = TA_Left;

  ShockProjectileTweaks.AddItem("Default");
  ShockProjectileTweaks.AddItem("Static");
  ShockProjectileTweaks.AddItem("Static Cyan");
  ShockProjectileTweaks.AddItem("Red");
  ShockProjectileTweaks.AddItem("Green");
  ShockProjectileTweaks.AddItem("Unreal");

  if (Class'UTTItem'.default.ShockProjectileTweaks == "Default") {
    ShockProjectileTweaks.SetSelectedIndex(0);
    } else if (Class'UTTItem'.default.ShockProjectileTweaks == "Static") {
    ShockProjectileTweaks.SetSelectedIndex(1);
    } else if (Class'UTTItem'.default.ShockProjectileTweaks == "Static Cyan") {
    ShockProjectileTweaks.SetSelectedIndex(2);
    } else if (Class'UTTItem'.default.ShockProjectileTweaks == "Red") {
    ShockProjectileTweaks.SetSelectedIndex(3);
    } else if (Class'UTTItem'.default.ShockProjectileTweaks == "Green") {
    ShockProjectileTweaks.SetSelectedIndex(4);
    } else if (Class'UTTItem'.default.ShockProjectileTweaks == "Unreal") {
    ShockProjectileTweaks.SetSelectedIndex(5);
    }

  ShockComboTweaks = UTTComboControl(CreateControl(Class'UTTComboControl',10.0,70.0,190.0,1.0));
  ShockComboTweaks.SetText( "Shock Combo Style" );
  ShockComboTweaks.SetHelpText( "Select a Shock Combo Style" );
  ShockComboTweaks.SetFont( 0 );
  ShockComboTweaks.Align = TA_Left;

  ShockComboTweaks.AddItem("Default");
  ShockComboTweaks.AddItem("Light");
  ShockComboTweaks.AddItem("Fire");
  ShockComboTweaks.AddItem("Thunder");
  ShockComboTweaks.AddItem("Radial");

  if (Class'UTTItem'.default.ShockComboTweaks == "Default") {
    ShockComboTweaks.SetSelectedIndex(0);
    } else if (Class'UTTItem'.default.ShockComboTweaks == "Light") {
    ShockComboTweaks.SetSelectedIndex(1);
    } else if (Class'UTTItem'.default.ShockComboTweaks == "Fire") {
    ShockComboTweaks.SetSelectedIndex(2);
    } else if (Class'UTTItem'.default.ShockComboTweaks == "Thunder") {
    ShockComboTweaks.SetSelectedIndex(3);
    } else if (Class'UTTItem'.default.ShockComboTweaks == "Radial") {
    ShockComboTweaks.SetSelectedIndex(4);
    }

  PulsePrimaryTweaks = UTTComboControl(CreateControl(Class'UTTComboControl',10.0,90.0,190.0,1.0));
  PulsePrimaryTweaks.SetText( "Pulse Primary Style" );
  PulsePrimaryTweaks.SetHelpText( "Select a style for the Pulse Primary" );
  PulsePrimaryTweaks.SetFont( 0 );
  PulsePrimaryTweaks.Align = TA_Left;

  PulsePrimaryTweaks.AddItem("Default");
  PulsePrimaryTweaks.AddItem("Cyan");
  PulsePrimaryTweaks.AddItem("Static");
    if (Class'UTTItem'.default.PulsePrimaryTweaks == "Default") {
    PulsePrimaryTweaks.SetSelectedIndex(0);
    } else if (Class'UTTItem'.default.PulsePrimaryTweaks == "Cyan") {
    PulsePrimaryTweaks.SetSelectedIndex(1);
    } else if (Class'UTTItem'.default.PulsePrimaryTweaks == "Static") {
    PulsePrimaryTweaks.SetSelectedIndex(2);
    }

  PulseBeamTweaks = UTTComboControl(CreateControl(Class'UTTComboControl',10.0,110.0,190.0,1.0));
  PulseBeamTweaks.SetText( "Pulse Beam Style" );
  PulseBeamTweaks.SetHelpText( "Select a style for the Pulse Beam" );
  PulseBeamTweaks.SetFont( 0 );
  PulseBeamTweaks.Align = TA_Left;

  PulseBeamTweaks.AddItem("Default");
  PulseBeamTweaks.AddItem("Reduced");
    if (Class'UTTItem'.default.PulseBeamTweaks == "Default") {
    PulseBeamTweaks.SetSelectedIndex(0);
    } else if (Class'UTTItem'.default.PulseBeamTweaks == "Reduced") {
    PulseBeamTweaks.SetSelectedIndex(1);
    }

  FlakCannonTweaks = UTTComboControl(CreateControl(Class'UTTComboControl',10.0,130.0,190.0,1.0));
  FlakCannonTweaks.SetText( "Flak Cannon Style" );
  FlakCannonTweaks.SetHelpText( "Select a style for the Flak Cannon" );
  FlakCannonTweaks.SetFont( 0 );
  PulseBeamTweaks.Align = TA_Left;

  FlakCannonTweaks.AddItem("Default");
  FlakCannonTweaks.AddItem("Yellow");
  FlakCannonTweaks.AddItem("Cyan");
  FlakCannonTweaks.AddItem("Light Purple");
  FlakCannonTweaks.AddItem("Dark Purple");
  
    if (Class'UTTItem'.default.FlakCannonTweaks == "Default") {
    FlakCannonTweaks.SetSelectedIndex(0);
    } else if (Class'UTTItem'.default.FlakCannonTweaks == "Yellow") {
    FlakCannonTweaks.SetSelectedIndex(1);
    } else if (Class'UTTItem'.default.FlakCannonTweaks == "Cyan") {
    FlakCannonTweaks.SetSelectedIndex(2);
    } else if (Class'UTTItem'.default.FlakCannonTweaks == "Light Purple") {
    FlakCannonTweaks.SetSelectedIndex(3);
    } else if (Class'UTTItem'.default.FlakCannonTweaks == "Dark Purple") {
    FlakCannonTweaks.SetSelectedIndex(4);
    }

  RocketLauncherSmokeTweaks = UWindowCheckbox(CreateControl(Class'UWindowCheckbox',10.0,150.0,190.0,1.0));
  RocketLauncherSmokeTweaks.SetText( "Reduce Rocket Smoke" );
  RocketLauncherSmokeTweaks.SetHelpText( "Reduce Rocket Smoke" );
  RocketLauncherSmokeTweaks.SetFont( 0 );
  RocketLauncherSmokeTweaks.Align = TA_Left;
  RocketLauncherSmokeTweaks.bChecked = Class'UTTItem'.default.RocketLauncherSmokeTweaks;

  StopRocketRotationTweaks = UWindowCheckbox(CreateControl(Class'UWindowCheckbox',10.0,170.0,190.0,1.0));
  StopRocketRotationTweaks.SetText( "Stop Rocket Rotation" );
  StopRocketRotationTweaks.SetHelpText( "Stop Rocket Rotation" );
  StopRocketRotationTweaks.SetFont( 0 );
  StopRocketRotationTweaks.Align = TA_Left;
  StopRocketRotationTweaks.bChecked = Class'UTTItem'.default.StopRocketRotationTweaks; 
  
  ShellCaseTweaks = UWindowCheckbox(CreateControl(Class'UWindowCheckbox',10.0,190.0,190.0,1.0));
  ShellCaseTweaks.SetText( "Hide Shell Casings" );
  ShellCaseTweaks.SetHelpText( "Hide Shell Casings" );
  ShellCaseTweaks.SetFont( 0 );
  ShellCaseTweaks.Align = TA_Left;
  ShellCaseTweaks.bChecked = Class'UTTItem'.default.ShellCaseTweaks;

  RemoveWeaponShake = UWindowCheckbox(CreateControl(Class'UWindowCheckbox',10.0,210.0,190.0,1.0));
  RemoveWeaponShake.SetText( "Remove Weapon Shake" );
  RemoveWeaponShake.SetHelpText( "Remove Weapon Shake" );
  RemoveWeaponShake.SetFont( 0 );
  RemoveWeaponShake.Align = TA_Left;
  RemoveWeaponShake.bChecked = Class'UTTItem'.default.RemoveWeaponShake;

  BrighterPlayerModels = UWindowCheckbox(CreateControl(Class'UWindowCheckbox',10.0,230.0,190.0,1.0));
  BrighterPlayerModels.SetText( "Brighter Player Models" );
  BrighterPlayerModels.SetHelpText( "Brighter Player Models" );
  BrighterPlayerModels.SetFont( 0 );
  BrighterPlayerModels.Align = TA_Left;
  BrighterPlayerModels.bChecked = Class'UTTItem'.default.BrighterPlayerModels;

  BrighterPickups = UWindowCheckbox(CreateControl(Class'UWindowCheckbox',10.0,250.0,190.0,1.0));
  BrighterPickups.SetText( "Brighter Item/Weapon Pickups" );
  BrighterPickups.SetHelpText( "Brighter Item/Weapon Pickups" );
  BrighterPickups.SetFont( 0 );
  BrighterPickups.Align = TA_Left;
  BrighterPickups.bChecked = Class'UTTItem'.default.BrighterPickups;

  SimplePickupMessages = UWindowCheckbox(CreateControl(Class'UWindowCheckbox',10.0,270.0,190.0,1.0));
  SimplePickupMessages.SetText( "Simple Pickup Messages" );
  SimplePickupMessages.SetHelpText( "Simple Pickup Messages" );
  SimplePickupMessages.SetFont( 0 );
  SimplePickupMessages.Align = TA_Left;
  SimplePickupMessages.bChecked = Class'UTTItem'.default.SimplePickupMessages;

  SimpleFragMessages = UWindowCheckbox(CreateControl(Class'UWindowCheckbox',10.0,290.0,190.0,1.0));
  SimpleFragMessages.SetText( "Simple Frag Messages" );
  SimpleFragMessages.SetHelpText( "Simple Frag Messages" );
  SimpleFragMessages.SetFont( 0 );
  SimpleFragMessages.Align = TA_Left;
  SimpleFragMessages.bChecked = Class'UTTItem'.default.SimpleFragMessages;

  ToggleAllOptionsButton = UWindowSmallButton(CreateControl(Class'UWindowSmallButton',10.0,310.0,190.0,1.0));
  ToggleAllOptionsButton.SetText( "Toggle On/Off All Tweaks" );
  ToggleAllOptionsButton.SetHelpText( "Toggle On/Off All Tweaks" );
  ToggleAllOptionsButton.SetFont( 0 );
  ToggleAllOptionsButton.Align = TA_Left;

  WeaponTweaksLabel = UWindowLabelControl(CreateControl(Class'UWindowLabelControl',15.0,330.0,190.0,1.0));
  WeaponTweaksLabel.SetText( "*Requires Server Reconnect" );
  WeaponTweaksLabel.SetFont( 0 );
  WeaponTweaksLabel.Align = TA_Left;

  BioRifleTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;
  ShockBeamTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;
  ShockProjectileTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;
  ShockComboTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;
  PulsePrimaryTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;
  PulseBeamTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;
  FlakCannonTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;
  RocketLauncherSmokeTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;
  StopRocketRotationTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;
  ShellCaseTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;
  RemoveWeaponShake.bDisabled = !Class'UTTItem'.default.bEnabled;
  BrighterPlayerModels.bDisabled = !Class'UTTItem'.default.bEnabled;
  BrighterPickups.bDisabled = !Class'UTTItem'.default.bEnabled;
  SimplePickupMessages.bDisabled = !Class'UTTItem'.default.bEnabled;
  SimpleFragMessages.bDisabled = !Class'UTTItem'.default.bEnabled;
}

function SaveConfigs ()
{
  Class'UTTItem'.default.BioRifleTweaks = BioRifleTweaks.GetValue();

  Class'UTTItem'.default.ShockBeamTweaks = ShockBeamTweaks.GetValue();
  Class'UTTItem'.default.ShockProjectileTweaks = ShockProjectileTweaks.GetValue();
  Class'UTTItem'.default.ShockComboTweaks = ShockComboTweaks.GetValue();

  Class'UTTItem'.default.PulsePrimaryTweaks = PulsePrimaryTweaks.GetValue();
  Class'UTTItem'.default.PulseBeamTweaks = PulseBeamTweaks.GetValue();

  Class'UTTItem'.default.FlakCannonTweaks = FlakCannonTweaks.GetValue();

  Class'UTTItem'.default.RocketLauncherSmokeTweaks = RocketLauncherSmokeTweaks.bChecked;
  Class'UTTItem'.default.StopRocketRotationTweaks = StopRocketRotationTweaks.bChecked;

  Class'UTTItem'.default.ShellCaseTweaks = ShellCaseTweaks.bChecked;
  Class'UTTItem'.default.RemoveWeaponShake = RemoveWeaponShake.bChecked;

  Class'UTTItem'.default.BrighterPlayerModels = BrighterPlayerModels.bChecked;
  Class'UTTItem'.default.BrighterPickups = BrighterPickups.bChecked;

  Class'UTTItem'.default.SimplePickupMessages = SimplePickupMessages.bChecked;
  Class'UTTItem'.default.SimpleFragMessages = SimpleFragMessages.bChecked;

  Class'UTTItem'.static.StaticSaveConfig();
  Class'UTTweaks'.static.SetOptions();
}

function Notify( UWindowDialogControl C, byte E )
{
    if ( C == CloseButton && E == 1 )
    {
        SaveConfigs();
    }
    else if ( C == ToggleAllOptionsButton && E == 2 )
    {
        Class'UTTItem'.default.bEnabled = !Class'UTTItem'.default.bEnabled;

        BioRifleTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;

        ShockBeamTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;
        ShockProjectileTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;
        ShockComboTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;

        PulsePrimaryTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;

        PulseBeamTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;

        FlakCannonTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;

        RocketLauncherSmokeTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;
        StopRocketRotationTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;

        ShellCaseTweaks.bDisabled = !Class'UTTItem'.default.bEnabled;
        RemoveWeaponShake.bDisabled = !Class'UTTItem'.default.bEnabled;

        BrighterPlayerModels.bDisabled = !Class'UTTItem'.default.bEnabled;
        BrighterPickups.bDisabled = !Class'UTTItem'.default.bEnabled;
        
        SimplePickupMessages.bDisabled = !Class'UTTItem'.default.bEnabled;
        SimpleFragMessages.bDisabled = !Class'UTTItem'.default.bEnabled;
        
        Class'UTTItem'.static.StaticSaveConfig();
    }
    else if ( C == BioRifleTweaks && E == 2 )
    {
        Class'UTTItem'.default.BioRifleTweaks = BioRifleTweaks.GetValue();
        SaveConfigs();
    }
    else if ( C == PulsePrimaryTweaks && E == 2 )
    {
        Class'UTTItem'.default.PulsePrimaryTweaks = PulsePrimaryTweaks.GetValue();
        SaveConfigs();
    }
    else if ( C == PulseBeamTweaks && E == 2 )
    {
        Class'UTTItem'.default.PulseBeamTweaks = PulseBeamTweaks.GetValue();
        SaveConfigs();
    }
    else if ( C == FlakCannonTweaks && E == 2 )
    {
        Class'UTTItem'.default.FlakCannonTweaks = FlakCannonTweaks.GetValue();
        SaveConfigs();
    }
    else if ( C == ShockBeamTweaks && E == 2 )
    {
        Class'UTTItem'.default.ShockBeamTweaks = ShockBeamTweaks.GetValue();
        SaveConfigs();
    }
    else if ( C == ShockProjectileTweaks && E == 2 )
    {
        Class'UTTItem'.default.ShockProjectileTweaks = ShockProjectileTweaks.GetValue();
        SaveConfigs();
    }
    else if ( C == ShockComboTweaks && E == 2 )
    {
        Class'UTTItem'.default.ShockComboTweaks = ShockComboTweaks.GetValue();
        SaveConfigs();
    }

    else if ( C == ShellCaseTweaks && E == 2 )
    {
        Class'UTTItem'.default.ShellCaseTweaks = ShellCaseTweaks.bChecked;
        SaveConfigs();
    }

    Super.Notify(C, E);
}

defaultproperties
{
}