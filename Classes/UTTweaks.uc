class UTTweaks extends Info
  abstract;

#exec OBJ LOAD FILE=Textures\FireEffect.utx GROUP="FireEffectCustom" PACKAGE=UTTweaks LODSET=2
  
#exec TEXTURE IMPORT NAME=BioGooBlue FILE=Textures\Jgreen_blue.pcx PACKAGE=UTTweaks GROUP="BioGooBlue" LODSET=2
#exec TEXTURE IMPORT NAME=BioGooCyan FILE=Textures\Jgreen_cyan.PCX PACKAGE=UTTweaks GROUP="BioGooCyan" LODSET=2
#exec TEXTURE IMPORT NAME=BioGooRed FILE=Textures\Jgreen_red.PCX PACKAGE=UTTweaks GROUP="BioGooRed" LODSET=2
#exec TEXTURE IMPORT NAME=BioGooYellow FILE=Textures\Jgreen_yellow.PCX PACKAGE=UTTweaks GROUP="BioGooYellow" LODSET=2

#exec TEXTURE IMPORT NAME=ShockBeamRed FILE=Textures\shockbeam_0.pcx PACKAGE=UTTweaks GROUP="ShockBeamRed" LODSET=2
#exec TEXTURE IMPORT NAME=ShockBeamCyan FILE=Textures\ShockBeamCyan.PCX PACKAGE=UTTweaks GROUP="ShockBeamCyan" LODSET=2
#exec TEXTURE IMPORT NAME=ShockBeamGreen FILE=Textures\shockbeam_2.PCX PACKAGE=UTTweaks GROUP="ShockBeamGreen" LODSET=2
#exec TEXTURE IMPORT NAME=ShockBeamOrange FILE=Textures\shockbeam_3.PCX PACKAGE=UTTweaks GROUP="ShockBeamOrange" LODSET=2

#exec TEXTURE IMPORT NAME=ShockBallStatic FILE=Textures\ASMDAlt_a03_static.pcx PACKAGE=UTTweaks GROUP="ShockBallStatic" LODSET=2
#exec TEXTURE IMPORT NAME=ShockBallCyanStatic FILE=Textures\ASMDAlt_a03_cyan.pcx PACKAGE=UTTweaks GROUP="ShockBallCyanStatic" LODSET=2

#exec TEXTURE IMPORT NAME=ASMDAlt_0_a00 FILE=Textures\ASMDAlt_0_a00.pcx PACKAGE=UTTweaks GROUP="ShockBallRed" LODSET=2
#exec TEXTURE IMPORT NAME=ASMDAlt_0_a01 FILE=Textures\ASMDAlt_0_a01.pcx PACKAGE=UTTweaks GROUP="ShockBallRed" LODSET=2
#exec TEXTURE IMPORT NAME=ASMDAlt_0_a02 FILE=Textures\ASMDAlt_0_a02.pcx PACKAGE=UTTweaks GROUP="ShockBallRed" LODSET=2
#exec TEXTURE IMPORT NAME=ASMDAlt_0_a03 FILE=Textures\ASMDAlt_0_a03.pcx PACKAGE=UTTweaks GROUP="ShockBallRed" LODSET=2

#exec TEXTURE IMPORT NAME=ASMDAlt_2_a00 FILE=Textures\ASMDAlt_2_a00.pcx PACKAGE=UTTweaks GROUP="ShockBallGreen" LODSET=2
#exec TEXTURE IMPORT NAME=ASMDAlt_2_a01 FILE=Textures\ASMDAlt_2_a01.pcx PACKAGE=UTTweaks GROUP="ShockBallGreen" LODSET=2
#exec TEXTURE IMPORT NAME=ASMDAlt_2_a02 FILE=Textures\ASMDAlt_2_a02.pcx PACKAGE=UTTweaks GROUP="ShockBallGreen" LODSET=2
#exec TEXTURE IMPORT NAME=ASMDAlt_2_a03 FILE=Textures\ASMDAlt_2_a03.pcx PACKAGE=UTTweaks GROUP="ShockBallGreen" LODSET=2

