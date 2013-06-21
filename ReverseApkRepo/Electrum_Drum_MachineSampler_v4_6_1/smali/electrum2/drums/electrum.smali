.class public Lelectrum2/drums/electrum;
.super Landroid/app/Activity;
.source "electrum.java"


# static fields
.field protected static final PLAYSOUNDIDENTIFIER:I = 0x3039

.field public static final PREFS_NAME:Ljava/lang/String; = "ElectrumPrefsFile"

.field protected static final PROGRESSIDENTIFIER:I = 0x302f

.field public static bpm:F

.field public static externalsequencepatternpos:I

.field static headerdata:[B

.field static headerdata2:[B

.field static headerdatamono2:[B

.field public static numberofslots:I

.field public static samplefrequency:I

.field public static samplesperslot:I

.field public static sequenceplayedfromexternal:Z

.field public static slotspermeasure:I

.field static versioncheck:Ljava/lang/String;


# instance fields
.field CreatingSound:Z

.field private DoneExporting:Ljava/lang/Runnable;

.field DrumLightReset:Ljava/lang/Runnable;

.field private GlobalErrorHandler:Ljava/lang/Runnable;

.field public IsExporting:Z

.field IsPlaying:Z

.field OldPosition:I

.field OldY:F

.field public PatternSequenceMode:Z

.field Position:I

.field private SaveTempPattern:Ljava/lang/Runnable;

.field private ShowHelpFirstTime:Ljava/lang/Runnable;

.field private UpdatePattern:Ljava/lang/Runnable;

.field public UpdateProgress:Ljava/lang/Runnable;

.field UpdateSlotLights:Ljava/lang/Runnable;

.field audioTrack:Landroid/media/AudioTrack;

.field audiostarted:Z

.field bpmText:Landroid/widget/TextView;

.field bpmlayout:Landroid/widget/LinearLayout;

.field bpmlayoutclick:Landroid/view/View$OnClickListener;

.field canStop:Z

.field currentdrumkit:I

.field currentpattern:I

.field currentslot:I

.field currentslotlight:I

.field final drumSlotGestureDetector:Landroid/view/GestureDetector;

.field drumbutton1:Landroid/widget/ImageView;

.field drumbutton10:Landroid/widget/ImageView;

.field drumbutton11:Landroid/widget/ImageView;

.field drumbutton12:Landroid/widget/ImageView;

.field drumbutton13:Landroid/widget/ImageView;

.field drumbutton14:Landroid/widget/ImageView;

.field drumbutton15:Landroid/widget/ImageView;

.field drumbutton16:Landroid/widget/ImageView;

.field drumbutton2:Landroid/widget/ImageView;

.field drumbutton3:Landroid/widget/ImageView;

.field drumbutton4:Landroid/widget/ImageView;

.field drumbutton5:Landroid/widget/ImageView;

.field drumbutton6:Landroid/widget/ImageView;

.field drumbutton7:Landroid/widget/ImageView;

.field drumbutton8:Landroid/widget/ImageView;

.field drumbutton9:Landroid/widget/ImageView;

.field drumbuttonTouch:Landroid/view/View$OnTouchListener;

.field drumname1:Landroid/widget/TextView;

.field drumname2:Landroid/widget/TextView;

.field drumname3:Landroid/widget/TextView;

.field drumname4:Landroid/widget/TextView;

.field drumname5:Landroid/widget/TextView;

.field drumname6:Landroid/widget/TextView;

.field drumname7:Landroid/widget/TextView;

.field drumname8:Landroid/widget/TextView;

.field exportFilename:Ljava/lang/String;

.field exportMIDIFilename:Ljava/lang/String;

.field exportMIDIsequence:Z

.field exportprogress:Landroid/widget/ProgressBar;

.field exportringtone:Z

.field private gestureScanner:Landroid/view/GestureDetector;

.field private gestureScannerDrumSlot:Landroid/view/GestureDetector;

.field globalErrorString:Ljava/lang/String;

.field mBackground:Ljava/lang/Thread;

.field mainwindow:Landroid/view/Window;

.field myGUIUpdateHandler:Landroid/os/Handler;

.field noPlace:Ljava/text/DecimalFormat;

.field oldsample1fulllen:I

.field oldsample2fulllen:I

.field oldsample3fulllen:I

.field oldsample4fulllen:I

.field oldsample5fulllen:I

.field oldsample6fulllen:I

.field oldsample7fulllen:I

.field oldsample8fulllen:I

.field onePlace:Ljava/text/DecimalFormat;

.field orientedalready:Z

.field padtrack:Landroid/media/AudioTrack;

.field padtrack2:Landroid/media/AudioTrack;

.field padtrack3:Landroid/media/AudioTrack;

.field padtrack4:Landroid/media/AudioTrack;

.field padtrack5:Landroid/media/AudioTrack;

.field padtrack6:Landroid/media/AudioTrack;

.field padtrack7:Landroid/media/AudioTrack;

.field padtrack8:Landroid/media/AudioTrack;

.field pastesound1:Lelectrum2/drums/soundObj;

.field pastesound2:Lelectrum2/drums/soundObj;

.field pastesound3:Lelectrum2/drums/soundObj;

.field pastesound4:Lelectrum2/drums/soundObj;

.field pastesound5:Lelectrum2/drums/soundObj;

.field pastesound6:Lelectrum2/drums/soundObj;

.field pastesound7:Lelectrum2/drums/soundObj;

.field pastesound8:Lelectrum2/drums/soundObj;

.field patternHandler:Landroid/os/Handler;

.field patternNeeded:[I

.field patternText:Landroid/widget/TextView;

.field patterncounter:I

.field patterndownbutton:Landroid/widget/ImageView;

.field patterndownbuttonTouch:Landroid/view/View$OnTouchListener;

.field patternmultiplier:I

.field patternupbutton:Landroid/widget/ImageView;

.field patternupbuttonTouch:Landroid/view/View$OnTouchListener;

.field playAllTouch:Landroid/view/View$OnTouchListener;

.field playLiveTouch:Landroid/view/View$OnTouchListener;

.field playTouch:Landroid/view/View$OnTouchListener;

.field playallbutton:Landroid/widget/ImageView;

.field playbutton:Landroid/widget/ImageView;

.field playlivebutton:Landroid/widget/ImageView;

.field powerimage:Landroid/widget/ImageView;

.field progresscount:I

.field projecttitle:Landroid/widget/TextView;

.field resolutionText:Landroid/widget/TextView;

.field selectedpattern:I

.field final soundSlotGestureDetector:Landroid/view/GestureDetector;

.field soundView:Landroid/widget/ImageView;

.field soundid:I

.field soundslot1:Landroid/widget/ImageView;

.field soundslot2:Landroid/widget/ImageView;

.field soundslot3:Landroid/widget/ImageView;

.field soundslot4:Landroid/widget/ImageView;

.field soundslot5:Landroid/widget/ImageView;

.field soundslot6:Landroid/widget/ImageView;

.field soundslot7:Landroid/widget/ImageView;

.field soundslot8:Landroid/widget/ImageView;

.field soundslotTouch:Landroid/view/View$OnTouchListener;

.field starttracking:Z

.field stopTouch:Landroid/view/View$OnTouchListener;

.field stopbutton:Landroid/widget/ImageView;

.field private telephonestate:Landroid/telephony/PhoneStateListener;

.field testMedia:Landroid/media/MediaPlayer;

.field timedisplay:Ljava/lang/Long;

.field totalsamples:I

.field version:Ljava/lang/Integer;

.field volclicklistener:Landroid/view/View$OnClickListener;

.field volknob:Landroid/widget/ImageView;

.field vollistener:Landroid/view/View$OnTouchListener;

.field wasLongPressed:Z

.field wasMuted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x10

    .line 165
    const/4 v0, 0x0

    sput v0, Lelectrum2/drums/electrum;->externalsequencepatternpos:I

    .line 186
    const/high16 v0, 0x42f0

    sput v0, Lelectrum2/drums/electrum;->bpm:F

    .line 188
    const/16 v0, 0x5622

    sput v0, Lelectrum2/drums/electrum;->samplefrequency:I

    .line 194
    sput v3, Lelectrum2/drums/electrum;->slotspermeasure:I

    .line 196
    sput v3, Lelectrum2/drums/electrum;->numberofslots:I

    .line 268
    new-array v0, v6, [B

    fill-array-data v0, :array_0

    sput-object v0, Lelectrum2/drums/electrum;->headerdata:[B

    .line 272
    new-array v0, v7, [B

    const/4 v1, 0x0

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    aput-byte v1, v0, v4

    const/16 v1, 0x56

    aput-byte v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    aput-byte v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v7, v0, v1

    const/16 v1, 0x8

    .line 273
    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v4, v0, v1

    const/16 v1, 0xe

    aput-byte v4, v0, v1

    const/16 v1, 0x22

    aput-byte v1, v0, v3

    const/16 v1, 0x11

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    .line 274
    aput-byte v5, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    .line 272
    sput-object v0, Lelectrum2/drums/electrum;->headerdatamono2:[B

    .line 279
    new-array v0, v7, [B

    const/4 v1, 0x0

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    aput-byte v1, v0, v4

    const/16 v1, 0x56

    aput-byte v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    aput-byte v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v7, v0, v1

    const/16 v1, 0x8

    .line 280
    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v4, v0, v1

    const/16 v1, 0xe

    aput-byte v5, v0, v1

    const/16 v1, 0x22

    aput-byte v1, v0, v3

    const/16 v1, 0x11

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, -0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    aput-byte v4, v0, v1

    const/16 v1, 0x18

    .line 281
    aput-byte v6, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    .line 279
    sput-object v0, Lelectrum2/drums/electrum;->headerdata2:[B

    .line 50
    return-void

    .line 268
    :array_0
    .array-data 0x1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->timedisplay:Ljava/lang/Long;

    .line 154
    iput-boolean v3, p0, Lelectrum2/drums/electrum;->IsPlaying:Z

    .line 156
    iput-boolean v3, p0, Lelectrum2/drums/electrum;->CreatingSound:Z

    .line 158
    iput-boolean v3, p0, Lelectrum2/drums/electrum;->PatternSequenceMode:Z

    .line 163
    iput v4, p0, Lelectrum2/drums/electrum;->currentslotlight:I

    .line 168
    iput-boolean v3, p0, Lelectrum2/drums/electrum;->IsExporting:Z

    .line 173
    iput-boolean v3, p0, Lelectrum2/drums/electrum;->exportMIDIsequence:Z

    .line 178
    iput-boolean v3, p0, Lelectrum2/drums/electrum;->exportringtone:Z

    .line 179
    iput-boolean v3, p0, Lelectrum2/drums/electrum;->canStop:Z

    .line 182
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->onePlace:Ljava/text/DecimalFormat;

    .line 183
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->noPlace:Ljava/text/DecimalFormat;

    .line 198
    iput v3, p0, Lelectrum2/drums/electrum;->currentpattern:I

    .line 199
    iput v4, p0, Lelectrum2/drums/electrum;->currentdrumkit:I

    .line 200
    iput v3, p0, Lelectrum2/drums/electrum;->selectedpattern:I

    .line 202
    iput v3, p0, Lelectrum2/drums/electrum;->currentslot:I

    .line 205
    iput v3, p0, Lelectrum2/drums/electrum;->progresscount:I

    .line 212
    iput-boolean v3, p0, Lelectrum2/drums/electrum;->audiostarted:Z

    .line 219
    iput v3, p0, Lelectrum2/drums/electrum;->Position:I

    .line 220
    iput v3, p0, Lelectrum2/drums/electrum;->OldPosition:I

    .line 222
    iput-boolean v3, p0, Lelectrum2/drums/electrum;->starttracking:Z

    .line 226
    iput v4, p0, Lelectrum2/drums/electrum;->soundid:I

    .line 228
    iput v3, p0, Lelectrum2/drums/electrum;->oldsample1fulllen:I

    .line 229
    iput v3, p0, Lelectrum2/drums/electrum;->oldsample2fulllen:I

    .line 230
    iput v3, p0, Lelectrum2/drums/electrum;->oldsample3fulllen:I

    .line 231
    iput v3, p0, Lelectrum2/drums/electrum;->oldsample4fulllen:I

    .line 232
    iput v3, p0, Lelectrum2/drums/electrum;->oldsample5fulllen:I

    .line 233
    iput v3, p0, Lelectrum2/drums/electrum;->oldsample6fulllen:I

    .line 234
    iput v3, p0, Lelectrum2/drums/electrum;->oldsample7fulllen:I

    .line 235
    iput v3, p0, Lelectrum2/drums/electrum;->oldsample8fulllen:I

    .line 297
    new-instance v0, Lelectrum2/drums/electrum$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$1;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->telephonestate:Landroid/telephony/PhoneStateListener;

    .line 1408
    new-instance v0, Lelectrum2/drums/electrum$2;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$2;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->volclicklistener:Landroid/view/View$OnClickListener;

    .line 1425
    new-instance v0, Lelectrum2/drums/electrum$3;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$3;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->vollistener:Landroid/view/View$OnTouchListener;

    .line 1462
    new-instance v0, Landroid/view/GestureDetector;

    .line 1463
    new-instance v1, Lelectrum2/drums/electrum$4;

    invoke-direct {v1, p0}, Lelectrum2/drums/electrum$4;-><init>(Lelectrum2/drums/electrum;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->soundSlotGestureDetector:Landroid/view/GestureDetector;

    .line 1513
    new-instance v0, Landroid/view/GestureDetector;

    .line 1514
    new-instance v1, Lelectrum2/drums/electrum$5;

    invoke-direct {v1, p0}, Lelectrum2/drums/electrum$5;-><init>(Lelectrum2/drums/electrum;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->drumSlotGestureDetector:Landroid/view/GestureDetector;

    .line 1555
    iput-boolean v3, p0, Lelectrum2/drums/electrum;->orientedalready:Z

    .line 1568
    new-instance v0, Lelectrum2/drums/electrum$6;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$6;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->UpdatePattern:Ljava/lang/Runnable;

    .line 1589
    new-instance v0, Lelectrum2/drums/electrum$7;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$7;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->GlobalErrorHandler:Ljava/lang/Runnable;

    .line 1611
    new-instance v0, Lelectrum2/drums/electrum$8;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$8;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->DoneExporting:Ljava/lang/Runnable;

    .line 1812
    new-instance v0, Lelectrum2/drums/electrum$9;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$9;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->ShowHelpFirstTime:Ljava/lang/Runnable;

    .line 2075
    new-instance v0, Lelectrum2/drums/electrum$10;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$10;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->patterndownbuttonTouch:Landroid/view/View$OnTouchListener;

    .line 2110
    new-instance v0, Lelectrum2/drums/electrum$11;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$11;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->patternupbuttonTouch:Landroid/view/View$OnTouchListener;

    .line 2148
    new-instance v0, Lelectrum2/drums/electrum$12;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$12;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->bpmlayoutclick:Landroid/view/View$OnClickListener;

    .line 2160
    new-instance v0, Lelectrum2/drums/electrum$13;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$13;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->soundslotTouch:Landroid/view/View$OnTouchListener;

    .line 2345
    new-instance v0, Lelectrum2/drums/electrum$14;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$14;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    .line 2432
    new-instance v0, Lelectrum2/drums/electrum$15;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$15;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->playAllTouch:Landroid/view/View$OnTouchListener;

    .line 2488
    new-instance v0, Lelectrum2/drums/electrum$16;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$16;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->playLiveTouch:Landroid/view/View$OnTouchListener;

    .line 2527
    new-instance v0, Lelectrum2/drums/electrum$17;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$17;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->playTouch:Landroid/view/View$OnTouchListener;

    .line 2578
    new-instance v0, Lelectrum2/drums/electrum$18;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$18;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->stopTouch:Landroid/view/View$OnTouchListener;

    .line 3891
    new-instance v0, Lelectrum2/drums/electrum$19;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$19;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->SaveTempPattern:Ljava/lang/Runnable;

    .line 6295
    new-instance v0, Lelectrum2/drums/electrum$20;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$20;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->UpdateProgress:Ljava/lang/Runnable;

    .line 6316
    new-instance v0, Lelectrum2/drums/electrum$21;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$21;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->myGUIUpdateHandler:Landroid/os/Handler;

    .line 6433
    new-instance v0, Lelectrum2/drums/electrum$22;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$22;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->UpdateSlotLights:Ljava/lang/Runnable;

    .line 6544
    new-instance v0, Lelectrum2/drums/electrum$23;

    invoke-direct {v0, p0}, Lelectrum2/drums/electrum$23;-><init>(Lelectrum2/drums/electrum;)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->DrumLightReset:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method private CalcNumberOfPatternsNeeded()I
    .locals 4

    .prologue
    .line 6355
    const/4 v2, 0x0

    .line 6356
    .local v2, totalpatterncount:I
    const/4 v1, 0x0

    .line 6358
    .local v1, temppatterncount:I
    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    sget v3, Lelectrum2/drums/soundObj;->NUM_PATTERNS:I

    if-lt v0, v3, :cond_0

    .line 6376
    return v2

    .line 6360
    :cond_0
    sget-object v3, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    invoke-virtual {v3, v0}, Lelectrum2/drums/soundObj;->MustPlayInPattern(I)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    invoke-virtual {v3, v0}, Lelectrum2/drums/soundObj;->MustPlayInPattern(I)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    invoke-virtual {v3, v0}, Lelectrum2/drums/soundObj;->MustPlayInPattern(I)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    invoke-virtual {v3, v0}, Lelectrum2/drums/soundObj;->MustPlayInPattern(I)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    invoke-virtual {v3, v0}, Lelectrum2/drums/soundObj;->MustPlayInPattern(I)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    invoke-virtual {v3, v0}, Lelectrum2/drums/soundObj;->MustPlayInPattern(I)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    invoke-virtual {v3, v0}, Lelectrum2/drums/soundObj;->MustPlayInPattern(I)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    invoke-virtual {v3, v0}, Lelectrum2/drums/soundObj;->MustPlayInPattern(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6362
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 6364
    iget-object v3, p0, Lelectrum2/drums/electrum;->patternNeeded:[I

    aput v0, v3, v1

    .line 6366
    add-int/lit8 v1, v1, 0x1

    .line 6358
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private CalcNumberOfPatternsNeededSinglePattern()I
    .locals 4

    .prologue
    .line 6386
    const/4 v2, 0x0

    .line 6387
    .local v2, totalpatterncount:I
    const/4 v1, 0x0

    .line 6389
    .local v1, temppatterncount:I
    iget v0, p0, Lelectrum2/drums/electrum;->currentpattern:I

    .line 6392
    .local v0, count:I
    sget-object v3, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    invoke-virtual {v3, v0}, Lelectrum2/drums/soundObj;->MustPlayInPattern(I)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    invoke-virtual {v3, v0}, Lelectrum2/drums/soundObj;->MustPlayInPattern(I)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    invoke-virtual {v3, v0}, Lelectrum2/drums/soundObj;->MustPlayInPattern(I)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    invoke-virtual {v3, v0}, Lelectrum2/drums/soundObj;->MustPlayInPattern(I)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    invoke-virtual {v3, v0}, Lelectrum2/drums/soundObj;->MustPlayInPattern(I)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    invoke-virtual {v3, v0}, Lelectrum2/drums/soundObj;->MustPlayInPattern(I)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    invoke-virtual {v3, v0}, Lelectrum2/drums/soundObj;->MustPlayInPattern(I)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    invoke-virtual {v3, v0}, Lelectrum2/drums/soundObj;->MustPlayInPattern(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6394
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 6397
    add-int/lit8 v1, v1, 0x1

    .line 6403
    :cond_1
    return v2
.end method

.method private ClearSounds(Lelectrum2/drums/soundObj;)V
    .locals 3
    .parameter "soundin"

    .prologue
    const/4 v2, 0x0

    .line 5856
    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 5862
    return-void

    .line 5858
    :cond_0
    iget-object v1, p1, Lelectrum2/drums/soundObj;->playslot:[[Z

    aget-object v1, v1, v2

    aput-boolean v2, v1, v0

    .line 5859
    iget-object v1, p1, Lelectrum2/drums/soundObj;->accentslot:[[Z

    aget-object v1, v1, v2

    aput-boolean v2, v1, v0

    .line 5856
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private CopyPatterns()V
    .locals 2

    .prologue
    .line 5867
    iget-object v0, p0, Lelectrum2/drums/electrum;->pastesound1:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0}, Lelectrum2/drums/electrum;->ClearSounds(Lelectrum2/drums/soundObj;)V

    .line 5868
    iget-object v0, p0, Lelectrum2/drums/electrum;->pastesound2:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0}, Lelectrum2/drums/electrum;->ClearSounds(Lelectrum2/drums/soundObj;)V

    .line 5869
    iget-object v0, p0, Lelectrum2/drums/electrum;->pastesound3:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0}, Lelectrum2/drums/electrum;->ClearSounds(Lelectrum2/drums/soundObj;)V

    .line 5870
    iget-object v0, p0, Lelectrum2/drums/electrum;->pastesound4:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0}, Lelectrum2/drums/electrum;->ClearSounds(Lelectrum2/drums/soundObj;)V

    .line 5871
    iget-object v0, p0, Lelectrum2/drums/electrum;->pastesound5:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0}, Lelectrum2/drums/electrum;->ClearSounds(Lelectrum2/drums/soundObj;)V

    .line 5872
    iget-object v0, p0, Lelectrum2/drums/electrum;->pastesound6:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0}, Lelectrum2/drums/electrum;->ClearSounds(Lelectrum2/drums/soundObj;)V

    .line 5873
    iget-object v0, p0, Lelectrum2/drums/electrum;->pastesound7:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0}, Lelectrum2/drums/electrum;->ClearSounds(Lelectrum2/drums/soundObj;)V

    .line 5874
    iget-object v0, p0, Lelectrum2/drums/electrum;->pastesound8:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0}, Lelectrum2/drums/electrum;->ClearSounds(Lelectrum2/drums/soundObj;)V

    .line 5876
    sget-object v0, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    iget-object v1, p0, Lelectrum2/drums/electrum;->pastesound1:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0, v1}, Lelectrum2/drums/electrum;->CopySound(Lelectrum2/drums/soundObj;Lelectrum2/drums/soundObj;)V

    .line 5877
    sget-object v0, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    iget-object v1, p0, Lelectrum2/drums/electrum;->pastesound2:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0, v1}, Lelectrum2/drums/electrum;->CopySound(Lelectrum2/drums/soundObj;Lelectrum2/drums/soundObj;)V

    .line 5878
    sget-object v0, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    iget-object v1, p0, Lelectrum2/drums/electrum;->pastesound3:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0, v1}, Lelectrum2/drums/electrum;->CopySound(Lelectrum2/drums/soundObj;Lelectrum2/drums/soundObj;)V

    .line 5879
    sget-object v0, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    iget-object v1, p0, Lelectrum2/drums/electrum;->pastesound4:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0, v1}, Lelectrum2/drums/electrum;->CopySound(Lelectrum2/drums/soundObj;Lelectrum2/drums/soundObj;)V

    .line 5880
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    iget-object v1, p0, Lelectrum2/drums/electrum;->pastesound5:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0, v1}, Lelectrum2/drums/electrum;->CopySound(Lelectrum2/drums/soundObj;Lelectrum2/drums/soundObj;)V

    .line 5881
    sget-object v0, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    iget-object v1, p0, Lelectrum2/drums/electrum;->pastesound6:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0, v1}, Lelectrum2/drums/electrum;->CopySound(Lelectrum2/drums/soundObj;Lelectrum2/drums/soundObj;)V

    .line 5882
    sget-object v0, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    iget-object v1, p0, Lelectrum2/drums/electrum;->pastesound7:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0, v1}, Lelectrum2/drums/electrum;->CopySound(Lelectrum2/drums/soundObj;Lelectrum2/drums/soundObj;)V

    .line 5883
    sget-object v0, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    iget-object v1, p0, Lelectrum2/drums/electrum;->pastesound8:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0, v1}, Lelectrum2/drums/electrum;->CopySound(Lelectrum2/drums/soundObj;Lelectrum2/drums/soundObj;)V

    .line 5886
    return-void
.end method

.method private CopySound(Lelectrum2/drums/soundObj;Lelectrum2/drums/soundObj;)V
    .locals 5
    .parameter "soundsrc"
    .parameter "sounddest"

    .prologue
    const/4 v4, 0x0

    .line 5832
    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 5840
    return-void

    .line 5834
    :cond_0
    iget-object v1, p2, Lelectrum2/drums/soundObj;->playslot:[[Z

    aget-object v1, v1, v4

    iget-object v2, p1, Lelectrum2/drums/soundObj;->playslot:[[Z

    iget v3, p0, Lelectrum2/drums/electrum;->currentpattern:I

    aget-object v2, v2, v3

    aget-boolean v2, v2, v0

    aput-boolean v2, v1, v0

    .line 5835
    iget-object v1, p2, Lelectrum2/drums/soundObj;->accentslot:[[Z

    aget-object v1, v1, v4

    iget-object v2, p1, Lelectrum2/drums/soundObj;->accentslot:[[Z

    iget v3, p0, Lelectrum2/drums/electrum;->currentpattern:I

    aget-object v2, v2, v3

    aget-boolean v2, v2, v0

    aput-boolean v2, v1, v0

    .line 5832
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private CopySound2(Lelectrum2/drums/soundObj;Lelectrum2/drums/soundObj;)V
    .locals 4
    .parameter "soundsrc"
    .parameter "sounddest"

    .prologue
    const/4 v3, 0x0

    .line 5844
    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 5851
    return-void

    .line 5846
    :cond_0
    iget-object v1, p2, Lelectrum2/drums/soundObj;->playslot:[[Z

    iget v2, p0, Lelectrum2/drums/electrum;->currentpattern:I

    aget-object v1, v1, v2

    iget-object v2, p1, Lelectrum2/drums/soundObj;->playslot:[[Z

    aget-object v2, v2, v3

    aget-boolean v2, v2, v0

    aput-boolean v2, v1, v0

    .line 5847
    iget-object v1, p2, Lelectrum2/drums/soundObj;->accentslot:[[Z

    iget v2, p0, Lelectrum2/drums/electrum;->currentpattern:I

    aget-object v1, v1, v2

    iget-object v2, p1, Lelectrum2/drums/soundObj;->accentslot:[[Z

    aget-object v2, v2, v3

    aget-boolean v2, v2, v0

    aput-boolean v2, v1, v0

    .line 5844
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private DisplaySoundSlots()V
    .locals 5

    .prologue
    .line 2691
    const/4 v1, 0x0

    .local v1, count:I
    :goto_0
    const/16 v4, 0xf

    if-le v1, v4, :cond_0

    .line 2761
    return-void

    .line 2694
    :cond_0
    sget-object v4, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v4, v1}, Lelectrum2/drums/soundObj;->getPlaySlot(I)Z

    move-result v3

    .line 2695
    .local v3, testval:Z
    sget-object v4, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v4, v1}, Lelectrum2/drums/soundObj;->getAccentSlot(I)Z

    move-result v0

    .line 2697
    .local v0, accentval:Z
    const/4 v2, 0x1

    .line 2699
    .local v2, disabled:Z
    sget v4, Lelectrum2/drums/electrum;->numberofslots:I

    if-ge v1, v4, :cond_1

    const/4 v2, 0x0

    .line 2701
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 2691
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2704
    :pswitch_0
    iget-object v4, p0, Lelectrum2/drums/electrum;->drumbutton1:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0, v4, v2}, Lelectrum2/drums/electrum;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 2707
    :pswitch_1
    iget-object v4, p0, Lelectrum2/drums/electrum;->drumbutton2:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0, v4, v2}, Lelectrum2/drums/electrum;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 2710
    :pswitch_2
    iget-object v4, p0, Lelectrum2/drums/electrum;->drumbutton3:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0, v4, v2}, Lelectrum2/drums/electrum;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 2713
    :pswitch_3
    iget-object v4, p0, Lelectrum2/drums/electrum;->drumbutton4:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0, v4, v2}, Lelectrum2/drums/electrum;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 2716
    :pswitch_4
    iget-object v4, p0, Lelectrum2/drums/electrum;->drumbutton5:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0, v4, v2}, Lelectrum2/drums/electrum;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 2719
    :pswitch_5
    iget-object v4, p0, Lelectrum2/drums/electrum;->drumbutton6:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0, v4, v2}, Lelectrum2/drums/electrum;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 2722
    :pswitch_6
    iget-object v4, p0, Lelectrum2/drums/electrum;->drumbutton7:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0, v4, v2}, Lelectrum2/drums/electrum;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 2725
    :pswitch_7
    iget-object v4, p0, Lelectrum2/drums/electrum;->drumbutton8:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0, v4, v2}, Lelectrum2/drums/electrum;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 2728
    :pswitch_8
    iget-object v4, p0, Lelectrum2/drums/electrum;->drumbutton9:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0, v4, v2}, Lelectrum2/drums/electrum;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 2731
    :pswitch_9
    iget-object v4, p0, Lelectrum2/drums/electrum;->drumbutton10:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0, v4, v2}, Lelectrum2/drums/electrum;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 2734
    :pswitch_a
    iget-object v4, p0, Lelectrum2/drums/electrum;->drumbutton11:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0, v4, v2}, Lelectrum2/drums/electrum;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 2737
    :pswitch_b
    iget-object v4, p0, Lelectrum2/drums/electrum;->drumbutton12:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0, v4, v2}, Lelectrum2/drums/electrum;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 2740
    :pswitch_c
    iget-object v4, p0, Lelectrum2/drums/electrum;->drumbutton13:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0, v4, v2}, Lelectrum2/drums/electrum;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 2743
    :pswitch_d
    iget-object v4, p0, Lelectrum2/drums/electrum;->drumbutton14:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0, v4, v2}, Lelectrum2/drums/electrum;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 2746
    :pswitch_e
    iget-object v4, p0, Lelectrum2/drums/electrum;->drumbutton15:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0, v4, v2}, Lelectrum2/drums/electrum;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 2749
    :pswitch_f
    iget-object v4, p0, Lelectrum2/drums/electrum;->drumbutton16:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0, v4, v2}, Lelectrum2/drums/electrum;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 2701
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private FixSoundRangePoints(Lelectrum2/drums/soundObj;I)V
    .locals 8
    .parameter "soundin"
    .parameter "oldfullrange"

    .prologue
    .line 2866
    iget v4, p1, Lelectrum2/drums/soundObj;->samplelen:I

    int-to-double v4, v4

    int-to-double v6, p2

    div-double v0, v4, v6

    .line 2867
    .local v0, endpointdiff:D
    iget v4, p1, Lelectrum2/drums/soundObj;->startpos:I

    int-to-double v4, v4

    int-to-double v6, p2

    div-double v2, v4, v6

    .line 2870
    .local v2, startposdiff:D
    iget v4, p1, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-double v4, v4

    mul-double/2addr v4, v0

    double-to-int v4, v4

    iput v4, p1, Lelectrum2/drums/soundObj;->samplelen:I

    .line 2871
    iget v4, p1, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p1, Lelectrum2/drums/soundObj;->startpos:I

    .line 2873
    iget v4, p1, Lelectrum2/drums/soundObj;->samplelen:I

    iget v5, p1, Lelectrum2/drums/soundObj;->samplefulllen:I

    if-le v4, v5, :cond_0

    iget v4, p1, Lelectrum2/drums/soundObj;->samplefulllen:I

    iput v4, p1, Lelectrum2/drums/soundObj;->samplelen:I

    .line 2874
    :cond_0
    iget v4, p1, Lelectrum2/drums/soundObj;->startpos:I

    if-gez v4, :cond_1

    const/4 v4, 0x0

    iput v4, p1, Lelectrum2/drums/soundObj;->startpos:I

    .line 2878
    :cond_1
    return-void
.end method

.method private LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z
    .locals 6
    .parameter "soundin"
    .parameter "soundid"
    .parameter "drumname"

    .prologue
    .line 1655
    const/4 v2, 0x1

    .line 1659
    .local v2, loaded:Z
    :try_start_0
    invoke-virtual {p0}, Lelectrum2/drums/electrum;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 1661
    .local v1, is:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 1663
    .local v4, size:I
    const/4 v5, 0x0

    invoke-virtual {p1, v1, v4, v5}, Lelectrum2/drums/soundObj;->Load(Ljava/io/InputStream;IZ)Z

    move-result v2

    .line 1665
    iput-object p3, p1, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    .line 1666
    const-string v5, "Default"

    iput-object v5, p1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 1678
    invoke-direct {p0}, Lelectrum2/drums/electrum;->UpdateDrumNames()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 1686
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #loaded:Z
    .end local v4           #size:I
    .local v3, loaded:I
    :goto_0
    return v3

    .line 1683
    .end local v3           #loaded:I
    .restart local v2       #loaded:Z
    :catch_0
    move-exception v0

    .line 1685
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    move v3, v2

    .line 1686
    .restart local v3       #loaded:I
    goto :goto_0
.end method

.method private LoadDrumKit()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1695
    sget-object v0, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->readnewpitch:Z

    .line 1696
    sget-object v0, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->readnewpitch:Z

    .line 1697
    sget-object v0, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->readnewpitch:Z

    .line 1698
    sget-object v0, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->readnewpitch:Z

    .line 1699
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->readnewpitch:Z

    .line 1700
    sget-object v0, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->readnewpitch:Z

    .line 1701
    sget-object v0, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->readnewpitch:Z

    .line 1702
    sget-object v0, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->readnewpitch:Z

    .line 1705
    sget-object v0, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->pitchfirsttime:Z

    .line 1706
    sget-object v0, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->pitchfirsttime:Z

    .line 1707
    sget-object v0, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->pitchfirsttime:Z

    .line 1708
    sget-object v0, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->pitchfirsttime:Z

    .line 1709
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->pitchfirsttime:Z

    .line 1710
    sget-object v0, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->pitchfirsttime:Z

    .line 1711
    sget-object v0, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->pitchfirsttime:Z

    .line 1712
    sget-object v0, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->pitchfirsttime:Z

    .line 1715
    iget v0, p0, Lelectrum2/drums/electrum;->currentdrumkit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1719
    sget-object v0, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    const v1, 0x7f040017

    new-instance v2, Ljava/lang/String;

    const-string v3, "808 Kick"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1720
    sget-object v0, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    const v1, 0x7f040025

    new-instance v2, Ljava/lang/String;

    const-string v3, "808 Rim"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1721
    sget-object v0, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    const v1, 0x7f040009

    new-instance v2, Ljava/lang/String;

    const-string v3, "808 CH"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1722
    sget-object v0, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    const v1, 0x7f04001c

    new-instance v2, Ljava/lang/String;

    const-string v3, "808 OH"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1723
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    const v1, 0x7f04002e

    new-instance v2, Ljava/lang/String;

    const-string v3, "808 Snr"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1724
    sget-object v0, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    const v1, 0x7f04000b

    new-instance v2, Ljava/lang/String;

    const-string v3, "808 Clap"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1726
    sget-object v0, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    const v1, 0x7f04000e

    new-instance v2, Ljava/lang/String;

    const-string v3, "808 Tom"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1727
    sget-object v0, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    const v1, 0x7f04000d

    new-instance v2, Ljava/lang/String;

    const-string v3, "808 Cow"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1733
    :cond_0
    iget v0, p0, Lelectrum2/drums/electrum;->currentdrumkit:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1736
    sget-object v0, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    const v1, 0x7f040026

    new-instance v2, Ljava/lang/String;

    const-string v3, "Rk Kick"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1737
    sget-object v0, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    const v1, 0x7f04002b

    new-instance v2, Ljava/lang/String;

    const-string v3, "Rk Ride"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1738
    sget-object v0, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    const v1, 0x7f04002a

    new-instance v2, Ljava/lang/String;

    const-string v3, "Rk Hat"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1739
    sget-object v0, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    const v1, 0x7f04002c

    new-instance v2, Ljava/lang/String;

    const-string v3, "Rk Snare"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1740
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    const v1, 0x7f04002d

    new-instance v2, Ljava/lang/String;

    const-string v3, "Snare 2"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1741
    sget-object v0, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    const v1, 0x7f040029

    new-instance v2, Ljava/lang/String;

    const-string v3, "Drumstick"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1743
    sget-object v0, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    const v1, 0x7f040027

    new-instance v2, Ljava/lang/String;

    const-string v3, "Cowbell"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1744
    sget-object v0, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    const v1, 0x7f040028

    new-instance v2, Ljava/lang/String;

    const-string v3, "Cymbal"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1748
    :cond_1
    iget v0, p0, Lelectrum2/drums/electrum;->currentdrumkit:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1750
    sget-object v0, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    const v1, 0x7f040018

    new-instance v2, Ljava/lang/String;

    const-string v3, "909 Kick"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1751
    sget-object v0, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    const v1, 0x7f040023

    new-instance v2, Ljava/lang/String;

    const-string v3, "909 Ride"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1752
    sget-object v0, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    const v1, 0x7f04000a

    new-instance v2, Ljava/lang/String;

    const-string v3, "909 CH"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1753
    sget-object v0, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    const v1, 0x7f04001d

    new-instance v2, Ljava/lang/String;

    const-string v3, "909 OH"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1754
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    const v1, 0x7f04002f

    new-instance v2, Ljava/lang/String;

    const-string v3, "Snare"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1755
    sget-object v0, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    const v1, 0x7f04000c

    new-instance v2, Ljava/lang/String;

    const-string v3, "Clap"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1757
    sget-object v0, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    const v1, 0x7f040030

    new-instance v2, Ljava/lang/String;

    const-string v3, "909 Tom"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1758
    sget-object v0, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    const v1, 0x7f040024

    new-instance v2, Ljava/lang/String;

    const-string v3, "909 Rim"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1762
    :cond_2
    iget v0, p0, Lelectrum2/drums/electrum;->currentdrumkit:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1764
    sget-object v0, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    const v1, 0x7f040019

    new-instance v2, Ljava/lang/String;

    const-string v3, "Bass"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1765
    sget-object v0, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    const v1, 0x7f04001b

    new-instance v2, Ljava/lang/String;

    const-string v3, "Cymbal"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1766
    sget-object v0, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    const v1, 0x7f040020

    new-instance v2, Ljava/lang/String;

    const-string v3, "Spring"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1767
    sget-object v0, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    const v1, 0x7f040022

    new-instance v2, Ljava/lang/String;

    const-string v3, "Block"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1768
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    const v1, 0x7f04001f

    new-instance v2, Ljava/lang/String;

    const-string v3, "Snare"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1769
    sget-object v0, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    const v1, 0x7f040021

    new-instance v2, Ljava/lang/String;

    const-string v3, "Tom"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1771
    sget-object v0, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    const v1, 0x7f04001e

    new-instance v2, Ljava/lang/String;

    const-string v3, "Hat"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1772
    sget-object v0, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    const v1, 0x7f04001a

    new-instance v2, Ljava/lang/String;

    const-string v3, "Clave"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1777
    :cond_3
    iget v0, p0, Lelectrum2/drums/electrum;->currentdrumkit:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 1779
    sget-object v0, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    const v1, 0x7f040013

    new-instance v2, Ljava/lang/String;

    const-string v3, "Kick"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1780
    sget-object v0, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    const v1, 0x7f04000f

    new-instance v2, Ljava/lang/String;

    const-string v3, "Shaker"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1781
    sget-object v0, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    const v1, 0x7f040011

    new-instance v2, Ljava/lang/String;

    const-string v3, "HiHat"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1782
    sget-object v0, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    const v1, 0x7f040015

    new-instance v2, Ljava/lang/String;

    const-string v3, "Snare1"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1783
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    const v1, 0x7f040016

    new-instance v2, Ljava/lang/String;

    const-string v3, "Snare2"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1784
    sget-object v0, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    const v1, 0x7f040010

    new-instance v2, Ljava/lang/String;

    const-string v3, "Clap"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1786
    sget-object v0, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    const v1, 0x7f040014

    new-instance v2, Ljava/lang/String;

    const-string v3, "R Kick"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1787
    sget-object v0, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    const v1, 0x7f040012

    new-instance v2, Ljava/lang/String;

    const-string v3, "Horn"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1792
    :cond_4
    iget v0, p0, Lelectrum2/drums/electrum;->currentdrumkit:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 1794
    sget-object v0, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    const v1, 0x7f040005

    new-instance v2, Ljava/lang/String;

    const-string v3, "Kick1"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1795
    sget-object v0, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    const v1, 0x7f040006

    new-instance v2, Ljava/lang/String;

    const-string v3, "Kick2"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1796
    sget-object v0, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    const v1, 0x7f040007

    new-instance v2, Ljava/lang/String;

    const-string v3, "Snap"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1797
    sget-object v0, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    const v1, 0x7f040003

    new-instance v2, Ljava/lang/String;

    const-string v3, "Hat1"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1798
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    const v1, 0x7f040004

    new-instance v2, Ljava/lang/String;

    const-string v3, "Hat2"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1799
    sget-object v0, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    const/high16 v1, 0x7f04

    new-instance v2, Ljava/lang/String;

    const-string v3, "Aha"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1801
    sget-object v0, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    const v1, 0x7f040008

    new-instance v2, Ljava/lang/String;

    const-string v3, "Snare"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1802
    sget-object v0, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    const v1, 0x7f040002

    new-instance v2, Ljava/lang/String;

    const-string v3, "Crash"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lelectrum2/drums/electrum;->LoadDrum(Lelectrum2/drums/soundObj;ILjava/lang/String;)Z

    .line 1810
    :cond_5
    return-void
.end method

.method private LoadDrumkit(Ljava/lang/String;Z)V
    .locals 10
    .parameter "result"
    .parameter "IsTemp"

    .prologue
    .line 3785
    if-eqz p2, :cond_0

    .line 3787
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/electrum/tempfile.pat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3791
    :cond_0
    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Loaded "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3800
    .local v5, toastmsg:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3802
    .local v2, loadFile1:Ljava/io/File;
    if-eqz p2, :cond_3

    .line 3805
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3881
    .end local v2           #loadFile1:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 3806
    .restart local v2       #loadFile1:Ljava/io/File;
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 3811
    :cond_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3814
    .local v3, loadfile:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lelectrum2/drums/electrum;->versioncheck:Ljava/lang/String;

    .line 3816
    sget-object v6, Lelectrum2/drums/electrum;->versioncheck:Ljava/lang/String;

    const-string v7, "V"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lelectrum2/drums/electrum;->versioncheck:Ljava/lang/String;

    .line 3818
    new-instance v6, Ljava/lang/Integer;

    sget-object v7, Lelectrum2/drums/electrum;->versioncheck:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    .line 3820
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 3821
    .local v1, drumkitnumstr:Ljava/lang/String;
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 3827
    .local v0, drumkitnum:Ljava/lang/Integer;
    sget-object v7, Lelectrum2/drums/globalSounds;->lockstring:Ljava/lang/String;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3829
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lelectrum2/drums/electrum;->currentdrumkit:I

    .line 3831
    invoke-direct {p0}, Lelectrum2/drums/electrum;->LoadDrumKit()V

    .line 3837
    sget-object v6, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v6, v3}, Lelectrum2/drums/electrum;->LoadDrumkitdata(Lelectrum2/drums/soundObj;Ljava/io/BufferedReader;)V

    .line 3838
    sget-object v6, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v6, v3}, Lelectrum2/drums/electrum;->LoadDrumkitdata(Lelectrum2/drums/soundObj;Ljava/io/BufferedReader;)V

    .line 3839
    sget-object v6, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v6, v3}, Lelectrum2/drums/electrum;->LoadDrumkitdata(Lelectrum2/drums/soundObj;Ljava/io/BufferedReader;)V

    .line 3840
    sget-object v6, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v6, v3}, Lelectrum2/drums/electrum;->LoadDrumkitdata(Lelectrum2/drums/soundObj;Ljava/io/BufferedReader;)V

    .line 3841
    sget-object v6, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v6, v3}, Lelectrum2/drums/electrum;->LoadDrumkitdata(Lelectrum2/drums/soundObj;Ljava/io/BufferedReader;)V

    .line 3842
    sget-object v6, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v6, v3}, Lelectrum2/drums/electrum;->LoadDrumkitdata(Lelectrum2/drums/soundObj;Ljava/io/BufferedReader;)V

    .line 3845
    iget-object v6, p0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v8, 0xb

    if-lt v6, v8, :cond_4

    .line 3847
    sget-object v6, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v6, v3}, Lelectrum2/drums/electrum;->LoadDrumkitdata(Lelectrum2/drums/soundObj;Ljava/io/BufferedReader;)V

    .line 3848
    sget-object v6, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v6, v3}, Lelectrum2/drums/electrum;->LoadDrumkitdata(Lelectrum2/drums/soundObj;Ljava/io/BufferedReader;)V

    .line 3827
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3856
    :try_start_2
    sget-object v6, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    sput-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    .line 3859
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lelectrum2/drums/electrum;->DisplaySelectedSound(I)V

    .line 3860
    invoke-direct {p0}, Lelectrum2/drums/electrum;->DisplaySoundSlots()V

    .line 3863
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 3865
    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 3867
    .local v4, temptoast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 3875
    .end local v0           #drumkitnum:Ljava/lang/Integer;
    .end local v1           #drumkitnumstr:Ljava/lang/String;
    .end local v2           #loadFile1:Ljava/io/File;
    .end local v3           #loadfile:Ljava/io/BufferedReader;
    .end local v4           #temptoast:Landroid/widget/Toast;
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 3827
    .restart local v0       #drumkitnum:Ljava/lang/Integer;
    .restart local v1       #drumkitnumstr:Ljava/lang/String;
    .restart local v2       #loadFile1:Ljava/io/File;
    .restart local v3       #loadfile:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private LoadDrumkitdata(Lelectrum2/drums/soundObj;Ljava/io/BufferedReader;)V
    .locals 40
    .parameter "soundin"
    .parameter "reader"

    .prologue
    .line 5274
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 5276
    .local v15, junk:Ljava/lang/String;
    new-instance v19, Ljava/lang/Integer;

    const/16 v37, 0xc

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 5277
    .local v19, newint:Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 5278
    .local v4, ReadNewPitch:Z
    new-instance v16, Ljava/lang/Integer;

    const/16 v37, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 5282
    .local v16, loopfit:Ljava/lang/Integer;
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .line 5283
    .local v18, muteval:Ljava/lang/String;
    const-string v37, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v37

    if-nez v37, :cond_e

    .line 5285
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->mute:Z

    .line 5293
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v22

    .line 5294
    .local v22, pitchval:Ljava/lang/String;
    new-instance v19, Ljava/lang/Integer;

    .end local v19           #newint:Ljava/lang/Integer;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 5296
    .restart local v19       #newint:Ljava/lang/Integer;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v37

    const/16 v38, 0xc

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_0

    .line 5298
    const/4 v4, 0x1

    .line 5306
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .line 5307
    .local v17, loopfitstr:Ljava/lang/String;
    new-instance v16, Ljava/lang/Integer;

    .end local v16           #loopfit:Ljava/lang/Integer;
    invoke-direct/range {v16 .. v17}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 5312
    .restart local v16       #loopfit:Ljava/lang/Integer;
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    .line 5315
    .local v24, soundHeaderName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v23

    .line 5317
    .local v23, soundFilename:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    .line 5320
    const/16 v36, 0x1

    .line 5323
    .local v36, usedefaultsound:Z
    const-string v37, "Default"

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v37

    if-eqz v37, :cond_2

    .line 5345
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5348
    .local v35, testFile:Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_10

    .line 5350
    if-eqz v4, :cond_1

    .line 5352
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->readnewpitch:Z

    .line 5353
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->pitchfirsttime:Z

    .line 5357
    :cond_1
    const/16 v37, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lelectrum2/drums/soundObj;->LoadWaveFile(Ljava/lang/String;Z)Z

    move-result v37

    if-eqz v37, :cond_f

    .line 5359
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 5374
    :goto_1
    const/16 v36, 0x0

    .line 5390
    .end local v35           #testFile:Ljava/io/File;
    :cond_2
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v31

    .line 5391
    .local v31, tempvolume:Ljava/lang/String;
    new-instance v27, Ljava/lang/Double;

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 5392
    .local v27, tempdouble:Ljava/lang/Double;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v37

    move-object/from16 v0, p1

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Lelectrum2/drums/soundObj;->SetSampleVolume(D)V

    .line 5395
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v26

    .line 5398
    .local v26, tempcutoff:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v29

    .line 5399
    .local v29, tempstartpos:Ljava/lang/String;
    new-instance v28, Ljava/lang/Integer;

    invoke-direct/range {v28 .. v29}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 5400
    .local v28, tempstart:Ljava/lang/Integer;
    new-instance v25, Ljava/lang/Integer;

    invoke-direct/range {v25 .. v26}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 5402
    .local v25, tempcut:Ljava/lang/Integer;
    if-nez v36, :cond_3

    .line 5404
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, p1

    iput v0, v1, Lelectrum2/drums/soundObj;->startpos:I

    .line 5405
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, p1

    iput v0, v1, Lelectrum2/drums/soundObj;->samplelen:I

    .line 5419
    :cond_3
    if-eqz v4, :cond_4

    .line 5421
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->pitchfirsttime:Z

    .line 5423
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->SetPitch(I)Z

    move-result v37

    if-nez v37, :cond_4

    .line 5425
    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "Error setting pitch for "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p1

    iget-object v0, v0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    .line 5427
    .local v30, temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    .line 5432
    .end local v30           #temptoast:Landroid/widget/Toast;
    :cond_4
    if-nez v36, :cond_5

    .line 5435
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_11

    .line 5437
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->dofitbpm:Z

    .line 5439
    invoke-virtual/range {p1 .. p1}, Lelectrum2/drums/soundObj;->DoFitBpm()Z

    move-result v37

    if-nez v37, :cond_5

    .line 5441
    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "Error setting Loop Fit for "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "\n"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p1

    iget-object v0, v0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    .line 5443
    .restart local v30       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    .line 5454
    .end local v30           #temptoast:Landroid/widget/Toast;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v37

    const/16 v38, 0xc

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_6

    .line 5456
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    .line 5457
    .local v21, panvalue:Ljava/lang/String;
    new-instance v20, Ljava/lang/Integer;

    invoke-direct/range {v20 .. v21}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 5458
    .local v20, newpan:Ljava/lang/Integer;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->SetPan(I)V

    .line 5465
    .end local v20           #newpan:Ljava/lang/Integer;
    .end local v21           #panvalue:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v37

    const/16 v38, 0xb

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_c

    .line 5469
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 5470
    .local v12, hasdist:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 5471
    .local v9, distthreshold:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 5474
    .local v8, distgain:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 5475
    .local v11, hasdelay:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 5476
    .local v6, delaytime:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 5477
    .local v7, delaywrap:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 5479
    .local v5, delayfeedback:Ljava/lang/String;
    const-string v14, "0"

    .line 5481
    .local v14, hasreverse:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v37

    const/16 v38, 0xd

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_7

    .line 5483
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .line 5487
    :cond_7
    new-instance v33, Ljava/lang/Boolean;

    move-object/from16 v0, v33

    invoke-direct {v0, v14}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    .line 5489
    .local v33, test0:Ljava/lang/Boolean;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v37

    if-eqz v37, :cond_8

    .line 5491
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->hasReverse:Z

    .line 5496
    :cond_8
    new-instance v32, Ljava/lang/Boolean;

    move-object/from16 v0, v32

    invoke-direct {v0, v12}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    .line 5497
    .local v32, test:Ljava/lang/Boolean;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v37

    if-eqz v37, :cond_9

    .line 5501
    new-instance v37, Ljava/lang/Float;

    move-object/from16 v0, v37

    invoke-direct {v0, v9}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Float;->floatValue()F

    move-result v37

    new-instance v38, Ljava/lang/Float;

    move-object/from16 v0, v38

    invoke-direct {v0, v8}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Float;->floatValue()F

    move-result v38

    move-object/from16 v0, p1

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lelectrum2/drums/soundObj;->SetDistortionParams(FF)V

    .line 5507
    :cond_9
    new-instance v34, Ljava/lang/Boolean;

    move-object/from16 v0, v34

    invoke-direct {v0, v11}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    .line 5509
    .local v34, test2:Ljava/lang/Boolean;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v37

    if-eqz v37, :cond_a

    .line 5511
    new-instance v37, Ljava/lang/Integer;

    move-object/from16 v0, v37

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v37

    new-instance v38, Ljava/lang/Boolean;

    move-object/from16 v0, v38

    invoke-direct {v0, v7}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    new-instance v39, Ljava/lang/Float;

    move-object/from16 v0, v39

    invoke-direct {v0, v5}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Float;->floatValue()F

    move-result v39

    move-object/from16 v0, p1

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lelectrum2/drums/soundObj;->SetDelayParams(IZF)V

    .line 5515
    :cond_a
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v37

    if-nez v37, :cond_b

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v37

    if-nez v37, :cond_b

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v37

    if-eqz v37, :cond_c

    .line 5517
    :cond_b
    const/16 v37, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z

    .line 5524
    .end local v5           #delayfeedback:Ljava/lang/String;
    .end local v6           #delaytime:Ljava/lang/String;
    .end local v7           #delaywrap:Ljava/lang/String;
    .end local v8           #distgain:Ljava/lang/String;
    .end local v9           #distthreshold:Ljava/lang/String;
    .end local v11           #hasdelay:Ljava/lang/String;
    .end local v12           #hasdist:Ljava/lang/String;
    .end local v14           #hasreverse:Ljava/lang/String;
    .end local v32           #test:Ljava/lang/Boolean;
    .end local v33           #test0:Ljava/lang/Boolean;
    .end local v34           #test2:Ljava/lang/Boolean;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v37

    const/16 v38, 0xe

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_d

    .line 5527
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 5528
    .local v13, hasretrig:Ljava/lang/String;
    new-instance v37, Ljava/lang/Boolean;

    move-object/from16 v0, v37

    invoke-direct {v0, v13}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->retrigger:Z

    .line 5535
    .end local v13           #hasretrig:Ljava/lang/String;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lelectrum2/drums/electrum;->UpdateDrumNames()V

    .line 5538
    invoke-direct/range {p0 .. p0}, Lelectrum2/drums/electrum;->DisplaySoundSlots()V

    .line 5550
    .end local v4           #ReadNewPitch:Z
    .end local v15           #junk:Ljava/lang/String;
    .end local v16           #loopfit:Ljava/lang/Integer;
    .end local v17           #loopfitstr:Ljava/lang/String;
    .end local v18           #muteval:Ljava/lang/String;
    .end local v19           #newint:Ljava/lang/Integer;
    .end local v22           #pitchval:Ljava/lang/String;
    .end local v23           #soundFilename:Ljava/lang/String;
    .end local v24           #soundHeaderName:Ljava/lang/String;
    .end local v25           #tempcut:Ljava/lang/Integer;
    .end local v26           #tempcutoff:Ljava/lang/String;
    .end local v27           #tempdouble:Ljava/lang/Double;
    .end local v28           #tempstart:Ljava/lang/Integer;
    .end local v29           #tempstartpos:Ljava/lang/String;
    .end local v31           #tempvolume:Ljava/lang/String;
    .end local v36           #usedefaultsound:Z
    :goto_4
    return-void

    .line 5287
    .restart local v4       #ReadNewPitch:Z
    .restart local v15       #junk:Ljava/lang/String;
    .restart local v16       #loopfit:Ljava/lang/Integer;
    .restart local v18       #muteval:Ljava/lang/String;
    .restart local v19       #newint:Ljava/lang/Integer;
    :cond_e
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->mute:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5542
    .end local v4           #ReadNewPitch:Z
    .end local v15           #junk:Ljava/lang/String;
    .end local v16           #loopfit:Ljava/lang/Integer;
    .end local v18           #muteval:Ljava/lang/String;
    .end local v19           #newint:Ljava/lang/Integer;
    :catch_0
    move-exception v10

    .line 5544
    .local v10, e:Ljava/lang/Exception;
    new-instance v37, Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    const-string v39, "Error loading file data\r\n"

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    .line 5546
    .restart local v30       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 5364
    .end local v10           #e:Ljava/lang/Exception;
    .end local v30           #temptoast:Landroid/widget/Toast;
    .restart local v4       #ReadNewPitch:Z
    .restart local v15       #junk:Ljava/lang/String;
    .restart local v16       #loopfit:Ljava/lang/Integer;
    .restart local v17       #loopfitstr:Ljava/lang/String;
    .restart local v18       #muteval:Ljava/lang/String;
    .restart local v19       #newint:Ljava/lang/Integer;
    .restart local v22       #pitchval:Ljava/lang/String;
    .restart local v23       #soundFilename:Ljava/lang/String;
    .restart local v24       #soundHeaderName:Ljava/lang/String;
    .restart local v35       #testFile:Ljava/io/File;
    .restart local v36       #usedefaultsound:Z
    :cond_f
    :try_start_1
    const-string v37, "Empty"

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    iput-object v0, v1, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    .line 5365
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 5367
    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "Error loading \""

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "\" : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p1

    iget-object v0, v0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    .line 5369
    .restart local v30       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 5379
    .end local v30           #temptoast:Landroid/widget/Toast;
    :cond_10
    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "Failed to load "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    .line 5380
    .restart local v30       #temptoast:Landroid/widget/Toast;
    const-string v37, "Default"

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 5381
    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 5448
    .end local v30           #temptoast:Landroid/widget/Toast;
    .end local v35           #testFile:Ljava/io/File;
    .restart local v25       #tempcut:Ljava/lang/Integer;
    .restart local v26       #tempcutoff:Ljava/lang/String;
    .restart local v27       #tempdouble:Ljava/lang/Double;
    .restart local v28       #tempstart:Ljava/lang/Integer;
    .restart local v29       #tempstartpos:Ljava/lang/String;
    .restart local v31       #tempvolume:Ljava/lang/String;
    :cond_11
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->dofitbpm:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private LoadOptions(Ljava/lang/String;)V
    .locals 11
    .parameter "filename"

    .prologue
    .line 3462
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3464
    .local v1, loadFile1:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3544
    .end local v1           #loadFile1:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 3465
    .restart local v1       #loadFile1:Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 3469
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3472
    .local v2, loadfile:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lelectrum2/drums/electrum;->versioncheck:Ljava/lang/String;

    .line 3474
    sget-object v7, Lelectrum2/drums/electrum;->versioncheck:Ljava/lang/String;

    const-string v8, "V"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lelectrum2/drums/electrum;->versioncheck:Ljava/lang/String;

    .line 3476
    new-instance v7, Ljava/lang/Integer;

    sget-object v8, Lelectrum2/drums/electrum;->versioncheck:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    .line 3480
    iget-object v7, p0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x9

    if-lt v7, v8, :cond_3

    .line 3483
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 3485
    .local v5, showlightsoption:Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x0

    sput-boolean v7, Lelectrum2/drums/globalSounds;->showslotlights:Z

    .line 3486
    :cond_2
    const-string v7, "1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    sput-boolean v7, Lelectrum2/drums/globalSounds;->showslotlights:Z

    .line 3492
    .end local v5           #showlightsoption:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xa

    if-lt v7, v8, :cond_5

    .line 3494
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 3495
    .local v4, playpadoption:Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x0

    sput-boolean v7, Lelectrum2/drums/globalSounds;->playpadwhenhit:Z

    .line 3496
    :cond_4
    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x1

    sput-boolean v7, Lelectrum2/drums/globalSounds;->playpadwhenhit:Z

    .line 3503
    .end local v4           #playpadoption:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xb

    if-lt v7, v8, :cond_7

    .line 3505
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 3506
    .local v0, cutpadoption:Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x0

    sput-boolean v7, Lelectrum2/drums/globalSounds;->cutpadswhenhit:Z

    .line 3507
    :cond_6
    const-string v7, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    const/4 v7, 0x1

    sput-boolean v7, Lelectrum2/drums/globalSounds;->cutpadswhenhit:Z

    .line 3512
    .end local v0           #cutpadoption:Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xc

    if-lt v7, v8, :cond_8

    .line 3514
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 3516
    .local v3, patchname:Ljava/lang/String;
    sput-object v3, Lelectrum2/drums/globalSounds;->projectname:Ljava/lang/String;

    .line 3522
    .end local v3           #patchname:Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xd

    if-lt v7, v8, :cond_a

    .line 3524
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 3525
    .local v6, usepriorityoption:Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_9

    const/4 v7, 0x0

    sput-boolean v7, Lelectrum2/drums/globalSounds;->usepriority:Z

    .line 3526
    :cond_9
    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_a

    const/4 v7, 0x1

    sput-boolean v7, Lelectrum2/drums/globalSounds;->usepriority:Z

    .line 3531
    .end local v6           #usepriorityoption:Ljava/lang/String;
    :cond_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3538
    .end local v1           #loadFile1:Ljava/io/File;
    .end local v2           #loadfile:Ljava/io/BufferedReader;
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method private LoadPatterns(Lelectrum2/drums/soundObj;Ljava/io/BufferedReader;)V
    .locals 46
    .parameter "soundin"
    .parameter "reader"

    .prologue
    .line 4850
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .line 4852
    .local v18, junk:Ljava/lang/String;
    new-instance v22, Ljava/lang/Integer;

    const/16 v43, 0xb

    move-object/from16 v0, v22

    move/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4853
    .local v22, newint:Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 4854
    .local v5, ReadNewPitch:Z
    new-instance v19, Ljava/lang/Integer;

    const/16 v43, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4858
    .local v19, loopfit:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    const/16 v44, 0x3

    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_14

    .line 4861
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    .line 4862
    .local v21, muteval:Ljava/lang/String;
    const-string v43, "1"

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v43

    if-nez v43, :cond_13

    .line 4864
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->mute:Z

    .line 4871
    .end local v21           #muteval:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    const/16 v44, 0x4

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_1

    .line 4874
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v26

    .line 4875
    .local v26, pitchval:Ljava/lang/String;
    new-instance v22, Ljava/lang/Integer;

    .end local v22           #newint:Ljava/lang/Integer;
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 4877
    .restart local v22       #newint:Ljava/lang/Integer;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v43

    const/16 v44, 0xb

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_0

    .line 4881
    const/4 v5, 0x1

    .line 4884
    :cond_0
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v43

    const/16 v44, 0xb

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_1

    .line 4889
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v43

    add-int/lit8 v43, v43, 0x1

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 4899
    .end local v26           #pitchval:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    const/16 v44, 0x5

    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_2

    .line 4902
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v26

    .line 4903
    .restart local v26       #pitchval:Ljava/lang/String;
    new-instance v22, Ljava/lang/Integer;

    .end local v22           #newint:Ljava/lang/Integer;
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 4905
    .restart local v22       #newint:Ljava/lang/Integer;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v43

    const/16 v44, 0xc

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_2

    .line 4907
    const/4 v5, 0x1

    .line 4917
    .end local v26           #pitchval:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    const/16 v44, 0x7

    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_3

    .line 4919
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 4920
    .local v20, loopfitstr:Ljava/lang/String;
    new-instance v19, Ljava/lang/Integer;

    .end local v19           #loopfit:Ljava/lang/Integer;
    invoke-direct/range {v19 .. v20}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 4926
    .end local v20           #loopfitstr:Ljava/lang/String;
    .restart local v19       #loopfit:Ljava/lang/Integer;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    .line 4929
    .local v28, soundHeaderName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v27

    .line 4931
    .local v27, soundFilename:Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    iput-object v0, v1, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    .line 4934
    const/16 v42, 0x1

    .line 4937
    .local v42, usedefaultsound:Z
    const-string v43, "Default"

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v43

    if-eqz v43, :cond_5

    .line 4959
    new-instance v41, Ljava/io/File;

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4962
    .local v41, testFile:Ljava/io/File;
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->exists()Z

    move-result v43

    if-eqz v43, :cond_16

    .line 4964
    if-eqz v5, :cond_4

    .line 4966
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->readnewpitch:Z

    .line 4967
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->pitchfirsttime:Z

    .line 4971
    :cond_4
    const/16 v43, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lelectrum2/drums/soundObj;->LoadWaveFile(Ljava/lang/String;Z)Z

    move-result v43

    if-eqz v43, :cond_15

    .line 4973
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 4988
    :goto_1
    const/16 v42, 0x0

    .line 5004
    .end local v41           #testFile:Ljava/io/File;
    :cond_5
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v37

    .line 5005
    .local v37, tempvolume:Ljava/lang/String;
    new-instance v32, Ljava/lang/Double;

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 5006
    .local v32, tempdouble:Ljava/lang/Double;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v43

    move-object/from16 v0, p1

    move-wide/from16 v1, v43

    invoke-virtual {v0, v1, v2}, Lelectrum2/drums/soundObj;->SetSampleVolume(D)V

    .line 5009
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v31

    .line 5012
    .local v31, tempcutoff:Ljava/lang/String;
    const-string v35, "0"

    .line 5018
    .local v35, tempstartpos:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    const/16 v44, 0x9

    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_17

    .line 5020
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v35

    .line 5021
    new-instance v34, Ljava/lang/Integer;

    invoke-direct/range {v34 .. v35}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 5022
    .local v34, tempstart:Ljava/lang/Integer;
    new-instance v29, Ljava/lang/Integer;

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 5024
    .local v29, tempcut:Ljava/lang/Integer;
    if-nez v42, :cond_6

    .line 5026
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p1

    iput v0, v1, Lelectrum2/drums/soundObj;->startpos:I

    .line 5027
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p1

    iput v0, v1, Lelectrum2/drums/soundObj;->samplelen:I

    .line 5053
    .end local v29           #tempcut:Ljava/lang/Integer;
    .end local v34           #tempstart:Ljava/lang/Integer;
    :cond_6
    :goto_3
    if-eqz v5, :cond_7

    .line 5055
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->pitchfirsttime:Z

    .line 5057
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v43

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->SetPitch(I)Z

    move-result v43

    if-nez v43, :cond_7

    .line 5059
    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "Error setting pitch for "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p1

    iget-object v0, v0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v36

    .line 5061
    .local v36, temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v36 .. v36}, Landroid/widget/Toast;->show()V

    .line 5066
    .end local v36           #temptoast:Landroid/widget/Toast;
    :cond_7
    if-nez v42, :cond_8

    .line 5069
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_18

    .line 5071
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->dofitbpm:Z

    .line 5073
    invoke-virtual/range {p1 .. p1}, Lelectrum2/drums/soundObj;->DoFitBpm()Z

    move-result v43

    if-nez v43, :cond_8

    .line 5075
    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "Error setting Loop Fit for "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\n"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p1

    iget-object v0, v0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v36

    .line 5077
    .restart local v36       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v36 .. v36}, Landroid/widget/Toast;->show()V

    .line 5088
    .end local v36           #temptoast:Landroid/widget/Toast;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    const/16 v44, 0xc

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_9

    .line 5090
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    .line 5091
    .local v24, panvalue:Ljava/lang/String;
    new-instance v23, Ljava/lang/Integer;

    invoke-direct/range {v23 .. v24}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 5092
    .local v23, newpan:Ljava/lang/Integer;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v43

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->SetPan(I)V

    .line 5099
    .end local v23           #newpan:Ljava/lang/Integer;
    .end local v24           #panvalue:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    const/16 v44, 0xb

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_f

    .line 5103
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 5104
    .local v15, hasdist:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 5105
    .local v12, distthreshold:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 5108
    .local v11, distgain:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .line 5109
    .local v14, hasdelay:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 5110
    .local v9, delaytime:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 5111
    .local v10, delaywrap:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 5113
    .local v8, delayfeedback:Ljava/lang/String;
    const-string v16, "0"

    .line 5115
    .local v16, hasreverse:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    const/16 v44, 0xd

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_a

    .line 5117
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 5121
    :cond_a
    new-instance v39, Ljava/lang/Boolean;

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    .line 5122
    .local v39, test0:Ljava/lang/Boolean;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v43

    if-eqz v43, :cond_b

    .line 5125
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->hasReverse:Z

    .line 5130
    :cond_b
    new-instance v38, Ljava/lang/Boolean;

    move-object/from16 v0, v38

    invoke-direct {v0, v15}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    .line 5131
    .local v38, test:Ljava/lang/Boolean;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v43

    if-eqz v43, :cond_c

    .line 5135
    new-instance v43, Ljava/lang/Float;

    move-object/from16 v0, v43

    invoke-direct {v0, v12}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Float;->floatValue()F

    move-result v43

    new-instance v44, Ljava/lang/Float;

    move-object/from16 v0, v44

    invoke-direct {v0, v11}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Float;->floatValue()F

    move-result v44

    move-object/from16 v0, p1

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lelectrum2/drums/soundObj;->SetDistortionParams(FF)V

    .line 5141
    :cond_c
    new-instance v40, Ljava/lang/Boolean;

    move-object/from16 v0, v40

    invoke-direct {v0, v14}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    .line 5143
    .local v40, test2:Ljava/lang/Boolean;
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v43

    if-eqz v43, :cond_d

    .line 5145
    new-instance v43, Ljava/lang/Integer;

    move-object/from16 v0, v43

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    new-instance v44, Ljava/lang/Boolean;

    move-object/from16 v0, v44

    invoke-direct {v0, v10}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v44

    new-instance v45, Ljava/lang/Float;

    move-object/from16 v0, v45

    invoke-direct {v0, v8}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Float;->floatValue()F

    move-result v45

    move-object/from16 v0, p1

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lelectrum2/drums/soundObj;->SetDelayParams(IZF)V

    .line 5149
    :cond_d
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v43

    if-nez v43, :cond_e

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v43

    if-nez v43, :cond_e

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v43

    if-eqz v43, :cond_f

    .line 5151
    :cond_e
    const/16 v43, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z

    .line 5159
    .end local v8           #delayfeedback:Ljava/lang/String;
    .end local v9           #delaytime:Ljava/lang/String;
    .end local v10           #delaywrap:Ljava/lang/String;
    .end local v11           #distgain:Ljava/lang/String;
    .end local v12           #distthreshold:Ljava/lang/String;
    .end local v14           #hasdelay:Ljava/lang/String;
    .end local v15           #hasdist:Ljava/lang/String;
    .end local v16           #hasreverse:Ljava/lang/String;
    .end local v38           #test:Ljava/lang/Boolean;
    .end local v39           #test0:Ljava/lang/Boolean;
    .end local v40           #test2:Ljava/lang/Boolean;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    const/16 v44, 0xe

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_10

    .line 5161
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .line 5163
    .local v17, isretrig:Ljava/lang/String;
    new-instance v43, Ljava/lang/Boolean;

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->retrigger:Z

    .line 5171
    .end local v17           #isretrig:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    const/16 v44, 0x9

    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_19

    .line 5174
    new-instance v34, Ljava/lang/Integer;

    invoke-direct/range {v34 .. v35}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 5175
    .restart local v34       #tempstart:Ljava/lang/Integer;
    new-instance v29, Ljava/lang/Integer;

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 5179
    .restart local v29       #tempcut:Ljava/lang/Integer;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p1

    iput v0, v1, Lelectrum2/drums/soundObj;->startpos:I

    .line 5180
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p1

    iput v0, v1, Lelectrum2/drums/soundObj;->samplelen:I

    .line 5197
    .end local v29           #tempcut:Ljava/lang/Integer;
    .end local v34           #tempstart:Ljava/lang/Integer;
    :cond_11
    :goto_5
    sget v4, Lelectrum2/drums/soundObj;->NUM_PATTERNS:I

    .line 5200
    .local v4, NumberPatternsToRead:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    const/16 v44, 0x5

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_12

    .line 5203
    const/16 v4, 0x8

    .line 5207
    :cond_12
    const/16 v25, 0x0

    .local v25, patcount:I
    :goto_6
    move/from16 v0, v25

    if-lt v0, v4, :cond_1a

    .line 5245
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/electrum;->currentpattern:I

    .line 5246
    invoke-direct/range {p0 .. p0}, Lelectrum2/drums/electrum;->SetDrumsCurrentPattern()V

    .line 5247
    invoke-direct/range {p0 .. p0}, Lelectrum2/drums/electrum;->UpdateDrumNames()V

    .line 5250
    invoke-direct/range {p0 .. p0}, Lelectrum2/drums/electrum;->DisplaySoundSlots()V

    .line 5262
    .end local v4           #NumberPatternsToRead:I
    .end local v5           #ReadNewPitch:Z
    .end local v18           #junk:Ljava/lang/String;
    .end local v19           #loopfit:Ljava/lang/Integer;
    .end local v22           #newint:Ljava/lang/Integer;
    .end local v25           #patcount:I
    .end local v27           #soundFilename:Ljava/lang/String;
    .end local v28           #soundHeaderName:Ljava/lang/String;
    .end local v31           #tempcutoff:Ljava/lang/String;
    .end local v32           #tempdouble:Ljava/lang/Double;
    .end local v35           #tempstartpos:Ljava/lang/String;
    .end local v37           #tempvolume:Ljava/lang/String;
    .end local v42           #usedefaultsound:Z
    :goto_7
    return-void

    .line 4866
    .restart local v5       #ReadNewPitch:Z
    .restart local v18       #junk:Ljava/lang/String;
    .restart local v19       #loopfit:Ljava/lang/Integer;
    .restart local v21       #muteval:Ljava/lang/String;
    .restart local v22       #newint:Ljava/lang/Integer;
    :cond_13
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->mute:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5254
    .end local v5           #ReadNewPitch:Z
    .end local v18           #junk:Ljava/lang/String;
    .end local v19           #loopfit:Ljava/lang/Integer;
    .end local v21           #muteval:Ljava/lang/String;
    .end local v22           #newint:Ljava/lang/Integer;
    :catch_0
    move-exception v13

    .line 5256
    .local v13, e:Ljava/lang/Exception;
    new-instance v43, Ljava/lang/String;

    new-instance v44, Ljava/lang/StringBuilder;

    const-string v45, "Error loading file data\r\n"

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v36

    .line 5258
    .restart local v36       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v36 .. v36}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 4868
    .end local v13           #e:Ljava/lang/Exception;
    .end local v36           #temptoast:Landroid/widget/Toast;
    .restart local v5       #ReadNewPitch:Z
    .restart local v18       #junk:Ljava/lang/String;
    .restart local v19       #loopfit:Ljava/lang/Integer;
    .restart local v22       #newint:Ljava/lang/Integer;
    :cond_14
    const/16 v43, 0x0

    :try_start_1
    move/from16 v0, v43

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->mute:Z

    goto/16 :goto_0

    .line 4978
    .restart local v27       #soundFilename:Ljava/lang/String;
    .restart local v28       #soundHeaderName:Ljava/lang/String;
    .restart local v41       #testFile:Ljava/io/File;
    .restart local v42       #usedefaultsound:Z
    :cond_15
    const-string v43, "Empty"

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    iput-object v0, v1, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    .line 4979
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 4981
    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "Error loading \""

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\" : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p1

    iget-object v0, v0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v36

    .line 4983
    .restart local v36       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v36 .. v36}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 4993
    .end local v36           #temptoast:Landroid/widget/Toast;
    :cond_16
    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "Failed to load "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v36

    .line 4994
    .restart local v36       #temptoast:Landroid/widget/Toast;
    const-string v43, "Default"

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 4995
    invoke-virtual/range {v36 .. v36}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 5032
    .end local v36           #temptoast:Landroid/widget/Toast;
    .end local v41           #testFile:Ljava/io/File;
    .restart local v31       #tempcutoff:Ljava/lang/String;
    .restart local v32       #tempdouble:Ljava/lang/Double;
    .restart local v35       #tempstartpos:Ljava/lang/String;
    .restart local v37       #tempvolume:Ljava/lang/String;
    :cond_17
    new-instance v30, Ljava/lang/Double;

    invoke-direct/range {v30 .. v31}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 5034
    .local v30, tempcut2:Ljava/lang/Double;
    if-nez v42, :cond_6

    .line 5036
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v43

    move-object/from16 v0, p1

    move-wide/from16 v1, v43

    invoke-virtual {v0, v1, v2}, Lelectrum2/drums/soundObj;->SetSampleLen(D)V

    .line 5037
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p1

    iput v0, v1, Lelectrum2/drums/soundObj;->startpos:I

    goto/16 :goto_3

    .line 5082
    .end local v30           #tempcut2:Ljava/lang/Double;
    :cond_18
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->dofitbpm:Z

    goto/16 :goto_4

    .line 5185
    :cond_19
    new-instance v30, Ljava/lang/Double;

    invoke-direct/range {v30 .. v31}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 5187
    .restart local v30       #tempcut2:Ljava/lang/Double;
    if-nez v42, :cond_11

    .line 5189
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v43

    move-object/from16 v0, p1

    move-wide/from16 v1, v43

    invoke-virtual {v0, v1, v2}, Lelectrum2/drums/soundObj;->SetSampleLen(D)V

    .line 5190
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p1

    iput v0, v1, Lelectrum2/drums/soundObj;->startpos:I

    goto/16 :goto_5

    .line 5210
    .end local v30           #tempcut2:Ljava/lang/Double;
    .restart local v4       #NumberPatternsToRead:I
    .restart local v25       #patcount:I
    :cond_1a
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/electrum;->currentpattern:I

    .line 5212
    invoke-direct/range {p0 .. p0}, Lelectrum2/drums/electrum;->SetDrumsCurrentPattern()V

    .line 5215
    const/4 v6, 0x0

    .local v6, count:I
    :goto_8
    const/16 v43, 0x10

    move/from16 v0, v43

    if-lt v6, v0, :cond_1b

    .line 5207
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_6

    .line 5217
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 5219
    .local v7, currval:Ljava/lang/String;
    new-instance v33, Ljava/lang/Integer;

    move-object/from16 v0, v33

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 5221
    .local v33, tempint:Ljava/lang/Integer;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_1d

    .line 5223
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v43

    const/16 v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_1c

    .line 5225
    const/16 v43, 0x1

    const/16 v44, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v6, v1, v2}, Lelectrum2/drums/soundObj;->SetPlaySlot(IZZ)V

    .line 5215
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 5229
    :cond_1c
    const/16 v43, 0x1

    const/16 v44, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v6, v1, v2}, Lelectrum2/drums/soundObj;->SetPlaySlot(IZZ)V

    goto :goto_9

    .line 5234
    :cond_1d
    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v6, v1, v2}, Lelectrum2/drums/soundObj;->SetPlaySlot(IZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9
.end method

.method private LoadPatterns(Ljava/lang/String;Z)V
    .locals 32
    .parameter "result"
    .parameter "IsTemp"

    .prologue
    .line 3553
    if-eqz p2, :cond_0

    .line 3555
    new-instance v26, Ljava/lang/StringBuilder;

    sget-object v27, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "/electrum/tempfile.pat"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3559
    :cond_0
    new-instance v23, Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Loaded "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3564
    .local v23, toastmsg:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->StopPlaying()V

    .line 3568
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3570
    .local v10, loadFile1:Ljava/io/File;
    if-eqz p2, :cond_3

    .line 3573
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v26

    if-nez v26, :cond_2

    .line 3778
    .end local v10           #loadFile1:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 3574
    .restart local v10       #loadFile1:Ljava/io/File;
    :cond_2
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_1

    .line 3588
    :cond_3
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v26, Ljava/io/FileReader;

    move-object/from16 v0, v26

    invoke-direct {v0, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3591
    .local v11, loadfile:Ljava/io/BufferedReader;
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v26

    sput-object v26, Lelectrum2/drums/electrum;->versioncheck:Ljava/lang/String;

    .line 3593
    sget-object v26, Lelectrum2/drums/electrum;->versioncheck:Ljava/lang/String;

    const-string v27, "V"

    const-string v28, ""

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    sput-object v26, Lelectrum2/drums/electrum;->versioncheck:Ljava/lang/String;

    .line 3595
    new-instance v26, Ljava/lang/Integer;

    sget-object v27, Lelectrum2/drums/electrum;->versioncheck:Ljava/lang/String;

    invoke-direct/range {v26 .. v27}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    .line 3599
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_b

    .line 3604
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_7

    .line 3607
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v25

    .line 3608
    .local v25, volumelevel:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 3611
    .local v15, shuffleamount:Ljava/lang/String;
    new-instance v24, Ljava/lang/Integer;

    invoke-direct/range {v24 .. v25}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 3612
    .local v24, volint:Ljava/lang/Integer;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x447a

    div-float v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    sput-wide v26, Lelectrum2/drums/globalSounds;->globalVolume:D

    .line 3614
    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 3615
    .local v16, shuffleint:Ljava/lang/Integer;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x447a

    div-float v26, v26, v27

    sput v26, Lelectrum2/drums/globalSounds;->shuffleamount:F

    .line 3632
    .end local v15           #shuffleamount:Ljava/lang/String;
    .end local v16           #shuffleint:Ljava/lang/Integer;
    .end local v24           #volint:Ljava/lang/Integer;
    .end local v25           #volumelevel:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_5

    .line 3635
    sget-object v26, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 3637
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .line 3639
    .local v18, songdata:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_5

    .line 3641
    const/4 v6, 0x0

    .line 3643
    .local v6, dontload:Z
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    const-string v26, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_4

    .line 3645
    const/4 v6, 0x1

    .line 3648
    :cond_4
    if-nez v6, :cond_5

    .line 3650
    const-string v26, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 3652
    .local v17, songarray:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, count:I
    :goto_2
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v5, v0, :cond_8

    .line 3669
    .end local v5           #count:I
    .end local v6           #dontload:Z
    .end local v17           #songarray:[Ljava/lang/String;
    .end local v18           #songdata:Ljava/lang/String;
    :cond_5
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 3672
    .local v3, bpmstr:Ljava/lang/String;
    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 3674
    .local v4, bpmval:Ljava/lang/Float;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v26

    sput v26, Lelectrum2/drums/electrum;->bpm:F

    .line 3676
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->bpmText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->onePlace:Ljava/text/DecimalFormat;

    move-object/from16 v28, v0

    sget v29, Lelectrum2/drums/electrum;->bpm:F

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v29, v0

    invoke-virtual/range {v28 .. v30}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " bpm"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3678
    new-instance v14, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 3679
    .local v14, resval:Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v26

    sput v26, Lelectrum2/drums/electrum;->slotspermeasure:I

    .line 3680
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->resolutionText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "1/"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Res."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3682
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 3683
    .local v8, drumkitnumstr:Ljava/lang/String;
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 3688
    .local v7, drumkitnum:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/electrum;->currentdrumkit:I

    .line 3690
    invoke-direct/range {p0 .. p0}, Lelectrum2/drums/electrum;->LoadDrumKit()V

    .line 3694
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    const/16 v27, 0x6

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_a

    .line 3697
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 3698
    .local v12, patternlength:Ljava/lang/String;
    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v12}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 3699
    .local v13, pattlenint:Ljava/lang/Integer;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v26

    sput v26, Lelectrum2/drums/electrum;->numberofslots:I

    .line 3707
    .end local v12           #patternlength:Ljava/lang/String;
    .end local v13           #pattlenint:Ljava/lang/Integer;
    :goto_3
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 3711
    .local v9, junk:Ljava/lang/String;
    sget-object v26, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v11}, Lelectrum2/drums/electrum;->LoadPatterns(Lelectrum2/drums/soundObj;Ljava/io/BufferedReader;)V

    .line 3712
    sget-object v26, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v11}, Lelectrum2/drums/electrum;->LoadPatterns(Lelectrum2/drums/soundObj;Ljava/io/BufferedReader;)V

    .line 3713
    sget-object v26, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v11}, Lelectrum2/drums/electrum;->LoadPatterns(Lelectrum2/drums/soundObj;Ljava/io/BufferedReader;)V

    .line 3714
    sget-object v26, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v11}, Lelectrum2/drums/electrum;->LoadPatterns(Lelectrum2/drums/soundObj;Ljava/io/BufferedReader;)V

    .line 3715
    sget-object v26, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v11}, Lelectrum2/drums/electrum;->LoadPatterns(Lelectrum2/drums/soundObj;Ljava/io/BufferedReader;)V

    .line 3716
    sget-object v26, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v11}, Lelectrum2/drums/electrum;->LoadPatterns(Lelectrum2/drums/soundObj;Ljava/io/BufferedReader;)V

    .line 3719
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->version:Ljava/lang/Integer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    const/16 v27, 0xb

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_6

    .line 3721
    sget-object v26, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v11}, Lelectrum2/drums/electrum;->LoadPatterns(Lelectrum2/drums/soundObj;Ljava/io/BufferedReader;)V

    .line 3722
    sget-object v26, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v11}, Lelectrum2/drums/electrum;->LoadPatterns(Lelectrum2/drums/soundObj;Ljava/io/BufferedReader;)V

    .line 3727
    :cond_6
    sget-object v26, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    sput-object v26, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    .line 3730
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->DisplaySelectedSound(I)V

    .line 3731
    invoke-direct/range {p0 .. p0}, Lelectrum2/drums/electrum;->DisplaySoundSlots()V

    .line 3734
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 3736
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    .line 3738
    .local v22, temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 3741
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/electrum;->OldPosition:I

    .line 3744
    const-wide v26, -0x3fa9800000000000L

    sget-wide v28, Lelectrum2/drums/globalSounds;->globalVolume:D

    const-wide v30, 0x4066800000000000L

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/electrum;->Position:I

    .line 3748
    if-nez p2, :cond_1

    .line 3751
    const-string v26, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    .line 3753
    .local v19, temploc1:I
    add-int/lit8 v26, v19, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 3755
    .local v20, tempresult1:Ljava/lang/String;
    sput-object v20, Lelectrum2/drums/globalSounds;->projectname:Ljava/lang/String;

    .line 3758
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->SetProjectText()V

    goto/16 :goto_0

    .line 3772
    .end local v3           #bpmstr:Ljava/lang/String;
    .end local v4           #bpmval:Ljava/lang/Float;
    .end local v7           #drumkitnum:Ljava/lang/Integer;
    .end local v8           #drumkitnumstr:Ljava/lang/String;
    .end local v9           #junk:Ljava/lang/String;
    .end local v10           #loadFile1:Ljava/io/File;
    .end local v11           #loadfile:Ljava/io/BufferedReader;
    .end local v14           #resval:Ljava/lang/Integer;
    .end local v19           #temploc1:I
    .end local v20           #tempresult1:Ljava/lang/String;
    .end local v22           #temptoast:Landroid/widget/Toast;
    :catch_0
    move-exception v26

    goto/16 :goto_0

    .line 3623
    .restart local v10       #loadFile1:Ljava/io/File;
    .restart local v11       #loadfile:Ljava/io/BufferedReader;
    :cond_7
    const-wide v26, 0x3fe428f5c0000000L

    sput-wide v26, Lelectrum2/drums/globalSounds;->globalVolume:D

    .line 3624
    const/16 v26, 0x0

    sput v26, Lelectrum2/drums/globalSounds;->shuffleamount:F

    goto/16 :goto_1

    .line 3654
    .restart local v5       #count:I
    .restart local v6       #dontload:Z
    .restart local v17       #songarray:[Ljava/lang/String;
    .restart local v18       #songdata:Ljava/lang/String;
    :cond_8
    aget-object v21, v17, v5

    .line 3656
    .local v21, tempstr:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_9

    .line 3658
    sget-object v26, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    aget-object v27, v17, v5

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3652
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 3702
    .end local v5           #count:I
    .end local v6           #dontload:Z
    .end local v17           #songarray:[Ljava/lang/String;
    .end local v18           #songdata:Ljava/lang/String;
    .end local v21           #tempstr:Ljava/lang/String;
    .restart local v3       #bpmstr:Ljava/lang/String;
    .restart local v4       #bpmval:Ljava/lang/Float;
    .restart local v7       #drumkitnum:Ljava/lang/Integer;
    .restart local v8       #drumkitnumstr:Ljava/lang/String;
    .restart local v14       #resval:Ljava/lang/Integer;
    :cond_a
    const/16 v26, 0x10

    sput v26, Lelectrum2/drums/electrum;->numberofslots:I

    goto/16 :goto_3

    .line 3764
    .end local v3           #bpmstr:Ljava/lang/String;
    .end local v4           #bpmval:Ljava/lang/Float;
    .end local v7           #drumkitnum:Ljava/lang/Integer;
    .end local v8           #drumkitnumstr:Ljava/lang/String;
    .end local v14           #resval:Ljava/lang/Integer;
    :cond_b
    const-string v26, "Sorry, but due to bug fixes and changes, I can no longer load\nearlier versions of pattern files. My apologies"

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    .line 3766
    .restart local v22       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private PastePatterns()V
    .locals 2

    .prologue
    .line 5891
    iget-object v0, p0, Lelectrum2/drums/electrum;->pastesound1:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0, v1}, Lelectrum2/drums/electrum;->CopySound2(Lelectrum2/drums/soundObj;Lelectrum2/drums/soundObj;)V

    .line 5892
    iget-object v0, p0, Lelectrum2/drums/electrum;->pastesound2:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0, v1}, Lelectrum2/drums/electrum;->CopySound2(Lelectrum2/drums/soundObj;Lelectrum2/drums/soundObj;)V

    .line 5893
    iget-object v0, p0, Lelectrum2/drums/electrum;->pastesound3:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0, v1}, Lelectrum2/drums/electrum;->CopySound2(Lelectrum2/drums/soundObj;Lelectrum2/drums/soundObj;)V

    .line 5894
    iget-object v0, p0, Lelectrum2/drums/electrum;->pastesound4:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0, v1}, Lelectrum2/drums/electrum;->CopySound2(Lelectrum2/drums/soundObj;Lelectrum2/drums/soundObj;)V

    .line 5895
    iget-object v0, p0, Lelectrum2/drums/electrum;->pastesound5:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0, v1}, Lelectrum2/drums/electrum;->CopySound2(Lelectrum2/drums/soundObj;Lelectrum2/drums/soundObj;)V

    .line 5896
    iget-object v0, p0, Lelectrum2/drums/electrum;->pastesound6:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0, v1}, Lelectrum2/drums/electrum;->CopySound2(Lelectrum2/drums/soundObj;Lelectrum2/drums/soundObj;)V

    .line 5897
    iget-object v0, p0, Lelectrum2/drums/electrum;->pastesound7:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0, v1}, Lelectrum2/drums/electrum;->CopySound2(Lelectrum2/drums/soundObj;Lelectrum2/drums/soundObj;)V

    .line 5898
    iget-object v0, p0, Lelectrum2/drums/electrum;->pastesound8:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    invoke-direct {p0, v0, v1}, Lelectrum2/drums/electrum;->CopySound2(Lelectrum2/drums/soundObj;Lelectrum2/drums/soundObj;)V

    .line 5900
    invoke-direct {p0}, Lelectrum2/drums/electrum;->DisplaySoundSlots()V

    .line 5902
    return-void
