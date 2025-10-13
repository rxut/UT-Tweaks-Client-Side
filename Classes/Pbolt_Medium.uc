//=============================================================================
// Pbolt_Medium.
//=============================================================================
class Pbolt_Medium expands pbolt;

#exec MESH IMPORT MESH=PBolt_Medium ANIVFILE=Models\Pbolt_Medium_a.3d DATAFILE=Models\Pbolt_Medium_d.3d X=0 Y=0 Z=0 MLOD=False 
#exec MESH ORIGIN MESH=PBolt_Medium X=0 Y=0 Z=0 YAW=-64 PITCH=0 ROLL=0

#exec MESH SEQUENCE MESH=PBolt_Medium SEQ=ALL    STARTFRAME=0 NUMFRAMES=1 RATE=30
#exec MESH SEQUENCE MESH=PBolt_Medium SEQ=Still    STARTFRAME=0 NUMFRAMES=1 RATE=30

#exec MESHMAP NEW MESHMAP=PBolt_Medium MESH=PBolt_Medium
#exec MESHMAP SCALE MESHMAP=PBolt_Medium X=0.1 Y=0.1 Z=0.2

defaultproperties
{
    DrawType=DT_Mesh
    Mesh=PBolt_Medium
}