#exec TEXTURE IMPORT NAME=Blupblst_a00 FILE=Textures\Blupblst_a00.PCX PACKAGE=UTTweaks GROUP="Effects" LODSET=2
#exec TEXTURE IMPORT NAME=Blupblst_a01 FILE=Textures\Blupblst_a01.PCX PACKAGE=UTTweaks GROUP="Effects" LODSET=2
#exec TEXTURE IMPORT NAME=Blupblst_a02 FILE=Textures\Blupblst_a02.PCX PACKAGE=UTTweaks GROUP="Effects" LODSET=2
#exec TEXTURE IMPORT NAME=Blupblst_a03 FILE=Textures\Blupblst_a03.PCX PACKAGE=UTTweaks GROUP="Effects" LODSET=2
#exec TEXTURE IMPORT NAME=Blupblst_a04 FILE=Textures\Blupblst_a04.PCX PACKAGE=UTTweaks GROUP="Effects" LODSET=2

var config bool bEnabled;

static function SetBioRifleTweaks(string option)
{
  switch (option)
  {
    case "Default":

      Class'bioglob'.default.Texture = Texture'Botpack.Jgreen'; 
      Class'biosplash'.default.Texture = Texture'Botpack.Jgreen'; // Secondary Fire Splash
      
      Class'ut_biogel'.default.Texture = Texture'Botpack.Jgreen';

      break;

    Case "Blue":

      Class'bioglob'.default.Texture = Texture'BioGooBlue'; // Secondary Fire Glob
      Class'biosplash'.default.Texture = Texture'BioGooBlue'; // Secondary Fire Splash

      Class'ut_biogel'.default.Texture = Texture'BioGooBlue';

      break;

    Case "Cyan":

      Class'bioglob'.default.Texture = Texture'BioGooCyan'; // Secondary Fire Glob
      Class'biosplash'.default.Texture = Texture'BioGooCyan'; // Secondary Fire Splash

      Class'ut_biogel'.default.Texture = Texture'BioGooCyan';

      break;

    Case "Red":

      Class'bioglob'.default.Texture = Texture'BioGooRed'; // Secondary Fire Glob
      Class'biosplash'.default.Texture = Texture'BioGooRed'; // Secondary Fire Splash

      Class'ut_biogel'.default.Texture = Texture'BioGooRed';

      break;

    Case "Yellow":

      Class'bioglob'.default.Texture = Texture'BioGooYellow'; // Secondary Fire Glob
      Class'biosplash'.default.Texture = Texture'BioGooYellow'; // Secondary Fire Splash

      Class'ut_biogel'.default.Texture = Texture'BioGooYellow';

      break;
  }
}

static function SetShockBeamTweaks(string option)
{
  switch (option)
  {
    case "Default":

      Class'UT_RingExplosion5'.default.bHidden = false;

      Class'ShockBeam'.default.DrawScale = 0.44;
      Class'ShockBeam'.default.Texture = Texture'Botpack.Effects.jenergy2';

      break;

    case "Light Blue":

      Class'UT_RingExplosion5'.default.bHidden = true;

      Class'ShockBeam'.default.DrawScale = 0.24;
      Class'ShockBeam'.default.Texture = Texture'UnrealShare.Effect1.FireEffect1U';

      break;

    case "Cyan":

      Class'UT_RingExplosion5'.default.bHidden = true;

      Class'ShockBeam'.default.DrawScale = 0.24;
      Class'ShockBeam'.default.Texture = Texture'ShockBeamCyan';

      break;

    case "Red":

      Class'UT_RingExplosion5'.default.bHidden = true;

      Class'ShockBeam'.default.DrawScale = 0.24;
      Class'ShockBeam'.default.Texture = Texture'ShockBeamRed';

      break;
    
    case "Green":

      Class'UT_RingExplosion5'.default.bHidden = true;

      Class'ShockBeam'.default.DrawScale = 0.24;
      Class'ShockBeam'.default.Texture = Texture'ShockBeamGreen';

      break;

    case "Orange":
      Class'UT_RingExplosion5'.default.bHidden = true;

      Class'ShockBeam'.default.DrawScale = 0.24;
      Class'ShockBeam'.default.Texture = Texture'ShockBeamOrange';
      break;
    

    default:
      break;
  }
}