.end method

.method private ResetDrumButtonLights()V
    .locals 2

    .prologue
    .line 6411
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumbutton1:Landroid/widget/ImageView;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6412
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumbutton2:Landroid/widget/ImageView;

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6413
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumbutton3:Landroid/widget/ImageView;

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6414
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumbutton4:Landroid/widget/ImageView;

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6415
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumbutton5:Landroid/widget/ImageView;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6416
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumbutton6:Landroid/widget/ImageView;

    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6417
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumbutton7:Landroid/widget/ImageView;

    const v1, 0x7f02004f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6418
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumbutton8:Landroid/widget/ImageView;

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6419
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumbutton9:Landroid/widget/ImageView;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6420
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumbutton10:Landroid/widget/ImageView;

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6421
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumbutton11:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6422
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumbutton12:Landroid/widget/ImageView;

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6423
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumbutton13:Landroid/widget/ImageView;

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6424
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumbutton14:Landroid/widget/ImageView;

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6425
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumbutton15:Landroid/widget/ImageView;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6426
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumbutton16:Landroid/widget/ImageView;

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6429
    return-void
.end method

.method private SaveDrumkit(Ljava/lang/String;Z)V
    .locals 37
    .parameter "result"
    .parameter "IsTemp"

    .prologue
    .line 3970
    const/4 v3, 0x1

    .line 3972
    .local v3, DirectoryGood:Z
    if-nez p2, :cond_0

    .line 3975
    :try_start_0
    const-string v34, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 3977
    const-string v34, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v29

    .line 3979
    .local v29, temploc:I
    const/16 v34, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v31

    .line 3983
    .local v31, tempresult:Ljava/lang/String;
    :try_start_1
    new-instance v27, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/electrum/drumkits/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3984
    .local v27, tempf:Ljava/io/File;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3986
    const/4 v3, 0x1

    .line 4002
    .end local v27           #tempf:Ljava/io/File;
    .end local v29           #temploc:I
    .end local v31           #tempresult:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1c

    .line 4005
    :try_start_2
    new-instance v26, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/electrum/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string v35, "tempfile.pat"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4008
    .local v26, saveFile:Ljava/io/File;
    if-nez p2, :cond_2

    .line 4010
    const-string v34, ".kit"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 4012
    const-string v34, ".kit"

    const-string v35, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4016
    :cond_1
    new-instance v26, Ljava/io/File;

    .end local v26           #saveFile:Ljava/io/File;
    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/electrum/drumkits/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, ".kit"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4034
    .restart local v26       #saveFile:Ljava/io/File;
    :cond_2
    const-string v30, ""

    .line 4036
    .local v30, tempname:Ljava/lang/String;
    if-nez p2, :cond_13

    .line 4038
    const-string v34, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v29

    .line 4040
    .restart local v29       #temploc:I
    const/16 v34, -0x1

    move/from16 v0, v29

    move/from16 v1, v34

    if-eq v0, v1, :cond_1d

    .line 4042
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v34

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 4048
    :goto_1
    const/4 v8, 0x0

    .line 4050
    .local v8, hasrecordings:Z
    sget-object v34, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "temprecord"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_3

    const/4 v8, 0x1

    .line 4051
    :cond_3
    sget-object v34, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "temprecord"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_4

    const/4 v8, 0x1

    .line 4052
    :cond_4
    sget-object v34, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "temprecord"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_5

    const/4 v8, 0x1

    .line 4053
    :cond_5
    sget-object v34, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "temprecord"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_6

    const/4 v8, 0x1

    .line 4054
    :cond_6
    sget-object v34, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "temprecord"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_7

    const/4 v8, 0x1

    .line 4055
    :cond_7
    sget-object v34, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "temprecord"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_8

    const/4 v8, 0x1

    .line 4056
    :cond_8
    sget-object v34, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "temprecord"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_9

    const/4 v8, 0x1

    .line 4057
    :cond_9
    sget-object v34, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "temprecord"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_a

    const/4 v8, 0x1

    .line 4059
    :cond_a
    if-eqz v8, :cond_13

    .line 4063
    new-instance v27, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/electrum/samples/recordings/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4064
    .restart local v27       #tempf:Ljava/io/File;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->mkdirs()Z

    .line 4066
    new-instance v28, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/electrum/samples/recordings/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string v35, ".nomedia"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4067
    .local v28, tempfile:Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v34

    if-nez v34, :cond_b

    .line 4069
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->createNewFile()Z

    .line 4073
    :cond_b
    sget-object v34, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "temprecord"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_c

    .line 4076
    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/electrum/samples/recordings/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v35

    iget-object v0, v0, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ".wav"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 4078
    .local v32, tempstring:Ljava/lang/String;
    sget-object v34, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lelectrum2/drums/electrum;->copyfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4080
    sget-object v34, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 4085
    .end local v32           #tempstring:Ljava/lang/String;
    :cond_c
    sget-object v34, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "temprecord"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_d

    .line 4088
    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/electrum/samples/recordings/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v35

    iget-object v0, v0, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ".wav"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 4090
    .restart local v32       #tempstring:Ljava/lang/String;
    sget-object v34, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lelectrum2/drums/electrum;->copyfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4092
    sget-object v34, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 4096
    .end local v32           #tempstring:Ljava/lang/String;
    :cond_d
    sget-object v34, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "temprecord"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_e

    .line 4099
    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/electrum/samples/recordings/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v35

    iget-object v0, v0, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ".wav"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 4101
    .restart local v32       #tempstring:Ljava/lang/String;
    sget-object v34, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lelectrum2/drums/electrum;->copyfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4103
    sget-object v34, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 4107
    .end local v32           #tempstring:Ljava/lang/String;
    :cond_e
    sget-object v34, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "temprecord"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_f

    .line 4110
    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/electrum/samples/recordings/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v35

    iget-object v0, v0, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ".wav"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 4112
    .restart local v32       #tempstring:Ljava/lang/String;
    sget-object v34, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lelectrum2/drums/electrum;->copyfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4114
    sget-object v34, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 4118
    .end local v32           #tempstring:Ljava/lang/String;
    :cond_f
    sget-object v34, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "temprecord"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_10

    .line 4121
    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/electrum/samples/recordings/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v35

    iget-object v0, v0, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ".wav"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 4123
    .restart local v32       #tempstring:Ljava/lang/String;
    sget-object v34, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lelectrum2/drums/electrum;->copyfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4125
    sget-object v34, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 4129
    .end local v32           #tempstring:Ljava/lang/String;
    :cond_10
    sget-object v34, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "temprecord"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_11

    .line 4132
    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/electrum/samples/recordings/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v35

    iget-object v0, v0, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ".wav"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 4134
    .restart local v32       #tempstring:Ljava/lang/String;
    sget-object v34, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lelectrum2/drums/electrum;->copyfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4136
    sget-object v34, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 4140
    .end local v32           #tempstring:Ljava/lang/String;
    :cond_11
    sget-object v34, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "temprecord"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_12

    .line 4143
    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/electrum/samples/recordings/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v35

    iget-object v0, v0, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ".wav"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 4145
    .restart local v32       #tempstring:Ljava/lang/String;
    sget-object v34, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lelectrum2/drums/electrum;->copyfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4147
    sget-object v34, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 4151
    .end local v32           #tempstring:Ljava/lang/String;
    :cond_12
    sget-object v34, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "temprecord"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_13

    .line 4154
    new-instance v34, Ljava/lang/StringBuilder;

    sget-object v35, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/electrum/samples/recordings/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v35

    iget-object v0, v0, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ".wav"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 4156
    .restart local v32       #tempstring:Ljava/lang/String;
    sget-object v34, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lelectrum2/drums/electrum;->copyfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4158
    sget-object v34, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 4176
    .end local v8           #hasrecordings:Z
    .end local v27           #tempf:Ljava/io/File;
    .end local v28           #tempfile:Ljava/io/File;
    .end local v29           #temploc:I
    .end local v32           #tempstring:Ljava/lang/String;
    :cond_13
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4178
    .local v17, of:Ljava/io/FileOutputStream;
    new-instance v34, Ljava/lang/String;

    const-string v35, "V15\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4182
    new-instance v4, Ljava/lang/String;

    const-string v34, "\r\n"

    move-object/from16 v0, v34

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4186
    .local v4, carrfeed:Ljava/lang/String;
    new-instance v5, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/electrum;->currentdrumkit:I

    move/from16 v34, v0

    move/from16 v0, v34

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 4187
    .local v5, drumkitnum:Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4188
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4193
    new-instance v34, Ljava/lang/String;

    const-string v35, "sound1\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4196
    sget-object v34, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1e

    .line 4198
    new-instance v34, Ljava/lang/String;

    const-string v35, "1\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4203
    :goto_2
    new-instance v18, Ljava/lang/Integer;

    sget-object v34, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget v0, v0, Lelectrum2/drums/soundObj;->pitch:I

    move/from16 v34, v0

    move-object/from16 v0, v18

    move/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4204
    .local v18, outint:Ljava/lang/Integer;
    new-instance v34, Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4207
    new-instance v9, Ljava/lang/Integer;

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 4208
    .local v9, loopfit1:Ljava/lang/Integer;
    sget-object v34, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v34, v0

    if-eqz v34, :cond_14

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 4209
    :cond_14
    new-instance v34, Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4212
    sget-object v34, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->WriteDrumkitsFile(Lelectrum2/drums/soundObj;Ljava/io/FileOutputStream;)Z

    .line 4216
    new-instance v34, Ljava/lang/String;

    const-string v35, "sound2\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4217
    sget-object v34, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1f

    .line 4219
    new-instance v34, Ljava/lang/String;

    const-string v35, "1\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4222
    :goto_3
    new-instance v19, Ljava/lang/Integer;

    sget-object v34, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget v0, v0, Lelectrum2/drums/soundObj;->pitch:I

    move/from16 v34, v0

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4223
    .local v19, outint2:Ljava/lang/Integer;
    new-instance v34, Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4226
    new-instance v10, Ljava/lang/Integer;

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 4227
    .local v10, loopfit2:Ljava/lang/Integer;
    sget-object v34, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v34, v0

    if-eqz v34, :cond_15

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 4228
    :cond_15
    new-instance v34, Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4231
    sget-object v34, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->WriteDrumkitsFile(Lelectrum2/drums/soundObj;Ljava/io/FileOutputStream;)Z

    .line 4233
    new-instance v34, Ljava/lang/String;

    const-string v35, "sound3\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4234
    sget-object v34, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    move/from16 v34, v0

    if-eqz v34, :cond_20

    .line 4236
    new-instance v34, Ljava/lang/String;

    const-string v35, "1\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4239
    :goto_4
    new-instance v20, Ljava/lang/Integer;

    sget-object v34, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget v0, v0, Lelectrum2/drums/soundObj;->pitch:I

    move/from16 v34, v0

    move-object/from16 v0, v20

    move/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4240
    .local v20, outint3:Ljava/lang/Integer;
    new-instance v34, Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4242
    new-instance v11, Ljava/lang/Integer;

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-direct {v11, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 4243
    .local v11, loopfit3:Ljava/lang/Integer;
    sget-object v34, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v34, v0

    if-eqz v34, :cond_16

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 4244
    :cond_16
    new-instance v34, Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4246
    sget-object v34, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->WriteDrumkitsFile(Lelectrum2/drums/soundObj;Ljava/io/FileOutputStream;)Z

    .line 4248
    new-instance v34, Ljava/lang/String;

    const-string v35, "sound4\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4249
    sget-object v34, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    move/from16 v34, v0

    if-eqz v34, :cond_21

    .line 4251
    new-instance v34, Ljava/lang/String;

    const-string v35, "1\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4254
    :goto_5
    new-instance v21, Ljava/lang/Integer;

    sget-object v34, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget v0, v0, Lelectrum2/drums/soundObj;->pitch:I

    move/from16 v34, v0

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4255
    .local v21, outint4:Ljava/lang/Integer;
    new-instance v34, Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4257
    new-instance v12, Ljava/lang/Integer;

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 4258
    .local v12, loopfit4:Ljava/lang/Integer;
    sget-object v34, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v34, v0

    if-eqz v34, :cond_17

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 4259
    :cond_17
    new-instance v34, Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4261
    sget-object v34, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->WriteDrumkitsFile(Lelectrum2/drums/soundObj;Ljava/io/FileOutputStream;)Z

    .line 4263
    new-instance v34, Ljava/lang/String;

    const-string v35, "sound5\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4264
    sget-object v34, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    move/from16 v34, v0

    if-eqz v34, :cond_22

    .line 4266
    new-instance v34, Ljava/lang/String;

    const-string v35, "1\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4269
    :goto_6
    new-instance v22, Ljava/lang/Integer;

    sget-object v34, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget v0, v0, Lelectrum2/drums/soundObj;->pitch:I

    move/from16 v34, v0

    move-object/from16 v0, v22

    move/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4270
    .local v22, outint5:Ljava/lang/Integer;
    new-instance v34, Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4272
    new-instance v13, Ljava/lang/Integer;

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-direct {v13, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 4273
    .local v13, loopfit5:Ljava/lang/Integer;
    sget-object v34, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v34, v0

    if-eqz v34, :cond_18

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 4274
    :cond_18
    new-instance v34, Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4276
    sget-object v34, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->WriteDrumkitsFile(Lelectrum2/drums/soundObj;Ljava/io/FileOutputStream;)Z

    .line 4278
    new-instance v34, Ljava/lang/String;

    const-string v35, "sound6\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4279
    sget-object v34, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    move/from16 v34, v0

    if-eqz v34, :cond_23

    .line 4281
    new-instance v34, Ljava/lang/String;

    const-string v35, "1\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4284
    :goto_7
    new-instance v23, Ljava/lang/Integer;

    sget-object v34, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget v0, v0, Lelectrum2/drums/soundObj;->pitch:I

    move/from16 v34, v0

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4285
    .local v23, outint6:Ljava/lang/Integer;
    new-instance v34, Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4287
    new-instance v14, Ljava/lang/Integer;

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-direct {v14, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 4288
    .local v14, loopfit6:Ljava/lang/Integer;
    sget-object v34, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v34, v0

    if-eqz v34, :cond_19

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 4289
    :cond_19
    new-instance v34, Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4292
    sget-object v34, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->WriteDrumkitsFile(Lelectrum2/drums/soundObj;Ljava/io/FileOutputStream;)Z

    .line 4294
    new-instance v34, Ljava/lang/String;

    const-string v35, "sound7\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4295
    sget-object v34, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    move/from16 v34, v0

    if-eqz v34, :cond_24

    .line 4297
    new-instance v34, Ljava/lang/String;

    const-string v35, "1\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4300
    :goto_8
    new-instance v24, Ljava/lang/Integer;

    sget-object v34, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget v0, v0, Lelectrum2/drums/soundObj;->pitch:I

    move/from16 v34, v0

    move-object/from16 v0, v24

    move/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4301
    .local v24, outint7:Ljava/lang/Integer;
    new-instance v34, Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4303
    new-instance v15, Ljava/lang/Integer;

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-direct {v15, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 4304
    .local v15, loopfit7:Ljava/lang/Integer;
    sget-object v34, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1a

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 4305
    :cond_1a
    new-instance v34, Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4308
    sget-object v34, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->WriteDrumkitsFile(Lelectrum2/drums/soundObj;Ljava/io/FileOutputStream;)Z

    .line 4310
    new-instance v34, Ljava/lang/String;

    const-string v35, "sound8\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4311
    sget-object v34, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    move/from16 v34, v0

    if-eqz v34, :cond_25

    .line 4313
    new-instance v34, Ljava/lang/String;

    const-string v35, "1\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4316
    :goto_9
    new-instance v25, Ljava/lang/Integer;

    sget-object v34, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget v0, v0, Lelectrum2/drums/soundObj;->pitch:I

    move/from16 v34, v0

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4317
    .local v25, outint8:Ljava/lang/Integer;
    new-instance v34, Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4319
    new-instance v16, Ljava/lang/Integer;

    const/16 v34, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4320
    .local v16, loopfit8:Ljava/lang/Integer;
    sget-object v34, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1b

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 4321
    :cond_1b
    new-instance v34, Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4324
    sget-object v34, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->WriteDrumkitsFile(Lelectrum2/drums/soundObj;Ljava/io/FileOutputStream;)Z

    .line 4327
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 4329
    if-nez p2, :cond_1c

    .line 4331
    const v34, 0x7f060014

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v33

    .line 4333
    .local v33, temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    .line 4346
    .end local v4           #carrfeed:Ljava/lang/String;
    .end local v5           #drumkitnum:Ljava/lang/Integer;
    .end local v9           #loopfit1:Ljava/lang/Integer;
    .end local v10           #loopfit2:Ljava/lang/Integer;
    .end local v11           #loopfit3:Ljava/lang/Integer;
    .end local v12           #loopfit4:Ljava/lang/Integer;
    .end local v13           #loopfit5:Ljava/lang/Integer;
    .end local v14           #loopfit6:Ljava/lang/Integer;
    .end local v15           #loopfit7:Ljava/lang/Integer;
    .end local v16           #loopfit8:Ljava/lang/Integer;
    .end local v17           #of:Ljava/io/FileOutputStream;
    .end local v18           #outint:Ljava/lang/Integer;
    .end local v19           #outint2:Ljava/lang/Integer;
    .end local v20           #outint3:Ljava/lang/Integer;
    .end local v21           #outint4:Ljava/lang/Integer;
    .end local v22           #outint5:Ljava/lang/Integer;
    .end local v23           #outint6:Ljava/lang/Integer;
    .end local v24           #outint7:Ljava/lang/Integer;
    .end local v25           #outint8:Ljava/lang/Integer;
    .end local v26           #saveFile:Ljava/io/File;
    .end local v30           #tempname:Ljava/lang/String;
    .end local v33           #temptoast:Landroid/widget/Toast;
    :cond_1c
    :goto_a
    return-void

    .line 3988
    .restart local v29       #temploc:I
    .restart local v31       #tempresult:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 3991
    .local v7, e1:Ljava/lang/Exception;
    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "Error saving pattern...\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v33

    .line 3993
    .restart local v33       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    .line 3994
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 4044
    .end local v7           #e1:Ljava/lang/Exception;
    .end local v31           #tempresult:Ljava/lang/String;
    .end local v33           #temptoast:Landroid/widget/Toast;
    .restart local v26       #saveFile:Ljava/io/File;
    .restart local v30       #tempname:Ljava/lang/String;
    :cond_1d
    move-object/from16 v30, p1

    goto/16 :goto_1

    .line 4200
    .end local v29           #temploc:I
    .restart local v4       #carrfeed:Ljava/lang/String;
    .restart local v5       #drumkitnum:Ljava/lang/Integer;
    .restart local v17       #of:Ljava/io/FileOutputStream;
    :cond_1e
    new-instance v34, Ljava/lang/String;

    const-string v35, "0\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 4339
    .end local v4           #carrfeed:Ljava/lang/String;
    .end local v5           #drumkitnum:Ljava/lang/Integer;
    .end local v17           #of:Ljava/io/FileOutputStream;
    .end local v26           #saveFile:Ljava/io/File;
    .end local v30           #tempname:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 4342
    .local v6, e:Ljava/lang/Exception;
    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "Error saving drumkit...\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v33

    .line 4344
    .restart local v33       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 4221
    .end local v6           #e:Ljava/lang/Exception;
    .end local v33           #temptoast:Landroid/widget/Toast;
    .restart local v4       #carrfeed:Ljava/lang/String;
    .restart local v5       #drumkitnum:Ljava/lang/Integer;
    .restart local v9       #loopfit1:Ljava/lang/Integer;
    .restart local v17       #of:Ljava/io/FileOutputStream;
    .restart local v18       #outint:Ljava/lang/Integer;
    .restart local v26       #saveFile:Ljava/io/File;
    .restart local v30       #tempname:Ljava/lang/String;
    :cond_1f
    :try_start_3
    new-instance v34, Ljava/lang/String;

    const-string v35, "0\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_3

    .line 4238
    .restart local v10       #loopfit2:Ljava/lang/Integer;
    .restart local v19       #outint2:Ljava/lang/Integer;
    :cond_20
    new-instance v34, Ljava/lang/String;

    const-string v35, "0\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_4

    .line 4253
    .restart local v11       #loopfit3:Ljava/lang/Integer;
    .restart local v20       #outint3:Ljava/lang/Integer;
    :cond_21
    new-instance v34, Ljava/lang/String;

    const-string v35, "0\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_5

    .line 4268
    .restart local v12       #loopfit4:Ljava/lang/Integer;
    .restart local v21       #outint4:Ljava/lang/Integer;
    :cond_22
    new-instance v34, Ljava/lang/String;

    const-string v35, "0\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_6

    .line 4283
    .restart local v13       #loopfit5:Ljava/lang/Integer;
    .restart local v22       #outint5:Ljava/lang/Integer;
    :cond_23
    new-instance v34, Ljava/lang/String;

    const-string v35, "0\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_7

    .line 4299
    .restart local v14       #loopfit6:Ljava/lang/Integer;
    .restart local v23       #outint6:Ljava/lang/Integer;
    :cond_24
    new-instance v34, Ljava/lang/String;

    const-string v35, "0\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_8

    .line 4315
    .restart local v15       #loopfit7:Ljava/lang/Integer;
    .restart local v24       #outint7:Ljava/lang/Integer;
    :cond_25
    new-instance v34, Ljava/lang/String;

    const-string v35, "0\r\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_9
.end method

.method private SaveOptions(Ljava/lang/String;)V
    .locals 5
    .parameter "filename"

    .prologue
    .line 3906
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/electrum/options.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3907
    .local v1, tempf:Ljava/io/File;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3909
    .local v0, of:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/lang/String;

    const-string v3, "V13\r\n"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 3912
    sget-boolean v2, Lelectrum2/drums/globalSounds;->showslotlights:Z

    if-eqz v2, :cond_0

    .line 3914
    new-instance v2, Ljava/lang/String;

    const-string v3, "1\r\n"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 3921
    :goto_0
    sget-boolean v2, Lelectrum2/drums/globalSounds;->playpadwhenhit:Z

    if-eqz v2, :cond_1

    .line 3923
    new-instance v2, Ljava/lang/String;

    const-string v3, "1\r\n"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 3930
    :goto_1
    sget-boolean v2, Lelectrum2/drums/globalSounds;->cutpadswhenhit:Z

    if-eqz v2, :cond_2

    .line 3932
    new-instance v2, Ljava/lang/String;

    const-string v3, "1\r\n"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 3939
    :goto_2
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lelectrum2/drums/globalSounds;->projectname:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 3942
    sget-boolean v2, Lelectrum2/drums/globalSounds;->usepriority:Z

    if-eqz v2, :cond_3

    .line 3944
    new-instance v2, Ljava/lang/String;

    const-string v3, "1\r\n"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 3952
    :goto_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 3962
    .end local v0           #of:Ljava/io/FileOutputStream;
    .end local v1           #tempf:Ljava/io/File;
    :goto_4
    return-void

    .line 3918
    .restart local v0       #of:Ljava/io/FileOutputStream;
    .restart local v1       #tempf:Ljava/io/File;
    :cond_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "0\r\n"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    .line 3957
    .end local v0           #of:Ljava/io/FileOutputStream;
    .end local v1           #tempf:Ljava/io/File;
    :catch_0
    move-exception v2

    goto :goto_4

    .line 3927
    .restart local v0       #of:Ljava/io/FileOutputStream;
    .restart local v1       #tempf:Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "0\r\n"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_1

    .line 3936
    :cond_2
    new-instance v2, Ljava/lang/String;

    const-string v3, "0\r\n"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_2

    .line 3948
    :cond_3
    new-instance v2, Ljava/lang/String;

    const-string v3, "0\r\n"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method private SavePatterns(Ljava/lang/String;Z)V
    .locals 51
    .parameter "result"
    .parameter "IsTemp"

    .prologue
    .line 4356
    const/4 v3, 0x1

    .line 4358
    .local v3, DirectoryGood:Z
    if-nez p2, :cond_1

    .line 4361
    :try_start_0
    const-string v47, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_1

    .line 4363
    const-string v47, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v39

    .line 4365
    .local v39, temploc:I
    const/16 v47, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v47

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v42

    .line 4369
    .local v42, tempresult:Ljava/lang/String;
    :try_start_1
    new-instance v35, Ljava/io/File;

    new-instance v47, Ljava/lang/StringBuilder;

    sget-object v48, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "/electrum/patterns/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v35

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4371
    .local v35, tempf:Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->exists()Z

    move-result v47

    if-nez v47, :cond_0

    .line 4373
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4376
    :cond_0
    const/4 v3, 0x1

    .line 4396
    .end local v35           #tempf:Ljava/io/File;
    .end local v39           #temploc:I
    .end local v42           #tempresult:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v3, :cond_1d

    .line 4399
    :try_start_2
    new-instance v30, Ljava/io/File;

    new-instance v47, Ljava/lang/StringBuilder;

    sget-object v48, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "/electrum/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    const-string v48, "tempfile.pat"

    move-object/from16 v0, v30

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4402
    .local v30, saveFile:Ljava/io/File;
    if-nez p2, :cond_3

    .line 4404
    const-string v47, ".pat"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_2

    .line 4406
    const-string v47, ".pat"

    const-string v48, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4410
    :cond_2
    new-instance v30, Ljava/io/File;

    .end local v30           #saveFile:Ljava/io/File;
    new-instance v47, Ljava/lang/StringBuilder;

    sget-object v48, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "/electrum/patterns/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, ".pat"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v30

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4428
    .restart local v30       #saveFile:Ljava/io/File;
    :cond_3
    const-string v41, ""

    .line 4430
    .local v41, tempname:Ljava/lang/String;
    if-nez p2, :cond_14

    .line 4432
    const-string v47, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v39

    .line 4434
    .restart local v39       #temploc:I
    const/16 v47, -0x1

    move/from16 v0, v39

    move/from16 v1, v47

    if-eq v0, v1, :cond_1e

    .line 4436
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v47

    move-object/from16 v0, p1

    move/from16 v1, v39

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v41

    .line 4442
    :goto_1
    const/4 v10, 0x0

    .line 4444
    .local v10, hasrecordings:Z
    sget-object v47, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, "temprecord"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_4

    const/4 v10, 0x1

    .line 4445
    :cond_4
    sget-object v47, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, "temprecord"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_5

    const/4 v10, 0x1

    .line 4446
    :cond_5
    sget-object v47, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, "temprecord"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_6

    const/4 v10, 0x1

    .line 4447
    :cond_6
    sget-object v47, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, "temprecord"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_7

    const/4 v10, 0x1

    .line 4448
    :cond_7
    sget-object v47, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, "temprecord"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_8

    const/4 v10, 0x1

    .line 4449
    :cond_8
    sget-object v47, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, "temprecord"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_9

    const/4 v10, 0x1

    .line 4450
    :cond_9
    sget-object v47, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, "temprecord"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_a

    const/4 v10, 0x1

    .line 4451
    :cond_a
    sget-object v47, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, "temprecord"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_b

    const/4 v10, 0x1

    .line 4453
    :cond_b
    if-eqz v10, :cond_14

    .line 4457
    new-instance v35, Ljava/io/File;

    new-instance v47, Ljava/lang/StringBuilder;

    sget-object v48, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "/electrum/samples/recordings/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v35

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4458
    .restart local v35       #tempf:Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->mkdirs()Z

    .line 4460
    new-instance v36, Ljava/io/File;

    new-instance v47, Ljava/lang/StringBuilder;

    sget-object v48, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "/electrum/samples/recordings/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    const-string v48, ".nomedia"

    move-object/from16 v0, v36

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4461
    .local v36, tempfile:Ljava/io/File;
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->exists()Z

    move-result v47

    if-nez v47, :cond_c

    .line 4463
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->createNewFile()Z

    .line 4467
    :cond_c
    sget-object v47, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, "temprecord"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_d

    .line 4470
    new-instance v47, Ljava/lang/StringBuilder;

    sget-object v48, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "/electrum/samples/recordings/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-object v48, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v48

    iget-object v0, v0, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ".wav"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 4472
    .local v44, tempstring:Ljava/lang/String;
    sget-object v47, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lelectrum2/drums/electrum;->copyfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4474
    sget-object v47, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 4479
    .end local v44           #tempstring:Ljava/lang/String;
    :cond_d
    sget-object v47, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, "temprecord"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_e

    .line 4482
    new-instance v47, Ljava/lang/StringBuilder;

    sget-object v48, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "/electrum/samples/recordings/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-object v48, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v48

    iget-object v0, v0, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ".wav"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 4484
    .restart local v44       #tempstring:Ljava/lang/String;
    sget-object v47, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lelectrum2/drums/electrum;->copyfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4486
    sget-object v47, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 4490
    .end local v44           #tempstring:Ljava/lang/String;
    :cond_e
    sget-object v47, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, "temprecord"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_f

    .line 4493
    new-instance v47, Ljava/lang/StringBuilder;

    sget-object v48, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "/electrum/samples/recordings/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-object v48, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v48

    iget-object v0, v0, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ".wav"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 4495
    .restart local v44       #tempstring:Ljava/lang/String;
    sget-object v47, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lelectrum2/drums/electrum;->copyfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4497
    sget-object v47, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 4501
    .end local v44           #tempstring:Ljava/lang/String;
    :cond_f
    sget-object v47, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, "temprecord"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_10

    .line 4504
    new-instance v47, Ljava/lang/StringBuilder;

    sget-object v48, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "/electrum/samples/recordings/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-object v48, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v48

    iget-object v0, v0, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ".wav"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 4506
    .restart local v44       #tempstring:Ljava/lang/String;
    sget-object v47, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lelectrum2/drums/electrum;->copyfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4508
    sget-object v47, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 4512
    .end local v44           #tempstring:Ljava/lang/String;
    :cond_10
    sget-object v47, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, "temprecord"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_11

    .line 4515
    new-instance v47, Ljava/lang/StringBuilder;

    sget-object v48, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "/electrum/samples/recordings/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-object v48, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v48

    iget-object v0, v0, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ".wav"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 4517
    .restart local v44       #tempstring:Ljava/lang/String;
    sget-object v47, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lelectrum2/drums/electrum;->copyfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4519
    sget-object v47, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 4523
    .end local v44           #tempstring:Ljava/lang/String;
    :cond_11
    sget-object v47, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, "temprecord"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_12

    .line 4526
    new-instance v47, Ljava/lang/StringBuilder;

    sget-object v48, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "/electrum/samples/recordings/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-object v48, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v48

    iget-object v0, v0, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ".wav"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 4528
    .restart local v44       #tempstring:Ljava/lang/String;
    sget-object v47, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lelectrum2/drums/electrum;->copyfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4530
    sget-object v47, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 4534
    .end local v44           #tempstring:Ljava/lang/String;
    :cond_12
    sget-object v47, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, "temprecord"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_13

    .line 4537
    new-instance v47, Ljava/lang/StringBuilder;

    sget-object v48, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "/electrum/samples/recordings/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-object v48, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v48

    iget-object v0, v0, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ".wav"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 4539
    .restart local v44       #tempstring:Ljava/lang/String;
    sget-object v47, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lelectrum2/drums/electrum;->copyfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4541
    sget-object v47, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 4545
    .end local v44           #tempstring:Ljava/lang/String;
    :cond_13
    sget-object v47, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, "temprecord"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_14

    .line 4548
    new-instance v47, Ljava/lang/StringBuilder;

    sget-object v48, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "/electrum/samples/recordings/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "/"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-object v48, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v48

    iget-object v0, v0, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ".wav"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 4550
    .restart local v44       #tempstring:Ljava/lang/String;
    sget-object v47, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lelectrum2/drums/electrum;->copyfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4552
    sget-object v47, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 4570
    .end local v10           #hasrecordings:Z
    .end local v35           #tempf:Ljava/io/File;
    .end local v36           #tempfile:Ljava/io/File;
    .end local v39           #temploc:I
    .end local v44           #tempstring:Ljava/lang/String;
    :cond_14
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4572
    .local v19, of:Ljava/io/FileOutputStream;
    new-instance v47, Ljava/lang/String;

    const-string v48, "V15\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4575
    sget-wide v47, Lelectrum2/drums/globalSounds;->globalVolume:D

    const-wide v49, 0x408f400000000000L

    mul-double v47, v47, v49

    move-wide/from16 v0, v47

    double-to-int v0, v0

    move/from16 v37, v0

    .line 4577
    .local v37, tempint1:I
    new-instance v46, Ljava/lang/Integer;

    move-object/from16 v0, v46

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4578
    .local v46, volint:Ljava/lang/Integer;
    new-instance v47, Ljava/lang/String;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "\r\n"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4580
    sget v47, Lelectrum2/drums/globalSounds;->shuffleamount:F

    const/high16 v48, 0x447a

    mul-float v47, v47, v48

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v38, v0

    .line 4581
    .local v38, tempint2:I
    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v0, v31

    move/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4582
    .local v31, shuffleint:Ljava/lang/Integer;
    new-instance v47, Ljava/lang/String;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "\r\n"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4587
    const-string v32, ""

    .line 4589
    .local v32, songstring:Ljava/lang/String;
    sget-object v47, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I

    move-result v47

    if-lez v47, :cond_20

    .line 4591
    const/4 v6, 0x0

    .local v6, count:I
    :goto_2
    sget-object v47, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I

    move-result v47

    move/from16 v0, v47

    if-lt v6, v0, :cond_1f

    .line 4602
    .end local v6           #count:I
    :goto_3
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "\r\n"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 4605
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4608
    new-instance v4, Ljava/lang/Float;

    sget v47, Lelectrum2/drums/electrum;->bpm:F

    move/from16 v0, v47

    invoke-direct {v4, v0}, Ljava/lang/Float;-><init>(F)V

    .line 4609
    .local v4, bpmstr:Ljava/lang/Float;
    invoke-virtual {v4}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v33

    .line 4610
    .local v33, strbpm:Ljava/lang/String;
    new-instance v29, Ljava/lang/Integer;

    sget v47, Lelectrum2/drums/electrum;->slotspermeasure:I

    move-object/from16 v0, v29

    move/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4611
    .local v29, resstr:Ljava/lang/Integer;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v34

    .line 4612
    .local v34, strres:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    const-string v47, "\r\n"

    move-object/from16 v0, v47

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4614
    .local v5, carrfeed:Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4615
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4616
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4617
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4620
    new-instance v7, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/electrum;->currentdrumkit:I

    move/from16 v47, v0

    move/from16 v0, v47

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 4621
    .local v7, drumkitnum:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4622
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4625
    new-instance v28, Ljava/lang/Integer;

    sget v47, Lelectrum2/drums/electrum;->numberofslots:I

    move-object/from16 v0, v28

    move/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4626
    .local v28, patternlenint:Ljava/lang/Integer;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4627
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4629
    new-instance v47, Ljava/lang/String;

    const-string v48, "pattern1\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4634
    new-instance v47, Ljava/lang/String;

    const-string v48, "sound1\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4637
    sget-object v47, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    move/from16 v47, v0

    if-eqz v47, :cond_21

    .line 4639
    new-instance v47, Ljava/lang/String;

    const-string v48, "1\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4644
    :goto_4
    new-instance v20, Ljava/lang/Integer;

    sget-object v47, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget v0, v0, Lelectrum2/drums/soundObj;->pitch:I

    move/from16 v47, v0

    move-object/from16 v0, v20

    move/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4645
    .local v20, outint:Ljava/lang/Integer;
    new-instance v47, Ljava/lang/String;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "\r\n"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4648
    new-instance v11, Ljava/lang/Integer;

    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-direct {v11, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 4649
    .local v11, loopfit1:Ljava/lang/Integer;
    sget-object v47, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v47, v0

    if-eqz v47, :cond_15

    const/16 v47, 0x1

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 4650
    :cond_15
    new-instance v47, Ljava/lang/String;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "\r\n"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4653
    sget-object v47, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->WritePatternsFile(Lelectrum2/drums/soundObj;Ljava/io/FileOutputStream;)Z

    .line 4657
    new-instance v47, Ljava/lang/String;

    const-string v48, "sound2\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4658
    sget-object v47, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    move/from16 v47, v0

    if-eqz v47, :cond_22

    .line 4660
    new-instance v47, Ljava/lang/String;

    const-string v48, "1\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4663
    :goto_5
    new-instance v21, Ljava/lang/Integer;

    sget-object v47, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget v0, v0, Lelectrum2/drums/soundObj;->pitch:I

    move/from16 v47, v0

    move-object/from16 v0, v21

    move/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4664
    .local v21, outint2:Ljava/lang/Integer;
    new-instance v47, Ljava/lang/String;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "\r\n"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4667
    new-instance v12, Ljava/lang/Integer;

    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 4668
    .local v12, loopfit2:Ljava/lang/Integer;
    sget-object v47, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v47, v0

    if-eqz v47, :cond_16

    const/16 v47, 0x1

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 4669
    :cond_16
    new-instance v47, Ljava/lang/String;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "\r\n"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4672
    sget-object v47, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->WritePatternsFile(Lelectrum2/drums/soundObj;Ljava/io/FileOutputStream;)Z

    .line 4674
    new-instance v47, Ljava/lang/String;

    const-string v48, "sound3\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4675
    sget-object v47, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    move/from16 v47, v0

    if-eqz v47, :cond_23

    .line 4677
    new-instance v47, Ljava/lang/String;

    const-string v48, "1\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4680
    :goto_6
    new-instance v22, Ljava/lang/Integer;

    sget-object v47, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget v0, v0, Lelectrum2/drums/soundObj;->pitch:I

    move/from16 v47, v0

    move-object/from16 v0, v22

    move/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4681
    .local v22, outint3:Ljava/lang/Integer;
    new-instance v47, Ljava/lang/String;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "\r\n"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4683
    new-instance v13, Ljava/lang/Integer;

    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-direct {v13, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 4684
    .local v13, loopfit3:Ljava/lang/Integer;
    sget-object v47, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v47, v0

    if-eqz v47, :cond_17

    const/16 v47, 0x1

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 4685
    :cond_17
    new-instance v47, Ljava/lang/String;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "\r\n"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4687
    sget-object v47, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->WritePatternsFile(Lelectrum2/drums/soundObj;Ljava/io/FileOutputStream;)Z

    .line 4689
    new-instance v47, Ljava/lang/String;

    const-string v48, "sound4\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4690
    sget-object v47, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    move/from16 v47, v0

    if-eqz v47, :cond_24

    .line 4692
    new-instance v47, Ljava/lang/String;

    const-string v48, "1\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4695
    :goto_7
    new-instance v23, Ljava/lang/Integer;

    sget-object v47, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget v0, v0, Lelectrum2/drums/soundObj;->pitch:I

    move/from16 v47, v0

    move-object/from16 v0, v23

    move/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4696
    .local v23, outint4:Ljava/lang/Integer;
    new-instance v47, Ljava/lang/String;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "\r\n"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4698
    new-instance v14, Ljava/lang/Integer;

    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-direct {v14, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 4699
    .local v14, loopfit4:Ljava/lang/Integer;
    sget-object v47, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v47, v0

    if-eqz v47, :cond_18

    const/16 v47, 0x1

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 4700
    :cond_18
    new-instance v47, Ljava/lang/String;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "\r\n"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4702
    sget-object v47, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->WritePatternsFile(Lelectrum2/drums/soundObj;Ljava/io/FileOutputStream;)Z

    .line 4704
    new-instance v47, Ljava/lang/String;

    const-string v48, "sound5\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4705
    sget-object v47, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    move/from16 v47, v0

    if-eqz v47, :cond_25

    .line 4707
    new-instance v47, Ljava/lang/String;

    const-string v48, "1\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4710
    :goto_8
    new-instance v24, Ljava/lang/Integer;

    sget-object v47, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget v0, v0, Lelectrum2/drums/soundObj;->pitch:I

    move/from16 v47, v0

    move-object/from16 v0, v24

    move/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4711
    .local v24, outint5:Ljava/lang/Integer;
    new-instance v47, Ljava/lang/String;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "\r\n"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4713
    new-instance v15, Ljava/lang/Integer;

    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-direct {v15, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 4714
    .local v15, loopfit5:Ljava/lang/Integer;
    sget-object v47, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v47, v0

    if-eqz v47, :cond_19

    const/16 v47, 0x1

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 4715
    :cond_19
    new-instance v47, Ljava/lang/String;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "\r\n"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4717
    sget-object v47, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->WritePatternsFile(Lelectrum2/drums/soundObj;Ljava/io/FileOutputStream;)Z

    .line 4719
    new-instance v47, Ljava/lang/String;

    const-string v48, "sound6\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4720
    sget-object v47, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    move/from16 v47, v0

    if-eqz v47, :cond_26

    .line 4722
    new-instance v47, Ljava/lang/String;

    const-string v48, "1\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4725
    :goto_9
    new-instance v25, Ljava/lang/Integer;

    sget-object v47, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget v0, v0, Lelectrum2/drums/soundObj;->pitch:I

    move/from16 v47, v0

    move-object/from16 v0, v25

    move/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4726
    .local v25, outint6:Ljava/lang/Integer;
    new-instance v47, Ljava/lang/String;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "\r\n"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4728
    new-instance v16, Ljava/lang/Integer;

    const/16 v47, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4729
    .local v16, loopfit6:Ljava/lang/Integer;
    sget-object v47, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v47, v0

    if-eqz v47, :cond_1a

    const/16 v47, 0x1

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 4730
    :cond_1a
    new-instance v47, Ljava/lang/String;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "\r\n"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4733
    sget-object v47, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->WritePatternsFile(Lelectrum2/drums/soundObj;Ljava/io/FileOutputStream;)Z

    .line 4736
    new-instance v47, Ljava/lang/String;

    const-string v48, "sound7\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4737
    sget-object v47, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    move/from16 v47, v0

    if-eqz v47, :cond_27

    .line 4739
    new-instance v47, Ljava/lang/String;

    const-string v48, "1\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4742
    :goto_a
    new-instance v26, Ljava/lang/Integer;

    sget-object v47, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget v0, v0, Lelectrum2/drums/soundObj;->pitch:I

    move/from16 v47, v0

    move-object/from16 v0, v26

    move/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4743
    .local v26, outint7:Ljava/lang/Integer;
    new-instance v47, Ljava/lang/String;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "\r\n"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4745
    new-instance v17, Ljava/lang/Integer;

    const/16 v47, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4746
    .local v17, loopfit7:Ljava/lang/Integer;
    sget-object v47, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v47, v0

    if-eqz v47, :cond_1b

    const/16 v47, 0x1

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 4747
    :cond_1b
    new-instance v47, Ljava/lang/String;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "\r\n"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4750
    sget-object v47, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->WritePatternsFile(Lelectrum2/drums/soundObj;Ljava/io/FileOutputStream;)Z

    .line 4752
    new-instance v47, Ljava/lang/String;

    const-string v48, "sound8\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4753
    sget-object v47, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    move/from16 v47, v0

    if-eqz v47, :cond_28

    .line 4755
    new-instance v47, Ljava/lang/String;

    const-string v48, "1\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4758
    :goto_b
    new-instance v27, Ljava/lang/Integer;

    sget-object v47, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget v0, v0, Lelectrum2/drums/soundObj;->pitch:I

    move/from16 v47, v0

    move-object/from16 v0, v27

    move/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4759
    .local v27, outint8:Ljava/lang/Integer;
    new-instance v47, Ljava/lang/String;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "\r\n"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4761
    new-instance v18, Ljava/lang/Integer;

    const/16 v47, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 4762
    .local v18, loopfit8:Ljava/lang/Integer;
    sget-object v47, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v47, v0

    if-eqz v47, :cond_1c

    const/16 v47, 0x1

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 4763
    :cond_1c
    new-instance v47, Ljava/lang/String;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "\r\n"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4766
    sget-object v47, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->WritePatternsFile(Lelectrum2/drums/soundObj;Ljava/io/FileOutputStream;)Z

    .line 4771
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 4773
    if-nez p2, :cond_1d

    .line 4778
    const-string v47, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v40

    .line 4780
    .local v40, temploc1:I
    add-int/lit8 v47, v40, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v48

    move-object/from16 v0, p1

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    .line 4782
    .local v43, tempresult1:Ljava/lang/String;
    sput-object v43, Lelectrum2/drums/globalSounds;->projectname:Ljava/lang/String;

    .line 4784
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->SetProjectText()V

    .line 4788
    const v47, 0x7f060003

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v45

    .line 4790
    .local v45, temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v45 .. v45}, Landroid/widget/Toast;->show()V

    .line 4806
    .end local v4           #bpmstr:Ljava/lang/Float;
    .end local v5           #carrfeed:Ljava/lang/String;
    .end local v7           #drumkitnum:Ljava/lang/Integer;
    .end local v11           #loopfit1:Ljava/lang/Integer;
    .end local v12           #loopfit2:Ljava/lang/Integer;
    .end local v13           #loopfit3:Ljava/lang/Integer;
    .end local v14           #loopfit4:Ljava/lang/Integer;
    .end local v15           #loopfit5:Ljava/lang/Integer;
    .end local v16           #loopfit6:Ljava/lang/Integer;
    .end local v17           #loopfit7:Ljava/lang/Integer;
    .end local v18           #loopfit8:Ljava/lang/Integer;
    .end local v19           #of:Ljava/io/FileOutputStream;
    .end local v20           #outint:Ljava/lang/Integer;
    .end local v21           #outint2:Ljava/lang/Integer;
    .end local v22           #outint3:Ljava/lang/Integer;
    .end local v23           #outint4:Ljava/lang/Integer;
    .end local v24           #outint5:Ljava/lang/Integer;
    .end local v25           #outint6:Ljava/lang/Integer;
    .end local v26           #outint7:Ljava/lang/Integer;
    .end local v27           #outint8:Ljava/lang/Integer;
    .end local v28           #patternlenint:Ljava/lang/Integer;
    .end local v29           #resstr:Ljava/lang/Integer;
    .end local v30           #saveFile:Ljava/io/File;
    .end local v31           #shuffleint:Ljava/lang/Integer;
    .end local v32           #songstring:Ljava/lang/String;
    .end local v33           #strbpm:Ljava/lang/String;
    .end local v34           #strres:Ljava/lang/String;
    .end local v37           #tempint1:I
    .end local v38           #tempint2:I
    .end local v40           #temploc1:I
    .end local v41           #tempname:Ljava/lang/String;
    .end local v43           #tempresult1:Ljava/lang/String;
    .end local v45           #temptoast:Landroid/widget/Toast;
    .end local v46           #volint:Ljava/lang/Integer;
    :cond_1d
    :goto_c
    return-void

    .line 4378
    .restart local v39       #temploc:I
    .restart local v42       #tempresult:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 4381
    .local v9, e1:Ljava/lang/Exception;
    new-instance v47, Ljava/lang/StringBuilder;

    const-string v48, "Error saving pattern...\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v45

    .line 4383
    .restart local v45       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v45 .. v45}, Landroid/widget/Toast;->show()V

    .line 4384
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 4438
    .end local v9           #e1:Ljava/lang/Exception;
    .end local v42           #tempresult:Ljava/lang/String;
    .end local v45           #temptoast:Landroid/widget/Toast;
    .restart local v30       #saveFile:Ljava/io/File;
    .restart local v41       #tempname:Ljava/lang/String;
    :cond_1e
    move-object/from16 v41, p1

    goto/16 :goto_1

    .line 4593
    .end local v39           #temploc:I
    .restart local v6       #count:I
    .restart local v19       #of:Ljava/io/FileOutputStream;
    .restart local v31       #shuffleint:Ljava/lang/Integer;
    .restart local v32       #songstring:Ljava/lang/String;
    .restart local v37       #tempint1:I
    .restart local v38       #tempint2:I
    .restart local v46       #volint:Ljava/lang/Integer;
    :cond_1f
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v47, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/String;

    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 4594
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, ","

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 4591
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 4599
    .end local v6           #count:I
    :cond_20
    const-string v32, "0"

    goto/16 :goto_3

    .line 4641
    .restart local v4       #bpmstr:Ljava/lang/Float;
    .restart local v5       #carrfeed:Ljava/lang/String;
    .restart local v7       #drumkitnum:Ljava/lang/Integer;
    .restart local v28       #patternlenint:Ljava/lang/Integer;
    .restart local v29       #resstr:Ljava/lang/Integer;
    .restart local v33       #strbpm:Ljava/lang/String;
    .restart local v34       #strres:Ljava/lang/String;
    :cond_21
    new-instance v47, Ljava/lang/String;

    const-string v48, "0\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 4799
    .end local v4           #bpmstr:Ljava/lang/Float;
    .end local v5           #carrfeed:Ljava/lang/String;
    .end local v7           #drumkitnum:Ljava/lang/Integer;
    .end local v19           #of:Ljava/io/FileOutputStream;
    .end local v28           #patternlenint:Ljava/lang/Integer;
    .end local v29           #resstr:Ljava/lang/Integer;
    .end local v30           #saveFile:Ljava/io/File;
    .end local v31           #shuffleint:Ljava/lang/Integer;
    .end local v32           #songstring:Ljava/lang/String;
    .end local v33           #strbpm:Ljava/lang/String;
    .end local v34           #strres:Ljava/lang/String;
    .end local v37           #tempint1:I
    .end local v38           #tempint2:I
    .end local v41           #tempname:Ljava/lang/String;
    .end local v46           #volint:Ljava/lang/Integer;
    :catch_1
    move-exception v8

    .line 4802
    .local v8, e:Ljava/lang/Exception;
    new-instance v47, Ljava/lang/StringBuilder;

    const-string v48, "Error saving pattern...\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v45

    .line 4804
    .restart local v45       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v45 .. v45}, Landroid/widget/Toast;->show()V

    goto/16 :goto_c

    .line 4662
    .end local v8           #e:Ljava/lang/Exception;
    .end local v45           #temptoast:Landroid/widget/Toast;
    .restart local v4       #bpmstr:Ljava/lang/Float;
    .restart local v5       #carrfeed:Ljava/lang/String;
    .restart local v7       #drumkitnum:Ljava/lang/Integer;
    .restart local v11       #loopfit1:Ljava/lang/Integer;
    .restart local v19       #of:Ljava/io/FileOutputStream;
    .restart local v20       #outint:Ljava/lang/Integer;
    .restart local v28       #patternlenint:Ljava/lang/Integer;
    .restart local v29       #resstr:Ljava/lang/Integer;
    .restart local v30       #saveFile:Ljava/io/File;
    .restart local v31       #shuffleint:Ljava/lang/Integer;
    .restart local v32       #songstring:Ljava/lang/String;
    .restart local v33       #strbpm:Ljava/lang/String;
    .restart local v34       #strres:Ljava/lang/String;
    .restart local v37       #tempint1:I
    .restart local v38       #tempint2:I
    .restart local v41       #tempname:Ljava/lang/String;
    .restart local v46       #volint:Ljava/lang/Integer;
    :cond_22
    :try_start_3
    new-instance v47, Ljava/lang/String;

    const-string v48, "0\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_5

    .line 4679
    .restart local v12       #loopfit2:Ljava/lang/Integer;
    .restart local v21       #outint2:Ljava/lang/Integer;
    :cond_23
    new-instance v47, Ljava/lang/String;

    const-string v48, "0\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_6

    .line 4694
    .restart local v13       #loopfit3:Ljava/lang/Integer;
    .restart local v22       #outint3:Ljava/lang/Integer;
    :cond_24
    new-instance v47, Ljava/lang/String;

    const-string v48, "0\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_7

    .line 4709
    .restart local v14       #loopfit4:Ljava/lang/Integer;
    .restart local v23       #outint4:Ljava/lang/Integer;
    :cond_25
    new-instance v47, Ljava/lang/String;

    const-string v48, "0\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_8

    .line 4724
    .restart local v15       #loopfit5:Ljava/lang/Integer;
    .restart local v24       #outint5:Ljava/lang/Integer;
    :cond_26
    new-instance v47, Ljava/lang/String;

    const-string v48, "0\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_9

    .line 4741
    .restart local v16       #loopfit6:Ljava/lang/Integer;
    .restart local v25       #outint6:Ljava/lang/Integer;
    :cond_27
    new-instance v47, Ljava/lang/String;

    const-string v48, "0\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_a

    .line 4757
    .restart local v17       #loopfit7:Ljava/lang/Integer;
    .restart local v26       #outint7:Ljava/lang/Integer;
    :cond_28
    new-instance v47, Ljava/lang/String;

    const-string v48, "0\r\n"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->getBytes()[B

    move-result-object v47

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_b
.end method

.method private SetButtonLight(ZZLandroid/widget/ImageView;Z)V
    .locals 1
    .parameter "onoroff"
    .parameter "accented"
    .parameter "drum"
    .parameter "disabled"

    .prologue
    .line 2664
    if-eqz p4, :cond_0

    .line 2666
    const v0, 0x7f020053

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2685
    :goto_0
    return-void

    .line 2670
    :cond_0
    if-eqz p1, :cond_2

    .line 2672
    if-eqz p2, :cond_1

    .line 2674
    const v0, 0x7f020057

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2677
    :cond_1
    const v0, 0x7f020054

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2681
    :cond_2
    const v0, 0x7f020055

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private SetDrumsCurrentPattern()V
    .locals 2

    .prologue
    .line 1540
    sget-object v0, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    iget v1, p0, Lelectrum2/drums/electrum;->currentpattern:I

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->setCurrentPattern(I)V

    .line 1541
    sget-object v0, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    iget v1, p0, Lelectrum2/drums/electrum;->currentpattern:I

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->setCurrentPattern(I)V

    .line 1542
    sget-object v0, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    iget v1, p0, Lelectrum2/drums/electrum;->currentpattern:I

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->setCurrentPattern(I)V

    .line 1543
    sget-object v0, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    iget v1, p0, Lelectrum2/drums/electrum;->currentpattern:I

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->setCurrentPattern(I)V

    .line 1544
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    iget v1, p0, Lelectrum2/drums/electrum;->currentpattern:I

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->setCurrentPattern(I)V

    .line 1545
    sget-object v0, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    iget v1, p0, Lelectrum2/drums/electrum;->currentpattern:I

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->setCurrentPattern(I)V

    .line 1546
    sget-object v0, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    iget v1, p0, Lelectrum2/drums/electrum;->currentpattern:I

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->setCurrentPattern(I)V

    .line 1547
    sget-object v0, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    iget v1, p0, Lelectrum2/drums/electrum;->currentpattern:I

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->setCurrentPattern(I)V

    .line 1549
    iget-object v0, p0, Lelectrum2/drums/electrum;->patternHandler:Landroid/os/Handler;

    iget-object v1, p0, Lelectrum2/drums/electrum;->UpdatePattern:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1552
    return-void
.end method

.method private SetSelectedSound(I)V
    .locals 2
    .parameter "soundid"

    .prologue
    const/4 v1, 0x0

    .line 2018
    packed-switch p1, :pswitch_data_0

    .line 2046
    :goto_0
    iget-boolean v0, p0, Lelectrum2/drums/electrum;->wasMuted:Z

    if-eqz v0, :cond_0

    .line 2048
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    if-eqz v0, :cond_1

    .line 2050
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v0}, Lelectrum2/drums/soundObj;->ResetSound()V

    .line 2052
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->mute:Z

    .line 2054
    iput-boolean v1, p0, Lelectrum2/drums/electrum;->wasMuted:Z

    .line 2065
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lelectrum2/drums/electrum;->DisplaySelectedSound(I)V

    .line 2069
    invoke-direct {p0}, Lelectrum2/drums/electrum;->DisplaySoundSlots()V

    .line 2072
    return-void

    .line 2021
    :pswitch_0
    sget-object v0, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 2024
    :pswitch_1
    sget-object v0, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 2027
    :pswitch_2
    sget-object v0, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 2030
    :pswitch_3
    sget-object v0, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 2033
    :pswitch_4
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 2036
    :pswitch_5
    sget-object v0, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 2039
    :pswitch_6
    sget-object v0, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 2042
    :pswitch_7
    sget-object v0, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 2058
    :cond_1
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->mute:Z

    goto :goto_1

    .line 2018
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private ToggleSound(I)V
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1828
    sget v2, Lelectrum2/drums/electrum;->numberofslots:I

    if-gt p1, v2, :cond_2

    .line 1831
    add-int/lit8 p1, p1, -0x1

    .line 1833
    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v2, p1}, Lelectrum2/drums/soundObj;->getPlaySlot(I)Z

    move-result v1

    .line 1834
    .local v1, currentval:Z
    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v2, p1}, Lelectrum2/drums/soundObj;->getAccentSlot(I)Z

    move-result v0

    .line 1836
    .local v0, accentval:Z
    if-nez v1, :cond_0

    move v1, v0

    .line 1840
    :cond_0
    if-nez v1, :cond_3

    .line 1842
    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v2, p1, v4, v3}, Lelectrum2/drums/soundObj;->SetPlaySlot(IZZ)V

    .line 1855
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lelectrum2/drums/electrum;->wasLongPressed:Z

    if-eqz v2, :cond_2

    .line 1857
    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v2, p1, v4, v4}, Lelectrum2/drums/soundObj;->SetPlaySlot(IZZ)V

    .line 1862
    .end local v0           #accentval:Z
    .end local v1           #currentval:Z
    :cond_2
    invoke-direct {p0}, Lelectrum2/drums/electrum;->DisplaySoundSlots()V

    .line 1867
    return-void

    .line 1844
    .restart local v0       #accentval:Z
    .restart local v1       #currentval:Z
    :cond_3
    if-eqz v1, :cond_1

    .line 1850
    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v2, p1, v3, v3}, Lelectrum2/drums/soundObj;->SetPlaySlot(IZZ)V

    goto :goto_0
