.class public Lelectrum2/drums/soundObj;
.super Ljava/lang/Object;
.source "soundObj.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lelectrum2/drums/soundObj$copypaste;
    }
.end annotation


# static fields
.field public static NUM_PATTERNS:I

.field static pitchvalues:[F


# instance fields
.field OldSlotValue:I

.field public PlaySample:Z

.field PlaySlot:Z

.field SampleDone:Z

.field StereoPanL:F

.field StereoPanLbackup:F

.field StereoPanR:F

.field StereoPanRbackup:F

.field accentset:Z

.field public accentslot:[[Z

.field backupfilename:Ljava/lang/String;

.field public currentpattern:I

.field public currsample:I

.field public dofitbpm:Z

.field dofitbpmbackup:Z

.field public drumname:Ljava/lang/String;

.field public errmessage:Ljava/lang/String;

.field public fxdelayfeedback:F

.field public fxdelaytime:I

.field public fxdelaywrap:Z

.field public fxdistortiongain:F

.field public fxdistortionthreshold:F

.field hasDelay:Z

.field hasDelayBackup:Z

.field hasDistortion:Z

.field hasDistortionBackup:Z

.field hasReverse:Z

.field hasReverseBackup:Z

.field haspitchbackup:Z

.field public mute:Z

.field public mutenexttime:Z

.field oldsamplefulllen:I

.field panvalue:I

.field public pitch:I

.field pitchbackup:I

.field public pitchfirsttime:Z

.field public playslot:[[Z

.field public readnewpitch:Z

.field public retrigger:Z

.field retriggerbackup:Z

.field samplebpm:F

.field samplebpmbackup:F

.field public samplecount:I

.field sampleendposbackup:I

.field public samplefilename:Ljava/lang/String;

.field public samplefulllen:I

.field samplefulllenbackup:I

.field public samplelen:I

.field public samplelencount:I

.field samplelencountbackup:I

.field public samplelencut:D

.field samplelenstr:Ljava/lang/String;

.field public samplelocation:I

.field public samplesperslot:I

.field public samplevolume:D

.field public shuffle:[Z

.field public shuffledelay:J

.field public sounddata:[S

.field sounddatabackup:[S

.field soundmult:D

.field public startpos:I

.field startposbackup:I

.field storedupsample:[S

.field volmult:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x20

    sput v0, Lelectrum2/drums/soundObj;->NUM_PATTERNS:I

    .line 32
    const/16 v0, 0x19

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lelectrum2/drums/soundObj;->pitchvalues:[F

    .line 145
    const-string v0, "filter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 146
    const-string v0, "nativewavloader"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 147
    const-string v0, "fxmod"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    return-void

    .line 32
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x48t 0x42t
        0x74t 0xe4t 0x53t 0x42t
        0xf4t 0x7dt 0x60t 0x42t
        0x59t 0xd7t 0x6dt 0x42t
        0xe7t 0xfbt 0x7bt 0x42t
        0xdat 0x7bt 0x85t 0x42t
        0xd4t 0x6bt 0x8dt 0x42t
        0xa2t 0xd4t 0x95t 0x42t
        0x71t 0xbdt 0x9et 0x42t
        0xe0t 0x2dt 0xa8t 0x42t
        0xfat 0x2dt 0xb2t 0x42t
        0x59t 0xc6t 0xbct 0x42t
        0x0t 0x0t 0xc8t 0x42t
        0x81t 0xe4t 0xd3t 0x42t
        0xet 0x7et 0xe0t 0x42t
        0x66t 0xd7t 0xedt 0x42t
        0xf5t 0xfbt 0xfbt 0x42t
        0xe1t 0x7bt 0x5t 0x43t
        0xdat 0x6bt 0xdt 0x43t
        0xa9t 0xd4t 0x15t 0x43t
        0x77t 0xbdt 0x1et 0x43t
        0xe0t 0x2dt 0x28t 0x43t
        0x1t 0x2et 0x32t 0x43t
        0x59t 0xc6t 0x3ct 0x43t
        0x0t 0x0t 0x48t 0x43t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/16 v7, 0x10

    const-wide/high16 v5, 0x3ff0

    const/4 v4, 0x0

    .line 1223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v4, p0, Lelectrum2/drums/soundObj;->samplelencountbackup:I

    .line 21
    iput v4, p0, Lelectrum2/drums/soundObj;->startpos:I

    .line 26
    iput-boolean v4, p0, Lelectrum2/drums/soundObj;->readnewpitch:Z

    .line 43
    iput v4, p0, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 45
    iput v4, p0, Lelectrum2/drums/soundObj;->samplelocation:I

    .line 46
    iput v4, p0, Lelectrum2/drums/soundObj;->samplecount:I

    .line 48
    iput-boolean v4, p0, Lelectrum2/drums/soundObj;->PlaySample:Z

    .line 49
    iput v4, p0, Lelectrum2/drums/soundObj;->currsample:I

    .line 50
    iput v4, p0, Lelectrum2/drums/soundObj;->samplelen:I

    .line 52
    iput v4, p0, Lelectrum2/drums/soundObj;->samplesperslot:I

    .line 54
    iput-boolean v4, p0, Lelectrum2/drums/soundObj;->PlaySlot:Z

    .line 55
    const/4 v2, -0x1

    iput v2, p0, Lelectrum2/drums/soundObj;->OldSlotValue:I

    .line 56
    iput-boolean v4, p0, Lelectrum2/drums/soundObj;->SampleDone:Z

    .line 57
    iput-boolean v4, p0, Lelectrum2/drums/soundObj;->accentset:Z

    .line 59
    iput-boolean v8, p0, Lelectrum2/drums/soundObj;->retrigger:Z

    .line 60
    iput-boolean v8, p0, Lelectrum2/drums/soundObj;->retriggerbackup:Z

    .line 66
    iput-wide v5, p0, Lelectrum2/drums/soundObj;->soundmult:D

    .line 67
    iput-wide v5, p0, Lelectrum2/drums/soundObj;->volmult:D

    .line 73
    iput v4, p0, Lelectrum2/drums/soundObj;->currentpattern:I

    .line 75
    iput-wide v5, p0, Lelectrum2/drums/soundObj;->samplelencut:D

    .line 80
    iput-wide v5, p0, Lelectrum2/drums/soundObj;->samplevolume:D

    .line 82
    const/16 v2, 0xc

    iput v2, p0, Lelectrum2/drums/soundObj;->pitch:I

    .line 83
    iput-boolean v4, p0, Lelectrum2/drums/soundObj;->pitchfirsttime:Z

    .line 85
    iput-boolean v4, p0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    .line 86
    iput-boolean v4, p0, Lelectrum2/drums/soundObj;->dofitbpmbackup:Z

    .line 88
    iput v3, p0, Lelectrum2/drums/soundObj;->samplebpm:F

    .line 89
    iput v3, p0, Lelectrum2/drums/soundObj;->samplebpmbackup:F

    .line 91
    iput v4, p0, Lelectrum2/drums/soundObj;->startposbackup:I

    .line 92
    iput v4, p0, Lelectrum2/drums/soundObj;->sampleendposbackup:I

    .line 93
    iput v4, p0, Lelectrum2/drums/soundObj;->samplefulllenbackup:I

    .line 95
    iput-boolean v4, p0, Lelectrum2/drums/soundObj;->haspitchbackup:Z

    .line 112
    iput-boolean v4, p0, Lelectrum2/drums/soundObj;->hasDelay:Z

    .line 113
    iput-boolean v4, p0, Lelectrum2/drums/soundObj;->hasDistortion:Z

    .line 115
    iput-boolean v4, p0, Lelectrum2/drums/soundObj;->hasReverse:Z

    .line 117
    const/16 v2, 0x1e

    iput v2, p0, Lelectrum2/drums/soundObj;->fxdelaytime:I

    .line 118
    iput-boolean v4, p0, Lelectrum2/drums/soundObj;->fxdelaywrap:Z

    .line 119
    const/high16 v2, 0x3f00

    iput v2, p0, Lelectrum2/drums/soundObj;->fxdelayfeedback:F

    .line 122
    const v2, 0x463b8000

    iput v2, p0, Lelectrum2/drums/soundObj;->fxdistortionthreshold:F

    .line 123
    const/high16 v2, 0x3f80

    iput v2, p0, Lelectrum2/drums/soundObj;->fxdistortiongain:F

    .line 131
    const-string v2, ""

    iput-object v2, p0, Lelectrum2/drums/soundObj;->backupfilename:Ljava/lang/String;

    .line 1225
    sget v2, Lelectrum2/drums/soundObj;->NUM_PATTERNS:I

    filled-new-array {v2, v7}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lelectrum2/drums/soundObj;->playslot:[[Z

    .line 1227
    const/16 v2, 0xc

    iput v2, p0, Lelectrum2/drums/soundObj;->pitch:I

    .line 1230
    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    sget v2, Lelectrum2/drums/soundObj;->NUM_PATTERNS:I

    if-lt v0, v2, :cond_0

    .line 1238
    sget v2, Lelectrum2/drums/soundObj;->NUM_PATTERNS:I

    filled-new-array {v2, v7}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lelectrum2/drums/soundObj;->accentslot:[[Z

    .line 1240
    const/4 v0, 0x0

    :goto_1
    sget v2, Lelectrum2/drums/soundObj;->NUM_PATTERNS:I

    if-lt v0, v2, :cond_2

    .line 1249
    new-array v2, v7, [Z

    iput-object v2, p0, Lelectrum2/drums/soundObj;->shuffle:[Z

    .line 1251
    return-void

    .line 1232
    :cond_0
    const/4 v1, 0x0

    .local v1, count2:I
    :goto_2
    const/16 v2, 0xf

    if-le v1, v2, :cond_1

    .line 1230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1234
    :cond_1
    iget-object v2, p0, Lelectrum2/drums/soundObj;->playslot:[[Z

    aget-object v2, v2, v0

    aput-boolean v4, v2, v1

    .line 1232
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1242
    .end local v1           #count2:I
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #count2:I
    :goto_3
    const/16 v2, 0xf

    if-le v1, v2, :cond_3

    .line 1240
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1244
    :cond_3
    iget-object v2, p0, Lelectrum2/drums/soundObj;->accentslot:[[Z

    aget-object v2, v2, v0

    aput-boolean v4, v2, v1

    .line 1242
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private DoPitch()Z
    .locals 13

    .prologue
    const/high16 v12, 0x42c8

    .line 384
    const/4 v5, 0x1

    .line 389
    .local v5, retval:Z
    const/16 v8, 0x64

    .line 391
    .local v8, upsample:I
    const/high16 v1, 0x42c8

    .line 393
    .local v1, downsample:F
    const/high16 v0, 0x42c8

    .line 394
    .local v0, bpmratio:F
    const/high16 v3, 0x3f80

    .line 396
    .local v3, lenratio:F
    :try_start_0
    iget-boolean v9, p0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    if-eqz v9, :cond_4

    .line 400
    iget v9, p0, Lelectrum2/drums/soundObj;->samplebpm:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_0

    .line 402
    const/4 v5, 0x0

    .line 404
    new-instance v9, Ljava/lang/String;

    const-string v10, "Error matching BPM.\nThe sample does not contain it\'s BPM in the sample\'s filename"

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    move v6, v5

    .line 536
    .end local v5           #retval:Z
    .local v6, retval:I
    :goto_0
    return v6

    .line 412
    .end local v6           #retval:I
    .restart local v5       #retval:Z
    :cond_0
    sget v9, Lelectrum2/drums/electrum;->bpm:F

    iget v10, p0, Lelectrum2/drums/soundObj;->samplebpm:F

    div-float v3, v9, v10

    .line 414
    mul-float v0, v3, v12

    .line 418
    const/high16 v9, 0x4348

    cmpl-float v9, v0, v9

    if-lez v9, :cond_1

    .line 420
    const/4 v5, 0x0

    .line 422
    new-instance v9, Ljava/lang/String;

    const-string v10, "Error matching BPM.\nSample would need to shrink more than 2x. Not allowed!"

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    move v6, v5

    .line 424
    .restart local v6       #retval:I
    goto :goto_0

    .line 427
    .end local v6           #retval:I
    :cond_1
    const/high16 v9, 0x4248

    cmpg-float v9, v0, v9

    if-gez v9, :cond_2

    .line 429
    const/4 v5, 0x0

    .line 431
    new-instance v9, Ljava/lang/String;

    const-string v10, "Error matching BPM.\nSample would need to stretch more than 2x. Not allowed!"

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    move v6, v5

    .line 433
    .restart local v6       #retval:I
    goto :goto_0

    .line 440
    .end local v6           #retval:I
    :cond_2
    move v1, v0

    .line 459
    :goto_1
    iget-object v9, p0, Lelectrum2/drums/soundObj;->storedupsample:[S

    if-nez v9, :cond_3

    .line 461
    iget-object v9, p0, Lelectrum2/drums/soundObj;->sounddata:[S

    invoke-virtual {v9}, [S->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [S

    iput-object v9, p0, Lelectrum2/drums/soundObj;->storedupsample:[S

    .line 478
    :cond_3
    iget-object v9, p0, Lelectrum2/drums/soundObj;->storedupsample:[S

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v4, v9, 0x1

    .line 481
    .local v4, newbuffersize:I
    new-array v9, v4, [S

    iput-object v9, p0, Lelectrum2/drums/soundObj;->sounddata:[S

    .line 483
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 495
    iget-object v9, p0, Lelectrum2/drums/soundObj;->storedupsample:[S

    iget-object v10, p0, Lelectrum2/drums/soundObj;->sounddata:[S

    iget-object v11, p0, Lelectrum2/drums/soundObj;->storedupsample:[S

    array-length v11, v11

    invoke-virtual {p0, v9, v10, v11, v1}, Lelectrum2/drums/soundObj;->staticfilter([S[SIF)V

    .line 499
    iget-object v9, p0, Lelectrum2/drums/soundObj;->sounddata:[S

    array-length v9, v9

    iput v9, p0, Lelectrum2/drums/soundObj;->samplelencount:I

    .line 505
    iget v9, p0, Lelectrum2/drums/soundObj;->samplelencount:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    div-float v10, v12, v1

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 510
    const/4 v9, 0x1

    iput-boolean v9, p0, Lelectrum2/drums/soundObj;->pitchfirsttime:Z

    .end local v4           #newbuffersize:I
    :goto_2
    move v6, v5

    .line 536
    .restart local v6       #retval:I
    goto :goto_0

    .line 446
    .end local v6           #retval:I
    :cond_4
    sget-object v9, Lelectrum2/drums/soundObj;->pitchvalues:[F

    iget v10, p0, Lelectrum2/drums/soundObj;->pitch:I

    aget v1, v9, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 518
    :catch_0
    move-exception v2

    .line 520
    .local v2, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 522
    new-instance v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error changing pitch: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lelectrum2/drums/soundObj;->samplelenstr:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    goto :goto_2

    .line 528
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 531
    .local v7, t:Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 532
    new-instance v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error changing pitch: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lelectrum2/drums/soundObj;->samplelenstr:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Most likely we are out of memory!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    goto :goto_2
.end method

.method static swap(S)S
    .locals 2
    .parameter "x"

    .prologue
    .line 1254
    shl-int/lit8 v0, p0, 0x8

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public ApplyEffects(Z)Z
    .locals 5
    .parameter "loadingfromfile"

    .prologue
    .line 567
    const/4 v0, 0x1

    .line 572
    .local v0, retval:Z
    :try_start_0
    iget-boolean v2, p0, Lelectrum2/drums/soundObj;->hasReverse:Z

    if-eqz v2, :cond_0

    .line 574
    invoke-virtual {p0, p1}, Lelectrum2/drums/soundObj;->DoReverse(Z)V

    .line 579
    :cond_0
    iget-boolean v2, p0, Lelectrum2/drums/soundObj;->hasDistortion:Z

    if-eqz v2, :cond_1

    .line 581
    iget v2, p0, Lelectrum2/drums/soundObj;->fxdistortionthreshold:F

    iget v3, p0, Lelectrum2/drums/soundObj;->fxdistortiongain:F

    invoke-virtual {p0, p1, v2, v3}, Lelectrum2/drums/soundObj;->DoDistortion(ZFF)V

    .line 586
    :cond_1
    iget-boolean v2, p0, Lelectrum2/drums/soundObj;->hasDelay:Z

    if-eqz v2, :cond_2

    .line 588
    iget v2, p0, Lelectrum2/drums/soundObj;->fxdelaytime:I

    iget-boolean v3, p0, Lelectrum2/drums/soundObj;->fxdelaywrap:Z

    iget v4, p0, Lelectrum2/drums/soundObj;->fxdelayfeedback:F

    invoke-virtual {p0, p1, v2, v3, v4}, Lelectrum2/drums/soundObj;->DoDelay(ZIZF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :cond_2
    :goto_0
    return v0

    .line 594
    :catch_0
    move-exception v1

    .line 596
    .local v1, t:Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 597
    new-instance v2, Ljava/lang/String;

    const-string v3, "Error applying FX: not enough memory!"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public BackupCurrentSample()V
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lelectrum2/drums/soundObj;->samplefulllen:I

    iput v0, p0, Lelectrum2/drums/soundObj;->samplefulllenbackup:I

    .line 293
    iget v0, p0, Lelectrum2/drums/soundObj;->samplelen:I

    iput v0, p0, Lelectrum2/drums/soundObj;->sampleendposbackup:I

    .line 294
    iget v0, p0, Lelectrum2/drums/soundObj;->samplebpm:F

    iput v0, p0, Lelectrum2/drums/soundObj;->samplebpmbackup:F

    .line 295
    iget v0, p0, Lelectrum2/drums/soundObj;->startpos:I

    iput v0, p0, Lelectrum2/drums/soundObj;->startposbackup:I

    .line 296
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->dofitbpmbackup:Z

    .line 297
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDelay:Z

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDelayBackup:Z

    .line 298
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDistortion:Z

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDistortionBackup:Z

    .line 299
    iget v0, p0, Lelectrum2/drums/soundObj;->pitch:I

    iput v0, p0, Lelectrum2/drums/soundObj;->pitchbackup:I

    .line 300
    iget v0, p0, Lelectrum2/drums/soundObj;->StereoPanL:F

    iput v0, p0, Lelectrum2/drums/soundObj;->StereoPanLbackup:F

    .line 301
    iget v0, p0, Lelectrum2/drums/soundObj;->StereoPanR:F

    iput v0, p0, Lelectrum2/drums/soundObj;->StereoPanRbackup:F

    .line 302
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->hasReverse:Z

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->hasReverseBackup:Z

    .line 314
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->retrigger:Z

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->retriggerbackup:Z

    .line 317
    iget-object v0, p0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    iput-object v0, p0, Lelectrum2/drums/soundObj;->backupfilename:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public ClearAllSlots()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 843
    const/4 v1, 0x0

    .local v1, count2:I
    :goto_0
    sget v2, Lelectrum2/drums/soundObj;->NUM_PATTERNS:I

    if-lt v1, v2, :cond_0

    .line 854
    return-void

    .line 845
    :cond_0
    const/4 v0, 0x0

    .local v0, count:I
    :goto_1
    const/16 v2, 0xf

    if-le v0, v2, :cond_1

    .line 843
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 847
    :cond_1
    iget-object v2, p0, Lelectrum2/drums/soundObj;->playslot:[[Z

    aget-object v2, v2, v1

    aput-boolean v3, v2, v0

    .line 848
    iget-object v2, p0, Lelectrum2/drums/soundObj;->accentslot:[[Z

    aget-object v2, v2, v1

    aput-boolean v3, v2, v0

    .line 845
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public ClearDelay()V
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDelay:Z

    .line 611
    return-void
.end method

.method public ClearDistortion()V
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x0

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDistortion:Z

    .line 618
    return-void
.end method

.method public ClearReverse()V
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->hasReverse:Z

    .line 623
    return-void
.end method

.method public ClearShuffleSlots()V
    .locals 3

    .prologue
    .line 896
    const/4 v0, 0x0

    .local v0, counter:I
    :goto_0
    iget-object v1, p0, Lelectrum2/drums/soundObj;->shuffle:[Z

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 901
    return-void

    .line 898
    :cond_0
    iget-object v1, p0, Lelectrum2/drums/soundObj;->shuffle:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 896
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public ClearSlots()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 814
    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 823
    return-void

    .line 817
    :cond_0
    iget-object v1, p0, Lelectrum2/drums/soundObj;->playslot:[[Z

    iget v2, p0, Lelectrum2/drums/soundObj;->currentpattern:I

    aget-object v1, v1, v2

    aput-boolean v3, v1, v0

    .line 818
    iget-object v1, p0, Lelectrum2/drums/soundObj;->accentslot:[[Z

    iget v2, p0, Lelectrum2/drums/soundObj;->currentpattern:I

    aget-object v1, v1, v2

    aput-boolean v3, v1, v0

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public CopySound()V
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lelectrum2/drums/soundObj;->samplefulllen:I

    sput v0, Lelectrum2/drums/soundObj$copypaste;->samplefulllenbackup:I

    .line 194
    iget v0, p0, Lelectrum2/drums/soundObj;->samplelen:I

    sput v0, Lelectrum2/drums/soundObj$copypaste;->sampleendposbackup:I

    .line 195
    iget v0, p0, Lelectrum2/drums/soundObj;->samplebpm:F

    sput v0, Lelectrum2/drums/soundObj$copypaste;->samplebpmbackup:F

    .line 196
    iget v0, p0, Lelectrum2/drums/soundObj;->startpos:I

    sput v0, Lelectrum2/drums/soundObj$copypaste;->startposbackup:I

    .line 197
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    sput-boolean v0, Lelectrum2/drums/soundObj$copypaste;->dofitbpmbackup:Z

    .line 198
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDelay:Z

    sput-boolean v0, Lelectrum2/drums/soundObj$copypaste;->hasDelayBackup:Z

    .line 199
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDistortion:Z

    sput-boolean v0, Lelectrum2/drums/soundObj$copypaste;->hasDistortionBackup:Z

    .line 200
    iget v0, p0, Lelectrum2/drums/soundObj;->pitch:I

    sput v0, Lelectrum2/drums/soundObj$copypaste;->pitchbackup:I

    .line 201
    iget v0, p0, Lelectrum2/drums/soundObj;->StereoPanL:F

    sput v0, Lelectrum2/drums/soundObj$copypaste;->StereoPanLbackup:F

    .line 202
    iget v0, p0, Lelectrum2/drums/soundObj;->StereoPanR:F

    sput v0, Lelectrum2/drums/soundObj$copypaste;->StereoPanRbackup:F

    .line 203
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->hasReverse:Z

    sput-boolean v0, Lelectrum2/drums/soundObj$copypaste;->hasReverseBackup:Z

    .line 205
    iget-wide v0, p0, Lelectrum2/drums/soundObj;->samplevolume:D

    sput-wide v0, Lelectrum2/drums/soundObj$copypaste;->samplevolumebackup:D

    .line 207
    iget v0, p0, Lelectrum2/drums/soundObj;->fxdelaytime:I

    sput v0, Lelectrum2/drums/soundObj$copypaste;->fxdelaytimebackup:I

    .line 208
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->fxdelaywrap:Z

    sput-boolean v0, Lelectrum2/drums/soundObj$copypaste;->fxdelaywrapbackup:Z

    .line 209
    iget v0, p0, Lelectrum2/drums/soundObj;->fxdelayfeedback:F

    sput v0, Lelectrum2/drums/soundObj$copypaste;->fxdelayfeedbackbackup:F

    .line 212
    iget v0, p0, Lelectrum2/drums/soundObj;->fxdistortionthreshold:F

    sput v0, Lelectrum2/drums/soundObj$copypaste;->fxdistortionthresholdbackup:F

    .line 213
    iget v0, p0, Lelectrum2/drums/soundObj;->fxdistortiongain:F

    sput v0, Lelectrum2/drums/soundObj$copypaste;->fxdistortiongainbackup:F

    .line 216
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->retrigger:Z

    sput-boolean v0, Lelectrum2/drums/soundObj$copypaste;->retriggerbackup:Z

    .line 218
    iget-object v0, p0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    sput-object v0, Lelectrum2/drums/soundObj$copypaste;->backupfilename:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public DoDelay(ZIZF)V
    .locals 14
    .parameter "LoadingFromFile"
    .parameter "delaytime"
    .parameter "wrapornot"
    .parameter "feedbackamount"

    .prologue
    .line 654
    const/4 v1, 0x1

    iput-boolean v1, p0, Lelectrum2/drums/soundObj;->hasDelay:Z

    .line 656
    move/from16 v0, p2

    iput v0, p0, Lelectrum2/drums/soundObj;->fxdelaytime:I

    .line 657
    move/from16 v0, p4

    iput v0, p0, Lelectrum2/drums/soundObj;->fxdelayfeedback:F

    .line 658
    move/from16 v0, p3

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->fxdelaywrap:Z

    .line 663
    iget-object v1, p0, Lelectrum2/drums/soundObj;->storedupsample:[S

    if-nez v1, :cond_0

    .line 666
    iget-object v1, p0, Lelectrum2/drums/soundObj;->sounddata:[S

    invoke-virtual {v1}, [S->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    iput-object v1, p0, Lelectrum2/drums/soundObj;->storedupsample:[S

    .line 671
    :cond_0
    iget v11, p0, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 673
    .local v11, oldsamplefulllen:I
    iget v1, p0, Lelectrum2/drums/soundObj;->samplelen:I

    int-to-double v1, v1

    int-to-double v3, v11

    div-double v9, v1, v3

    .line 674
    .local v9, endpointdiff:D
    iget v1, p0, Lelectrum2/drums/soundObj;->startpos:I

    int-to-double v1, v1

    int-to-double v3, v11

    div-double v12, v1, v3

    .line 677
    .local v12, startposdiff:D
    const/16 v2, 0x5622

    iget v3, p0, Lelectrum2/drums/soundObj;->fxdelaytime:I

    const/16 v4, 0x96

    iget-boolean v5, p0, Lelectrum2/drums/soundObj;->fxdelaywrap:Z

    iget v6, p0, Lelectrum2/drums/soundObj;->fxdelayfeedback:F

    iget-object v7, p0, Lelectrum2/drums/soundObj;->sounddata:[S

    iget v8, p0, Lelectrum2/drums/soundObj;->samplefulllen:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lelectrum2/drums/soundObj;->FxDoDelay(IIIZF[SI)[S

    move-result-object v1

    iput-object v1, p0, Lelectrum2/drums/soundObj;->sounddata:[S

    .line 679
    if-nez p1, :cond_2

    .line 681
    iget-object v1, p0, Lelectrum2/drums/soundObj;->sounddata:[S

    array-length v1, v1

    iput v1, p0, Lelectrum2/drums/soundObj;->samplelencount:I

    .line 682
    iget-object v1, p0, Lelectrum2/drums/soundObj;->sounddata:[S

    array-length v1, v1

    iput v1, p0, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 686
    iget v1, p0, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-float v1, v1

    float-to-double v1, v1

    mul-double/2addr v1, v9

    double-to-int v1, v1

    iput v1, p0, Lelectrum2/drums/soundObj;->samplelen:I

    .line 687
    iget v1, p0, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-float v1, v1

    float-to-double v1, v1

    mul-double/2addr v1, v12

    double-to-int v1, v1

    iput v1, p0, Lelectrum2/drums/soundObj;->startpos:I

    .line 691
    iget v1, p0, Lelectrum2/drums/soundObj;->samplelen:I

    iget v2, p0, Lelectrum2/drums/soundObj;->samplefulllen:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lelectrum2/drums/soundObj;->samplefulllen:I

    iput v1, p0, Lelectrum2/drums/soundObj;->samplelen:I

    .line 692
    :cond_1
    iget v1, p0, Lelectrum2/drums/soundObj;->startpos:I

    if-gez v1, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lelectrum2/drums/soundObj;->startpos:I

    .line 697
    :cond_2
    return-void
.end method

.method public DoDistortion(ZFF)V
    .locals 4
    .parameter "loadingfromfile"
    .parameter "distortionthreshold"
    .parameter "distortiongain"

    .prologue
    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDistortion:Z

    .line 708
    iput p2, p0, Lelectrum2/drums/soundObj;->fxdistortionthreshold:F

    .line 709
    iput p3, p0, Lelectrum2/drums/soundObj;->fxdistortiongain:F

    .line 711
    iget-object v0, p0, Lelectrum2/drums/soundObj;->storedupsample:[S

    if-nez v0, :cond_0

    .line 714
    iget-object v0, p0, Lelectrum2/drums/soundObj;->sounddata:[S

    invoke-virtual {v0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    iput-object v0, p0, Lelectrum2/drums/soundObj;->storedupsample:[S

    .line 720
    :cond_0
    iget-object v0, p0, Lelectrum2/drums/soundObj;->sounddata:[S

    iget v1, p0, Lelectrum2/drums/soundObj;->samplefulllen:I

    iget v2, p0, Lelectrum2/drums/soundObj;->fxdistortionthreshold:F

    iget v3, p0, Lelectrum2/drums/soundObj;->fxdistortiongain:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lelectrum2/drums/soundObj;->DoFoldbackDistortion([SIFF)[S

    move-result-object v0

    iput-object v0, p0, Lelectrum2/drums/soundObj;->sounddata:[S

    .line 722
    return-void
.end method

.method public DoFitBpm()Z
    .locals 1

    .prologue
    .line 374
    invoke-direct {p0}, Lelectrum2/drums/soundObj;->DoPitch()Z

    move-result v0

    return v0
.end method

.method public native DoFoldbackDistortion([SIFF)[S
.end method

.method public DoReverse(Z)V
    .locals 2
    .parameter "LoadingFromFile"

    .prologue
    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->hasReverse:Z

    .line 633
    iget-object v0, p0, Lelectrum2/drums/soundObj;->storedupsample:[S

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lelectrum2/drums/soundObj;->sounddata:[S

    invoke-virtual {v0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    iput-object v0, p0, Lelectrum2/drums/soundObj;->storedupsample:[S

    .line 640
    :cond_0
    iget-object v0, p0, Lelectrum2/drums/soundObj;->sounddata:[S

    iget v1, p0, Lelectrum2/drums/soundObj;->samplefulllen:I

    invoke-virtual {p0, v0, v1}, Lelectrum2/drums/soundObj;->FxDoReverse([SI)[S

    move-result-object v0

    iput-object v0, p0, Lelectrum2/drums/soundObj;->sounddata:[S

    .line 644
    return-void
.end method

.method public native FxDoDelay(IIIZF[SI)[S
.end method

.method public native FxDoReverse([SI)[S
.end method

.method public GetPan()I
    .locals 1

    .prologue
    .line 789
    iget v0, p0, Lelectrum2/drums/soundObj;->panvalue:I

    return v0
.end method

.method public GetVolume()F
    .locals 2

    .prologue
    .line 755
    iget-wide v0, p0, Lelectrum2/drums/soundObj;->samplevolume:D

    double-to-float v0, v0

    return v0
.end method

.method public Load(Ljava/io/InputStream;IZ)Z
    .locals 9
    .parameter "fs"
    .parameter "size"
    .parameter "preview"

    .prologue
    .line 1261
    const/4 v3, 0x1

    .line 1269
    .local v3, retval:Z
    :try_start_0
    iput p2, p0, Lelectrum2/drums/soundObj;->samplelencount:I

    .line 1273
    iget v6, p0, Lelectrum2/drums/soundObj;->samplelencount:I

    add-int/lit8 v6, v6, -0x2c

    iput v6, p0, Lelectrum2/drums/soundObj;->samplelencount:I

    .line 1275
    iget v1, p0, Lelectrum2/drums/soundObj;->samplelencount:I

    .line 1277
    .local v1, datalen:I
    iget v6, p0, Lelectrum2/drums/soundObj;->samplelencount:I

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lelectrum2/drums/soundObj;->samplelencount:I

    .line 1279
    iget v6, p0, Lelectrum2/drums/soundObj;->samplelencount:I

    new-array v6, v6, [S

    iput-object v6, p0, Lelectrum2/drums/soundObj;->sounddata:[S

    .line 1281
    iget v6, p0, Lelectrum2/drums/soundObj;->samplelencount:I

    iput v6, p0, Lelectrum2/drums/soundObj;->samplelen:I

    .line 1282
    iget v6, p0, Lelectrum2/drums/soundObj;->samplelen:I

    iput v6, p0, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 1286
    const/4 v6, 0x0

    iput v6, p0, Lelectrum2/drums/soundObj;->startpos:I

    .line 1287
    const/4 v6, 0x0

    iput v6, p0, Lelectrum2/drums/soundObj;->currsample:I

    .line 1289
    const/high16 v6, 0x3f80

    iput v6, p0, Lelectrum2/drums/soundObj;->StereoPanL:F

    .line 1290
    const/high16 v6, 0x3f80

    iput v6, p0, Lelectrum2/drums/soundObj;->StereoPanR:F

    .line 1292
    const/4 v6, 0x1

    iput-boolean v6, p0, Lelectrum2/drums/soundObj;->retrigger:Z

    .line 1294
    const/16 v6, 0x32

    iput v6, p0, Lelectrum2/drums/soundObj;->panvalue:I

    .line 1296
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 1298
    const-wide/16 v6, 0x2c

    invoke-virtual {p1, v6, v7}, Ljava/io/InputStream;->skip(J)J

    .line 1301
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1303
    .local v4, tempbuff1:Ljava/nio/ByteBuffer;
    new-array v5, v1, [B

    .line 1305
    .local v5, tempdata:[B
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    .line 1307
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1309
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1311
    const/4 v0, 0x0

    .local v0, counter1:I
    :goto_0
    iget v6, p0, Lelectrum2/drums/soundObj;->samplelencount:I

    add-int/lit8 v6, v6, -0x1

    if-lt v0, v6, :cond_1

    .line 1318
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1320
    const/4 v6, 0x0

    iput-boolean v6, p0, Lelectrum2/drums/soundObj;->pitchfirsttime:Z

    .line 1322
    const/4 v6, 0x0

    iput-boolean v6, p0, Lelectrum2/drums/soundObj;->hasDelay:Z

    .line 1323
    const/4 v6, 0x0

    iput-boolean v6, p0, Lelectrum2/drums/soundObj;->hasDistortion:Z

    .line 1324
    const/4 v6, 0x0

    iput-boolean v6, p0, Lelectrum2/drums/soundObj;->hasReverse:Z

    .line 1326
    iget-boolean v6, p0, Lelectrum2/drums/soundObj;->readnewpitch:Z

    if-eqz v6, :cond_2

    .line 1329
    const/4 v6, 0x0

    iput-boolean v6, p0, Lelectrum2/drums/soundObj;->readnewpitch:Z

    .line 1337
    :goto_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    .line 1339
    if-nez p3, :cond_0

    .line 1341
    const/4 v6, 0x0

    iput-object v6, p0, Lelectrum2/drums/soundObj;->storedupsample:[S

    .line 1358
    .end local v0           #counter1:I
    .end local v1           #datalen:I
    .end local v4           #tempbuff1:Ljava/nio/ByteBuffer;
    .end local v5           #tempdata:[B
    :cond_0
    :goto_2
    return v3

    .line 1313
    .restart local v0       #counter1:I
    .restart local v1       #datalen:I
    .restart local v4       #tempbuff1:Ljava/nio/ByteBuffer;
    .restart local v5       #tempdata:[B
    :cond_1
    iget-object v6, p0, Lelectrum2/drums/soundObj;->sounddata:[S

    mul-int/lit8 v7, v0, 0x2

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v7

    aput-short v7, v6, v0

    .line 1311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1334
    :cond_2
    const/16 v6, 0xc

    iput v6, p0, Lelectrum2/drums/soundObj;->pitch:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1346
    .end local v0           #counter1:I
    .end local v1           #datalen:I
    .end local v4           #tempbuff1:Ljava/nio/ByteBuffer;
    .end local v5           #tempdata:[B
    :catch_0
    move-exception v2

    .line 1348
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1350
    new-instance v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error reading sound data: \n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    goto :goto_2
.end method

.method public LoadWav(Ljava/io/FileInputStream;JLjava/lang/String;Z)Z
    .locals 39
    .parameter "fs"
    .parameter "FileLen"
    .parameter "originalfilename"
    .parameter "preview"

    .prologue
    .line 1512
    const/16 v17, 0x1

    .line 1514
    .local v17, retval:Z
    const/4 v12, 0x0

    .line 1519
    .local v12, isStereo:Z
    :try_start_0
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string v33, "r"

    move-object/from16 v0, p4

    move-object/from16 v1, v33

    invoke-direct {v11, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    .local v11, file:Ljava/io/RandomAccessFile;
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v4

    .line 1524
    .local v4, TestRiff:I
    const/16 v33, 0x7

    move/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 1525
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v6

    .line 1527
    .local v6, TestWav:I
    const/16 v33, 0x52

    move/from16 v0, v33

    if-ne v4, v0, :cond_0

    const/16 v33, 0x57

    move/from16 v0, v33

    if-eq v6, v0, :cond_1

    .line 1531
    :cond_0
    const-string v33, "File is not a WAVE file"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    .line 1532
    const/16 v17, 0x0

    move/from16 v18, v17

    .line 1884
    .end local v4           #TestRiff:I
    .end local v6           #TestWav:I
    .end local v11           #file:Ljava/io/RandomAccessFile;
    .end local v17           #retval:Z
    .local v18, retval:I
    :goto_0
    return v18

    .line 1539
    .end local v18           #retval:I
    .restart local v4       #TestRiff:I
    .restart local v6       #TestWav:I
    .restart local v11       #file:Ljava/io/RandomAccessFile;
    .restart local v17       #retval:Z
    :cond_1
    const/16 v22, 0xc

    .line 1544
    .local v22, scanpos:I
    :goto_1
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    invoke-virtual {v11, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1546
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v30

    .line 1548
    .local v30, testval:I
    const v33, 0x666d7420

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    .line 1555
    const/16 v33, 0x5

    move/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 1557
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v25

    .line 1559
    .local v25, stereoormono:S
    const/16 v33, 0x2

    move/from16 v0, v25

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    const/4 v12, 0x1

    .line 1562
    :cond_2
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 1564
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v21

    .line 1567
    .local v21, samplerate:I
    const/16 v33, 0x44

    move/from16 v0, v21

    move/from16 v1, v33

    if-ne v0, v1, :cond_6

    .line 1570
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 1573
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->NativeWavLoad(Ljava/lang/String;)[S

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/soundObj;->sounddata:[S

    move-object/from16 v33, v0

    if-nez v33, :cond_4

    .line 1578
    const/16 v17, 0x0

    .line 1580
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/soundObj;->getWavLoaderErrorMessage()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "\n"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "Backup sample has been restored"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    .line 1583
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/soundObj;->RestoreBackupSample()V

    move/from16 v18, v17

    .line 1586
    .restart local v18       #retval:I
    goto/16 :goto_0

    .line 1550
    .end local v18           #retval:I
    .end local v21           #samplerate:I
    .end local v25           #stereoormono:S
    :cond_3
    add-int/lit8 v22, v22, 0x1

    .line 1541
    goto/16 :goto_1

    .line 1593
    .restart local v21       #samplerate:I
    .restart local v25       #stereoormono:S
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/soundObj;->getWavSize()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->samplelencount:I

    .line 1595
    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelencount:I

    move/from16 v33, v0

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->samplelencount:I

    .line 1600
    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelencount:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->samplelen:I

    .line 1601
    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 1603
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->startpos:I

    .line 1604
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->currsample:I

    .line 1607
    const/high16 v33, 0x3f80

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->StereoPanL:F

    .line 1608
    const/high16 v33, 0x3f80

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->StereoPanR:F

    .line 1610
    const/16 v33, 0x32

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->panvalue:I

    .line 1612
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->pitchfirsttime:Z

    .line 1614
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->retrigger:Z

    .line 1616
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->hasDelay:Z

    .line 1617
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->hasDistortion:Z

    .line 1618
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->hasReverse:Z

    .line 1620
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->readnewpitch:Z

    move/from16 v33, v0

    if-eqz v33, :cond_5

    .line 1623
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->readnewpitch:Z

    .line 1860
    :goto_2
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/soundObj;->storedupsample:[S

    .end local v4           #TestRiff:I
    .end local v6           #TestWav:I
    .end local v11           #file:Ljava/io/RandomAccessFile;
    .end local v21           #samplerate:I
    .end local v22           #scanpos:I
    .end local v25           #stereoormono:S
    .end local v30           #testval:I
    :goto_3
    move/from16 v18, v17

    .line 1884
    .restart local v18       #retval:I
    goto/16 :goto_0

    .line 1627
    .end local v18           #retval:I
    .restart local v4       #TestRiff:I
    .restart local v6       #TestWav:I
    .restart local v11       #file:Ljava/io/RandomAccessFile;
    .restart local v21       #samplerate:I
    .restart local v22       #scanpos:I
    .restart local v25       #stereoormono:S
    .restart local v30       #testval:I
    :cond_5
    const/16 v33, 0xc

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->pitch:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1866
    .end local v4           #TestRiff:I
    .end local v6           #TestWav:I
    .end local v11           #file:Ljava/io/RandomAccessFile;
    .end local v21           #samplerate:I
    .end local v22           #scanpos:I
    .end local v25           #stereoormono:S
    .end local v30           #testval:I
    :catch_0
    move-exception v10

    .line 1868
    .local v10, e:Ljava/io/IOException;
    const/16 v17, 0x0

    .line 1870
    new-instance v33, Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "Error reading sound data: "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/soundObj;->samplelenstr:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "\n\n"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    goto :goto_3

    .line 1640
    .end local v10           #e:Ljava/io/IOException;
    .restart local v4       #TestRiff:I
    .restart local v6       #TestWav:I
    .restart local v11       #file:Ljava/io/RandomAccessFile;
    .restart local v21       #samplerate:I
    .restart local v22       #scanpos:I
    .restart local v25       #stereoormono:S
    .restart local v30       #testval:I
    :cond_6
    const/4 v2, 0x1

    .line 1643
    .local v2, Is16Bit:Z
    const/16 v33, 0x9

    :try_start_1
    move/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 1646
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v5

    .line 1648
    .local v5, TestVal:I
    const/16 v33, 0x10

    move/from16 v0, v33

    if-ne v5, v0, :cond_8

    .line 1650
    const/4 v2, 0x1

    .line 1658
    :goto_4
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    invoke-virtual {v11, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1660
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    .line 1662
    .local v9, datatest:I
    const v33, 0x64617461

    move/from16 v0, v33

    if-ne v9, v0, :cond_9

    .line 1672
    const/16 v33, 0x8

    invoke-static/range {v33 .. v33}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v23

    .line 1673
    .local v23, sizebuff:Ljava/nio/ByteBuffer;
    const/16 v33, 0x4

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v24, v0

    .line 1675
    .local v24, sizeval:[B
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 1677
    invoke-virtual/range {v23 .. v24}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1679
    sget-object v33, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1681
    const/16 v33, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 1687
    .local v3, RealSize:I
    if-nez v12, :cond_a

    .line 1690
    move-object/from16 v0, p0

    iput v3, v0, Lelectrum2/drums/soundObj;->samplelencount:I

    .line 1692
    new-instance v20, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelencount:I

    move/from16 v33, v0

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 1693
    .local v20, sampleintdata:Ljava/lang/Integer;
    new-instance v33, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplelenstr:Ljava/lang/String;

    .line 1706
    :goto_5
    const/4 v8, 0x0

    .line 1708
    .local v8, datalen:I
    if-nez v12, :cond_b

    .line 1710
    move-object/from16 v0, p0

    iget v8, v0, Lelectrum2/drums/soundObj;->samplelencount:I

    .line 1718
    :goto_6
    if-eqz v2, :cond_e

    .line 1721
    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelencount:I

    move/from16 v33, v0

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->samplelencount:I

    .line 1724
    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelencount:I

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v0, v0, [S

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    .line 1726
    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelencount:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->samplelen:I

    .line 1727
    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 1730
    const/high16 v33, 0x3f80

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->StereoPanL:F

    .line 1731
    const/high16 v33, 0x3f80

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->StereoPanR:F

    .line 1733
    const/16 v33, 0x32

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->panvalue:I

    .line 1735
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->startpos:I

    .line 1736
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->currsample:I

    .line 1738
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->retrigger:Z

    .line 1740
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v27

    .line 1742
    .local v27, tempbuff1:Ljava/nio/ByteBuffer;
    new-array v0, v8, [B

    move-object/from16 v28, v0

    .line 1745
    .local v28, tempdata:[B
    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 1747
    invoke-virtual/range {v27 .. v28}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1749
    sget-object v33, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1752
    if-nez v12, :cond_d

    .line 1755
    const/4 v7, 0x0

    .local v7, counter1:I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelencount:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x1

    move/from16 v0, v33

    if-lt v7, v0, :cond_c

    .line 1835
    :cond_7
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 1837
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->pitchfirsttime:Z

    .line 1839
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->hasDelay:Z

    .line 1840
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->hasDistortion:Z

    .line 1841
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->hasReverse:Z

    .line 1844
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->readnewpitch:Z

    move/from16 v33, v0

    if-eqz v33, :cond_f

    .line 1847
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->readnewpitch:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 1874
    .end local v2           #Is16Bit:Z
    .end local v3           #RealSize:I
    .end local v4           #TestRiff:I
    .end local v5           #TestVal:I
    .end local v6           #TestWav:I
    .end local v7           #counter1:I
    .end local v8           #datalen:I
    .end local v9           #datatest:I
    .end local v11           #file:Ljava/io/RandomAccessFile;
    .end local v20           #sampleintdata:Ljava/lang/Integer;
    .end local v21           #samplerate:I
    .end local v22           #scanpos:I
    .end local v23           #sizebuff:Ljava/nio/ByteBuffer;
    .end local v24           #sizeval:[B
    .end local v25           #stereoormono:S
    .end local v27           #tempbuff1:Ljava/nio/ByteBuffer;
    .end local v28           #tempdata:[B
    .end local v30           #testval:I
    :catch_1
    move-exception v26

    .line 1876
    .local v26, t:Ljava/lang/Throwable;
    const/16 v17, 0x0

    .line 1878
    new-instance v33, Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "Not enough memory left to load sample!\n\n"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    goto/16 :goto_3

    .line 1652
    .end local v26           #t:Ljava/lang/Throwable;
    .restart local v2       #Is16Bit:Z
    .restart local v4       #TestRiff:I
    .restart local v5       #TestVal:I
    .restart local v6       #TestWav:I
    .restart local v11       #file:Ljava/io/RandomAccessFile;
    .restart local v21       #samplerate:I
    .restart local v22       #scanpos:I
    .restart local v25       #stereoormono:S
    .restart local v30       #testval:I
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 1664
    .restart local v9       #datatest:I
    :cond_9
    add-int/lit8 v22, v22, 0x1

    .line 1656
    goto/16 :goto_4

    .line 1697
    .restart local v3       #RealSize:I
    .restart local v23       #sizebuff:Ljava/nio/ByteBuffer;
    .restart local v24       #sizeval:[B
    :cond_a
    :try_start_2
    div-int/lit8 v33, v3, 0x2

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->samplelencount:I

    .line 1699
    new-instance v20, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelencount:I

    move/from16 v33, v0

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 1700
    .restart local v20       #sampleintdata:Ljava/lang/Integer;
    new-instance v33, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/soundObj;->samplelenstr:Ljava/lang/String;

    goto/16 :goto_5

    .line 1713
    .restart local v8       #datalen:I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelencount:I

    move/from16 v33, v0

    mul-int/lit8 v8, v33, 0x2

    goto/16 :goto_6

    .line 1757
    .restart local v7       #counter1:I
    .restart local v27       #tempbuff1:Ljava/nio/ByteBuffer;
    .restart local v28       #tempdata:[B
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/soundObj;->sounddata:[S

    move-object/from16 v33, v0

    mul-int/lit8 v34, v7, 0x2

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v34

    aput-short v34, v33, v7

    .line 1755
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 1764
    .end local v7           #counter1:I
    :cond_d
    const/16 v16, 0x0

    .line 1766
    .local v16, readpos:I
    const/4 v7, 0x0

    .restart local v7       #counter1:I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelencount:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x1

    move/from16 v0, v33

    if-ge v7, v0, :cond_7

    .line 1768
    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    .line 1769
    .local v13, lval:S
    add-int/lit8 v33, v16, 0x2

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v19

    .line 1771
    .local v19, rval:S
    add-int v33, v13, v19

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v31, v0

    .line 1774
    .local v31, total:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/soundObj;->sounddata:[S

    move-object/from16 v33, v0

    move-wide/from16 v0, v31

    long-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-short v0, v0

    move/from16 v34, v0

    aput-short v34, v33, v7

    .line 1776
    add-int/lit8 v16, v16, 0x4

    .line 1766
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 1785
    .end local v7           #counter1:I
    .end local v13           #lval:S
    .end local v16           #readpos:I
    .end local v19           #rval:S
    .end local v27           #tempbuff1:Ljava/nio/ByteBuffer;
    .end local v28           #tempdata:[B
    .end local v31           #total:J
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelencount:I

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v0, v0, [S

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    .line 1787
    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelencount:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->samplelen:I

    .line 1788
    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 1791
    const/high16 v33, 0x3f80

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->StereoPanL:F

    .line 1792
    const/high16 v33, 0x3f80

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->StereoPanR:F

    .line 1794
    const/16 v33, 0x32

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->panvalue:I

    .line 1797
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->startpos:I

    .line 1798
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->currsample:I

    .line 1800
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lelectrum2/drums/soundObj;->retrigger:Z

    .line 1803
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v27

    .line 1805
    .restart local v27       #tempbuff1:Ljava/nio/ByteBuffer;
    new-array v0, v8, [B

    move-object/from16 v28, v0

    .line 1808
    .restart local v28       #tempdata:[B
    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 1810
    invoke-virtual/range {v27 .. v28}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1813
    const/4 v7, 0x0

    .restart local v7       #counter1:I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelencount:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x1

    move/from16 v0, v33

    if-ge v7, v0, :cond_7

    .line 1819
    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v33

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xff

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-short v0, v0

    move/from16 v29, v0

    .line 1821
    .local v29, tempval:I
    add-int/lit8 v29, v29, -0x80

    .line 1823
    const-wide/high16 v33, 0x3ff0

    const-wide/high16 v35, 0x4060

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v37, v0

    sub-double v35, v35, v37

    const-wide/high16 v37, 0x4060

    div-double v35, v35, v37

    sub-double v14, v33, v35

    .line 1825
    .local v14, multval:D
    const-wide v33, 0x40dffe0000000000L

    mul-double v14, v14, v33

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lelectrum2/drums/soundObj;->sounddata:[S

    move-object/from16 v33, v0

    double-to-int v0, v14

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-short v0, v0

    move/from16 v34, v0

    aput-short v34, v33, v7

    .line 1813
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 1851
    .end local v14           #multval:D
    .end local v29           #tempval:I
    :cond_f
    const/16 v33, 0xc

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lelectrum2/drums/soundObj;->pitch:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method

.method public LoadWaveFile(Ljava/lang/String;Z)Z
    .locals 13
    .parameter "filename"
    .parameter "preview"

    .prologue
    const/4 v12, 0x0

    .line 1364
    const/4 v10, 0x1

    .line 1373
    .local v10, retval:Z
    :try_start_0
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1374
    .local v11, tempfile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 1376
    .local v2, tempfilelen:J
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v1, tempfs:Ljava/io/FileInputStream;
    move-object v0, p0

    move-object v4, p1

    move v5, p2

    .line 1378
    invoke-virtual/range {v0 .. v5}, Lelectrum2/drums/soundObj;->LoadWav(Ljava/io/FileInputStream;JLjava/lang/String;Z)Z

    move-result v10

    .line 1380
    if-nez v10, :cond_0

    move v0, v12

    .line 1503
    .end local v1           #tempfs:Ljava/io/FileInputStream;
    .end local v2           #tempfilelen:J
    .end local v11           #tempfile:Ljava/io/File;
    :goto_0
    return v0

    .line 1386
    .restart local v1       #tempfs:Ljava/io/FileInputStream;
    .restart local v2       #tempfilelen:J
    .restart local v11       #tempfile:Ljava/io/File;
    :cond_0
    const-string v0, "_([0-9]*)?_"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 1387
    .local v9, p:Ljava/util/regex/Pattern;
    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 1392
    .local v8, m:Ljava/util/regex/Matcher;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1394
    new-instance v6, Ljava/lang/Float;

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 1396
    .local v6, bpmint:Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lelectrum2/drums/soundObj;->samplebpm:F

    .line 1399
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    if-eqz v0, :cond_1

    .line 1403
    invoke-virtual {p0}, Lelectrum2/drums/soundObj;->DoFitBpm()Z

    .end local v1           #tempfs:Ljava/io/FileInputStream;
    .end local v2           #tempfilelen:J
    .end local v6           #bpmint:Ljava/lang/Float;
    .end local v8           #m:Ljava/util/regex/Matcher;
    .end local v9           #p:Ljava/util/regex/Pattern;
    .end local v11           #tempfile:Ljava/io/File;
    :cond_1
    :goto_1
    move v0, v10

    .line 1503
    goto :goto_0

    .line 1414
    .restart local v1       #tempfs:Ljava/io/FileInputStream;
    .restart local v2       #tempfilelen:J
    .restart local v8       #m:Ljava/util/regex/Matcher;
    .restart local v9       #p:Ljava/util/regex/Pattern;
    .restart local v11       #tempfile:Ljava/io/File;
    :cond_2
    const-string v0, "_([0-9]{2,3}\\.[0-9]*?)_"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 1415
    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 1420
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1422
    new-instance v6, Ljava/lang/Float;

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 1424
    .restart local v6       #bpmint:Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lelectrum2/drums/soundObj;->samplebpm:F

    .line 1427
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    if-eqz v0, :cond_1

    .line 1431
    invoke-virtual {p0}, Lelectrum2/drums/soundObj;->DoFitBpm()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1496
    .end local v1           #tempfs:Ljava/io/FileInputStream;
    .end local v2           #tempfilelen:J
    .end local v6           #bpmint:Ljava/lang/Float;
    .end local v8           #m:Ljava/util/regex/Matcher;
    .end local v9           #p:Ljava/util/regex/Pattern;
    .end local v11           #tempfile:Ljava/io/File;
    :catch_0
    move-exception v7

    .line 1498
    .local v7, e:Ljava/lang/Exception;
    const/4 v10, 0x0

    .line 1499
    new-instance v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error loading file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    goto :goto_1

    .line 1438
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v1       #tempfs:Ljava/io/FileInputStream;
    .restart local v2       #tempfilelen:J
    .restart local v8       #m:Ljava/util/regex/Matcher;
    .restart local v9       #p:Ljava/util/regex/Pattern;
    .restart local v11       #tempfile:Ljava/io/File;
    :cond_3
    :try_start_1
    const-string v0, "([0-9]{2,3})(bpm|BPM)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 1439
    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 1444
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1446
    new-instance v6, Ljava/lang/Float;

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 1448
    .restart local v6       #bpmint:Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lelectrum2/drums/soundObj;->samplebpm:F

    .line 1451
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    if-eqz v0, :cond_1

    .line 1455
    invoke-virtual {p0}, Lelectrum2/drums/soundObj;->DoFitBpm()Z

    goto :goto_1

    .line 1461
    .end local v6           #bpmint:Ljava/lang/Float;
    :cond_4
    const-string v0, "([0-9]{2,3})[0-9]*?[a-zA-Z]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 1462
    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 1467
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1469
    new-instance v6, Ljava/lang/Float;

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 1471
    .restart local v6       #bpmint:Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lelectrum2/drums/soundObj;->samplebpm:F

    .line 1474
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    if-eqz v0, :cond_1

    .line 1478
    invoke-virtual {p0}, Lelectrum2/drums/soundObj;->DoFitBpm()Z

    goto/16 :goto_1

    .line 1485
    .end local v6           #bpmint:Ljava/lang/Float;
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lelectrum2/drums/soundObj;->samplebpm:F

    .line 1486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->dofitbpm:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public MustPlayInPattern(I)Z
    .locals 5
    .parameter "patternnum"

    .prologue
    .line 858
    const/4 v1, 0x0

    .line 860
    .local v1, mustplay:Z
    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    const/16 v4, 0xf

    if-le v0, v4, :cond_0

    .line 874
    :goto_1
    return v1

    .line 862
    :cond_0
    iget-object v4, p0, Lelectrum2/drums/soundObj;->playslot:[[Z

    aget-object v4, v4, p1

    aget-boolean v2, v4, v0

    .line 863
    .local v2, testval:Z
    iget-object v4, p0, Lelectrum2/drums/soundObj;->accentslot:[[Z

    aget-object v4, v4, p1

    aget-boolean v3, v4, v0

    .line 865
    .local v3, testval2:Z
    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    .line 867
    :cond_1
    const/4 v1, 0x1

    .line 868
    goto :goto_1

    .line 860
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public native NativeWavLoad(Ljava/lang/String;)[S
.end method

.method public PasteSound()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    sget-object v0, Lelectrum2/drums/soundObj$copypaste;->backupfilename:Ljava/lang/String;

    iput-object v0, p0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lelectrum2/drums/soundObj;->LoadWaveFile(Ljava/lang/String;Z)Z

    .line 234
    sget v0, Lelectrum2/drums/soundObj$copypaste;->samplebpmbackup:F

    iput v0, p0, Lelectrum2/drums/soundObj;->samplebpm:F

    .line 236
    sget-wide v0, Lelectrum2/drums/soundObj$copypaste;->samplevolumebackup:D

    iput-wide v0, p0, Lelectrum2/drums/soundObj;->samplevolume:D

    .line 238
    sget v0, Lelectrum2/drums/soundObj$copypaste;->sampleendposbackup:I

    iput v0, p0, Lelectrum2/drums/soundObj;->samplelen:I

    .line 240
    sget v0, Lelectrum2/drums/soundObj$copypaste;->samplefulllenbackup:I

    iput v0, p0, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 242
    sget v0, Lelectrum2/drums/soundObj$copypaste;->startposbackup:I

    iput v0, p0, Lelectrum2/drums/soundObj;->startpos:I

    .line 243
    sget v0, Lelectrum2/drums/soundObj$copypaste;->startposbackup:I

    iput v0, p0, Lelectrum2/drums/soundObj;->currsample:I

    .line 245
    sget-boolean v0, Lelectrum2/drums/soundObj$copypaste;->dofitbpmbackup:Z

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    .line 247
    sget-boolean v0, Lelectrum2/drums/soundObj$copypaste;->hasDistortionBackup:Z

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDistortion:Z

    .line 248
    sget-boolean v0, Lelectrum2/drums/soundObj$copypaste;->hasDelayBackup:Z

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDelay:Z

    .line 249
    sget-boolean v0, Lelectrum2/drums/soundObj$copypaste;->hasReverseBackup:Z

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->hasReverse:Z

    .line 251
    sget v0, Lelectrum2/drums/soundObj$copypaste;->StereoPanLbackup:F

    iput v0, p0, Lelectrum2/drums/soundObj;->StereoPanL:F

    .line 252
    sget v0, Lelectrum2/drums/soundObj$copypaste;->StereoPanRbackup:F

    iput v0, p0, Lelectrum2/drums/soundObj;->StereoPanR:F

    .line 255
    sget v0, Lelectrum2/drums/soundObj$copypaste;->fxdelaytimebackup:I

    iput v0, p0, Lelectrum2/drums/soundObj;->fxdelaytime:I

    .line 256
    sget-boolean v0, Lelectrum2/drums/soundObj$copypaste;->fxdelaywrapbackup:Z

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->fxdelaywrap:Z

    .line 257
    sget v0, Lelectrum2/drums/soundObj$copypaste;->fxdelayfeedbackbackup:F

    iput v0, p0, Lelectrum2/drums/soundObj;->fxdelayfeedback:F

    .line 259
    sget-boolean v0, Lelectrum2/drums/soundObj$copypaste;->retriggerbackup:Z

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->retrigger:Z

    .line 261
    sget v0, Lelectrum2/drums/soundObj$copypaste;->fxdistortionthresholdbackup:F

    iput v0, p0, Lelectrum2/drums/soundObj;->fxdistortionthreshold:F

    .line 262
    sget v0, Lelectrum2/drums/soundObj$copypaste;->fxdistortiongainbackup:F

    iput v0, p0, Lelectrum2/drums/soundObj;->fxdistortiongain:F

    .line 267
    sget v0, Lelectrum2/drums/soundObj$copypaste;->pitchbackup:I

    iput v0, p0, Lelectrum2/drums/soundObj;->pitch:I

    .line 270
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    if-nez v0, :cond_0

    iget v0, p0, Lelectrum2/drums/soundObj;->pitch:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDelay:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDistortion:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->hasReverse:Z

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    invoke-direct {p0}, Lelectrum2/drums/soundObj;->DoPitch()Z

    .line 274
    invoke-virtual {p0, v2}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z

    .line 281
    :cond_1
    return-void
.end method

.method public ResetSound()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 944
    iput-boolean v1, p0, Lelectrum2/drums/soundObj;->PlaySample:Z

    .line 945
    const/4 v0, 0x1

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->SampleDone:Z

    .line 946
    iput-boolean v1, p0, Lelectrum2/drums/soundObj;->accentset:Z

    .line 947
    iget v0, p0, Lelectrum2/drums/soundObj;->startpos:I

    iput v0, p0, Lelectrum2/drums/soundObj;->currsample:I

    .line 952
    return-void
.end method

.method public RestoreBackupSample()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-object v0, p0, Lelectrum2/drums/soundObj;->backupfilename:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lelectrum2/drums/soundObj;->LoadWaveFile(Ljava/lang/String;Z)Z

    .line 331
    iget v0, p0, Lelectrum2/drums/soundObj;->samplebpmbackup:F

    iput v0, p0, Lelectrum2/drums/soundObj;->samplebpm:F

    .line 333
    iget v0, p0, Lelectrum2/drums/soundObj;->sampleendposbackup:I

    iput v0, p0, Lelectrum2/drums/soundObj;->samplelen:I

    .line 335
    iget v0, p0, Lelectrum2/drums/soundObj;->samplefulllenbackup:I

    iput v0, p0, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 337
    iget v0, p0, Lelectrum2/drums/soundObj;->startposbackup:I

    iput v0, p0, Lelectrum2/drums/soundObj;->startpos:I

    .line 338
    iget v0, p0, Lelectrum2/drums/soundObj;->startposbackup:I

    iput v0, p0, Lelectrum2/drums/soundObj;->currsample:I

    .line 340
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->dofitbpmbackup:Z

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    .line 342
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDistortionBackup:Z

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDistortion:Z

    .line 343
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDelayBackup:Z

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDelay:Z

    .line 344
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->hasReverseBackup:Z

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->hasReverse:Z

    .line 346
    iget v0, p0, Lelectrum2/drums/soundObj;->StereoPanLbackup:F

    iput v0, p0, Lelectrum2/drums/soundObj;->StereoPanL:F

    .line 347
    iget v0, p0, Lelectrum2/drums/soundObj;->StereoPanRbackup:F

    iput v0, p0, Lelectrum2/drums/soundObj;->StereoPanR:F

    .line 349
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->retriggerbackup:Z

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->retrigger:Z

    .line 352
    iget v0, p0, Lelectrum2/drums/soundObj;->pitchbackup:I

    iput v0, p0, Lelectrum2/drums/soundObj;->pitch:I

    .line 355
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->dofitbpm:Z

    if-nez v0, :cond_0

    iget v0, p0, Lelectrum2/drums/soundObj;->pitch:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDelay:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDistortion:Z

    if-eqz v0, :cond_1

    .line 357
    :cond_0
    invoke-direct {p0}, Lelectrum2/drums/soundObj;->DoPitch()Z

    .line 359
    invoke-virtual {p0, v2}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z

    .line 367
    :cond_1
    return-void
.end method

.method public SetDelayParams(IZF)V
    .locals 1
    .parameter "time"
    .parameter "wrapornot"
    .parameter "feedback"

    .prologue
    .line 546
    iput p1, p0, Lelectrum2/drums/soundObj;->fxdelaytime:I

    .line 547
    iput-boolean p2, p0, Lelectrum2/drums/soundObj;->fxdelaywrap:Z

    .line 548
    iput p3, p0, Lelectrum2/drums/soundObj;->fxdelayfeedback:F

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDelay:Z

    .line 552
    return-void
.end method

.method public SetDistortionParams(FF)V
    .locals 1
    .parameter "distcutoff"
    .parameter "distgain"

    .prologue
    .line 557
    iput p1, p0, Lelectrum2/drums/soundObj;->fxdistortionthreshold:F

    .line 558
    iput p2, p0, Lelectrum2/drums/soundObj;->fxdistortiongain:F

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lelectrum2/drums/soundObj;->hasDistortion:Z

    .line 561
    return-void
.end method

.method public SetPan(I)V
    .locals 3
    .parameter "inpanvalue"

    .prologue
    const/high16 v2, 0x4248

    const/high16 v1, 0x3f80

    .line 770
    iput p1, p0, Lelectrum2/drums/soundObj;->panvalue:I

    .line 775
    iget v0, p0, Lelectrum2/drums/soundObj;->panvalue:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    iput v0, p0, Lelectrum2/drums/soundObj;->StereoPanL:F

    .line 776
    iget v0, p0, Lelectrum2/drums/soundObj;->StereoPanL:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iput v1, p0, Lelectrum2/drums/soundObj;->StereoPanL:F

    .line 779
    :cond_0
    iget v0, p0, Lelectrum2/drums/soundObj;->panvalue:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    iput v0, p0, Lelectrum2/drums/soundObj;->StereoPanR:F

    .line 780
    iget v0, p0, Lelectrum2/drums/soundObj;->StereoPanR:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iput v1, p0, Lelectrum2/drums/soundObj;->StereoPanR:F

    .line 784
    :cond_1
    return-void
.end method

.method public SetPitch(I)Z
    .locals 1
    .parameter "PitchValue"

    .prologue
    .line 729
    iput p1, p0, Lelectrum2/drums/soundObj;->pitch:I

    .line 733
    invoke-direct {p0}, Lelectrum2/drums/soundObj;->DoPitch()Z

    move-result v0

    return v0
.end method

.method public SetPlaySlot(IZZ)V
    .locals 2
    .parameter "slot"
    .parameter "playornot"
    .parameter "accent"

    .prologue
    .line 888
    iget-object v0, p0, Lelectrum2/drums/soundObj;->playslot:[[Z

    iget v1, p0, Lelectrum2/drums/soundObj;->currentpattern:I

    aget-object v0, v0, v1

    aput-boolean p2, v0, p1

    .line 889
    iget-object v0, p0, Lelectrum2/drums/soundObj;->accentslot:[[Z

    iget v1, p0, Lelectrum2/drums/soundObj;->currentpattern:I

    aget-object v0, v0, v1

    aput-boolean p3, v0, p1

    .line 892
    return-void
.end method

.method public SetSampleLen(D)V
    .locals 4
    .parameter "samplelenin"

    .prologue
    .line 742
    iput-wide p1, p0, Lelectrum2/drums/soundObj;->samplelencut:D

    .line 744
    iget v0, p0, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-double v0, v0

    iget-wide v2, p0, Lelectrum2/drums/soundObj;->samplelencut:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lelectrum2/drums/soundObj;->samplelen:I

    .line 749
    return-void
.end method

.method public SetSampleVolume(D)V
    .locals 0
    .parameter "samplevolin"

    .prologue
    .line 797
    iput-wide p1, p0, Lelectrum2/drums/soundObj;->samplevolume:D

    .line 800
    return-void
.end method

.method public SetShuffleSlot([I)V
    .locals 4
    .parameter "slots"

    .prologue
    .line 905
    const/4 v0, 0x0

    .local v0, counter:I
    :goto_0
    iget-object v2, p0, Lelectrum2/drums/soundObj;->shuffle:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 919
    return-void

    .line 907
    :cond_0
    const/4 v1, 0x0

    .local v1, counter2:I
    :goto_1
    array-length v2, p1

    if-lt v1, v2, :cond_1

    .line 905
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 909
    :cond_1
    aget v2, p1, v1

    if-ne v2, v0, :cond_2

    .line 911
    iget-object v2, p0, Lelectrum2/drums/soundObj;->shuffle:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    goto :goto_2

    .line 914
    :cond_2
    iget-object v2, p0, Lelectrum2/drums/soundObj;->shuffle:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    .line 907
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public SetVolume(F)V
    .locals 2
    .parameter "samplevolin"

    .prologue
    .line 762
    float-to-double v0, p1

    iput-wide v0, p0, Lelectrum2/drums/soundObj;->samplevolume:D

    .line 765
    return-void
.end method

.method public Tick(JI[SI)V
    .locals 7
    .parameter "TimeIn"
    .parameter "CurrentSlot"
    .parameter "bufferin"
    .parameter "currdata"

    .prologue
    .line 963
    iget-boolean v3, p0, Lelectrum2/drums/soundObj;->mute:Z

    if-eqz v3, :cond_1

    .line 1102
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    const/16 v3, 0xf

    if-gt p3, v3, :cond_5

    .line 969
    iget-object v3, p0, Lelectrum2/drums/soundObj;->playslot:[[Z

    iget v4, p0, Lelectrum2/drums/soundObj;->currentpattern:I

    aget-object v3, v3, v4

    aget-boolean v3, v3, p3

    if-eqz v3, :cond_4

    .line 972
    iget-boolean v3, p0, Lelectrum2/drums/soundObj;->retrigger:Z

    if-eqz v3, :cond_d

    .line 977
    iget v3, p0, Lelectrum2/drums/soundObj;->OldSlotValue:I

    if-eq p3, v3, :cond_3

    .line 983
    iget v3, p0, Lelectrum2/drums/soundObj;->startpos:I

    iput v3, p0, Lelectrum2/drums/soundObj;->currsample:I

    .line 984
    const/4 v3, 0x0

    iput-boolean v3, p0, Lelectrum2/drums/soundObj;->SampleDone:Z

    .line 986
    iget-object v3, p0, Lelectrum2/drums/soundObj;->playslot:[[Z

    iget v4, p0, Lelectrum2/drums/soundObj;->currentpattern:I

    aget-object v3, v3, v4

    aget-boolean v3, v3, p3

    if-eqz v3, :cond_2

    .line 988
    const/4 v3, 0x0

    iput-boolean v3, p0, Lelectrum2/drums/soundObj;->accentset:Z

    .line 992
    :cond_2
    iget-object v3, p0, Lelectrum2/drums/soundObj;->shuffle:[Z

    aget-boolean v3, v3, p3

    if-eqz v3, :cond_b

    .line 994
    sget v3, Lelectrum2/drums/globalSounds;->shuffleamount:F

    sget v4, Lelectrum2/drums/globalSounds;->shufflemax:F

    mul-float/2addr v3, v4

    float-to-long v3, v3

    add-long/2addr v3, p1

    iput-wide v3, p0, Lelectrum2/drums/soundObj;->shuffledelay:J

    .line 1001
    :cond_3
    :goto_1
    iget-boolean v3, p0, Lelectrum2/drums/soundObj;->SampleDone:Z

    if-nez v3, :cond_4

    .line 1004
    const/4 v3, 0x1

    iput-boolean v3, p0, Lelectrum2/drums/soundObj;->PlaySample:Z

    .line 1008
    iget-boolean v3, p0, Lelectrum2/drums/soundObj;->accentset:Z

    if-nez v3, :cond_4

    .line 1010
    const/4 v3, 0x1

    iput-boolean v3, p0, Lelectrum2/drums/soundObj;->accentset:Z

    .line 1011
    iget-object v3, p0, Lelectrum2/drums/soundObj;->accentslot:[[Z

    iget v4, p0, Lelectrum2/drums/soundObj;->currentpattern:I

    aget-object v3, v3, v4

    aget-boolean v3, v3, p3

    if-nez v3, :cond_c

    .line 1014
    const-wide v3, 0x3fd999999999999aL

    iput-wide v3, p0, Lelectrum2/drums/soundObj;->volmult:D

    .line 1030
    :cond_4
    :goto_2
    iput p3, p0, Lelectrum2/drums/soundObj;->OldSlotValue:I

    .line 1035
    :cond_5
    iget-wide v3, p0, Lelectrum2/drums/soundObj;->volmult:D

    iget-wide v5, p0, Lelectrum2/drums/soundObj;->samplevolume:D

    mul-double/2addr v3, v5

    iput-wide v3, p0, Lelectrum2/drums/soundObj;->soundmult:D

    .line 1039
    iget-boolean v3, p0, Lelectrum2/drums/soundObj;->PlaySample:Z

    if-eqz v3, :cond_0

    .line 1042
    iget-wide v3, p0, Lelectrum2/drums/soundObj;->shuffledelay:J

    cmp-long v3, p1, v3

    if-gtz v3, :cond_6

    iget-wide v3, p0, Lelectrum2/drums/soundObj;->shuffledelay:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 1045
    :cond_6
    iget v3, p0, Lelectrum2/drums/soundObj;->currsample:I

    iget v4, p0, Lelectrum2/drums/soundObj;->samplelen:I

    if-ge v3, v4, :cond_e

    .line 1050
    :try_start_0
    iget-object v3, p0, Lelectrum2/drums/soundObj;->sounddata:[S

    iget v4, p0, Lelectrum2/drums/soundObj;->currsample:I

    aget-short v0, v3, v4

    .line 1052
    .local v0, drummix:I
    aget-short v1, p4, p5

    .line 1053
    .local v1, outmix:I
    add-int/lit8 v3, p5, 0x1

    aget-short v2, p4, v3

    .line 1056
    .local v2, outmix2:I
    int-to-double v3, v0

    iget-wide v5, p0, Lelectrum2/drums/soundObj;->soundmult:D

    mul-double/2addr v3, v5

    sget-wide v5, Lelectrum2/drums/globalSounds;->globalVolume:D

    mul-double/2addr v3, v5

    iget v5, p0, Lelectrum2/drums/soundObj;->StereoPanL:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    add-int/2addr v1, v3

    .line 1057
    int-to-double v3, v0

    iget-wide v5, p0, Lelectrum2/drums/soundObj;->soundmult:D

    mul-double/2addr v3, v5

    sget-wide v5, Lelectrum2/drums/globalSounds;->globalVolume:D

    mul-double/2addr v3, v5

    iget v5, p0, Lelectrum2/drums/soundObj;->StereoPanR:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    add-int/2addr v2, v3

    .line 1061
    const/16 v3, 0x7ff8

    if-le v1, v3, :cond_7

    const/16 v1, 0x7ff8

    .line 1062
    :cond_7
    const/16 v3, -0x7ff8

    if-ge v1, v3, :cond_8

    const/16 v1, -0x7ff8

    .line 1064
    :cond_8
    const/16 v3, 0x7ff8

    if-le v2, v3, :cond_9

    const/16 v2, 0x7ff8

    .line 1065
    :cond_9
    const/16 v3, -0x7ff8

    if-ge v2, v3, :cond_a

    const/16 v2, -0x7ff8

    .line 1067
    :cond_a
    int-to-short v3, v1

    aput-short v3, p4, p5

    .line 1068
    add-int/lit8 v3, p5, 0x1

    int-to-short v4, v2

    aput-short v4, p4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    .end local v0           #drummix:I
    .end local v1           #outmix:I
    .end local v2           #outmix2:I
    :goto_3
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lelectrum2/drums/soundObj;->shuffledelay:J

    .line 1095
    iget v3, p0, Lelectrum2/drums/soundObj;->currsample:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lelectrum2/drums/soundObj;->currsample:I

    goto/16 :goto_0

    .line 996
    :cond_b
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lelectrum2/drums/soundObj;->shuffledelay:J

    goto/16 :goto_1

    .line 1017
    :cond_c
    const-wide v3, 0x3fec7ae147ae147bL

    iput-wide v3, p0, Lelectrum2/drums/soundObj;->volmult:D

    goto :goto_2

    .line 1025
    :cond_d
    const/4 v3, 0x1

    iput-boolean v3, p0, Lelectrum2/drums/soundObj;->PlaySample:Z

    goto/16 :goto_2

    .line 1081
    :cond_e
    const/4 v3, 0x0

    iput-boolean v3, p0, Lelectrum2/drums/soundObj;->PlaySample:Z

    .line 1082
    const/4 v3, 0x1

    iput-boolean v3, p0, Lelectrum2/drums/soundObj;->SampleDone:Z

    .line 1083
    const/4 v3, 0x0

    iput-boolean v3, p0, Lelectrum2/drums/soundObj;->accentset:Z

    .line 1084
    iget v3, p0, Lelectrum2/drums/soundObj;->startpos:I

    iput v3, p0, Lelectrum2/drums/soundObj;->currsample:I

    goto :goto_3

    .line 1073
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method public native filter([S[SI)V
.end method

.method public getAccentSlot(I)Z
    .locals 2
    .parameter "slot"

    .prologue
    .line 937
    iget-object v0, p0, Lelectrum2/drums/soundObj;->accentslot:[[Z

    iget v1, p0, Lelectrum2/drums/soundObj;->currentpattern:I

    aget-object v0, v0, v1

    aget-boolean v0, v0, p1

    return v0
.end method

.method public getPlaySlot(I)Z
    .locals 2
    .parameter "slot"

    .prologue
    .line 931
    iget-object v0, p0, Lelectrum2/drums/soundObj;->playslot:[[Z

    iget v1, p0, Lelectrum2/drums/soundObj;->currentpattern:I

    aget-object v0, v0, v1

    aget-boolean v0, v0, p1

    return v0
.end method

.method public getTrackMute()Z
    .locals 1

    .prologue
    .line 829
    iget-boolean v0, p0, Lelectrum2/drums/soundObj;->mute:Z

    return v0
.end method

.method public native getWavLoaderErrorMessage()Ljava/lang/String;
.end method

.method public native getWavSize()I
.end method

.method public setCurrentPattern(I)V
    .locals 0
    .parameter "pattern"

    .prologue
    .line 881
    iput p1, p0, Lelectrum2/drums/soundObj;->currentpattern:I

    .line 883
    return-void
.end method

.method public setSampleLocation(I)V
    .locals 0
    .parameter "location"

    .prologue
    .line 923
    iput p1, p0, Lelectrum2/drums/soundObj;->samplelocation:I

    .line 925
    return-void
.end method

.method public setSlotTime(I)V
    .locals 0
    .parameter "Samplesperslot"

    .prologue
    .line 805
    iput p1, p0, Lelectrum2/drums/soundObj;->samplesperslot:I

    .line 807
    return-void
.end method

.method public setTrackMute(Z)V
    .locals 0
    .parameter "mutein"

    .prologue
    .line 835
    iput-boolean p1, p0, Lelectrum2/drums/soundObj;->mute:Z

    .line 837
    return-void
.end method

.method public native staticfilter([S[SIF)V
.end method