static function SetShockProjectileTweaks(string option)
{
  switch (option)
  {
    case "Default":

      Class'ShockProj'.default.Texture = Texture'Botpack.ASMDAlt.ASMDAlt_a00';

      break;

    case "Static":

      Class'ShockProj'.default.Texture = Texture'ShockBallStatic';

      break;

    case "Static Cyan":

      Class'ShockProj'.default.Texture = Texture'ShockBallCyanStatic';

      break;

    case "Red":

      Class'ShockProj'.default.Texture = Texture'ASMDAlt_0_a00';

      break;


    case "Green":

      Class'ShockProj'.default.Texture = Texture'ASMDAlt_2_a00';

      break;

    case "Unreal":

      Class'ShockProj'.default.Texture = Texture'FireEffect.FE2';

      break;

    default:
      break;
  }
}

static function SetShockComboTweaks(string option)
{
  switch (option)
  {
    case "Default":
      Class'UT_Comboring'.default.skin = Texture'Botpack.Effects.pPurpleRing';

      break;

    case "Light":
      Class'UT_Comboring'.default.skin = None;

      break;

    case "Fire":
      Class'UT_Comboring'.default.skin = Texture'UnrealShare.Effect50.FireEffect50';

      break;

    case "Thunder":
      Class'UT_Comboring'.default.skin = Texture'Botpack.TeamSymbols.TLThunder';

      break;

    case "Radial":
      Class'UT_Comboring'.default.skin = Texture'Botpack.Effects.I_TeamB';

      break;

    default:
      break;
  }
}

static function SetPulsePrimaryTweaks(string option)
{
  switch (option)
  {
    case "Default":
      Class'PlasmaEffect'.default.Texture = Texture'Botpack.PlasmaExplo.pblst_a00';

      Class'PlasmaSphere'.default.Texture = Texture'Botpack.PlasmaExplo.pblst_a00';
      Class'PlasmaSphere'.default.exptype = Texture'Botpack.PlasmaExplo.pblst_a00';
      Class'PlasmaSphere'.default.DrawScale = 0.19;
      Class'PlasmaSphere'.default.Lighthue = 83;

      break;

    case "Cyan":

      Class'PlasmaEffect'.default.Texture = Texture'Botpack.FlakGlow.fglow_a00';

      Class'PlasmaSphere'.default.Texture = Texture'Blupblst_a00';
      Class'PlasmaSphere'.default.exptype = Texture'Blupblst_a00';
     
      Class'PlasmaSphere'.default.DrawScale = 0.19;
      Class'PlasmaSphere'.default.Lighthue = 140;

      break;

     case "Static":
      Class'PlasmaEffect'.default.Texture = Texture'Botpack.FlakGlow.fglow_a00';
      
      Class'PlasmaSphere'.default.Texture = Texture'Botpack.FlareFX.utflare3';
      Class'PlasmaSphere'.default.exptype = Texture'Botpack.UT_Explosions.Exp4_a00';

      Class'PlasmaSphere'.default.DrawScale = 0.24;
      Class'PlasmaSphere'.default.Lighthue = 120;

      break;
    
    default:
      break;
  }
}

static function SetPulseBeamTweaks(string option)
{
  switch (option)
  {
    case "Default":
      Class'StarterBolt'.default.DrawScale = 1;
      Class'StarterBolt'.default.Mesh = LodMesh'Botpack.PBolt';

      Class'PBolt'.default.DrawScale = 1;
      Class'PBolt'.default.Mesh = LodMesh'Botpack.PBolt';
      Class'PBolt'.default.bMeshEnviroMap = False;

      Class'PlasmaCap'.default.Texture = Texture'Botpack.BoltHit.phit_a00';
      Class'PlasmaCap'.default.DrawScale = 0.65;

      Class'PlasmaHit'.default.Texture = Texture'Botpack.BoltCap.pEnd_a00';
      Class'PlasmaHit'.default.DrawScale = 0.65;

      break;

    case "Reduced":
      Class'StarterBolt'.default.Mesh = Class'PBolt_Medium'.default.Mesh;

      Class'PBolt'.default.DrawType = DT_Mesh;
      Class'PBolt'.default.Mesh = Class'PBolt_Medium'.default.Mesh;

      Class'PlasmaCap'.default.Texture = Texture'Botpack.BoltHit.phit_a00';
      Class'PlasmaCap'.default.DrawScale = 0.5;

      Class'PlasmaHit'.default.Texture = Texture'Botpack.BoltCap.pEnd_a00';
      Class'PlasmaHit'.default.DrawScale = 0.5;
      break;

    default:
      break;
  }
}

