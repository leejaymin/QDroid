.class public Lelectrum2/drums/globalSounds;
.super Ljava/lang/Object;
.source "globalSounds.java"


# static fields
.field public static DPIVAL:F

.field public static IsOwnActivity:Z

.field public static IsPlaying:Z

.field public static MainScreen:Lelectrum2/drums/electrum;

.field public static allowrotation:Z

.field public static cutpadswhenhit:Z

.field public static exporteextension:Ljava/lang/String;

.field public static exportsubfolder:Ljava/lang/String;

.field public static externalstorage:Ljava/lang/String;

.field public static faderhighlightheight:I

.field public static faderhighlightheightorg:I

.field public static faderhighlightright:I

.field public static faderhighlightrightorg:I

.field public static faderhighlightwidth:I

.field public static faderhighlightwidthorg:I

.field public static globalVolume:D

.field public static kitsavesubfolder:Ljava/lang/String;

.field public static kitsfolder:Ljava/lang/String;

.field public static livemode:Z

.field public static lockstring:Ljava/lang/String;

.field public static mixerknobsizex:I

.field public static mixerknobsizexorg:I

.field public static mixerknobsizey:I

.field public static mixerknobsizeyorg:I

.field public static nextpattern:I

.field public static outputstereo:Z

.field public static patternlooped:Z

.field public static playingpattern:I

.field public static playpadwhenhit:Z

.field public static projectname:Ljava/lang/String;

.field public static recordedfilename:Ljava/lang/String;

.field public static screenheight:I

.field public static screenwidth:I

.field public static sdcarddirectory:Ljava/lang/String;

.field public static selectedSound:Lelectrum2/drums/soundObj;

.field public static showslotlights:Z

.field public static shuffleamount:F

.field public static shufflemax:F

.field public static songsavesubfolder:Ljava/lang/String;

.field public static songsequence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sound1:Lelectrum2/drums/soundObj;

.field public static sound2:Lelectrum2/drums/soundObj;

.field public static sound3:Lelectrum2/drums/soundObj;

.field public static sound4:Lelectrum2/drums/soundObj;

.field public static sound5:Lelectrum2/drums/soundObj;

.field public static sound6:Lelectrum2/drums/soundObj;

.field public static sound7:Lelectrum2/drums/soundObj;

.field public static sound8:Lelectrum2/drums/soundObj;

.field public static subfolder:Ljava/lang/String;

.field public static usepriority:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 24
    const-string v0, ""

    sput-object v0, Lelectrum2/drums/globalSounds;->recordedfilename:Ljava/lang/String;

    .line 26
    const-string v0, "Untitled"

    sput-object v0, Lelectrum2/drums/globalSounds;->projectname:Ljava/lang/String;

    .line 28
    sput-boolean v2, Lelectrum2/drums/globalSounds;->allowrotation:Z

    .line 30
    const-string v0, "lock"

    sput-object v0, Lelectrum2/drums/globalSounds;->lockstring:Ljava/lang/String;

    .line 32
    sput-boolean v1, Lelectrum2/drums/globalSounds;->outputstereo:Z

    .line 34
    sput-boolean v1, Lelectrum2/drums/globalSounds;->usepriority:Z

    .line 37
    sput v3, Lelectrum2/drums/globalSounds;->shufflemax:F

    .line 38
    sput v3, Lelectrum2/drums/globalSounds;->shuffleamount:F

    .line 47
    const/16 v0, 0x50

    sput v0, Lelectrum2/drums/globalSounds;->mixerknobsizeyorg:I

    .line 48
    const/16 v0, 0x2d

    sput v0, Lelectrum2/drums/globalSounds;->mixerknobsizexorg:I

    .line 50
    const/16 v0, 0x50

    sput v0, Lelectrum2/drums/globalSounds;->mixerknobsizey:I

    .line 51
    const/16 v0, 0x2d

    sput v0, Lelectrum2/drums/globalSounds;->mixerknobsizex:I

    .line 55
    const-string v0, "patterns"

    sput-object v0, Lelectrum2/drums/globalSounds;->songsavesubfolder:Ljava/lang/String;

    .line 56
    const-string v0, "drumkits"

    sput-object v0, Lelectrum2/drums/globalSounds;->kitsavesubfolder:Ljava/lang/String;

    .line 58
    const-string v0, "exported"

    sput-object v0, Lelectrum2/drums/globalSounds;->exportsubfolder:Ljava/lang/String;

    .line 60
    const-string v0, ".wav"

    sput-object v0, Lelectrum2/drums/globalSounds;->exporteextension:Ljava/lang/String;

    .line 62
    const/16 v0, 0x12

    sput v0, Lelectrum2/drums/globalSounds;->faderhighlightwidthorg:I

    .line 63
    sput v4, Lelectrum2/drums/globalSounds;->faderhighlightrightorg:I

    .line 64
    sput v5, Lelectrum2/drums/globalSounds;->faderhighlightheightorg:I

    .line 68
    const/16 v0, 0x12

    sput v0, Lelectrum2/drums/globalSounds;->faderhighlightwidth:I

    .line 69
    sput v4, Lelectrum2/drums/globalSounds;->faderhighlightright:I

    .line 70
    sput v5, Lelectrum2/drums/globalSounds;->faderhighlightheight:I

    .line 74
    const-string v0, "samples"

    sput-object v0, Lelectrum2/drums/globalSounds;->subfolder:Ljava/lang/String;

    .line 75
    const-string v0, "drumkits"

    sput-object v0, Lelectrum2/drums/globalSounds;->kitsfolder:Ljava/lang/String;

    .line 81
    sput-boolean v2, Lelectrum2/drums/globalSounds;->livemode:Z

    .line 87
    sput v1, Lelectrum2/drums/globalSounds;->nextpattern:I

    .line 88
    sput v1, Lelectrum2/drums/globalSounds;->playingpattern:I

    .line 90
    sput-boolean v2, Lelectrum2/drums/globalSounds;->patternlooped:Z

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