.end method

.method private UpdateDrumNames()V
    .locals 2

    .prologue
    .line 1641
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumname1:Landroid/widget/TextView;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1642
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumname2:Landroid/widget/TextView;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1643
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumname3:Landroid/widget/TextView;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1644
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumname4:Landroid/widget/TextView;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1645
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumname5:Landroid/widget/TextView;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1646
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumname6:Landroid/widget/TextView;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1647
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumname7:Landroid/widget/TextView;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1648
    iget-object v0, p0, Lelectrum2/drums/electrum;->drumname8:Landroid/widget/TextView;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1651
    return-void
.end method

.method private WriteDrumkitsFile(Lelectrum2/drums/soundObj;Ljava/io/FileOutputStream;)Z
    .locals 22
    .parameter "soundin"
    .parameter "out"

    .prologue
    .line 5559
    const/4 v7, 0x1

    .line 5565
    .local v7, retval:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 5566
    .local v17, tempstring1:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 5570
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5572
    move-object/from16 v0, p1

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "Default"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 5574
    move-object/from16 v0, p1

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 5575
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 5576
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5583
    :goto_0
    new-instance v18, Ljava/lang/Double;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lelectrum2/drums/soundObj;->samplevolume:D

    move-wide/from16 v19, v0

    invoke-direct/range {v18 .. v20}, Ljava/lang/Double;-><init>(D)V

    .line 5584
    .local v18, tempvolume:Ljava/lang/Double;
    new-instance v14, Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 5585
    .local v14, templength:Ljava/lang/Integer;
    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget v0, v0, Lelectrum2/drums/soundObj;->startpos:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 5587
    .local v16, tempstart:Ljava/lang/Integer;
    new-instance v15, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Lelectrum2/drums/soundObj;->GetPan()I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 5590
    .local v15, temppan:Ljava/lang/Integer;
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5591
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5592
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5594
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5597
    new-instance v9, Ljava/lang/Float;

    move-object/from16 v0, p1

    iget v0, v0, Lelectrum2/drums/soundObj;->fxdistortionthreshold:F

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/lang/Float;-><init>(F)V

    .line 5598
    .local v9, tempf:Ljava/lang/Float;
    new-instance v10, Ljava/lang/Float;

    move-object/from16 v0, p1

    iget v0, v0, Lelectrum2/drums/soundObj;->fxdistortiongain:F

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/lang/Float;-><init>(F)V

    .line 5599
    .local v10, tempf2:Ljava/lang/Float;
    new-instance v4, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->hasDistortion:Z

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/Boolean;-><init>(Z)V

    .line 5600
    .local v4, hasdist:Ljava/lang/Boolean;
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5601
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5602
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5606
    new-instance v11, Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget v0, v0, Lelectrum2/drums/soundObj;->fxdelaytime:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 5607
    .local v11, tempfx1:Ljava/lang/Integer;
    new-instance v12, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->fxdelaywrap:Z

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/lang/Boolean;-><init>(Z)V

    .line 5608
    .local v12, tempfx2:Ljava/lang/Boolean;
    new-instance v13, Ljava/lang/Float;

    move-object/from16 v0, p1

    iget v0, v0, Lelectrum2/drums/soundObj;->fxdelayfeedback:F

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/lang/Float;-><init>(F)V

    .line 5609
    .local v13, tempfx3:Ljava/lang/Float;
    new-instance v3, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->hasDelay:Z

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/lang/Boolean;-><init>(Z)V

    .line 5611
    .local v3, hasdelay:Ljava/lang/Boolean;
    new-instance v6, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->hasReverse:Z

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/lang/Boolean;-><init>(Z)V

    .line 5613
    .local v6, hasreverse:Ljava/lang/Boolean;
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5614
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5615
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5616
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5618
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5622
    new-instance v5, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->retrigger:Z

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/lang/Boolean;-><init>(Z)V

    .line 5623
    .local v5, hasretrig:Ljava/lang/Boolean;
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    move v8, v7

    .line 5633
    .end local v3           #hasdelay:Ljava/lang/Boolean;
    .end local v4           #hasdist:Ljava/lang/Boolean;
    .end local v5           #hasretrig:Ljava/lang/Boolean;
    .end local v6           #hasreverse:Ljava/lang/Boolean;
    .end local v7           #retval:Z
    .end local v9           #tempf:Ljava/lang/Float;
    .end local v10           #tempf2:Ljava/lang/Float;
    .end local v11           #tempfx1:Ljava/lang/Integer;
    .end local v12           #tempfx2:Ljava/lang/Boolean;
    .end local v13           #tempfx3:Ljava/lang/Float;
    .end local v14           #templength:Ljava/lang/Integer;
    .end local v15           #temppan:Ljava/lang/Integer;
    .end local v16           #tempstart:Ljava/lang/Integer;
    .end local v18           #tempvolume:Ljava/lang/Double;
    .local v8, retval:I
    :goto_1
    return v8

    .line 5579
    .end local v8           #retval:I
    .restart local v7       #retval:Z
    :cond_0
    new-instance v19, Ljava/lang/String;

    const-string v20, "Default\r\n"

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5627
    :catch_0
    move-exception v2

    .line 5629
    .local v2, e1:Ljava/io/IOException;
    const/4 v7, 0x0

    move v8, v7

    .line 5630
    .restart local v8       #retval:I
    goto :goto_1