static function SetFlakCannonTweaks(string option)
{
  switch (option)
  {
    case "Default":
      Class'ChunkTrail'.default.Texture = Texture'Botpack.FlakGlow.fglow_a00';
      break;

    Case "Yellow":
      Class'ChunkTrail'.default.Texture = Texture'Botpack.Effects.Sparky';
      break;
    
    Case "Cyan":
      Class'ChunkTrail'.default.Texture = Texture'Botpack.FlareFX.utflare4';
      break;
  
    Case "Light Purple":
      Class'ChunkTrail'.default.Texture = Texture'Botpack.FlareFX.utflare2';
      break;

    Case "Dark Purple":
      Class'ChunkTrail'.default.Texture = Texture'Botpack.Effects.jenergy2';
      break;
  }
}

// Reduce Rocket Smoke

static function SetRocketLauncherSmokeTweaks(bool enable)
{
  if (enable)
  {
    Class'UT_SpriteSmokePuff'.default.DrawScale = 1;
    
    Class'UTSmokeTrail'.default.DrawScale = 2;
		Class'UTSmokeTrail'.default.ScaleGlow = 0.4;
		Class'UTSmokeTrail'.default.LifeSpan = 1.2;
		Class'UTSmokeTrail'.default.Mesh = LodMesh'Botpack.Smokebm';
		Class'UTSmokeTrail'.default.Curr = 3;
		Class'UTSmokeTrail'.default.DrawType = DT_SpriteAnimOnce;
		Class'UTSmokeTrail'.default.LightBrightness = 10;
		Class'UTSmokeTrail'.default.LightSaturation = byte(255);
		Class'UTSmokeTrail'.default.LightRadius = 7;
		Class'UTSmokeTrail'.default.bParticles = false;
		Class'UTSmokeTrail'.default.bRandomFrame = false;

    Class'LightSmokeTrail'.default.DrawScale = 2;
    Class'LightSmokeTrail'.default.ScaleGlow = 0.4;
		Class'LightSmokeTrail'.default.LifeSpan = 1.2;
		Class'LightSmokeTrail'.default.Mesh = LodMesh'Botpack.Smokebm';
		Class'LightSmokeTrail'.default.Curr = 3;;
		Class'LightSmokeTrail'.default.DrawType = DT_SpriteAnimOnce;
		Class'LightSmokeTrail'.default.LightBrightness = 10;
		Class'LightSmokeTrail'.default.LightSaturation = byte(255);
		Class'LightSmokeTrail'.default.LightRadius = 7;
		Class'LightSmokeTrail'.default.bParticles = false;
		Class'LightSmokeTrail'.default.bRandomFrame = false;

  }
  else
  {
    Class'UT_SpriteSmokePuff'.default.DrawScale = 2;

    Class'UTSmokeTrail'.default.DrawScale = 2;
    Class'UTSmokeTrail'.default.ScaleGlow = 0.800000;
    Class'UTSmokeTrail'.default.LifeSpan = 1.60000;
    Class'UTSmokeTrail'.default.Mesh = LodMesh'Botpack.Smokebm';
    Class'UTSmokeTrail'.default.Curr = 7;
    Class'UTSmokeTrail'.default.DrawType = DT_Mesh;
    Class'UTSmokeTrail'.default.LightBrightness = 0;
    Class'UTSmokeTrail'.default.LightSaturation = 0;
    Class'UTSmokeTrail'.default.LightRadius = 0;
    Class'UTSmokeTrail'.default.bParticles = true;
    Class'UTSmokeTrail'.default.bRandomFrame = true;

    Class'LightSmokeTrail'.default.DrawScale = 2;
    Class'LightSmokeTrail'.default.ScaleGlow = 0.800000;
    Class'LightSmokeTrail'.default.LifeSpan = 1.60000;
    Class'LightSmokeTrail'.default.Mesh = LodMesh'Botpack.Smokebm';
    Class'LightSmokeTrail'.default.Curr = 7;
    Class'LightSmokeTrail'.default.DrawType = DT_Mesh;
    Class'LightSmokeTrail'.default.LightBrightness = 0;
    Class'LightSmokeTrail'.default.LightSaturation = 0;
    Class'LightSmokeTrail'.default.LightRadius = 0;
    Class'LightSmokeTrail'.default.bParticles = true;
    Class'LightSmokeTrail'.default.bRandomFrame = true;
  }
}

// Stop Rockets from rotating

static function StopRocketRotationTweaks(bool enable)
{
 if (enable)
  {
    Class'RocketMk2'.default.RotationRate.Roll = 0;
  }
  else
  {
    Class'RocketMk2'.default.RotationRate.Roll = 50000;
  }
}

static function SetShellCaseTweaks(bool enable)
{
  
  if (enable)
  {  
    Class'Minigun2'.default.MuzzleFlashScale = 0.04;
    Class'MiniShellCase'.default.DrawScale = 0;
    Class'MiniShellCase'.default.bHidden = true;
    Class'UT_ShellCase'.default.DrawScale = 0;
    Class'UT_ShellCase'.default.bHidden = true;

  }
  else
  {
    Class'Minigun2'.default.MuzzleFlashScale = 0.25;
    Class'MiniShellCase'.default.DrawScale = 1.2;
    Class'MiniShellCase'.default.bHidden = false;
    Class'UT_ShellCase'.default.DrawScale = 1;
    Class'UT_ShellCase'.default.bHidden = false;
  }
}


static function RemoveWeaponShake(bool enable)
{
  if (enable)
  {
    Class'ut_eightball'.default.shaketime = 0;
    Class'ut_eightball'.default.shakemag = 0;

    Class'ut_flakcannon'.default.shaketime = 0;

    Class'sniperrifle'.default.shaketime = 0;

    Class'minigun2'.default.shaketime = 0;
    Class'minigun2'.default.shakemag = 0;
    Class'minigun2'.default.shakevert = 0;

    Class'pulsegun'.default.shaketime = 0;
    Class'pulsegun'.default.shakemag = 0;
    Class'pulsegun'.default.shakevert = 0;

    Class'enforcer'.default.shaketime = 0;

    Class'ripper'.default.shakevert = 0;
    Class'ripper'.default.shakemag = 0;

    Class'ut_biorifle'.default.shaketime = 0;

    Class'shockrifle'.default.shaketime = 0;

    Class'impacthammer'.default.shaketime = 0;
    Class'impacthammer'.default.shakemag = 0;

    Class'warheadlauncher'.default.shaketime = 0;
  }
else
  {
    Class'ut_eightball'.default.shaketime = 0.200000;
    Class'ut_eightball'.default.shakemag = 350.000000;

    Class'ut_flakcannon'.default.shaketime = 0.150000;

    Class'sniperrifle'.default.shaketime = 0.150000;

    Class'minigun2'.default.shaketime = 0.100000;
    Class'minigun2'.default.shakemag = 135.000000;
    Class'minigun2'.default.shakevert = 8.000000;

    Class'pulsegun'.default.shaketime = 0.100000;
    Class'pulsegun'.default.shakemag = 135.000000;
    Class'pulsegun'.default.shakevert = 8.000000;

    Class'enforcer'.default.shaketime = 0.100000;

    Class'ripper'.default.shakevert = 5.000000;
    Class'ripper'.default.shakemag = 120.000000;

    Class'ut_biorifle'.default.shaketime = 0.100000;

    Class'shockrifle'.default.shaketime = 0.100000;

    Class'impacthammer'.default.shaketime = 0.100000;
    Class'impacthammer'.default.shakemag = 300.000000;

    Class'warheadlauncher'.default.shaketime = 0.200000;
  }
}

static function BrighterPlayerModels(bool enable)
{
  if (enable)
  {
    Class'TMale1'.default.bunlit = True;
    Class'TMale2'.default.bunlit = True;

    Class'TFemale1'.default.bunlit = True;
    Class'TFemale2'.default.bunlit = True;

    Class'TBoss'.default.bunlit = True;
  }
  else
  {
    Class'TMale1'.default.bunlit = False;
    Class'TMale2'.default.bunlit = False;

    Class'TFemale1'.default.bunlit = False;
    Class'TFemale2'.default.bunlit = False;

    Class'TBoss'.default.bunlit = False;
  }
}