.end method

.method private WritePatternsFile(Lelectrum2/drums/soundObj;Ljava/io/FileOutputStream;)Z
    .locals 24
    .parameter "soundin"
    .parameter "out"

    .prologue
    .line 5640
    const/4 v9, 0x1

    .line 5646
    .local v9, retval:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 5647
    .local v19, tempstring1:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "\r\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 5651
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5653
    move-object/from16 v0, p1

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "Default"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 5655
    move-object/from16 v0, p1

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 5656
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "\r\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 5657
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5664
    :goto_0
    new-instance v20, Ljava/lang/Double;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lelectrum2/drums/soundObj;->samplevolume:D

    move-wide/from16 v21, v0

    invoke-direct/range {v20 .. v22}, Ljava/lang/Double;-><init>(D)V

    .line 5665
    .local v20, tempvolume:Ljava/lang/Double;
    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 5666
    .local v16, templength:Ljava/lang/Integer;
    new-instance v18, Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget v0, v0, Lelectrum2/drums/soundObj;->startpos:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 5669
    .local v18, tempstart:Ljava/lang/Integer;
    new-instance v17, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Lelectrum2/drums/soundObj;->GetPan()I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 5673
    .local v17, temppan:Ljava/lang/Integer;
    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5674
    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5675
    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5677
    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5681
    new-instance v11, Ljava/lang/Float;

    move-object/from16 v0, p1

    iget v0, v0, Lelectrum2/drums/soundObj;->fxdistortionthreshold:F

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/lang/Float;-><init>(F)V

    .line 5682
    .local v11, tempf:Ljava/lang/Float;
    new-instance v12, Ljava/lang/Float;

    move-object/from16 v0, p1

    iget v0, v0, Lelectrum2/drums/soundObj;->fxdistortiongain:F

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/lang/Float;-><init>(F)V

    .line 5683
    .local v12, tempf2:Ljava/lang/Float;
    new-instance v6, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->hasDistortion:Z

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/lang/Boolean;-><init>(Z)V

    .line 5684
    .local v6, hasdist:Ljava/lang/Boolean;
    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5685
    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5686
    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5690
    new-instance v13, Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget v0, v0, Lelectrum2/drums/soundObj;->fxdelaytime:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 5691
    .local v13, tempfx1:Ljava/lang/Integer;
    new-instance v14, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->fxdelaywrap:Z

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/lang/Boolean;-><init>(Z)V

    .line 5692
    .local v14, tempfx2:Ljava/lang/Boolean;
    new-instance v15, Ljava/lang/Float;

    move-object/from16 v0, p1

    iget v0, v0, Lelectrum2/drums/soundObj;->fxdelayfeedback:F

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/lang/Float;-><init>(F)V

    .line 5693
    .local v15, tempfx3:Ljava/lang/Float;
    new-instance v5, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->hasDelay:Z

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/Boolean;-><init>(Z)V

    .line 5695
    .local v5, hasdelay:Ljava/lang/Boolean;
    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5696
    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5697
    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5698
    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5701
    new-instance v4, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->hasReverse:Z

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/lang/Boolean;-><init>(Z)V

    .line 5702
    .local v4, hasReverse:Ljava/lang/Boolean;
    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5706
    new-instance v8, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->retrigger:Z

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/lang/Boolean;-><init>(Z)V

    .line 5707
    .local v8, retrigval:Ljava/lang/Boolean;
    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5722
    const/4 v7, 0x0

    .local v7, patcount:I
    :goto_1
    sget v21, Lelectrum2/drums/soundObj;->NUM_PATTERNS:I

    move/from16 v0, v21

    if-lt v7, v0, :cond_1

    move v10, v9

    .line 5785
    .end local v4           #hasReverse:Ljava/lang/Boolean;
    .end local v5           #hasdelay:Ljava/lang/Boolean;
    .end local v6           #hasdist:Ljava/lang/Boolean;
    .end local v7           #patcount:I
    .end local v8           #retrigval:Ljava/lang/Boolean;
    .end local v9           #retval:Z
    .end local v11           #tempf:Ljava/lang/Float;
    .end local v12           #tempf2:Ljava/lang/Float;
    .end local v13           #tempfx1:Ljava/lang/Integer;
    .end local v14           #tempfx2:Ljava/lang/Boolean;
    .end local v15           #tempfx3:Ljava/lang/Float;
    .end local v16           #templength:Ljava/lang/Integer;
    .end local v17           #temppan:Ljava/lang/Integer;
    .end local v18           #tempstart:Ljava/lang/Integer;
    .end local v20           #tempvolume:Ljava/lang/Double;
    .local v10, retval:I
    :goto_2
    return v10

    .line 5660
    .end local v10           #retval:I
    .restart local v9       #retval:Z
    :cond_0
    :try_start_1
    new-instance v21, Ljava/lang/String;

    const-string v22, "Default\r\n"

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 5712
    :catch_0
    move-exception v3

    .line 5714
    .local v3, e1:Ljava/io/IOException;
    const/4 v9, 0x0

    move v10, v9

    .line 5715
    .restart local v10       #retval:I
    goto :goto_2

    .line 5729
    .end local v3           #e1:Ljava/io/IOException;
    .end local v10           #retval:I
    .restart local v4       #hasReverse:Ljava/lang/Boolean;
    .restart local v5       #hasdelay:Ljava/lang/Boolean;
    .restart local v6       #hasdist:Ljava/lang/Boolean;
    .restart local v7       #patcount:I
    .restart local v8       #retrigval:Ljava/lang/Boolean;
    .restart local v11       #tempf:Ljava/lang/Float;
    .restart local v12       #tempf2:Ljava/lang/Float;
    .restart local v13       #tempfx1:Ljava/lang/Integer;
    .restart local v14       #tempfx2:Ljava/lang/Boolean;
    .restart local v15       #tempfx3:Ljava/lang/Float;
    .restart local v16       #templength:Ljava/lang/Integer;
    .restart local v17       #temppan:Ljava/lang/Integer;
    .restart local v18       #tempstart:Ljava/lang/Integer;
    .restart local v20       #tempvolume:Ljava/lang/Double;
    :cond_1
    const/4 v2, 0x0

    .local v2, count:I
    :goto_3
    const/16 v21, 0xf

    move/from16 v0, v21

    if-le v2, v0, :cond_2

    .line 5722
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 5753
    :cond_2
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lelectrum2/drums/soundObj;->playslot:[[Z

    move-object/from16 v21, v0

    aget-object v21, v21, v7

    aget-boolean v21, v21, v2

    if-eqz v21, :cond_4

    .line 5755
    move-object/from16 v0, p1

    iget-object v0, v0, Lelectrum2/drums/soundObj;->accentslot:[[Z

    move-object/from16 v21, v0

    aget-object v21, v21, v7

    aget-boolean v21, v21, v2

    if-nez v21, :cond_3

    .line 5757
    new-instance v21, Ljava/lang/String;

    const-string v22, "1\r\n"

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 5729
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5761
    :cond_3
    new-instance v21, Ljava/lang/String;

    const-string v22, "2\r\n"

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_4

    .line 5771
    :catch_1
    move-exception v3

    .line 5773
    .local v3, e1:Ljava/lang/Exception;
    const/4 v9, 0x0

    move v10, v9

    .line 5774
    .restart local v10       #retval:I
    goto :goto_2

    .line 5765
    .end local v3           #e1:Ljava/lang/Exception;
    .end local v10           #retval:I
    :cond_4
    new-instance v21, Ljava/lang/String;

    const-string v22, "0\r\n"

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4
.end method

.method static synthetic access$0(Lelectrum2/drums/electrum;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2015
    invoke-direct {p0, p1}, Lelectrum2/drums/electrum;->SetSelectedSound(I)V

    return-void
.end method

.method static synthetic access$1(Lelectrum2/drums/electrum;)V
    .locals 0
    .parameter

    .prologue
    .line 2688
    invoke-direct {p0}, Lelectrum2/drums/electrum;->DisplaySoundSlots()V

    return-void
.end method

.method static synthetic access$10(Lelectrum2/drums/electrum;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 1568
    iget-object v0, p0, Lelectrum2/drums/electrum;->UpdatePattern:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$11(Lelectrum2/drums/electrum;)V
    .locals 0
    .parameter

    .prologue
    .line 6408
    invoke-direct {p0}, Lelectrum2/drums/electrum;->ResetDrumButtonLights()V

    return-void
.end method

.method static synthetic access$12(Lelectrum2/drums/electrum;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 1589
    iget-object v0, p0, Lelectrum2/drums/electrum;->GlobalErrorHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$13(Lelectrum2/drums/electrum;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 1611
    iget-object v0, p0, Lelectrum2/drums/electrum;->DoneExporting:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2(Lelectrum2/drums/electrum;)V
    .locals 0
    .parameter

    .prologue
    .line 1537
    invoke-direct {p0}, Lelectrum2/drums/electrum;->SetDrumsCurrentPattern()V

    return-void
.end method

.method static synthetic access$3(Lelectrum2/drums/electrum;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    invoke-direct {p0}, Lelectrum2/drums/electrum;->stopCurrentPadTrack()V

    return-void
.end method

.method static synthetic access$4(Lelectrum2/drums/electrum;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    invoke-direct {p0}, Lelectrum2/drums/electrum;->playCurrentPadTrack()V

    return-void
.end method

.method static synthetic access$5(Lelectrum2/drums/electrum;)V
    .locals 0
    .parameter

    .prologue
    .line 669
    invoke-direct {p0}, Lelectrum2/drums/electrum;->stopAllPadTracks()V

    return-void
.end method

.method static synthetic access$6(Lelectrum2/drums/electrum;)Landroid/view/GestureDetector;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lelectrum2/drums/electrum;->gestureScanner:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$7(Lelectrum2/drums/electrum;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1824
    invoke-direct {p0, p1}, Lelectrum2/drums/electrum;->ToggleSound(I)V

    return-void
.end method

.method static synthetic access$8(Lelectrum2/drums/electrum;)Landroid/view/GestureDetector;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lelectrum2/drums/electrum;->gestureScannerDrumSlot:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$9(Lelectrum2/drums/electrum;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4352
    invoke-direct {p0, p1, p2}, Lelectrum2/drums/electrum;->SavePatterns(Ljava/lang/String;Z)V

    return-void
.end method

.method private static copyfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "srFile"
    .parameter "dtFile"

    .prologue
    .line 4811
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4812
    .local v1, f1:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4813
    .local v2, f2:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4819
    .local v3, in:Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4821
    .local v5, out:Ljava/io/OutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 4823
    .local v0, buf:[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, len:I
    if-gtz v4, :cond_0

    .line 4826
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 4827
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 4828
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "File copied."

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4837
    .end local v0           #buf:[B
    .end local v1           #f1:Ljava/io/File;
    .end local v2           #f2:Ljava/io/File;
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #len:I
    .end local v5           #out:Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 4824
    .restart local v0       #buf:[B
    .restart local v1       #f1:Ljava/io/File;
    .restart local v2       #f2:Ljava/io/File;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #len:I
    .restart local v5       #out:Ljava/io/OutputStream;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4830
    .end local v0           #buf:[B
    .end local v1           #f1:Ljava/io/File;
    .end local v2           #f2:Ljava/io/File;
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #len:I
    .end local v5           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 4834
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private playCurrentPadTrack()V
    .locals 10

    .prologue
    .line 325
    :try_start_0
    sget-boolean v0, Lelectrum2/drums/globalSounds;->cutpadswhenhit:Z

    if-eqz v0, :cond_1

    .line 329
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v7, v0, v1

    .line 331
    .local v7, buffersize:I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    .line 333
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v2, Lelectrum2/drums/soundObj;->startpos:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 337
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 481
    .end local v7           #buffersize:I
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_2

    .line 348
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v7, v0, v1

    .line 350
    .restart local v7       #buffersize:I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    .line 352
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v2, Lelectrum2/drums/soundObj;->startpos:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 355
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 363
    .end local v7           #buffersize:I
    :cond_2
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_3

    .line 366
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v7, v0, v1

    .line 368
    .restart local v7       #buffersize:I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->padtrack2:Landroid/media/AudioTrack;

    .line 370
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack2:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v2, Lelectrum2/drums/soundObj;->startpos:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 374
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack2:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 379
    .end local v7           #buffersize:I
    :cond_3
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_4

    .line 382
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v7, v0, v1

    .line 384
    .restart local v7       #buffersize:I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->padtrack3:Landroid/media/AudioTrack;

    .line 386
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack3:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v2, Lelectrum2/drums/soundObj;->startpos:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 390
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack3:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 394
    .end local v7           #buffersize:I
    :cond_4
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_5

    .line 397
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v7, v0, v1

    .line 399
    .restart local v7       #buffersize:I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->padtrack4:Landroid/media/AudioTrack;

    .line 401
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack4:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v2, Lelectrum2/drums/soundObj;->startpos:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 405
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack4:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 409
    .end local v7           #buffersize:I
    :cond_5
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_6

    .line 412
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v7, v0, v1

    .line 414
    .restart local v7       #buffersize:I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->padtrack5:Landroid/media/AudioTrack;

    .line 416
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack5:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v2, Lelectrum2/drums/soundObj;->startpos:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 420
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack5:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 424
    .end local v7           #buffersize:I
    :cond_6
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_7

    .line 428
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v7, v0, v1

    .line 430
    .restart local v7       #buffersize:I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->padtrack6:Landroid/media/AudioTrack;

    .line 432
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack6:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v2, Lelectrum2/drums/soundObj;->startpos:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 436
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack6:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 440
    .end local v7           #buffersize:I
    :cond_7
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_8

    .line 443
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v7, v0, v1

    .line 445
    .restart local v7       #buffersize:I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->padtrack7:Landroid/media/AudioTrack;

    .line 447
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack7:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v2, Lelectrum2/drums/soundObj;->startpos:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 451
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack7:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 454
    .end local v7           #buffersize:I
    :cond_8
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_0

    .line 457
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v7, v0, v1

    .line 459
    .restart local v7       #buffersize:I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lelectrum2/drums/electrum;->padtrack8:Landroid/media/AudioTrack;

    .line 461
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack8:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v2, Lelectrum2/drums/soundObj;->startpos:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 465
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack8:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 472
    .end local v7           #buffersize:I
    :catch_0
    move-exception v8

    .line 475
    .local v8, e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error trying to play sound: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 477
    .local v9, temptoast:Landroid/widget/Toast;
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private releaseAllPadTracks()V
    .locals 1

    .prologue
    .line 489
    :try_start_0
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 494
    :cond_0
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack2:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack2:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 499
    :cond_1
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack3:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack3:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 504
    :cond_2
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack4:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    .line 506
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack4:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 509
    :cond_3
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack5:Landroid/media/AudioTrack;

    if-eqz v0, :cond_4

    .line 511
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack5:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 514
    :cond_4
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack6:Landroid/media/AudioTrack;

    if-eqz v0, :cond_5

    .line 516
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack6:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 519
    :cond_5
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack7:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    .line 521
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack7:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 524
    :cond_6
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack8:Landroid/media/AudioTrack;

    if-eqz v0, :cond_7

    .line 526
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack8:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :cond_7
    :goto_0
    return-void

    .line 532
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private stopAllPadTracks()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 673
    :try_start_0
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    .line 675
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 677
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    .line 678
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 682
    :cond_0
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack2:Landroid/media/AudioTrack;

    if-eqz v2, :cond_1

    .line 684
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack2:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 686
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack2:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    .line 687
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack2:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 690
    :cond_1
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack3:Landroid/media/AudioTrack;

    if-eqz v2, :cond_2

    .line 692
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack3:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 694
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack3:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    .line 695
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack3:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 699
    :cond_2
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack4:Landroid/media/AudioTrack;

    if-eqz v2, :cond_3

    .line 701
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack4:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 703
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack4:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    .line 704
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack4:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 708
    :cond_3
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack5:Landroid/media/AudioTrack;

    if-eqz v2, :cond_4

    .line 710
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack5:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 712
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack5:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    .line 713
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack5:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 717
    :cond_4
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack6:Landroid/media/AudioTrack;

    if-eqz v2, :cond_5

    .line 719
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack6:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 721
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack6:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    .line 722
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack6:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 726
    :cond_5
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack7:Landroid/media/AudioTrack;

    if-eqz v2, :cond_6

    .line 728
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack7:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 730
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack7:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    .line 731
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack7:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 735
    :cond_6
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack8:Landroid/media/AudioTrack;

    if-eqz v2, :cond_7

    .line 737
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack8:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    if-ne v2, v4, :cond_7

    .line 739
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack8:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    .line 740
    iget-object v2, p0, Lelectrum2/drums/electrum;->padtrack8:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :cond_7
    :goto_0
    return-void

    .line 746
    :catch_0
    move-exception v0

    .line 748
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error trying to stop sound: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 750
    .local v1, temptoast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private stopCurrentPadTrack()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 544
    :try_start_0
    sget-boolean v0, Lelectrum2/drums/globalSounds;->cutpadswhenhit:Z

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 550
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 551
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_2

    .line 561
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    .line 563
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 565
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 566
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 572
    :cond_2
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_3

    .line 574
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack2:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    .line 576
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack2:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 578
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack2:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 579
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack2:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 584
    :cond_3
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_4

    .line 586
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack3:Landroid/media/AudioTrack;

    if-eqz v0, :cond_4

    .line 588
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack3:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 590
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack3:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 591
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack3:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 596
    :cond_4
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_5

    .line 598
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack4:Landroid/media/AudioTrack;

    if-eqz v0, :cond_5

    .line 600
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack4:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 602
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack4:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 603
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack4:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 607
    :cond_5
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_6

    .line 609
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack5:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    .line 611
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack5:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 613
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack5:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 614
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack5:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 619
    :cond_6
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_7

    .line 621
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack6:Landroid/media/AudioTrack;

    if-eqz v0, :cond_7

    .line 623
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack6:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 625
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack6:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 626
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack6:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 631
    :cond_7
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_8

    .line 633
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack7:Landroid/media/AudioTrack;

    if-eqz v0, :cond_8

    .line 635
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack7:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 637
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack7:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 638
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack7:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 643
    :cond_8
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_0

    .line 645
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack8:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack8:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 649
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack8:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 650
    iget-object v0, p0, Lelectrum2/drums/electrum;->padtrack8:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 658
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method static swap(S)S
    .locals 2
    .parameter "x"

    .prologue
    .line 7103
    shl-int/lit8 v0, p0, 0x8

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public CreateExportedMIDI()V
    .locals 8

    .prologue
    .line 7139
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lelectrum2/drums/electrum;->exportMIDIFilename:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".mid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7141
    .local v4, outfile:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lelectrum2/drums/globalSounds;->exportsubfolder:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/.nomedia"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7142
    .local v2, nomediafile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 7144
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 7148
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7149
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 7151
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 7153
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 7155
    .local v1, fs:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 7161
    .local v3, os:Ljava/io/DataOutputStream;
    iget v6, p0, Lelectrum2/drums/electrum;->currentpattern:I

    invoke-virtual {p0, v3, v6}, Lelectrum2/drums/electrum;->WriteMIDIData(Ljava/io/DataOutputStream;I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 7163
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error exporting MIDI file\r\n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lelectrum2/drums/exportMIDI;->errmessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lelectrum2/drums/electrum;->globalErrorString:Ljava/lang/String;

    .line 7165
    iget-object v6, p0, Lelectrum2/drums/electrum;->patternHandler:Landroid/os/Handler;

    iget-object v7, p0, Lelectrum2/drums/electrum;->GlobalErrorHandler:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7170
    :cond_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 7172
    new-instance v6, Ljava/lang/String;

    const-string v7, "MIDI file exported OK!"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 7174
    .local v5, temptoast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7189
    .end local v1           #fs:Ljava/io/FileOutputStream;
    .end local v2           #nomediafile:Ljava/io/File;
    .end local v3           #os:Ljava/io/DataOutputStream;
    .end local v4           #outfile:Ljava/io/File;
    .end local v5           #temptoast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 7178
    :catch_0
    move-exception v0

    .line 7180
    .local v0, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error exporting MIDI data: \n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lelectrum2/drums/electrum;->globalErrorString:Ljava/lang/String;

    .line 7182
    iget-object v6, p0, Lelectrum2/drums/electrum;->patternHandler:Landroid/os/Handler;

    iget-object v7, p0, Lelectrum2/drums/electrum;->GlobalErrorHandler:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public CreateExportedSound()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 7319
    invoke-virtual {p0}, Lelectrum2/drums/electrum;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 7320
    const/4 v2, -0x1

    .line 7319
    invoke-virtual {v1, v5, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 7323
    iget-object v1, p0, Lelectrum2/drums/electrum;->exportprogress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7324
    iget-object v1, p0, Lelectrum2/drums/electrum;->exportprogress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 7325
    iget-object v1, p0, Lelectrum2/drums/electrum;->exportprogress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 7331
    invoke-virtual {p0}, Lelectrum2/drums/electrum;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 7334
    iput v4, p0, Lelectrum2/drums/electrum;->progresscount:I

    .line 7336
    iput-boolean v3, p0, Lelectrum2/drums/electrum;->CreatingSound:Z

    .line 7338
    iput-boolean v3, p0, Lelectrum2/drums/electrum;->canStop:Z

    .line 7341
    iget v1, p0, Lelectrum2/drums/electrum;->currentpattern:I

    iput v1, p0, Lelectrum2/drums/electrum;->selectedpattern:I

    .line 7343
    iput v4, p0, Lelectrum2/drums/electrum;->patterncounter:I

    .line 7345
    iput v3, p0, Lelectrum2/drums/electrum;->patternmultiplier:I

    .line 7368
    iget-boolean v1, p0, Lelectrum2/drums/electrum;->PatternSequenceMode:Z

    if-eqz v1, :cond_1

    .line 7372
    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lelectrum2/drums/electrum;->patternmultiplier:I

    .line 7374
    iget v1, p0, Lelectrum2/drums/electrum;->patternmultiplier:I

    if-nez v1, :cond_0

    .line 7376
    iput v3, p0, Lelectrum2/drums/electrum;->patternmultiplier:I

    .line 7396
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lelectrum2/drums/electrum$25;

    invoke-direct {v2, p0}, Lelectrum2/drums/electrum$25;-><init>(Lelectrum2/drums/electrum;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lelectrum2/drums/electrum;->mBackground:Ljava/lang/Thread;

    .line 7767
    iget-object v1, p0, Lelectrum2/drums/electrum;->mBackground:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 7770
    return-void

    .line 7381
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 7383
    .local v0, temppat:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lelectrum2/drums/electrum;->currentpattern:I

    goto :goto_0

    .line 7388
    .end local v0           #temppat:Ljava/lang/Integer;
    :cond_1
    iput v3, p0, Lelectrum2/drums/electrum;->patternmultiplier:I

    goto :goto_0
.end method

.method public CreateSound()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6608
    iput-boolean v3, p0, Lelectrum2/drums/electrum;->CreatingSound:Z

    .line 6610
    iget v1, p0, Lelectrum2/drums/electrum;->currentpattern:I

    iput v1, p0, Lelectrum2/drums/electrum;->selectedpattern:I

    .line 6612
    iput v2, p0, Lelectrum2/drums/electrum;->patterncounter:I

    .line 6614
    iput v3, p0, Lelectrum2/drums/electrum;->patternmultiplier:I

    .line 6616
    iput-boolean v2, p0, Lelectrum2/drums/electrum;->audiostarted:Z

    .line 6618
    sget-boolean v1, Lelectrum2/drums/globalSounds;->livemode:Z

    if-eqz v1, :cond_0

    .line 6620
    iput-boolean v2, p0, Lelectrum2/drums/electrum;->PatternSequenceMode:Z

    .line 6622
    sget v1, Lelectrum2/drums/globalSounds;->nextpattern:I

    iput v1, p0, Lelectrum2/drums/electrum;->currentpattern:I

    .line 6624
    sget v1, Lelectrum2/drums/globalSounds;->nextpattern:I

    iput v1, p0, Lelectrum2/drums/electrum;->selectedpattern:I

    .line 6629
    :cond_0
    iput v2, p0, Lelectrum2/drums/electrum;->currentslotlight:I

    .line 6652
    iget-boolean v1, p0, Lelectrum2/drums/electrum;->PatternSequenceMode:Z

    if-eqz v1, :cond_3

    .line 6655
    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lelectrum2/drums/electrum;->patternmultiplier:I

    .line 6657
    iget v1, p0, Lelectrum2/drums/electrum;->patternmultiplier:I

    if-nez v1, :cond_2

    .line 6659
    iput v3, p0, Lelectrum2/drums/electrum;->patternmultiplier:I

    .line 6676
    :goto_0
    sget-boolean v1, Lelectrum2/drums/electrum;->sequenceplayedfromexternal:Z

    if-eqz v1, :cond_1

    .line 6678
    sget v1, Lelectrum2/drums/globalSounds;->nextpattern:I

    iput v1, p0, Lelectrum2/drums/electrum;->currentpattern:I

    .line 6679
    sget v1, Lelectrum2/drums/globalSounds;->nextpattern:I

    iput v1, p0, Lelectrum2/drums/electrum;->selectedpattern:I

    .line 6680
    sget v1, Lelectrum2/drums/electrum;->externalsequencepatternpos:I

    iput v1, p0, Lelectrum2/drums/electrum;->patterncounter:I

    .line 6693
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lelectrum2/drums/electrum$24;

    invoke-direct {v2, p0}, Lelectrum2/drums/electrum$24;-><init>(Lelectrum2/drums/electrum;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lelectrum2/drums/electrum;->mBackground:Ljava/lang/Thread;

    .line 7097
    iget-object v1, p0, Lelectrum2/drums/electrum;->mBackground:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 7100
    return-void

    .line 6664
    :cond_2
    new-instance v0, Ljava/lang/Integer;

    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 6666
    .local v0, temppat:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lelectrum2/drums/electrum;->currentpattern:I

    goto :goto_0

    .line 6671
    .end local v0           #temppat:Ljava/lang/Integer;
    :cond_3
    iput v3, p0, Lelectrum2/drums/electrum;->patternmultiplier:I

    goto :goto_0
.end method

.method public DisplaySelectedSound(I)V
    .locals 5
    .parameter "soundid"

    .prologue
    const v4, 0x7f020090

    const v3, 0x7f02008f

    const v2, 0x7f02008d

    const v1, 0x7f02008c

    .line 1892
    sget-object v0, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    if-nez v0, :cond_0

    .line 1894
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1898
    :goto_0
    sget-object v0, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    if-nez v0, :cond_1

    .line 1900
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1904
    :goto_1
    sget-object v0, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    if-nez v0, :cond_2

    .line 1906
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1910
    :goto_2
    sget-object v0, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    if-nez v0, :cond_3

    .line 1912
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot4:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1916
    :goto_3
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    if-nez v0, :cond_4

    .line 1918
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot5:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1922
    :goto_4
    sget-object v0, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    if-nez v0, :cond_5

    .line 1924
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot6:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1928
    :goto_5
    sget-object v0, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    if-nez v0, :cond_6

    .line 1930
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot7:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1934
    :goto_6
    sget-object v0, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    if-nez v0, :cond_7

    .line 1936
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot8:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1941
    :goto_7
    packed-switch p1, :pswitch_data_0

    .line 2013
    :goto_8
    return-void

    .line 1896
    :cond_0
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1902
    :cond_1
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1908
    :cond_2
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1914
    :cond_3
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1920
    :cond_4
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot5:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 1926
    :cond_5
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot6:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 1932
    :cond_6
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot7:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 1938
    :cond_7
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot8:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 1944
    :pswitch_0
    sget-object v0, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    if-eqz v0, :cond_8

    .line 1946
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 1948
    :cond_8
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 1952
    :pswitch_1
    sget-object v0, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    if-eqz v0, :cond_9

    .line 1954
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot2:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 1956
    :cond_9
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 1960
    :pswitch_2
    sget-object v0, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    if-eqz v0, :cond_a

    .line 1962
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot3:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 1964
    :cond_a
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot3:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 1968
    :pswitch_3
    sget-object v0, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    if-eqz v0, :cond_b

    .line 1970
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot4:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 1972
    :cond_b
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot4:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 1976
    :pswitch_4
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    if-eqz v0, :cond_c

    .line 1978
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot5:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 1980
    :cond_c
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot5:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 1984
    :pswitch_5
    sget-object v0, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    if-eqz v0, :cond_d

    .line 1986
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot6:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 1988
    :cond_d
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot6:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 1992
    :pswitch_6
    sget-object v0, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    if-eqz v0, :cond_e

    .line 1994
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot7:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 1996
    :cond_e
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot7:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 2000
    :pswitch_7
    sget-object v0, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->mute:Z

    if-eqz v0, :cond_f

    .line 2002
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot8:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 2004
    :cond_f
    iget-object v0, p0, Lelectrum2/drums/electrum;->soundslot8:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 1941
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public ExportAllSounds(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 7197
    const/4 v0, 0x1

    .line 7199
    .local v0, allok:Z
    sget-object v2, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    invoke-virtual {p0, v2, p1}, Lelectrum2/drums/electrum;->WriteSoundToDisk(Lelectrum2/drums/soundObj;Ljava/lang/String;)Z

    move-result v0

    .line 7200
    if-eqz v0, :cond_0

    sget-object v2, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    invoke-virtual {p0, v2, p1}, Lelectrum2/drums/electrum;->WriteSoundToDisk(Lelectrum2/drums/soundObj;Ljava/lang/String;)Z

    .line 7201
    :cond_0
    if-eqz v0, :cond_1

    sget-object v2, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    invoke-virtual {p0, v2, p1}, Lelectrum2/drums/electrum;->WriteSoundToDisk(Lelectrum2/drums/soundObj;Ljava/lang/String;)Z

    .line 7202
    :cond_1
    if-eqz v0, :cond_2

    sget-object v2, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    invoke-virtual {p0, v2, p1}, Lelectrum2/drums/electrum;->WriteSoundToDisk(Lelectrum2/drums/soundObj;Ljava/lang/String;)Z

    .line 7203
    :cond_2
    if-eqz v0, :cond_3

    sget-object v2, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    invoke-virtual {p0, v2, p1}, Lelectrum2/drums/electrum;->WriteSoundToDisk(Lelectrum2/drums/soundObj;Ljava/lang/String;)Z

    .line 7204
    :cond_3
    if-eqz v0, :cond_4

    sget-object v2, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    invoke-virtual {p0, v2, p1}, Lelectrum2/drums/electrum;->WriteSoundToDisk(Lelectrum2/drums/soundObj;Ljava/lang/String;)Z

    .line 7205
    :cond_4
    if-eqz v0, :cond_5

    sget-object v2, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    invoke-virtual {p0, v2, p1}, Lelectrum2/drums/electrum;->WriteSoundToDisk(Lelectrum2/drums/soundObj;Ljava/lang/String;)Z

    .line 7206
    :cond_5
    if-eqz v0, :cond_6

    sget-object v2, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    invoke-virtual {p0, v2, p1}, Lelectrum2/drums/electrum;->WriteSoundToDisk(Lelectrum2/drums/soundObj;Ljava/lang/String;)Z

    .line 7208
    :cond_6
    if-eqz v0, :cond_7

    .line 7210
    new-instance v2, Ljava/lang/String;

    const-string v3, "Pad samples exported OK!"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 7212
    .local v1, temptoast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 7218
    .end local v1           #temptoast:Landroid/widget/Toast;
    :cond_7
    return-void
.end method

.method public PlaySounds()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2840
    :try_start_0
    iget-object v1, p0, Lelectrum2/drums/electrum;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 2844
    const/4 v1, 0x1

    iput-boolean v1, p0, Lelectrum2/drums/electrum;->IsPlaying:Z

    .line 2845
    const/4 v1, 0x1

    sput-boolean v1, Lelectrum2/drums/globalSounds;->IsPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2860
    :goto_0
    return-void

    .line 2849
    :catch_0
    move-exception v0

    .line 2852
    .local v0, e:Ljava/lang/Exception;
    iput-boolean v2, p0, Lelectrum2/drums/electrum;->IsPlaying:Z

    .line 2853
    sput-boolean v2, Lelectrum2/drums/globalSounds;->IsPlaying:Z

    goto :goto_0
.end method

.method public SetProjectText()V
    .locals 2

    .prologue
    .line 1399
    iget-object v0, p0, Lelectrum2/drums/electrum;->projecttitle:Landroid/widget/TextView;

    sget-object v1, Lelectrum2/drums/globalSounds;->projectname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1403
    return-void
.end method

.method public ShowSoundMutes()V
    .locals 1

    .prologue
    .line 1875
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lelectrum2/drums/electrum;->DisplaySelectedSound(I)V

    .line 1876
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lelectrum2/drums/electrum;->DisplaySelectedSound(I)V

    .line 1877
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lelectrum2/drums/electrum;->DisplaySelectedSound(I)V

    .line 1878
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lelectrum2/drums/electrum;->DisplaySelectedSound(I)V

    .line 1879
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lelectrum2/drums/electrum;->DisplaySelectedSound(I)V

    .line 1880
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lelectrum2/drums/electrum;->DisplaySelectedSound(I)V

    .line 1881
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lelectrum2/drums/electrum;->DisplaySelectedSound(I)V

    .line 1882
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lelectrum2/drums/electrum;->DisplaySelectedSound(I)V

    .line 1887
    return-void
.end method

.method public StopPlaying()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2609
    iput-boolean v0, p0, Lelectrum2/drums/electrum;->canStop:Z

    .line 2611
    iput-boolean v0, p0, Lelectrum2/drums/electrum;->CreatingSound:Z

    .line 2624
    :try_start_0
    invoke-direct {p0}, Lelectrum2/drums/electrum;->stopAllPadTracks()V

    .line 2627
    iget-object v0, p0, Lelectrum2/drums/electrum;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2631
    :goto_0
    iget-boolean v0, p0, Lelectrum2/drums/electrum;->canStop:Z

    if-eqz v0, :cond_1

    .line 2637
    iget-object v0, p0, Lelectrum2/drums/electrum;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 2639
    iget-object v0, p0, Lelectrum2/drums/electrum;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 2640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lelectrum2/drums/electrum;->IsPlaying:Z

    .line 2641
    const/4 v0, 0x0

    sput-boolean v0, Lelectrum2/drums/globalSounds;->IsPlaying:Z

    .line 2643
    invoke-direct {p0}, Lelectrum2/drums/electrum;->ResetDrumButtonLights()V

    .line 2660
    :cond_0
    :goto_1
    return-void

    .line 2633
    :cond_1
    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2651
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public UpdateLiveBPM()V
    .locals 2

    .prologue
    .line 6561
    const/high16 v0, 0x4270

    sget v1, Lelectrum2/drums/electrum;->bpm:F

    div-float/2addr v0, v1

    sget v1, Lelectrum2/drums/electrum;->samplefrequency:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sget v1, Lelectrum2/drums/electrum;->slotspermeasure:I

    div-int/lit8 v1, v1, 0x4

    div-int/2addr v0, v1

    sput v0, Lelectrum2/drums/electrum;->samplesperslot:I

    .line 6565
    sget v0, Lelectrum2/drums/electrum;->samplesperslot:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sput v0, Lelectrum2/drums/globalSounds;->shufflemax:F

    .line 6569
    sget v0, Lelectrum2/drums/electrum;->numberofslots:I

    sget v1, Lelectrum2/drums/electrum;->samplesperslot:I

    mul-int/2addr v0, v1

    iget v1, p0, Lelectrum2/drums/electrum;->patternmultiplier:I

    mul-int/2addr v0, v1

    iput v0, p0, Lelectrum2/drums/electrum;->totalsamples:I

    .line 6573
    sget-object v0, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    sget v1, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 6574
    sget-object v0, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    sget v1, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 6575
    sget-object v0, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    sget v1, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 6576
    sget-object v0, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    sget v1, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 6577
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    sget v1, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 6578
    sget-object v0, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    sget v1, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 6579
    sget-object v0, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    sget v1, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 6580
    sget-object v0, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    sget v1, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 6585
    return-void
.end method

.method public WriteMIDIData(Ljava/io/DataOutputStream;I)Z
    .locals 4
    .parameter "os"
    .parameter "patternnum"

    .prologue
    .line 7109
    const/4 v0, 0x1

    .line 7111
    .local v0, retval:Z
    const/16 v1, 0x8

    sget v2, Lelectrum2/drums/electrum;->bpm:F

    sget v3, Lelectrum2/drums/electrum;->slotspermeasure:I

    invoke-static {v1, v2, v3}, Lelectrum2/drums/exportMIDI;->Init(IFI)V

    .line 7114
    iget-boolean v1, p0, Lelectrum2/drums/electrum;->exportMIDIsequence:Z

    if-eqz v1, :cond_0

    .line 7116
    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-static {v1}, Lelectrum2/drums/exportMIDI;->SetSequenceMode(Ljava/util/ArrayList;)V

    .line 7121
    :cond_0
    invoke-static {p1, p2}, Lelectrum2/drums/exportMIDI;->Doit(Ljava/io/DataOutputStream;I)Z

    move-result v0

    .line 7125
    return v0
.end method

.method public WriteSoundToDisk(Lelectrum2/drums/soundObj;Ljava/lang/String;)Z
    .locals 16
    .parameter "soundin"
    .parameter "path"

    .prologue
    .line 7223
    const/4 v7, 0x1

    .line 7228
    .local v7, retval:Z
    move-object/from16 v4, p2

    .line 7230
    .local v4, nomediafilepath:Ljava/lang/String;
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".wav"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7233
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7235
    .local v6, outfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 7238
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 7240
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 7241
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 7245
    :cond_0
    new-instance v11, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "/.nomedia"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7246
    .local v11, tempfile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 7248
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 7252
    :cond_1
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const-string v14, "rws"

    invoke-direct {v5, v13, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7255
    .local v5, of:Ljava/io/RandomAccessFile;
    const/4 v13, 0x4

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 7256
    .local v9, tempbuff1:Ljava/nio/ByteBuffer;
    const/4 v13, 0x4

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 7259
    .local v10, tempbuff2:Ljava/nio/ByteBuffer;
    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 7260
    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 7262
    move-object/from16 v0, p1

    iget v13, v0, Lelectrum2/drums/soundObj;->samplelen:I

    move-object/from16 v0, p1

    iget v14, v0, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v8, v13, v14

    .line 7265
    .local v8, soundsize:I
    mul-int/lit8 v13, v8, 0x2

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7266
    mul-int/lit8 v13, v8, 0x2

    add-int/lit8 v13, v13, 0x24

    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7268
    sget-object v13, Lelectrum2/drums/electrum;->headerdata:[B

    invoke-virtual {v5, v13}, Ljava/io/RandomAccessFile;->write([B)V

    .line 7269
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/io/RandomAccessFile;->write([B)V

    .line 7270
    sget-object v13, Lelectrum2/drums/electrum;->headerdatamono2:[B

    invoke-virtual {v5, v13}, Ljava/io/RandomAccessFile;->write([B)V

    .line 7272
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/io/RandomAccessFile;->write([B)V

    .line 7275
    mul-int/lit8 v13, v8, 0x2

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 7276
    .local v1, TempBuff:Ljava/nio/ByteBuffer;
    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 7280
    move-object/from16 v0, p1

    iget v2, v0, Lelectrum2/drums/soundObj;->startpos:I

    .local v2, counter2:I
    :goto_0
    move-object/from16 v0, p1

    iget v13, v0, Lelectrum2/drums/soundObj;->samplelen:I

    if-lt v2, v13, :cond_2

    .line 7288
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/io/RandomAccessFile;->write([B)V

    .line 7290
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 7305
    .end local v1           #TempBuff:Ljava/nio/ByteBuffer;
    .end local v2           #counter2:I
    .end local v5           #of:Ljava/io/RandomAccessFile;
    .end local v6           #outfile:Ljava/io/File;
    .end local v8           #soundsize:I
    .end local v9           #tempbuff1:Ljava/nio/ByteBuffer;
    .end local v10           #tempbuff2:Ljava/nio/ByteBuffer;
    .end local v11           #tempfile:Ljava/io/File;
    :goto_1
    return v7

    .line 7283
    .restart local v1       #TempBuff:Ljava/nio/ByteBuffer;
    .restart local v2       #counter2:I
    .restart local v5       #of:Ljava/io/RandomAccessFile;
    .restart local v6       #outfile:Ljava/io/File;
    .restart local v8       #soundsize:I
    .restart local v9       #tempbuff1:Ljava/nio/ByteBuffer;
    .restart local v10       #tempbuff2:Ljava/nio/ByteBuffer;
    .restart local v11       #tempfile:Ljava/io/File;
    :cond_2
    move-object/from16 v0, p1

    iget-object v13, v0, Lelectrum2/drums/soundObj;->sounddata:[S

    aget-short v13, v13, v2

    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7280
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7295
    .end local v1           #TempBuff:Ljava/nio/ByteBuffer;
    .end local v2           #counter2:I
    .end local v5           #of:Ljava/io/RandomAccessFile;
    .end local v6           #outfile:Ljava/io/File;
    .end local v8           #soundsize:I
    .end local v9           #tempbuff1:Ljava/nio/ByteBuffer;
    .end local v10           #tempbuff2:Ljava/nio/ByteBuffer;
    .end local v11           #tempfile:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 7297
    .local v3, e:Ljava/lang/Exception;
    new-instance v13, Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Error exporting pad samples:\r\n"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 7299
    .local v12, temptoast:Landroid/widget/Toast;
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 7300
    const/4 v7, 0x0

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 32
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2886
    if-eqz p2, :cond_17

    .line 2888
    const/16 v28, 0x1e

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 2891
    invoke-direct/range {p0 .. p0}, Lelectrum2/drums/electrum;->UpdateDrumNames()V

    .line 2898
    :cond_0
    const/16 v28, 0xdc

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 2902
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 2903
    .local v10, extras:Landroid/os/Bundle;
    const-string v28, "loadexported"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2905
    .local v14, result:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2906
    .local v5, audio:Ljava/io/File;
    new-instance v28, Landroid/content/Intent;

    const-string v29, "android.intent.action.SEND"

    invoke-direct/range {v28 .. v29}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v29, "audio/*"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 2907
    .local v11, intent:Landroid/content/Intent;
    const-string v28, "android.intent.extra.STREAM"

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2908
    const-string v28, "Share to"

    move-object/from16 v0, v28

    invoke-static {v11, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->startActivity(Landroid/content/Intent;)V

    .line 2914
    .end local v5           #audio:Ljava/io/File;
    .end local v10           #extras:Landroid/os/Bundle;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v14           #result:Ljava/lang/String;
    :cond_1
    const/16 v28, 0x49

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 2917
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 2918
    .restart local v10       #extras:Landroid/os/Bundle;
    const-string v28, "savedrumkitname"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2920
    .restart local v14       #result:Ljava/lang/String;
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v1}, Lelectrum2/drums/electrum;->SaveDrumkit(Ljava/lang/String;Z)V

    .line 2929
    .end local v10           #extras:Landroid/os/Bundle;
    .end local v14           #result:Ljava/lang/String;
    :cond_2
    const/16 v28, 0x3c

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 2931
    const/16 v28, 0x0

    sput-boolean v28, Lelectrum2/drums/globalSounds;->livemode:Z

    .line 2935
    :cond_3
    const/16 v28, 0xc

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 2937
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lelectrum2/drums/electrum;->IsPlaying:Z

    .line 2939
    .local v4, WasPlaying:Z
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->StopPlaying()V

    .line 2943
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 2944
    .restart local v10       #extras:Landroid/os/Bundle;
    const-string v28, "bpm"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2945
    .restart local v14       #result:Ljava/lang/String;
    const-string v28, "resolution"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2946
    .local v15, result2:Ljava/lang/String;
    const-string v28, "pattlen"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2948
    .local v16, result3:Ljava/lang/String;
    const/16 v28, 0x2c

    const/16 v29, 0x2e

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    .line 2949
    const/16 v28, 0xa

    const/16 v29, 0x20

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    .line 2950
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 2953
    new-instance v21, Ljava/lang/Float;

    move-object/from16 v0, v21

    invoke-direct {v0, v14}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 2955
    .local v21, tempval:Ljava/lang/Float;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v28

    sput v28, Lelectrum2/drums/electrum;->bpm:F

    .line 2957
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->bpmText:Landroid/widget/TextView;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, " bpm"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2958
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->resolutionText:Landroid/widget/TextView;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "1/"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " Res."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2961
    new-instance v22, Ljava/lang/Integer;

    move-object/from16 v0, v22

    invoke-direct {v0, v15}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 2963
    .local v22, tempval2:Ljava/lang/Integer;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v28

    sput v28, Lelectrum2/drums/electrum;->slotspermeasure:I

    .line 2965
    new-instance v23, Ljava/lang/Integer;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 2966
    .local v23, tempval3:Ljava/lang/Integer;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v28

    sput v28, Lelectrum2/drums/electrum;->numberofslots:I

    .line 2968
    invoke-direct/range {p0 .. p0}, Lelectrum2/drums/electrum;->DisplaySoundSlots()V

    .line 2976
    sget-object v28, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v28

    iget v0, v0, Lelectrum2/drums/soundObj;->samplefulllen:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/electrum;->oldsample1fulllen:I

    .line 2977
    sget-object v28, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v28

    iget v0, v0, Lelectrum2/drums/soundObj;->samplefulllen:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/electrum;->oldsample2fulllen:I

    .line 2978
    sget-object v28, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v28

    iget v0, v0, Lelectrum2/drums/soundObj;->samplefulllen:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/electrum;->oldsample3fulllen:I

    .line 2979
    sget-object v28, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v28

    iget v0, v0, Lelectrum2/drums/soundObj;->samplefulllen:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/electrum;->oldsample4fulllen:I

    .line 2980
    sget-object v28, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v28

    iget v0, v0, Lelectrum2/drums/soundObj;->samplefulllen:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/electrum;->oldsample5fulllen:I

    .line 2981
    sget-object v28, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v28

    iget v0, v0, Lelectrum2/drums/soundObj;->samplefulllen:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/electrum;->oldsample6fulllen:I

    .line 2982
    sget-object v28, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v28

    iget v0, v0, Lelectrum2/drums/soundObj;->samplefulllen:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/electrum;->oldsample7fulllen:I

    .line 2983
    sget-object v28, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v28

    iget v0, v0, Lelectrum2/drums/soundObj;->samplefulllen:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/electrum;->oldsample8fulllen:I

    .line 2987
    sget-object v28, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 2989
    sget-object v28, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    invoke-virtual/range {v28 .. v28}, Lelectrum2/drums/soundObj;->DoFitBpm()Z

    move-result v28

    if-nez v28, :cond_18

    .line 2991
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Error changing Loop fit BPM for Sound 1\n"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v29, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v29

    iget-object v0, v0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 2993
    .local v20, temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 3007
    .end local v20           #temptoast:Landroid/widget/Toast;
    :cond_4
    :goto_0
    sget-object v28, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 3009
    sget-object v28, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    invoke-virtual/range {v28 .. v28}, Lelectrum2/drums/soundObj;->DoFitBpm()Z

    move-result v28

    if-nez v28, :cond_19

    .line 3011
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Error changing Loop fit BPM for Sound 2\n"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v29, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v29

    iget-object v0, v0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 3013
    .restart local v20       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 3024
    .end local v20           #temptoast:Landroid/widget/Toast;
    :cond_5
    :goto_1
    sget-object v28, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v28, v0

    if-eqz v28, :cond_6

    .line 3026
    sget-object v28, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    invoke-virtual/range {v28 .. v28}, Lelectrum2/drums/soundObj;->DoFitBpm()Z

    move-result v28

    if-nez v28, :cond_1a

    .line 3028
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Error changing Loop fit BPM for Sound 3\n"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v29, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v29

    iget-object v0, v0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 3030
    .restart local v20       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 3040
    .end local v20           #temptoast:Landroid/widget/Toast;
    :cond_6
    :goto_2
    sget-object v28, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v28, v0

    if-eqz v28, :cond_7

    .line 3042
    sget-object v28, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    invoke-virtual/range {v28 .. v28}, Lelectrum2/drums/soundObj;->DoFitBpm()Z

    move-result v28

    if-nez v28, :cond_1b

    .line 3044
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Error changing Loop fit BPM for Sound 4\n"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v29, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v29

    iget-object v0, v0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 3046
    .restart local v20       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 3056
    .end local v20           #temptoast:Landroid/widget/Toast;
    :cond_7
    :goto_3
    sget-object v28, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    .line 3058
    sget-object v28, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    invoke-virtual/range {v28 .. v28}, Lelectrum2/drums/soundObj;->DoFitBpm()Z

    move-result v28

    if-nez v28, :cond_1c

    .line 3060
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Error changing Loop fit BPM for Sound 5\n"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v29, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v29

    iget-object v0, v0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 3062
    .restart local v20       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 3072
    .end local v20           #temptoast:Landroid/widget/Toast;
    :cond_8
    :goto_4
    sget-object v28, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v28, v0

    if-eqz v28, :cond_9

    .line 3074
    sget-object v28, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    invoke-virtual/range {v28 .. v28}, Lelectrum2/drums/soundObj;->DoFitBpm()Z

    move-result v28

    if-nez v28, :cond_1d

    .line 3076
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Error changing Loop fit BPM for Sound 6\n"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v29, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v29

    iget-object v0, v0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 3078
    .restart local v20       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 3087
    .end local v20           #temptoast:Landroid/widget/Toast;
    :cond_9
    :goto_5
    sget-object v28, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v28, v0

    if-eqz v28, :cond_a

    .line 3089
    sget-object v28, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    invoke-virtual/range {v28 .. v28}, Lelectrum2/drums/soundObj;->DoFitBpm()Z

    move-result v28

    if-nez v28, :cond_1e

    .line 3091
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Error changing Loop fit BPM for Sound 6\n"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v29, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v29

    iget-object v0, v0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 3093
    .restart local v20       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 3102
    .end local v20           #temptoast:Landroid/widget/Toast;
    :cond_a
    :goto_6
    sget-object v28, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    move/from16 v28, v0

    if-eqz v28, :cond_b

    .line 3104
    sget-object v28, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    invoke-virtual/range {v28 .. v28}, Lelectrum2/drums/soundObj;->DoFitBpm()Z

    move-result v28

    if-nez v28, :cond_1f

    .line 3106
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Error changing Loop fit BPM for Sound 6\n"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v29, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, v29

    iget-object v0, v0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 3108
    .restart local v20       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 3120
    .end local v20           #temptoast:Landroid/widget/Toast;
    :cond_b
    :goto_7
    if-eqz v4, :cond_c

    .line 3122
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->CreateSound()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3139
    .end local v4           #WasPlaying:Z
    .end local v10           #extras:Landroid/os/Bundle;
    .end local v14           #result:Ljava/lang/String;
    .end local v15           #result2:Ljava/lang/String;
    .end local v16           #result3:Ljava/lang/String;
    .end local v21           #tempval:Ljava/lang/Float;
    .end local v22           #tempval2:Ljava/lang/Integer;
    .end local v23           #tempval3:Ljava/lang/Integer;
    :cond_c
    :goto_8
    const/16 v28, 0xd

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 3142
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 3143
    .restart local v10       #extras:Landroid/os/Bundle;
    const-string v28, "savepatternname"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3145
    .restart local v14       #result:Ljava/lang/String;
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v1}, Lelectrum2/drums/electrum;->SavePatterns(Ljava/lang/String;Z)V

    .line 3156
    .end local v10           #extras:Landroid/os/Bundle;
    .end local v14           #result:Ljava/lang/String;
    :cond_d
    const/16 v28, 0x10

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_f

    .line 3159
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 3160
    .restart local v10       #extras:Landroid/os/Bundle;
    const-string v28, "drumkit"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3162
    .restart local v14       #result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lelectrum2/drums/electrum;->IsPlaying:Z

    move/from16 v27, v0

    .line 3167
    .local v27, wasplaying:Z
    const/16 v28, 0x6

    move/from16 v0, v28

    new-array v7, v0, [Ljava/lang/String;

    const/16 v28, 0x0

    const-string v29, "Built-In 808"

    aput-object v29, v7, v28

    const/16 v28, 0x1

    const-string v29, "Built-In Rock"

    aput-object v29, v7, v28

    const/16 v28, 0x2

    const-string v29, "Built-In 909"

    aput-object v29, v7, v28

    const/16 v28, 0x3

    const-string v29, "Built-In Orchestral"

    aput-object v29, v7, v28

    const/16 v28, 0x4

    const-string v29, "Built-In HipHop"

    aput-object v29, v7, v28

    const/16 v28, 0x5

    const-string v29, "Built-In Human BeatBox"

    aput-object v29, v7, v28

    .line 3169
    .local v7, defaultnames:[Ljava/lang/String;
    const/16 v26, 0x0

    .line 3171
    .local v26, wasdefault:Z
    const/4 v6, 0x0

    .local v6, counter:I
    :goto_9
    array-length v0, v7

    move/from16 v28, v0

    move/from16 v0, v28

    if-lt v6, v0, :cond_20

    .line 3189
    :goto_a
    if-nez v26, :cond_e

    .line 3193
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v1}, Lelectrum2/drums/electrum;->LoadDrumkit(Ljava/lang/String;Z)V

    .line 3197
    :cond_e
    const-string v28, "Loaded Drumkit"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 3199
    .restart local v20       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 3206
    .end local v6           #counter:I
    .end local v7           #defaultnames:[Ljava/lang/String;
    .end local v10           #extras:Landroid/os/Bundle;
    .end local v14           #result:Ljava/lang/String;
    .end local v20           #temptoast:Landroid/widget/Toast;
    .end local v26           #wasdefault:Z
    .end local v27           #wasplaying:Z
    :cond_f
    const/16 v28, 0x78

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    .line 3209
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 3210
    .restart local v10       #extras:Landroid/os/Bundle;
    const-string v28, "exportdataname"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3213
    .restart local v14       #result:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_12

    .line 3215
    const/4 v3, 0x1

    .line 3217
    .local v3, DirectoryGood:Z
    const-string v28, "/"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 3219
    const-string v28, "/"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    .line 3221
    .local v18, temploc:I
    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 3225
    .local v19, tempresult:Ljava/lang/String;
    :try_start_1
    new-instance v17, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    sget-object v29, Lelectrum2/drums/globalSounds;->exportsubfolder:Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3226
    .local v17, tempf:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3228
    const/4 v3, 0x1

    .line 3244
    .end local v17           #tempf:Ljava/io/File;
    .end local v18           #temploc:I
    .end local v19           #tempresult:Ljava/lang/String;
    :cond_10
    :goto_b
    if-eqz v3, :cond_12

    .line 3247
    move-object/from16 v0, p0

    iput-object v14, v0, Lelectrum2/drums/electrum;->exportMIDIFilename:Ljava/lang/String;

    .line 3249
    const-string v28, "_([0-9]*)?_BPM"

    invoke-static/range {v28 .. v28}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 3250
    .local v13, p:Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->exportMIDIFilename:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 3255
    .local v12, m:Ljava/util/regex/Matcher;
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 3258
    const-string v28, ""

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->exportMIDIFilename:Ljava/lang/String;

    .line 3263
    :cond_11
    new-instance v28, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->exportMIDIFilename:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "_"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->noPlace:Ljava/text/DecimalFormat;

    move-object/from16 v29, v0

    sget v30, Lelectrum2/drums/electrum;->bpm:F

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "_BPM"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->exportMIDIFilename:Ljava/lang/String;

    .line 3265
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->CreateExportedMIDI()V

    .line 3274
    .end local v3           #DirectoryGood:Z
    .end local v10           #extras:Landroid/os/Bundle;
    .end local v12           #m:Ljava/util/regex/Matcher;
    .end local v13           #p:Ljava/util/regex/Pattern;
    .end local v14           #result:Ljava/lang/String;
    :cond_12
    const/16 v28, 0x8c

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    .line 3277
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 3278
    .restart local v10       #extras:Landroid/os/Bundle;
    const-string v28, "exportdataname"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3281
    .restart local v14       #result:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_13

    .line 3283
    const/4 v3, 0x1

    .line 3286
    .restart local v3       #DirectoryGood:Z
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->isFile()Z

    move-result v28

    if-eqz v28, :cond_22

    .line 3290
    const-string v28, "You must only browse to a folder. Do not select any files! \r\n"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 3293
    .restart local v20       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 3316
    .end local v3           #DirectoryGood:Z
    .end local v10           #extras:Landroid/os/Bundle;
    .end local v14           #result:Ljava/lang/String;
    .end local v20           #temptoast:Landroid/widget/Toast;
    :cond_13
    :goto_c
    const/16 v28, 0x14

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_16

    .line 3318
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 3319
    .restart local v10       #extras:Landroid/os/Bundle;
    const-string v28, "exportdataname"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3323
    .restart local v14       #result:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_16

    .line 3325
    const/4 v3, 0x1

    .line 3327
    .restart local v3       #DirectoryGood:Z
    new-instance v24, Ljava/io/File;

    sget-object v28, Lelectrum2/drums/globalSounds;->exportsubfolder:Ljava/lang/String;

    const-string v29, ".nomedia"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3328
    .local v24, testfile:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_14

    .line 3332
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3374
    :cond_14
    :goto_d
    if-eqz v3, :cond_16

    .line 3377
    move-object/from16 v0, p0

    iput-object v14, v0, Lelectrum2/drums/electrum;->exportFilename:Ljava/lang/String;

    .line 3381
    const-string v28, "_([0-9]*)?_BPM"

    invoke-static/range {v28 .. v28}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 3382
    .restart local v13       #p:Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->exportFilename:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 3387
    .restart local v12       #m:Ljava/util/regex/Matcher;
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v28

    if-eqz v28, :cond_15

    .line 3390
    const-string v28, ""

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->exportFilename:Ljava/lang/String;

    .line 3396
    :cond_15
    new-instance v28, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->exportFilename:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "_"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->noPlace:Ljava/text/DecimalFormat;

    move-object/from16 v29, v0

    sget v30, Lelectrum2/drums/electrum;->bpm:F

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "_BPM"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->exportFilename:Ljava/lang/String;

    .line 3399
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lelectrum2/drums/electrum;->IsExporting:Z

    .line 3402
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->StopPlaying()V

    .line 3405
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->CreateExportedSound()V

    .line 3419
    .end local v3           #DirectoryGood:Z
    .end local v10           #extras:Landroid/os/Bundle;
    .end local v12           #m:Ljava/util/regex/Matcher;
    .end local v13           #p:Ljava/util/regex/Pattern;
    .end local v14           #result:Ljava/lang/String;
    .end local v24           #testfile:Ljava/io/File;
    :cond_16
    const/16 v28, 0xe

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_17

    .line 3422
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 3423
    .restart local v10       #extras:Landroid/os/Bundle;
    const-string v28, "loadpattern"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3426
    .restart local v14       #result:Ljava/lang/String;
    sget-object v28, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    invoke-virtual/range {v28 .. v28}, Lelectrum2/drums/soundObj;->ClearAllSlots()V

    .line 3427
    sget-object v28, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    invoke-virtual/range {v28 .. v28}, Lelectrum2/drums/soundObj;->ClearAllSlots()V

    .line 3428
    sget-object v28, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    invoke-virtual/range {v28 .. v28}, Lelectrum2/drums/soundObj;->ClearAllSlots()V

    .line 3429
    sget-object v28, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    invoke-virtual/range {v28 .. v28}, Lelectrum2/drums/soundObj;->ClearAllSlots()V

    .line 3430
    sget-object v28, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    invoke-virtual/range {v28 .. v28}, Lelectrum2/drums/soundObj;->ClearAllSlots()V

    .line 3431
    sget-object v28, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    invoke-virtual/range {v28 .. v28}, Lelectrum2/drums/soundObj;->ClearAllSlots()V

    .line 3432
    sget-object v28, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    invoke-virtual/range {v28 .. v28}, Lelectrum2/drums/soundObj;->ClearAllSlots()V

    .line 3433
    sget-object v28, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    invoke-virtual/range {v28 .. v28}, Lelectrum2/drums/soundObj;->ClearAllSlots()V

    .line 3438
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v1}, Lelectrum2/drums/electrum;->LoadPatterns(Ljava/lang/String;Z)V

    .line 3448
    .end local v10           #extras:Landroid/os/Bundle;
    .end local v14           #result:Ljava/lang/String;
    :cond_17
    const/16 v28, 0x0

    sput-boolean v28, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 3451
    return-void

    .line 3000
    .restart local v4       #WasPlaying:Z
    .restart local v10       #extras:Landroid/os/Bundle;
    .restart local v14       #result:Ljava/lang/String;
    .restart local v15       #result2:Ljava/lang/String;
    .restart local v16       #result3:Ljava/lang/String;
    .restart local v21       #tempval:Ljava/lang/Float;
    .restart local v22       #tempval2:Ljava/lang/Integer;
    .restart local v23       #tempval3:Ljava/lang/Integer;
    :cond_18
    :try_start_3
    sget-object v28, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/electrum;->oldsample1fulllen:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->FixSoundRangePoints(Lelectrum2/drums/soundObj;I)V

    .line 3002
    sget-object v28, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 3128
    .end local v10           #extras:Landroid/os/Bundle;
    .end local v14           #result:Ljava/lang/String;
    .end local v15           #result2:Ljava/lang/String;
    .end local v16           #result3:Ljava/lang/String;
    .end local v21           #tempval:Ljava/lang/Float;
    .end local v22           #tempval2:Ljava/lang/Integer;
    .end local v23           #tempval3:Ljava/lang/Integer;
    :catch_0
    move-exception v9

    .line 3130
    .local v9, et:Ljava/lang/Exception;
    const-string v28, "Error changing BPM or Resolution. Did you enter a proper number?"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 3132
    .restart local v20       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 3017
    .end local v9           #et:Ljava/lang/Exception;
    .end local v20           #temptoast:Landroid/widget/Toast;
    .restart local v10       #extras:Landroid/os/Bundle;
    .restart local v14       #result:Ljava/lang/String;
    .restart local v15       #result2:Ljava/lang/String;
    .restart local v16       #result3:Ljava/lang/String;
    .restart local v21       #tempval:Ljava/lang/Float;
    .restart local v22       #tempval2:Ljava/lang/Integer;
    .restart local v23       #tempval3:Ljava/lang/Integer;
    :cond_19
    :try_start_4
    sget-object v28, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/electrum;->oldsample2fulllen:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->FixSoundRangePoints(Lelectrum2/drums/soundObj;I)V

    .line 3019
    sget-object v28, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z

    goto/16 :goto_1

    .line 3034
    :cond_1a
    sget-object v28, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/electrum;->oldsample3fulllen:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->FixSoundRangePoints(Lelectrum2/drums/soundObj;I)V

    .line 3036
    sget-object v28, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z

    goto/16 :goto_2

    .line 3050
    :cond_1b
    sget-object v28, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/electrum;->oldsample4fulllen:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->FixSoundRangePoints(Lelectrum2/drums/soundObj;I)V

    .line 3052
    sget-object v28, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z

    goto/16 :goto_3

    .line 3066
    :cond_1c
    sget-object v28, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/electrum;->oldsample5fulllen:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->FixSoundRangePoints(Lelectrum2/drums/soundObj;I)V

    .line 3068
    sget-object v28, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z

    goto/16 :goto_4

    .line 3082
    :cond_1d
    sget-object v28, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/electrum;->oldsample6fulllen:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->FixSoundRangePoints(Lelectrum2/drums/soundObj;I)V

    .line 3084
    sget-object v28, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z

    goto/16 :goto_5

    .line 3097
    :cond_1e
    sget-object v28, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/electrum;->oldsample7fulllen:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->FixSoundRangePoints(Lelectrum2/drums/soundObj;I)V

    .line 3099
    sget-object v28, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z

    goto/16 :goto_6

    .line 3112
    :cond_1f
    sget-object v28, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/electrum;->oldsample8fulllen:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->FixSoundRangePoints(Lelectrum2/drums/soundObj;I)V

    .line 3114
    sget-object v28, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_7

    .line 3173
    .end local v4           #WasPlaying:Z
    .end local v15           #result2:Ljava/lang/String;
    .end local v16           #result3:Ljava/lang/String;
    .end local v21           #tempval:Ljava/lang/Float;
    .end local v22           #tempval2:Ljava/lang/Integer;
    .end local v23           #tempval3:Ljava/lang/Integer;
    .restart local v6       #counter:I
    .restart local v7       #defaultnames:[Ljava/lang/String;
    .restart local v26       #wasdefault:Z
    .restart local v27       #wasplaying:Z
    :cond_20
    aget-object v25, v7, v6

    .line 3174
    .local v25, testname:Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_21

    .line 3176
    add-int/lit8 v28, v6, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/electrum;->currentdrumkit:I

    .line 3178
    sget-object v29, Lelectrum2/drums/globalSounds;->lockstring:Ljava/lang/String;

    monitor-enter v29

    .line 3180
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lelectrum2/drums/electrum;->LoadDrumKit()V

    .line 3178
    monitor-exit v29

    .line 3183
    const/16 v26, 0x1

    .line 3184
    goto/16 :goto_a

    .line 3178
    :catchall_0
    move-exception v28

    monitor-exit v29
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v28

    .line 3171
    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_9

    .line 3230
    .end local v6           #counter:I
    .end local v7           #defaultnames:[Ljava/lang/String;
    .end local v25           #testname:Ljava/lang/String;
    .end local v26           #wasdefault:Z
    .end local v27           #wasplaying:Z
    .restart local v3       #DirectoryGood:Z
    .restart local v18       #temploc:I
    .restart local v19       #tempresult:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 3233
    .local v8, e1:Ljava/lang/Exception;
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Error exporting data...\r\n"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 3235
    .restart local v20       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 3236
    const/4 v3, 0x0

    goto/16 :goto_b

    .line 3300
    .end local v8           #e1:Ljava/lang/Exception;
    .end local v18           #temploc:I
    .end local v19           #tempresult:Ljava/lang/String;
    .end local v20           #temptoast:Landroid/widget/Toast;
    :cond_22
    if-eqz v3, :cond_13

    .line 3303
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lelectrum2/drums/electrum;->ExportAllSounds(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 3334
    .restart local v24       #testfile:Ljava/io/File;
    :catch_2
    move-exception v28

    goto/16 :goto_d
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 1560
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1565
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .parameter "savedInstanceState"

    .prologue
    .line 761
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 764
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->requestWindowFeature(I)Z

    .line 766
    new-instance v18, Ljava/lang/String;

    const-string v19, "lock"

    invoke-direct/range {v18 .. v19}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v18, Lelectrum2/drums/globalSounds;->lockstring:Ljava/lang/String;

    .line 768
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    sput v18, Lelectrum2/drums/globalSounds;->DPIVAL:F

    .line 770
    const/4 v7, 0x0

    .line 772
    .local v7, hassdcard:Z
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 773
    .local v4, dm:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 774
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    sput v18, Lelectrum2/drums/globalSounds;->screenwidth:I

    .line 775
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    sput v18, Lelectrum2/drums/globalSounds;->screenheight:I

    .line 780
    const/16 v17, 0x0

    .line 790
    .local v17, wassdcarderror:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    .line 791
    const-string v19, "nofs"

    .line 790
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 793
    const-string v18, "Sorry, your SDCARD is not formatted properly! Please format it!"

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    .line 795
    .local v16, temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 799
    const/16 v17, 0x1

    .line 801
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->finish()V

    .line 1374
    .end local v16           #temptoast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 807
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    .line 808
    const-string v19, "shared"

    .line 807
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 810
    const-string v18, "Your SDCARD appears to be in use already, please stop sharing it with a PC or other"

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    .line 812
    .restart local v16       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 817
    const/16 v17, 0x1

    .line 818
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->finish()V

    goto :goto_0

    .line 823
    .end local v16           #temptoast:Landroid/widget/Toast;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    .line 824
    const-string v19, "unmountable"

    .line 823
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 826
    const-string v18, "Your SDCARD is disconnected and cannot re-connect. Try rebooting your device."

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    .line 828
    .restart local v16       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 832
    const/16 v17, 0x1

    .line 834
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->finish()V

    goto :goto_0

    .line 841
    .end local v16           #temptoast:Landroid/widget/Toast;
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    .line 842
    const-string v19, "mounted"

    .line 841
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 844
    const/4 v7, 0x1

    .line 849
    :cond_3
    if-nez v7, :cond_4

    .line 851
    const-string v18, "Sorry, but you need an sdcard installed to use Electrum!"

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    .line 853
    .restart local v16       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 857
    const/16 v17, 0x1

    .line 859
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->finish()V

    .line 864
    .end local v16           #temptoast:Landroid/widget/Toast;
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    .line 865
    const-string v19, "mounted_ro"

    .line 864
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 867
    const-string v18, "Sorry, your SDCARD not writeable for some reason, it\'s read only!"

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    .line 869
    .restart local v16       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 873
    const/16 v17, 0x1

    .line 874
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->finish()V

    goto/16 :goto_0

    .line 880
    .end local v16           #temptoast:Landroid/widget/Toast;
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    .line 883
    .local v9, root:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    .line 889
    const-string v18, "ElectrumPrefsFile"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lelectrum2/drums/electrum;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 890
    .local v10, settings:Landroid/content/SharedPreferences;
    const-string v18, "externalsdpath"

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 892
    .local v3, correctedpath:Ljava/lang/String;
    sput-object v3, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    .line 895
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/electrum/samples"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lelectrum2/drums/globalSounds;->subfolder:Ljava/lang/String;

    .line 897
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/electrum/exported"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lelectrum2/drums/globalSounds;->exportsubfolder:Ljava/lang/String;

    .line 899
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    sput-object v18, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    .line 903
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->requestWindowFeature(I)Z

    .line 905
    const/16 v18, 0x0

    sput-boolean v18, Lelectrum2/drums/globalSounds;->IsPlaying:Z

    .line 908
    const v18, 0x7f030014

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->setContentView(I)V

    .line 912
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->setVolumeControlStream(I)V

    .line 916
    sget-object v12, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 918
    .local v12, strver:Ljava/lang/String;
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v12}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 920
    .local v8, intver:Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    .line 922
    new-instance v15, Lelectrum2/drums/screenrotator;

    invoke-direct {v15}, Lelectrum2/drums/screenrotator;-><init>()V

    .line 924
    .local v15, temprotator:Lelectrum2/drums/screenrotator;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lelectrum2/drums/screenrotator;->AllowRotate(Landroid/app/Activity;)V

    .line 946
    .end local v15           #temprotator:Lelectrum2/drums/screenrotator;
    :cond_6
    new-instance v18, Landroid/os/Handler;

    invoke-direct/range {v18 .. v18}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->patternHandler:Landroid/os/Handler;

    .line 948
    new-instance v18, Lelectrum2/drums/soundObj;

    invoke-direct/range {v18 .. v18}, Lelectrum2/drums/soundObj;-><init>()V

    sput-object v18, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    .line 950
    new-instance v18, Lelectrum2/drums/soundObj;

    invoke-direct/range {v18 .. v18}, Lelectrum2/drums/soundObj;-><init>()V

    sput-object v18, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    .line 952
    new-instance v18, Lelectrum2/drums/soundObj;

    invoke-direct/range {v18 .. v18}, Lelectrum2/drums/soundObj;-><init>()V

    sput-object v18, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    .line 954
    new-instance v18, Lelectrum2/drums/soundObj;

    invoke-direct/range {v18 .. v18}, Lelectrum2/drums/soundObj;-><init>()V

    sput-object v18, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    .line 956
    new-instance v18, Lelectrum2/drums/soundObj;

    invoke-direct/range {v18 .. v18}, Lelectrum2/drums/soundObj;-><init>()V

    sput-object v18, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    .line 958
    new-instance v18, Lelectrum2/drums/soundObj;

    invoke-direct/range {v18 .. v18}, Lelectrum2/drums/soundObj;-><init>()V

    sput-object v18, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    .line 960
    new-instance v18, Lelectrum2/drums/soundObj;

    invoke-direct/range {v18 .. v18}, Lelectrum2/drums/soundObj;-><init>()V

    sput-object v18, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    .line 962
    new-instance v18, Lelectrum2/drums/soundObj;

    invoke-direct/range {v18 .. v18}, Lelectrum2/drums/soundObj;-><init>()V

    sput-object v18, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    .line 964
    const/16 v18, 0x0

    sput-boolean v18, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 967
    new-instance v18, Lelectrum2/drums/soundObj;

    invoke-direct/range {v18 .. v18}, Lelectrum2/drums/soundObj;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->pastesound1:Lelectrum2/drums/soundObj;

    .line 968
    new-instance v18, Lelectrum2/drums/soundObj;

    invoke-direct/range {v18 .. v18}, Lelectrum2/drums/soundObj;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->pastesound2:Lelectrum2/drums/soundObj;

    .line 969
    new-instance v18, Lelectrum2/drums/soundObj;

    invoke-direct/range {v18 .. v18}, Lelectrum2/drums/soundObj;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->pastesound3:Lelectrum2/drums/soundObj;

    .line 970
    new-instance v18, Lelectrum2/drums/soundObj;

    invoke-direct/range {v18 .. v18}, Lelectrum2/drums/soundObj;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->pastesound4:Lelectrum2/drums/soundObj;

    .line 971
    new-instance v18, Lelectrum2/drums/soundObj;

    invoke-direct/range {v18 .. v18}, Lelectrum2/drums/soundObj;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->pastesound5:Lelectrum2/drums/soundObj;

    .line 972
    new-instance v18, Lelectrum2/drums/soundObj;

    invoke-direct/range {v18 .. v18}, Lelectrum2/drums/soundObj;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->pastesound6:Lelectrum2/drums/soundObj;

    .line 973
    new-instance v18, Lelectrum2/drums/soundObj;

    invoke-direct/range {v18 .. v18}, Lelectrum2/drums/soundObj;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->pastesound7:Lelectrum2/drums/soundObj;

    .line 974
    new-instance v18, Lelectrum2/drums/soundObj;

    invoke-direct/range {v18 .. v18}, Lelectrum2/drums/soundObj;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->pastesound8:Lelectrum2/drums/soundObj;

    .line 977
    sget v18, Lelectrum2/drums/soundObj;->NUM_PATTERNS:I

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->patternNeeded:[I

    .line 979
    const-wide/high16 v18, 0x3ff0

    sput-wide v18, Lelectrum2/drums/globalSounds;->globalVolume:D

    .line 981
    const v18, 0x7f0700a3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->volknob:Landroid/widget/ImageView;

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->volknob:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->vollistener:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 986
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/electrum;->OldPosition:I

    .line 989
    const-wide v18, -0x3fa9800000000000L

    sget-wide v20, Lelectrum2/drums/globalSounds;->globalVolume:D

    const-wide v22, 0x4066800000000000L

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/electrum;->Position:I

    .line 994
    const v18, 0x7f070090

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumname1:Landroid/widget/TextView;

    .line 995
    const v18, 0x7f070092

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumname2:Landroid/widget/TextView;

    .line 996
    const v18, 0x7f0700a8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumname3:Landroid/widget/TextView;

    .line 997
    const v18, 0x7f0700aa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumname4:Landroid/widget/TextView;

    .line 998
    const v18, 0x7f0700ac

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumname5:Landroid/widget/TextView;

    .line 999
    const v18, 0x7f0700ae

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumname6:Landroid/widget/TextView;

    .line 1000
    const v18, 0x7f0700b0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumname7:Landroid/widget/TextView;

    .line 1001
    const v18, 0x7f0700b2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumname8:Landroid/widget/TextView;

    .line 1003
    const v18, 0x7f0700a5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->projecttitle:Landroid/widget/TextView;

    .line 1006
    const v18, 0x7f07009f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->bpmlayout:Landroid/widget/LinearLayout;

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->bpmlayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->bpmlayoutclick:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1011
    invoke-direct/range {p0 .. p0}, Lelectrum2/drums/electrum;->LoadDrumKit()V

    .line 1013
    invoke-direct/range {p0 .. p0}, Lelectrum2/drums/electrum;->SetDrumsCurrentPattern()V

    .line 1016
    const v18, 0x7f0700b4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ProgressBar;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->exportprogress:Landroid/widget/ProgressBar;

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->exportprogress:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1019
    const v18, 0x7f070079

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->playbutton:Landroid/widget/ImageView;

    .line 1020
    const v18, 0x7f07007b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->stopbutton:Landroid/widget/ImageView;

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->playbutton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->playTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->stopbutton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->stopTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1023
    const v18, 0x7f07009b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->playallbutton:Landroid/widget/ImageView;

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->playallbutton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->playAllTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->playbutton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->playTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->stopbutton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->stopTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1028
    const v18, 0x7f07009c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->playlivebutton:Landroid/widget/ImageView;

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->playlivebutton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->playLiveTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1035
    const v18, 0x7f07009e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->patternupbutton:Landroid/widget/ImageView;

    .line 1036
    const v18, 0x7f07009d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->patterndownbutton:Landroid/widget/ImageView;

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->patternupbutton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->patternupbuttonTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->patterndownbutton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->patterndownbuttonTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1041
    const v18, 0x7f07007d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumbutton1:Landroid/widget/ImageView;

    .line 1042
    const v18, 0x7f07007e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumbutton2:Landroid/widget/ImageView;

    .line 1043
    const v18, 0x7f07007f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumbutton3:Landroid/widget/ImageView;

    .line 1044
    const v18, 0x7f070080

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumbutton4:Landroid/widget/ImageView;

    .line 1045
    const v18, 0x7f070081

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumbutton5:Landroid/widget/ImageView;

    .line 1046
    const v18, 0x7f070082

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumbutton6:Landroid/widget/ImageView;

    .line 1047
    const v18, 0x7f070083

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumbutton7:Landroid/widget/ImageView;

    .line 1048
    const v18, 0x7f070084

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumbutton8:Landroid/widget/ImageView;

    .line 1049
    const v18, 0x7f070085

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumbutton9:Landroid/widget/ImageView;

    .line 1050
    const v18, 0x7f070086

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumbutton10:Landroid/widget/ImageView;

    .line 1051
    const v18, 0x7f070087

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumbutton11:Landroid/widget/ImageView;

    .line 1052
    const v18, 0x7f070088

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumbutton12:Landroid/widget/ImageView;

    .line 1053
    const v18, 0x7f070089

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumbutton13:Landroid/widget/ImageView;

    .line 1054
    const v18, 0x7f07008a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumbutton14:Landroid/widget/ImageView;

    .line 1055
    const v18, 0x7f07008b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumbutton15:Landroid/widget/ImageView;

    .line 1056
    const v18, 0x7f07008c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->drumbutton16:Landroid/widget/ImageView;

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton1:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton2:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton3:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton4:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton5:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton6:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton7:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton8:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton9:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton10:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton11:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton12:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton13:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton14:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton15:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton16:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1075
    const v18, 0x7f070091

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->soundslot1:Landroid/widget/ImageView;

    .line 1076
    const v18, 0x7f070093

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->soundslot2:Landroid/widget/ImageView;

    .line 1077
    const v18, 0x7f0700a9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->soundslot3:Landroid/widget/ImageView;

    .line 1078
    const v18, 0x7f0700ab

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->soundslot4:Landroid/widget/ImageView;

    .line 1079
    const v18, 0x7f0700ad

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->soundslot5:Landroid/widget/ImageView;

    .line 1080
    const v18, 0x7f0700af

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->soundslot6:Landroid/widget/ImageView;

    .line 1081
    const v18, 0x7f0700b1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->soundslot7:Landroid/widget/ImageView;

    .line 1082
    const v18, 0x7f0700b3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->soundslot8:Landroid/widget/ImageView;

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->soundslot1:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->soundslotTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->soundslot2:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->soundslotTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->soundslot3:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->soundslotTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->soundslot4:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->soundslotTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->soundslot5:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->soundslotTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->soundslot6:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->soundslotTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->soundslot7:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->soundslotTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->soundslot8:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->soundslotTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1104
    const v18, 0x7f0700a1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->bpmText:Landroid/widget/TextView;

    .line 1105
    const v18, 0x7f0700a2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->patternText:Landroid/widget/TextView;

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->bpmText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->onePlace:Ljava/text/DecimalFormat;

    move-object/from16 v20, v0

    sget v21, Lelectrum2/drums/electrum;->bpm:F

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " bpm"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    const v18, 0x7f0700a0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->resolutionText:Landroid/widget/TextView;

    .line 1115
    sget-object v18, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    sput-object v18, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    .line 1117
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->DisplaySelectedSound(I)V

    .line 1119
    invoke-direct/range {p0 .. p0}, Lelectrum2/drums/electrum;->DisplaySoundSlots()V

    .line 1122
    new-instance v18, Landroid/media/MediaPlayer;

    invoke-direct/range {v18 .. v18}, Landroid/media/MediaPlayer;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->testMedia:Landroid/media/MediaPlayer;

    .line 1127
    const/4 v6, 0x0

    .line 1131
    .local v6, firstrun:Z
    :try_start_0
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_7

    .line 1136
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    move-result v11

    .line 1137
    .local v11, status:Z
    const/4 v6, 0x1

    .line 1141
    .end local v11           #status:Z
    :cond_7
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/patterns"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_8

    .line 1148
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/patterns"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 1152
    :cond_8
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/drumkits"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_9

    .line 1159
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/drumkits"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 1164
    :cond_9
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/exported"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_a

    .line 1171
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/exported"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 1174
    :cond_a
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/exported/bouncedpads"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_b

    .line 1181
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/exported/bouncedpads"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 1183
    new-instance v14, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/electrum/exported/bouncedpads"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, ".nomedia"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    .local v14, tempfile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_b

    .line 1186
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 1192
    .end local v14           #tempfile:Ljava/io/File;
    :cond_b
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/exported/midi"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_c

    .line 1199
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/exported/midi"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 1202
    :cond_c
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/samples"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 1205
    new-instance v14, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/electrum/samples"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, ".nomedia"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    .restart local v14       #tempfile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_d

    .line 1208
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 1226
    :cond_d
    :goto_1
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/media"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_e

    .line 1233
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/media"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 1236
    :cond_e
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/media/audio"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_f

    .line 1243
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/media/audio"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 1247
    :cond_f
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/temprecord"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_10

    .line 1254
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/temprecord"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 1255
    new-instance v14, Ljava/io/File;

    .end local v14           #tempfile:Ljava/io/File;
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/electrum/temprecord"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, ".nomedia"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    .restart local v14       #tempfile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_10

    .line 1258
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 1263
    :cond_10
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/samples/recordings"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_11

    .line 1270
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/samples/recordings"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 1271
    new-instance v14, Ljava/io/File;

    .end local v14           #tempfile:Ljava/io/File;
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/electrum/samples/recordings"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, ".nomedia"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    .restart local v14       #tempfile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_11

    .line 1274
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 1281
    :cond_11
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/media/audio/ringtones"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_12

    .line 1288
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/media/audio/ringtones"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 1290
    :cond_12
    if-eqz v6, :cond_13

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->patternHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->ShowHelpFirstTime:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x7d0

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1320
    .end local v14           #tempfile:Ljava/io/File;
    :cond_13
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->soundSlotGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->gestureScanner:Landroid/view/GestureDetector;

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumSlotGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/electrum;->gestureScannerDrumSlot:Landroid/view/GestureDetector;

    .line 1323
    sput-object p0, Lelectrum2/drums/globalSounds;->MainScreen:Lelectrum2/drums/electrum;

    .line 1324
    const/16 v18, 0x0

    sput-boolean v18, Lelectrum2/drums/globalSounds;->livemode:Z

    .line 1325
    const/16 v18, 0x0

    sput-boolean v18, Lelectrum2/drums/globalSounds;->showslotlights:Z

    .line 1326
    const/16 v18, 0x1

    sput-boolean v18, Lelectrum2/drums/globalSounds;->playpadwhenhit:Z

    .line 1327
    const/16 v18, 0x0

    sput-boolean v18, Lelectrum2/drums/globalSounds;->cutpadswhenhit:Z

    .line 1329
    sget v18, Lelectrum2/drums/globalSounds;->mixerknobsizexorg:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sput v18, Lelectrum2/drums/globalSounds;->mixerknobsizex:I

    .line 1330
    sget v18, Lelectrum2/drums/globalSounds;->mixerknobsizeyorg:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sput v18, Lelectrum2/drums/globalSounds;->mixerknobsizey:I

    .line 1331
    sget v18, Lelectrum2/drums/globalSounds;->faderhighlightwidthorg:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sput v18, Lelectrum2/drums/globalSounds;->faderhighlightwidth:I

    .line 1332
    sget v18, Lelectrum2/drums/globalSounds;->faderhighlightheightorg:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sput v18, Lelectrum2/drums/globalSounds;->faderhighlightheight:I

    .line 1333
    sget v18, Lelectrum2/drums/globalSounds;->faderhighlightrightorg:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sput v18, Lelectrum2/drums/globalSounds;->faderhighlightright:I

    .line 1337
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/electrum/options.dat"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lelectrum2/drums/electrum;->LoadOptions(Ljava/lang/String;)V

    .line 1346
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/electrum"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lelectrum2/drums/electrum;->LoadPatterns(Ljava/lang/String;Z)V

    .line 1350
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/electrum;->OldPosition:I

    .line 1353
    const-wide v18, -0x3fa9800000000000L

    sget-wide v20, Lelectrum2/drums/globalSounds;->globalVolume:D

    const-wide v22, 0x4066800000000000L

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/electrum;->Position:I

    .line 1357
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->SetProjectText()V

    .line 1362
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "phone"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 1365
    .local v13, telmanager:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/electrum;->telephonestate:Landroid/telephony/PhoneStateListener;

    move-object/from16 v18, v0

    const/16 v19, 0x20

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_0

    .line 1216
    .end local v13           #telmanager:Landroid/telephony/TelephonyManager;
    :cond_14
    :try_start_1
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/electrum/samples"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 1218
    new-instance v14, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/electrum/samples"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, ".nomedia"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    .restart local v14       #tempfile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_d

    .line 1221
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1297
    .end local v14           #tempfile:Ljava/io/File;
    :catch_0
    move-exception v5

    .line 1299
    .local v5, e:Ljava/lang/Exception;
    if-nez v17, :cond_15

    .line 1301
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Sorry, I have encountered an error on startup: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    .line 1302
    .restart local v16       #temptoast:Landroid/widget/Toast;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 1314
    .end local v16           #temptoast:Landroid/widget/Toast;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/electrum;->finish()V

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 5794
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 5797
    const-string v1, "Help"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5799
    const-string v1, "BPM/Res/Len"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5800
    const-string v1, "Copy Pattern"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5801
    const-string v1, "Paste Pattern"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5802
    const-string v1, "Clear Pattern"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5803
    const-string v1, "Clear All Patterns"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5804
    const-string v1, "Load Drumkit"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5805
    const-string v1, "Save Drumkit"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5806
    const-string v1, "Play Multitouch Pads"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5808
    const-string v1, "Load Patch"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5809
    const-string v1, "Save Patch"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5811
    const-string v1, "Export"

    invoke-interface {p1, v1}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 5812
    .local v0, exportmenu:Landroid/view/SubMenu;
    const-string v1, "Export WAV (Loop)"

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5813
    const-string v1, "Export WAV (Song)"

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5814
    const-string v1, "Export MIDI (Loop)"

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5815
    const-string v1, "Export MIDI (Song)"

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5816
    const-string v1, "Export Pad samples"

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5818
    const-string v1, "Share Exported (WAV)"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5820
    const-string v1, "Change root sdcard path"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 5825
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 2775
    invoke-virtual {p0}, Lelectrum2/drums/electrum;->StopPlaying()V

    .line 2777
    invoke-direct {p0}, Lelectrum2/drums/electrum;->releaseAllPadTracks()V

    .line 2786
    invoke-virtual {p0}, Lelectrum2/drums/electrum;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2789
    .local v0, telmanager:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lelectrum2/drums/electrum;->telephonestate:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2792
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2794
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    .line 5907
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-nez v8, :cond_12

    .line 5911
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Change root sdcard path"

    if-ne v8, v9, :cond_0

    .line 5914
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lelectrum2/drums/changesdpath;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5917
    .local v0, i:Landroid/content/Intent;
    const/4 v8, 0x1

    sput-boolean v8, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 5919
    invoke-virtual {p0, v0}, Lelectrum2/drums/electrum;->startActivity(Landroid/content/Intent;)V

    .line 5926
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Share Exported (WAV)"

    if-ne v8, v9, :cond_1

    .line 5931
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lelectrum2/drums/loadexported;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5934
    .restart local v0       #i:Landroid/content/Intent;
    const/4 v8, 0x1

    sput-boolean v8, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 5936
    const/16 v8, 0xdc

    invoke-virtual {p0, v0, v8}, Lelectrum2/drums/electrum;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5942
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "BPM/Res/Len"

    if-ne v8, v9, :cond_2

    .line 5944
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lelectrum2/drums/bpmsettings;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5946
    .restart local v0       #i:Landroid/content/Intent;
    const-string v8, "bpm"

    iget-object v9, p0, Lelectrum2/drums/electrum;->onePlace:Ljava/text/DecimalFormat;

    sget v10, Lelectrum2/drums/electrum;->bpm:F

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5948
    new-instance v6, Ljava/lang/Integer;

    sget v8, Lelectrum2/drums/electrum;->slotspermeasure:I

    invoke-direct {v6, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 5950
    .local v6, tempval:Ljava/lang/Integer;
    const-string v8, "resolution"

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5953
    new-instance v7, Ljava/lang/Integer;

    sget v8, Lelectrum2/drums/electrum;->numberofslots:I

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 5954
    .local v7, tempval2:Ljava/lang/Integer;
    const-string v8, "pattlen"

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5955
    const/4 v8, 0x1

    sput-boolean v8, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 5958
    const/16 v8, 0xc

    invoke-virtual {p0, v0, v8}, Lelectrum2/drums/electrum;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5964
    .end local v0           #i:Landroid/content/Intent;
    .end local v6           #tempval:Ljava/lang/Integer;
    .end local v7           #tempval2:Ljava/lang/Integer;
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Export MIDI (Loop)"

    if-ne v8, v9, :cond_3

    .line 5966
    const-string v8, ".mid"

    sput-object v8, Lelectrum2/drums/globalSounds;->exporteextension:Ljava/lang/String;

    .line 5969
    invoke-direct {p0}, Lelectrum2/drums/electrum;->CalcNumberOfPatternsNeededSinglePattern()I

    move-result v8

    if-nez v8, :cond_13

    .line 5971
    const-string v8, "No pattern data to export in this pattern!"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 5973
    .local v5, temptoast1:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 5995
    .end local v5           #temptoast1:Landroid/widget/Toast;
    :cond_3
    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Export Pad samples"

    if-ne v8, v9, :cond_4

    .line 5999
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lelectrum2/drums/browsefolder;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6002
    .restart local v0       #i:Landroid/content/Intent;
    const/4 v8, 0x1

    sput-boolean v8, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 6004
    const/16 v8, 0x8c

    invoke-virtual {p0, v0, v8}, Lelectrum2/drums/electrum;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6013
    .end local v0           #i:Landroid/content/Intent;
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Export MIDI (Song)"

    if-ne v8, v9, :cond_5

    .line 6015
    const-string v8, ".mid"

    sput-object v8, Lelectrum2/drums/globalSounds;->exporteextension:Ljava/lang/String;

    .line 6017
    sget-object v8, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_14

    .line 6019
    const-string v8, "No song sequence to export!"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 6021
    .restart local v5       #temptoast1:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 6042
    .end local v5           #temptoast1:Landroid/widget/Toast;
    :cond_5
    :goto_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Export WAV (Loop)"

    if-ne v8, v9, :cond_6

    .line 6045
    const-string v8, ".wav"

    sput-object v8, Lelectrum2/drums/globalSounds;->exporteextension:Ljava/lang/String;

    .line 6047
    invoke-direct {p0}, Lelectrum2/drums/electrum;->CalcNumberOfPatternsNeededSinglePattern()I

    move-result v8

    if-nez v8, :cond_15

    .line 6049
    const-string v8, "No pattern data to play in this pattern!"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 6051
    .restart local v5       #temptoast1:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 6070
    .end local v5           #temptoast1:Landroid/widget/Toast;
    :cond_6
    :goto_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Export WAV (Song)"

    if-ne v8, v9, :cond_7

    .line 6072
    const-string v8, ".wav"

    sput-object v8, Lelectrum2/drums/globalSounds;->exporteextension:Ljava/lang/String;

    .line 6075
    sget-object v8, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_16

    .line 6077
    const-string v8, "No song sequence to export!"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 6079
    .restart local v5       #temptoast1:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 6108
    .end local v5           #temptoast1:Landroid/widget/Toast;
    :cond_7
    :goto_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Export Ringtone"

    if-ne v8, v9, :cond_8

    .line 6110
    invoke-direct {p0}, Lelectrum2/drums/electrum;->CalcNumberOfPatternsNeeded()I

    move-result v8

    if-nez v8, :cond_18

    .line 6112
    const-string v8, "No pattern data to export!"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 6114
    .restart local v5       #temptoast1:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 6129
    .end local v5           #temptoast1:Landroid/widget/Toast;
    :cond_8
    :goto_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Help"

    if-ne v8, v9, :cond_9

    .line 6131
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lelectrum2/drums/helppage;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6132
    .restart local v0       #i:Landroid/content/Intent;
    const/4 v8, 0x1

    sput-boolean v8, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 6134
    const/16 v8, 0xc

    invoke-virtual {p0, v0, v8}, Lelectrum2/drums/electrum;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6138
    .end local v0           #i:Landroid/content/Intent;
    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Load Drumkit"

    if-ne v8, v9, :cond_a

    .line 6140
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lelectrum2/drums/loadrumkits;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6141
    .restart local v0       #i:Landroid/content/Intent;
    const/4 v8, 0x1

    sput-boolean v8, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 6142
    const/16 v8, 0x10

    invoke-virtual {p0, v0, v8}, Lelectrum2/drums/electrum;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6146
    .end local v0           #i:Landroid/content/Intent;
    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Save Drumkit"

    if-ne v8, v9, :cond_b

    .line 6150
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lelectrum2/drums/savedrumkit;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6151
    .restart local v0       #i:Landroid/content/Intent;
    const/4 v8, 0x1

    sput-boolean v8, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 6152
    const/16 v8, 0x49

    invoke-virtual {p0, v0, v8}, Lelectrum2/drums/electrum;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6158
    .end local v0           #i:Landroid/content/Intent;
    :cond_b
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Save Patch"

    if-ne v8, v9, :cond_c

    .line 6162
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lelectrum2/drums/savesettings;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6163
    .restart local v0       #i:Landroid/content/Intent;
    const/4 v8, 0x1

    sput-boolean v8, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 6164
    const/16 v8, 0xd

    invoke-virtual {p0, v0, v8}, Lelectrum2/drums/electrum;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6169
    .end local v0           #i:Landroid/content/Intent;
    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Load Patch"

    if-ne v8, v9, :cond_d

    .line 6174
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lelectrum2/drums/loadsettings;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6175
    .restart local v0       #i:Landroid/content/Intent;
    const/4 v8, 0x1

    sput-boolean v8, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 6177
    const/16 v8, 0xe

    invoke-virtual {p0, v0, v8}, Lelectrum2/drums/electrum;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6181
    .end local v0           #i:Landroid/content/Intent;
    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Play Multitouch Pads"

    if-ne v8, v9, :cond_e

    .line 6183
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 6184
    .local v2, sdkver:Ljava/lang/String;
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 6186
    .local v3, tempint:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x5

    if-lt v8, v9, :cond_19

    .line 6191
    invoke-direct {p0}, Lelectrum2/drums/electrum;->stopAllPadTracks()V

    .line 6192
    const/4 v8, 0x0

    iput-object v8, p0, Lelectrum2/drums/electrum;->padtrack:Landroid/media/AudioTrack;

    .line 6193
    const/4 v8, 0x0

    iput-object v8, p0, Lelectrum2/drums/electrum;->padtrack2:Landroid/media/AudioTrack;

    .line 6194
    const/4 v8, 0x0

    iput-object v8, p0, Lelectrum2/drums/electrum;->padtrack3:Landroid/media/AudioTrack;

    .line 6195
    const/4 v8, 0x0

    iput-object v8, p0, Lelectrum2/drums/electrum;->padtrack4:Landroid/media/AudioTrack;

    .line 6196
    const/4 v8, 0x0

    iput-object v8, p0, Lelectrum2/drums/electrum;->padtrack5:Landroid/media/AudioTrack;

    .line 6197
    const/4 v8, 0x0

    iput-object v8, p0, Lelectrum2/drums/electrum;->padtrack6:Landroid/media/AudioTrack;

    .line 6198
    const/4 v8, 0x0

    iput-object v8, p0, Lelectrum2/drums/electrum;->padtrack7:Landroid/media/AudioTrack;

    .line 6199
    const/4 v8, 0x0

    iput-object v8, p0, Lelectrum2/drums/electrum;->padtrack8:Landroid/media/AudioTrack;

    .line 6202
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 6205
    new-instance v1, Landroid/content/Intent;

    const-class v8, Lelectrum2/drums/multipadsactivity;

    invoke-direct {v1, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6206
    .local v1, padlaunch:Landroid/content/Intent;
    const/4 v8, 0x1

    sput-boolean v8, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 6207
    invoke-virtual {p0, v1}, Lelectrum2/drums/electrum;->startActivity(Landroid/content/Intent;)V

    .line 6222
    .end local v1           #padlaunch:Landroid/content/Intent;
    .end local v2           #sdkver:Ljava/lang/String;
    .end local v3           #tempint:Ljava/lang/Integer;
    :cond_e
    :goto_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Copy Pattern"

    if-ne v8, v9, :cond_f

    .line 6225
    invoke-direct {p0}, Lelectrum2/drums/electrum;->CopyPatterns()V

    .line 6229
    :cond_f
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Paste Pattern"

    if-ne v8, v9, :cond_10

    .line 6231
    invoke-direct {p0}, Lelectrum2/drums/electrum;->PastePatterns()V

    .line 6236
    :cond_10
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Clear Pattern"

    if-ne v8, v9, :cond_11

    .line 6238
    invoke-virtual {p0}, Lelectrum2/drums/electrum;->StopPlaying()V

    .line 6240
    sget-object v8, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    invoke-virtual {v8}, Lelectrum2/drums/soundObj;->ClearSlots()V

    .line 6241
    sget-object v8, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    invoke-virtual {v8}, Lelectrum2/drums/soundObj;->ClearSlots()V

    .line 6242
    sget-object v8, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    invoke-virtual {v8}, Lelectrum2/drums/soundObj;->ClearSlots()V

    .line 6243
    sget-object v8, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    invoke-virtual {v8}, Lelectrum2/drums/soundObj;->ClearSlots()V

    .line 6244
    sget-object v8, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    invoke-virtual {v8}, Lelectrum2/drums/soundObj;->ClearSlots()V

    .line 6245
    sget-object v8, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    invoke-virtual {v8}, Lelectrum2/drums/soundObj;->ClearSlots()V

    .line 6246
    sget-object v8, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    invoke-virtual {v8}, Lelectrum2/drums/soundObj;->ClearSlots()V

    .line 6247
    sget-object v8, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    invoke-virtual {v8}, Lelectrum2/drums/soundObj;->ClearSlots()V

    .line 6249
    invoke-direct {p0}, Lelectrum2/drums/electrum;->DisplaySoundSlots()V

    .line 6254
    :cond_11
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Clear All Patterns"

    if-ne v8, v9, :cond_12

    .line 6257
    invoke-virtual {p0}, Lelectrum2/drums/electrum;->StopPlaying()V

    .line 6259
    sget-object v8, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    invoke-virtual {v8}, Lelectrum2/drums/soundObj;->ClearAllSlots()V

    .line 6260
    sget-object v8, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    invoke-virtual {v8}, Lelectrum2/drums/soundObj;->ClearAllSlots()V

    .line 6261
    sget-object v8, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    invoke-virtual {v8}, Lelectrum2/drums/soundObj;->ClearAllSlots()V

    .line 6262
    sget-object v8, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    invoke-virtual {v8}, Lelectrum2/drums/soundObj;->ClearAllSlots()V

    .line 6263
    sget-object v8, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    invoke-virtual {v8}, Lelectrum2/drums/soundObj;->ClearAllSlots()V

    .line 6264
    sget-object v8, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    invoke-virtual {v8}, Lelectrum2/drums/soundObj;->ClearAllSlots()V

    .line 6265
    sget-object v8, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    invoke-virtual {v8}, Lelectrum2/drums/soundObj;->ClearAllSlots()V

    .line 6266
    sget-object v8, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    invoke-virtual {v8}, Lelectrum2/drums/soundObj;->ClearAllSlots()V

    .line 6268
    const/4 v8, 0x0

    iput v8, p0, Lelectrum2/drums/electrum;->currentpattern:I

    .line 6270
    invoke-direct {p0}, Lelectrum2/drums/electrum;->SetDrumsCurrentPattern()V

    .line 6272
    iget-object v8, p0, Lelectrum2/drums/electrum;->patternHandler:Landroid/os/Handler;

    iget-object v9, p0, Lelectrum2/drums/electrum;->UpdatePattern:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6275
    invoke-direct {p0}, Lelectrum2/drums/electrum;->DisplaySoundSlots()V

    .line 6277
    const-string v8, "Untitled"

    sput-object v8, Lelectrum2/drums/globalSounds;->projectname:Ljava/lang/String;

    .line 6279
    invoke-virtual {p0}, Lelectrum2/drums/electrum;->SetProjectText()V

    .line 6291
    :cond_12
    const/4 v8, 0x1

    return v8

    .line 5979
    :cond_13
    const/4 v8, 0x0

    iput-boolean v8, p0, Lelectrum2/drums/electrum;->exportMIDIsequence:Z

    .line 5981
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lelectrum2/drums/exportAudio;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5984
    .restart local v0       #i:Landroid/content/Intent;
    const/4 v8, 0x1

    sput-boolean v8, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 5986
    const/16 v8, 0x78

    invoke-virtual {p0, v0, v8}, Lelectrum2/drums/electrum;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 6027
    .end local v0           #i:Landroid/content/Intent;
    :cond_14
    const/4 v8, 0x1

    iput-boolean v8, p0, Lelectrum2/drums/electrum;->exportMIDIsequence:Z

    .line 6029
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lelectrum2/drums/exportAudio;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6032
    .restart local v0       #i:Landroid/content/Intent;
    const/4 v8, 0x1

    sput-boolean v8, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 6034
    const/16 v8, 0x78

    invoke-virtual {p0, v0, v8}, Lelectrum2/drums/electrum;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 6057
    .end local v0           #i:Landroid/content/Intent;
    :cond_15
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lelectrum2/drums/exportAudio;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6059
    .restart local v0       #i:Landroid/content/Intent;
    const/4 v8, 0x0

    iput-boolean v8, p0, Lelectrum2/drums/electrum;->exportringtone:Z

    .line 6061
    const/4 v8, 0x0

    iput-boolean v8, p0, Lelectrum2/drums/electrum;->PatternSequenceMode:Z

    .line 6062
    const/4 v8, 0x1

    sput-boolean v8, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 6064
    const/16 v8, 0x14

    invoke-virtual {p0, v0, v8}, Lelectrum2/drums/electrum;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 6082
    .end local v0           #i:Landroid/content/Intent;
    :cond_16
    invoke-direct {p0}, Lelectrum2/drums/electrum;->CalcNumberOfPatternsNeeded()I

    move-result v8

    if-nez v8, :cond_17

    .line 6084
    const-string v8, "No pattern data to export the song sequence with!"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 6086
    .restart local v5       #temptoast1:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 6092
    .end local v5           #temptoast1:Landroid/widget/Toast;
    :cond_17
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lelectrum2/drums/exportAudio;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6094
    .restart local v0       #i:Landroid/content/Intent;
    const/4 v8, 0x0

    iput-boolean v8, p0, Lelectrum2/drums/electrum;->exportringtone:Z

    .line 6096
    const/4 v8, 0x1

    iput-boolean v8, p0, Lelectrum2/drums/electrum;->PatternSequenceMode:Z

    .line 6097
    const/4 v8, 0x1

    sput-boolean v8, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 6100
    const/16 v8, 0x14

    invoke-virtual {p0, v0, v8}, Lelectrum2/drums/electrum;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 6117
    .end local v0           #i:Landroid/content/Intent;
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lelectrum2/drums/exportAudio;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6119
    .restart local v0       #i:Landroid/content/Intent;
    const/4 v8, 0x1

    iput-boolean v8, p0, Lelectrum2/drums/electrum;->exportringtone:Z

    .line 6120
    const/4 v8, 0x1

    sput-boolean v8, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 6122
    const/16 v8, 0x14

    invoke-virtual {p0, v0, v8}, Lelectrum2/drums/electrum;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    .line 6213
    .end local v0           #i:Landroid/content/Intent;
    .restart local v2       #sdkver:Ljava/lang/String;
    .restart local v3       #tempint:Ljava/lang/Integer;
    :cond_19
    const-string v8, "Feature only allowed on Android 2.0 and higher!"

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 6215
    .local v4, temptoast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2799
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2801
    sget-boolean v2, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    if-nez v2, :cond_0

    .line 2806
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/electrum"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lelectrum2/drums/electrum;->SavePatterns(Ljava/lang/String;Z)V

    .line 2808
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/electrum/options.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lelectrum2/drums/electrum;->SaveOptions(Ljava/lang/String;)V

    .line 2818
    :cond_0
    sput-boolean v4, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 2823
    const-string v2, "ElectrumPrefsFile"

    invoke-virtual {p0, v2, v4}, Lelectrum2/drums/electrum;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2824
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2825
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "externalsdpath"

    sget-object v3, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2828
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2831
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 2766
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2769
    return-void
.end method