static function BrighterPickups(bool enable)
{
  if (enable)
  {
    // Health Packs
    Class'medbox'.default.bunlit = True;

    Class'healthvial'.default.bunlit = True;

    Class'healthpack'.default.bunlit = True;

    // Power-ups

    Class'ut_shieldbelt'.default.bunlit = True;

    Class'udamage'.default.bunlit = True;

    Class'thighpads'.default.bunlit = True;

    Class'armor2'.default.bunlit = True;

    Class'ut_jumpboots'.default.bunlit = True;

    Class'shieldd'.default.bunlit = True;

    // Ammo

    Class'eclip'.default.bunlit = True;

    Class'miniammo'.default.bunlit = True;

    Class'bioammo'.default.bunlit = True;

    Class'shockcore'.default.bunlit = True;

    Class'pammo'.default.bunlit = True;

    Class'bladehopper'.default.bunlit = True;

    Class'flakammo'.default.bunlit = True;

    Class'rocketpack'.default.bunlit = True;

    Class'bulletbox'.default.bunlit = True;

    Class'eclip'.default.bunlit = True;

    Class'miniammo'.default.bunlit = True;

    Class'bioammo'.default.bunlit = True;

    Class'shockcore'.default.bunlit = True;

    Class'pammo'.default.bunlit = True;

    Class'bladehopper'.default.bunlit = True;

    Class'flakammo'.default.bunlit = True;

    Class'rocketpack'.default.bunlit = True;

    Class'bulletbox'.default.bunlit = True;


    Class'ut_eightball'.default.bunlit = True;

    Class'ut_flakcannon'.default.bunlit = True;

    Class'sniperrifle'.default.bunlit = True;

    Class'minigun2'.default.bunlit = True;

    Class'pulsegun'.default.bunlit = True;

    Class'enforcer'.default.bunlit = True;

    Class'ripper'.default.bunlit = True;

    Class'ut_biorifle'.default.bunlit = True;

    Class'shockrifle'.default.bunlit = True;


  }
else
  {
    Class'medbox'.default.bunlit = False;
    
    Class'healthvial'.default.bunlit = False;

    Class'healthpack'.default.bunlit = False;


    Class'ut_shieldbelt'.default.bunlit = False;

    Class'udamage'.default.bunlit = False;

    Class'thighpads'.default.bunlit = False;

    Class'armor2'.default.bunlit = False;

    Class'ut_jumpboots'.default.bunlit = False;

    Class'shieldd'.default.bunlit = False;


    Class'eclip'.default.bunlit = False;

    Class'miniammo'.default.bunlit = False;

    Class'bioammo'.default.bunlit = False;

    Class'shockcore'.default.bunlit = False;

    Class'pammo'.default.bunlit = False;

    Class'bladehopper'.default.bunlit = False;

    Class'flakammo'.default.bunlit = False;

    Class'rocketpack'.default.bunlit = False;

    Class'bulletbox'.default.bunlit = False;


    Class'ut_eightball'.default.bunlit = False;

    Class'ut_flakcannon'.default.bunlit = False;

    Class'sniperrifle'.default.bunlit = False;

    Class'minigun2'.default.bunlit = False;

    Class'pulsegun'.default.bunlit = False;

    Class'enforcer'.default.bunlit = False;

    Class'ripper'.default.bunlit = False;

    Class'ut_biorifle'.default.bunlit = False;

    Class'shockrifle'.default.bunlit = False;

  }
}

static function SimplePickupMessages(bool enable)
{
  if (enable)
  {
    Class'pickupmessageplus'.default.bisconsolemessage = False;
    Class'pickupmessagehealthplus'.default.bisconsolemessage = False;

    Class'healthvial'.default.pickupmessage = "+ HP ";

    Class'healthpack'.default.pickupmessage = "+ Keg";

    Class'medbox'.default.pickupmessage = "+ HP ";


    Class'ut_shieldbelt'.default.pickupmessage = "+ Belt";

    Class'udamage'.default.pickupmessage = "+ Amp";

    Class'thighpads'.default.pickupmessage = "+ Pads";

    Class'armor2'.default.pickupmessage = "+ Armor";

    Class'ut_jumpboots'.default.pickupmessage = "+ Boots";

    Class'UT_Invisibility'.default.pickupmessage = "+ Invi";


    Class'miniammo'.default.pickupmessage = "+ Mini Ammo";

    Class'bioammo'.default.pickupmessage = "+ Bio Ammo";

    Class'shockcore'.default.pickupmessage = "+ Shock Ammo";

    Class'pammo'.default.pickupmessage = "+ Pulse Ammo";

    Class'bladehopper'.default.pickupmessage = "+ Ripper Ammo";

    Class'flakammo'.default.pickupmessage = "+ Flak Ammo";

    Class'rocketpack'.default.pickupmessage = "+ Rocket Ammo";

    Class'bulletbox'.default.pickupmessage = "+ Sniper Ammo";


    Class'ut_eightball'.default.pickupmessage = "+ Rockets";

    Class'ut_flakcannon'.default.pickupmessage = "+ Flak";

    Class'sniperrifle'.default.pickupmessage = "+ Sniper";

    Class'minigun2'.default.pickupmessage = "+ Mini";

    Class'pulsegun'.default.pickupmessage = "+ Pulse";

    Class'enforcer'.default.pickupmessage = "+ Enforcer";

    Class'ripper'.default.pickupmessage = "+ Ripper";

    Class'ut_biorifle'.default.pickupmessage = "+ Bio";

    Class'shockrifle'.default.pickupmessage = "+ Shock";

    Class'warheadlauncher'.default.pickupmessage = "+ Redeemer";

  }
else
  {
    
    Class'pickupmessageplus'.default.bisconsolemessage = True;
    Class'pickupmessagehealthplus'.default.bisconsolemessage = True;


    Class'healthvial'.default.pickupmessage = "You picked up a Health Vial +";

    Class'healthpack'.default.pickupmessage = "You picked up the Big Keg O' Health +";

    Class'medbox'.default.pickupmessage = "You picked up a Health Pack +";

    Class'ut_shieldbelt'.default.pickupmessage = "You got the Shield Belt.";

    Class'udamage'.default.pickupmessage = "You got the Damage Amplifier!";

    Class'thighpads'.default.pickupmessage = "You got the Thigh Pads.";

    Class'armor2'.default.pickupmessage = "You got the Body Armor.";

    Class'ut_jumpboots'.default.pickupmessage = "You picked up the jump boots";

    Class'UT_Invisibility'.default.pickupmessage = "You have Invisibility.";


    Class'miniammo'.default.pickupmessage = "You picked up 50 bullets.";

    Class'bioammo'.default.pickupmessage = "You picked up the Biosludge Ammo.o";

    Class'shockcore'.default.pickupmessage = "You picked up a Shock Core.";

    Class'pammo'.default.pickupmessage = "You picked up a Pulse Cell.";

    Class'bladehopper'.default.pickupmessage = "You picked up some Razor Blades.";

    Class'flakammo'.default.pickupmessage = "You picked up 10 Flak Shells.";

    Class'rocketpack'.default.pickupmessage = "You picked up a rocket pack.";

    Class'bulletbox'.default.pickupmessage = "You got a box of rifle rounds.";


    Class'ut_eightball'.default.pickupmessage = "You got the Rocket Launcher.";

    Class'ut_flakcannon'.default.pickupmessage = "You got the Flak Cannon.";

    Class'sniperrifle'.default.pickupmessage = "You got a Sniper Rifle.";

    Class'minigun2'.default.pickupmessage = "You got the Minigun.";

    Class'pulsegun'.default.pickupmessage = "You got a Pulse Gun.";

    Class'enforcer'.default.pickupmessage = "You picked up another Enforcer!";

    Class'ripper'.default.pickupmessage = "You got the Ripper.";

    Class'ut_biorifle'.default.pickupmessage = "You got the GES BioRifle.";

    Class'shockrifle'.default.pickupmessage = "You got the ASMD Shock Rifle.";

    Class'warheadlauncher'.default.pickupmessage = "You got the Redeemer.";

  }
}

static function SimpleFragMessages(bool enable)
{
  if (enable)
 
  {
    Class'ut_eightball'.default.deathmessage = "%k    » [Rocket] »    %o";

    Class'ut_flakcannon'.default.deathmessage = "%k    » [Flak] »    %o";

    Class'sniperrifle'.default.deathmessage ="%k    » [Sniper] »    %o";

    Class'minigun2'.default.deathmessage = "%k    » [Mini] »    %o";

    Class'pulsegun'.default.deathmessage = "%k    » [Pulse] »    %o";

    Class'enforcer'.default.deathmessage = "%k    » [Enforcer] »    %o";

    Class'ripper'.default.deathmessage = "%k    » [Ripper] »    %o";

    Class'ut_biorifle'.default.deathmessage = "%k    » [Bio] »    %o";

    Class'shockrifle'.default.deathmessage = "%k    » [Shock] »    %o";

    Class'impacthammer'.default.deathmessage = "%k    » [Hammer] »    %o";
    
    Class'translocator'.default.deathmessage = "%k    » [Tele] »    %o";
    
    Class'warheadlauncher'.default.deathmessage = "%k    » [Nuke] »    %o";
  
    Class'supershockrifle'.default.deathmessage = "%k    » [Insta] »    %o";
  
  }
else
  {

    Class'ut_eightball'.default.deathmessage = "%o was smacked down by %k's %w.";

    Class'ut_flakcannon'.default.deathmessage = "%o was ripped to shreds by %k's %w.";

    Class'sniperrifle'.default.deathmessage = "%k put a bullet through %o's head.";

    Class'minigun2'.default.deathmessage = "%k's %w turned %o into a leaky piece of meat.";

    Class'pulsegun'.default.deathmessage = "%o ate %k's burning plasma death.";

    Class'enforcer'.default.deathmessage = "%k riddled %o full of holes with the %w.";

    Class'ripper'.default.deathmessage = "%k ripped a chunk of meat out of %o with the %w.";

    Class'ut_biorifle'.default.deathmessage = "%o drank a glass of %k's dripping green load.";

    Class'shockrifle'.default.deathmessage = "%k inflicted mortal damage upon %o with the %w.";

    Class'impacthammer'.default.deathmessage = "%o got smeared by %k's piston.";
    
    Class'translocator'.default.deathmessage = "%k telefragged %o!";
    
    Class'warheadlauncher'.default.deathmessage = "%o was vaporized by %k's %w!!";
  
    Class'supershockrifle'.default.deathmessage = "%k electrified %o with the %w.";

  }
}

static function SetOptions ()
{
  if (Class'UTTItem'.default.bEnabled)
    {

      SetBioRifleTweaks(Class'UTTItem'.default.BioRifleTweaks);

      SetShockBeamTweaks(Class'UTTItem'.default.ShockBeamTweaks);

      SetShockProjectileTweaks(Class'UTTItem'.default.ShockProjectileTweaks);

      SetShockComboTweaks(Class'UTTItem'.default.ShockComboTweaks);

      SetPulsePrimaryTweaks(Class'UTTItem'.default.PulsePrimaryTweaks);

      SetPulseBeamTweaks(Class'UTTItem'.default.PulseBeamTweaks);

      SetFlakCannonTweaks(Class'UTTItem'.default.FlakCannonTweaks);

      SetRocketLauncherSmokeTweaks(Class'UTTItem'.default.RocketLauncherSmokeTweaks);

      StopRocketRotationTweaks(Class'UTTItem'.default.StopRocketRotationTweaks);

      SetShellCaseTweaks(Class'UTTItem'.default.ShellCaseTweaks);

      RemoveWeaponShake(Class'UTTItem'.default.RemoveWeaponShake);
      
      BrighterPlayerModels(Class'UTTItem'.default.BrighterPlayerModels);
      
      BrighterPickups(Class'UTTItem'.default.BrighterPickups);

      SimplePickupMessages(Class'UTTItem'.default.SimplePickupMessages);

      SimpleFragMessages(Class'UTTItem'.default.SimpleFragMessages);

    }
    else
    {
      SetBioRifleTweaks("Default");
      SetShockBeamTweaks("Default");
      SetShockProjectileTweaks("Default");
      SetShockComboTweaks("Default");
      SetPulsePrimaryTweaks("Default");
      SetPulseBeamTweaks("Default");
      SetFlakCannonTweaks("Default");
      SetRocketLauncherSmokeTweaks(false);
      StopRocketRotationTweaks(false);
      SetShellCaseTweaks(false);
      RemoveWeaponShake(false);
      BrighterPlayerModels(false);
      BrighterPickups(false);
      SimplePickupMessages(false);
      SimpleFragMessages(false);
    }
 }

defaultproperties
{
   
}
