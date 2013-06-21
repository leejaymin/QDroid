.class Lelectrum2/drums/exportMIDI;
.super Ljava/lang/Object;
.source "exportMIDI.java"


# static fields
.field static BPM:D

.field static divisions:[B

.field static errmessage:Ljava/lang/String;

.field static firsttrackheader:[B

.field static headerdata:[B

.field static lastpatternpos:I

.field static mainheader:[B

.field static noteoff:[B

.field static noteon:[B

.field static noteonaccent:[B

.field static numtracks:B

.field static pandata:[B

.field static patchdata:[B

.field static patternposcounter:I

.field static resolution:I

.field static sequencelist:[I

.field static sequencemode:Z

.field static stopmarker:[B

.field static stringdata:[B

.field static tempostart:[B

.field static trackheader:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 10
    sput-byte v5, Lelectrum2/drums/exportMIDI;->numtracks:B

    .line 11
    const-wide v0, 0x4056a999a0000000L

    sput-wide v0, Lelectrum2/drums/exportMIDI;->BPM:D

    .line 12
    const/16 v0, 0x18

    sput v0, Lelectrum2/drums/exportMIDI;->resolution:I

    .line 27
    sput v7, Lelectrum2/drums/exportMIDI;->patternposcounter:I

    .line 28
    sput v7, Lelectrum2/drums/exportMIDI;->lastpatternpos:I

    .line 30
    new-array v0, v6, [B

    fill-array-data v0, :array_0

    sput-object v0, Lelectrum2/drums/exportMIDI;->mainheader:[B

    .line 31
    new-array v0, v6, [B

    fill-array-data v0, :array_1

    sput-object v0, Lelectrum2/drums/exportMIDI;->trackheader:[B

    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [B

    const/16 v1, 0x4d

    aput-byte v1, v0, v7

    const/16 v1, 0x54

    aput-byte v1, v0, v4

    const/16 v1, 0x72

    aput-byte v1, v0, v5

    const/16 v1, 0x6b

    aput-byte v1, v0, v3

    const/4 v1, 0x7

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    sput-object v0, Lelectrum2/drums/exportMIDI;->firsttrackheader:[B

    .line 33
    const/4 v0, 0x7

    new-array v0, v0, [B

    const/4 v1, 0x6

    aput-byte v1, v0, v3

    const/4 v1, 0x5

    aput-byte v4, v0, v1

    sput-object v0, Lelectrum2/drums/exportMIDI;->headerdata:[B

    .line 34
    new-array v0, v5, [B

    const/16 v1, 0x60

    aput-byte v1, v0, v4

    sput-object v0, Lelectrum2/drums/exportMIDI;->divisions:[B

    .line 35
    new-array v0, v6, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v4

    const/16 v1, 0x51

    aput-byte v1, v0, v5

    aput-byte v3, v0, v3

    sput-object v0, Lelectrum2/drums/exportMIDI;->tempostart:[B

    .line 36
    new-array v0, v6, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v4

    const/16 v1, 0x2f

    aput-byte v1, v0, v5

    sput-object v0, Lelectrum2/drums/exportMIDI;->stopmarker:[B

    .line 37
    new-array v0, v3, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v4

    aput-byte v3, v0, v5

    sput-object v0, Lelectrum2/drums/exportMIDI;->stringdata:[B

    .line 38
    new-array v0, v6, [B

    const/16 v1, -0x50

    aput-byte v1, v0, v4

    const/16 v1, 0xa

    aput-byte v1, v0, v5

    const/16 v1, 0x40

    aput-byte v1, v0, v3

    sput-object v0, Lelectrum2/drums/exportMIDI;->pandata:[B

    .line 39
    new-array v0, v3, [B

    const/16 v1, -0x40

    aput-byte v1, v0, v4

    sput-object v0, Lelectrum2/drums/exportMIDI;->patchdata:[B

    .line 43
    new-array v0, v3, [B

    fill-array-data v0, :array_2

    sput-object v0, Lelectrum2/drums/exportMIDI;->noteoff:[B

    .line 44
    new-array v0, v3, [B

    fill-array-data v0, :array_3

    sput-object v0, Lelectrum2/drums/exportMIDI;->noteon:[B

    .line 45
    new-array v0, v3, [B

    fill-array-data v0, :array_4

    sput-object v0, Lelectrum2/drums/exportMIDI;->noteonaccent:[B

    .line 47
    sput-boolean v7, Lelectrum2/drums/exportMIDI;->sequencemode:Z

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lelectrum2/drums/exportMIDI;->sequencelist:[I

    .line 51
    const-string v0, ""

    sput-object v0, Lelectrum2/drums/exportMIDI;->errmessage:Ljava/lang/String;

    .line 7
    return-void

    .line 30
    :array_0
    .array-data 0x1
        0x4dt
        0x54t
        0x68t
        0x64t
    .end array-data

    .line 31
    :array_1
    .array-data 0x1
        0x4dt
        0x54t
        0x72t
        0x6bt
    .end array-data

    .line 43
    :array_2
    .array-data 0x1
        0x80t
        0x3ct
        0x60t
    .end array-data

    .line 44
    :array_3
    .array-data 0x1
        0x90t
        0x3ct
        0x60t
    .end array-data

    .line 45
    :array_4
    .array-data 0x1
        0x90t
        0x3ct
        0x80t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Doit(Ljava/io/DataOutputStream;I)Z
    .locals 9
    .parameter "os"
    .parameter "currpattern"

    .prologue
    .line 518
    const/4 v1, 0x1

    .line 523
    .local v1, retval:Z
    :try_start_0
    sget-byte v5, Lelectrum2/drums/exportMIDI;->numtracks:B

    add-int/lit8 v5, v5, 0x1

    int-to-byte v4, v5

    .line 524
    .local v4, totaltracks:B
    const-wide/high16 v5, 0x404e

    sget-wide v7, Lelectrum2/drums/exportMIDI;->BPM:D

    div-double/2addr v5, v7

    const-wide v7, 0x412e848000000000L

    mul-double/2addr v5, v7

    double-to-int v3, v5

    .line 528
    .local v3, timemicroseconds:I
    sget-object v5, Lelectrum2/drums/exportMIDI;->mainheader:[B

    const/4 v6, 0x0

    sget-object v7, Lelectrum2/drums/exportMIDI;->mainheader:[B

    array-length v7, v7

    invoke-virtual {p0, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 529
    sget-object v5, Lelectrum2/drums/exportMIDI;->headerdata:[B

    const/4 v6, 0x0

    sget-object v7, Lelectrum2/drums/exportMIDI;->headerdata:[B

    array-length v7, v7

    invoke-virtual {p0, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 530
    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 531
    sget-object v5, Lelectrum2/drums/exportMIDI;->divisions:[B

    const/4 v6, 0x0

    sget-object v7, Lelectrum2/drums/exportMIDI;->divisions:[B

    array-length v7, v7

    invoke-virtual {p0, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 532
    sget-object v5, Lelectrum2/drums/exportMIDI;->firsttrackheader:[B

    const/4 v6, 0x0

    sget-object v7, Lelectrum2/drums/exportMIDI;->firsttrackheader:[B

    array-length v7, v7

    invoke-virtual {p0, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 533
    sget-object v5, Lelectrum2/drums/exportMIDI;->tempostart:[B

    const/4 v6, 0x0

    sget-object v7, Lelectrum2/drums/exportMIDI;->tempostart:[B

    array-length v7, v7

    invoke-virtual {p0, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 536
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 537
    .local v2, tempbuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 539
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-virtual {p0, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 541
    sget-object v5, Lelectrum2/drums/exportMIDI;->stopmarker:[B

    const/4 v6, 0x0

    sget-object v7, Lelectrum2/drums/exportMIDI;->stopmarker:[B

    array-length v7, v7

    invoke-virtual {p0, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 548
    sget-object v5, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    invoke-static {p0, v5, p1}, Lelectrum2/drums/exportMIDI;->WriteSoundData(Ljava/io/DataOutputStream;Lelectrum2/drums/soundObj;I)Z

    .line 549
    sget-object v5, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    invoke-static {p0, v5, p1}, Lelectrum2/drums/exportMIDI;->WriteSoundData(Ljava/io/DataOutputStream;Lelectrum2/drums/soundObj;I)Z

    .line 550
    sget-object v5, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    invoke-static {p0, v5, p1}, Lelectrum2/drums/exportMIDI;->WriteSoundData(Ljava/io/DataOutputStream;Lelectrum2/drums/soundObj;I)Z

    .line 551
    sget-object v5, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    invoke-static {p0, v5, p1}, Lelectrum2/drums/exportMIDI;->WriteSoundData(Ljava/io/DataOutputStream;Lelectrum2/drums/soundObj;I)Z

    .line 552
    sget-object v5, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    invoke-static {p0, v5, p1}, Lelectrum2/drums/exportMIDI;->WriteSoundData(Ljava/io/DataOutputStream;Lelectrum2/drums/soundObj;I)Z

    .line 553
    sget-object v5, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    invoke-static {p0, v5, p1}, Lelectrum2/drums/exportMIDI;->WriteSoundData(Ljava/io/DataOutputStream;Lelectrum2/drums/soundObj;I)Z

    .line 554
    sget-object v5, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    invoke-static {p0, v5, p1}, Lelectrum2/drums/exportMIDI;->WriteSoundData(Ljava/io/DataOutputStream;Lelectrum2/drums/soundObj;I)Z

    .line 555
    sget-object v5, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    invoke-static {p0, v5, p1}, Lelectrum2/drums/exportMIDI;->WriteSoundData(Ljava/io/DataOutputStream;Lelectrum2/drums/soundObj;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .end local v2           #tempbuffer:Ljava/nio/ByteBuffer;
    .end local v3           #timemicroseconds:I
    .end local v4           #totaltracks:B
    :goto_0
    return v1

    .line 563
    :catch_0
    move-exception v0

    .line 565
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lelectrum2/drums/exportMIDI;->errmessage:Ljava/lang/String;

    .line 567
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static Init(IFI)V
    .locals 2
    .parameter "numtracksin"
    .parameter "BPMin"
    .parameter "resolutionin"

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lelectrum2/drums/exportMIDI;->sequencemode:Z

    .line 58
    int-to-byte v0, p0

    sput-byte v0, Lelectrum2/drums/exportMIDI;->numtracks:B

    .line 59
    float-to-double v0, p1

    sput-wide v0, Lelectrum2/drums/exportMIDI;->BPM:D

    .line 60
    sparse-switch p2, :sswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 63
    :sswitch_0
    const/16 v0, 0x30

    sput v0, Lelectrum2/drums/exportMIDI;->resolution:I

    goto :goto_0

    .line 66
    :sswitch_1
    const/16 v0, 0x18

    sput v0, Lelectrum2/drums/exportMIDI;->resolution:I

    goto :goto_0

    .line 69
    :sswitch_2
    const/16 v0, 0xc

    sput v0, Lelectrum2/drums/exportMIDI;->resolution:I

    goto :goto_0

    .line 60
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method static SetSequenceMode(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, sequencein:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    sput-object v2, Lelectrum2/drums/exportMIDI;->sequencelist:[I

    .line 85
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 94
    const/4 v2, 0x1

    sput-boolean v2, Lelectrum2/drums/exportMIDI;->sequencemode:Z

    .line 96
    return-void

    .line 87
    :cond_0
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, tempint:Ljava/lang/Integer;
    sget-object v2, Lelectrum2/drums/exportMIDI;->sequencelist:[I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static WriteSoundData(Ljava/io/DataOutputStream;Lelectrum2/drums/soundObj;I)Z
    .locals 8
    .parameter "os"
    .parameter "soundin"
    .parameter "currpattern"

    .prologue
    .line 449
    const/4 v1, 0x1

    .line 456
    .local v1, retval:Z
    :try_start_0
    iget-object v3, p1, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    .line 458
    .local v3, trackname:Ljava/lang/String;
    sget-object v5, Lelectrum2/drums/exportMIDI;->trackheader:[B

    const/4 v6, 0x0

    sget-object v7, Lelectrum2/drums/exportMIDI;->trackheader:[B

    array-length v7, v7

    invoke-virtual {p0, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 461
    const/4 v4, 0x0

    .line 462
    .local v4, tracksize:I
    invoke-static {}, Lelectrum2/drums/exportMIDI;->resetPatternCounter()V

    .line 463
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    add-int/lit8 v4, v5, 0x4

    .line 464
    sget-object v5, Lelectrum2/drums/exportMIDI;->pandata:[B

    array-length v5, v5

    add-int/2addr v5, v4

    sget-object v6, Lelectrum2/drums/exportMIDI;->patchdata:[B

    array-length v6, v6

    add-int v4, v5, v6

    .line 465
    sget-object v5, Lelectrum2/drums/exportMIDI;->stopmarker:[B

    array-length v5, v5

    add-int/2addr v4, v5

    .line 468
    invoke-static {p1, p2}, Lelectrum2/drums/exportMIDI;->getPatternDataSize(Lelectrum2/drums/soundObj;I)I

    move-result v5

    add-int/2addr v4, v5

    .line 472
    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 475
    sget-object v5, Lelectrum2/drums/exportMIDI;->stringdata:[B

    const/4 v6, 0x0

    sget-object v7, Lelectrum2/drums/exportMIDI;->stringdata:[B

    array-length v7, v7

    invoke-virtual {p0, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 476
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    int-to-byte v2, v5

    .line 477
    .local v2, strlen:B
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 478
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 481
    sget-object v5, Lelectrum2/drums/exportMIDI;->pandata:[B

    const/4 v6, 0x0

    sget-object v7, Lelectrum2/drums/exportMIDI;->pandata:[B

    array-length v7, v7

    invoke-virtual {p0, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 482
    sget-object v5, Lelectrum2/drums/exportMIDI;->patchdata:[B

    const/4 v6, 0x0

    sget-object v7, Lelectrum2/drums/exportMIDI;->patchdata:[B

    array-length v7, v7

    invoke-virtual {p0, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 491
    invoke-static {p0, p1, p2}, Lelectrum2/drums/exportMIDI;->writePatternData(Ljava/io/DataOutputStream;Lelectrum2/drums/soundObj;I)Z

    .line 498
    sget-object v5, Lelectrum2/drums/exportMIDI;->stopmarker:[B

    const/4 v6, 0x0

    sget-object v7, Lelectrum2/drums/exportMIDI;->stopmarker:[B

    array-length v7, v7

    invoke-virtual {p0, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v2           #strlen:B
    .end local v3           #trackname:Ljava/lang/String;
    .end local v4           #tracksize:I
    :goto_0
    return v1

    .line 502
    :catch_0
    move-exception v0

    .line 504
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lelectrum2/drums/exportMIDI;->errmessage:Ljava/lang/String;

    .line 505
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static countpatternplayslots(Lelectrum2/drums/soundObj;I)I
    .locals 6
    .parameter "objin"
    .parameter "patternnum"

    .prologue
    .line 103
    iget-object v2, p0, Lelectrum2/drums/soundObj;->playslot:[[Z

    .line 105
    .local v2, patterntest:[[Z
    const/4 v1, 0x0

    .line 107
    .local v1, counter:I
    sget-boolean v5, Lelectrum2/drums/exportMIDI;->sequencemode:Z

    if-nez v5, :cond_3

    .line 110
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    array-length v5, v2

    if-lt v0, v5, :cond_1

    .line 134
    .end local v0           #c:I
    :cond_0
    return v1

    .line 112
    .restart local v0       #c:I
    :cond_1
    aget-object v5, v2, p1

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_2

    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 110
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v0           #c:I
    :cond_3
    const/4 v4, 0x0

    .local v4, y:I
    :goto_1
    sget-object v5, Lelectrum2/drums/exportMIDI;->sequencelist:[I

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 121
    sget-object v5, Lelectrum2/drums/exportMIDI;->sequencelist:[I

    aget v3, v5, v4

    .line 123
    .local v3, testval:I
    const/4 v0, 0x0

    .restart local v0       #c:I
    :goto_2
    array-length v5, v2

    if-lt v0, v5, :cond_4

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 125
    :cond_4
    aget-object v5, v2, v3

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_5

    .line 127
    add-int/lit8 v1, v1, 0x1

    .line 123
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static getPatternDataSize(Lelectrum2/drums/soundObj;I)I
    .locals 10
    .parameter "objin"
    .parameter "patternnum"

    .prologue
    const/16 v9, 0x10

    .line 144
    iget-object v6, p0, Lelectrum2/drums/soundObj;->playslot:[[Z

    .line 145
    .local v6, patterntoread:[[Z
    iget-object v0, p0, Lelectrum2/drums/soundObj;->accentslot:[[Z

    .line 148
    .local v0, accenttoread:[[Z
    const/4 v7, 0x0

    .line 149
    .local v7, totalsize:I
    const/4 v5, 0x0

    .line 150
    .local v5, patternpos:I
    const/4 v4, 0x0

    .line 152
    .local v4, lastpos:I
    sget-boolean v8, Lelectrum2/drums/exportMIDI;->sequencemode:Z

    if-nez v8, :cond_4

    .line 154
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v9, :cond_1

    .line 218
    .end local v2           #i:I
    :cond_0
    sub-int v8, v5, v4

    invoke-static {v8}, Lelectrum2/drums/exportMIDI;->getVariableLenSize(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 219
    sget-object v8, Lelectrum2/drums/exportMIDI;->noteoff:[B

    array-length v8, v8

    add-int/2addr v7, v8

    .line 221
    return v7

    .line 157
    .restart local v2       #i:I
    :cond_1
    aget-object v8, v6, p1

    aget-boolean v8, v8, v2

    if-nez v8, :cond_2

    aget-object v8, v0, p1

    aget-boolean v8, v8, v2

    if-eqz v8, :cond_3

    .line 163
    :cond_2
    sub-int v8, v5, v4

    :try_start_0
    invoke-static {v8}, Lelectrum2/drums/exportMIDI;->getVariableLenSize(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 164
    sget-object v8, Lelectrum2/drums/exportMIDI;->noteoff:[B

    array-length v8, v8

    add-int/2addr v7, v8

    .line 165
    const/4 v8, 0x0

    invoke-static {v8}, Lelectrum2/drums/exportMIDI;->getVariableLenSize(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 166
    sget-object v8, Lelectrum2/drums/exportMIDI;->noteon:[B

    array-length v8, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/2addr v7, v8

    .line 168
    move v4, v5

    .line 178
    :cond_3
    :goto_1
    sget v8, Lelectrum2/drums/exportMIDI;->resolution:I

    add-int/2addr v5, v8

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v2           #i:I
    :cond_4
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    sget-object v8, Lelectrum2/drums/exportMIDI;->sequencelist:[I

    array-length v8, v8

    if-ge v3, v8, :cond_0

    .line 185
    sget-object v8, Lelectrum2/drums/exportMIDI;->sequencelist:[I

    aget v1, v8, v3

    .line 187
    .local v1, checkpattern:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-lt v2, v9, :cond_5

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 190
    :cond_5
    aget-object v8, v6, v1

    aget-boolean v8, v8, v2

    if-nez v8, :cond_6

    aget-object v8, v0, v1

    aget-boolean v8, v8, v2

    if-eqz v8, :cond_7

    .line 196
    :cond_6
    sub-int v8, v5, v4

    :try_start_1
    invoke-static {v8}, Lelectrum2/drums/exportMIDI;->getVariableLenSize(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 197
    sget-object v8, Lelectrum2/drums/exportMIDI;->noteoff:[B

    array-length v8, v8

    add-int/2addr v7, v8

    .line 198
    const/4 v8, 0x0

    invoke-static {v8}, Lelectrum2/drums/exportMIDI;->getVariableLenSize(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 199
    sget-object v8, Lelectrum2/drums/exportMIDI;->noteon:[B

    array-length v8, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v7, v8

    .line 201
    move v4, v5

    .line 211
    :cond_7
    :goto_4
    sget v8, Lelectrum2/drums/exportMIDI;->resolution:I

    add-int/2addr v5, v8

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 203
    :catch_0
    move-exception v8

    goto :goto_4

    .line 170
    .end local v1           #checkpattern:I
    .end local v3           #j:I
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method static getVariableLenSize(I)I
    .locals 3
    .parameter "valuein"

    .prologue
    .line 365
    and-int/lit8 v0, p0, 0x7f

    .line 366
    .local v0, buffer:I
    :goto_0
    shr-int/lit8 p0, p0, 0x7

    if-gtz p0, :cond_0

    .line 375
    const/4 v1, 0x0

    .line 380
    .local v1, count:I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 382
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    .line 384
    shr-int/lit8 v0, v0, 0x8

    .line 377
    goto :goto_1

    .line 368
    .end local v1           #count:I
    :cond_0
    shl-int/lit8 v0, v0, 0x8

    .line 369
    or-int/lit16 v0, v0, 0x80

    .line 370
    and-int/lit8 v2, p0, 0x7f

    add-int/2addr v0, v2

    goto :goto_0

    .line 392
    .restart local v1       #count:I
    :cond_1
    return v1
.end method

.method static preparesoundchannel(I)V
    .locals 0
    .parameter "soundchannelin"

    .prologue
    .line 249
    return-void
.end method

.method static resetPatternCounter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 228
    sput v0, Lelectrum2/drums/exportMIDI;->patternposcounter:I

    .line 229
    sput v0, Lelectrum2/drums/exportMIDI;->lastpatternpos:I

    .line 231
    return-void
.end method

.method static writePatternData(Ljava/io/DataOutputStream;Lelectrum2/drums/soundObj;I)Z
    .locals 12
    .parameter "os"
    .parameter "soundin"
    .parameter "patternnum"

    .prologue
    const/16 v11, 0x10

    .line 253
    const/4 v4, 0x1

    .line 255
    .local v4, retval:Z
    iget-object v6, p1, Lelectrum2/drums/soundObj;->playslot:[[Z

    .line 256
    .local v6, writepattern:[[Z
    iget-object v0, p1, Lelectrum2/drums/soundObj;->accentslot:[[Z

    .line 259
    .local v0, accentpattern:[[Z
    sget-boolean v8, Lelectrum2/drums/exportMIDI;->sequencemode:Z

    if-nez v8, :cond_5

    .line 261
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v11, :cond_1

    .line 343
    .end local v3           #i:I
    :cond_0
    sget v8, Lelectrum2/drums/exportMIDI;->patternposcounter:I

    sget v9, Lelectrum2/drums/exportMIDI;->lastpatternpos:I

    sub-int/2addr v8, v9

    invoke-static {p0, v8}, Lelectrum2/drums/exportMIDI;->writeVariableLen(Ljava/io/DataOutputStream;I)Z

    .line 346
    :try_start_0
    sget-object v8, Lelectrum2/drums/exportMIDI;->noteoff:[B

    const/4 v9, 0x0

    sget-object v10, Lelectrum2/drums/exportMIDI;->noteoff:[B

    array-length v10, v10

    invoke-virtual {p0, v8, v9, v10}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 354
    :goto_1
    return v4

    .line 264
    .restart local v3       #i:I
    :cond_1
    aget-object v8, v6, p2

    aget-boolean v8, v8, v3

    if-nez v8, :cond_2

    aget-object v8, v0, p2

    aget-boolean v8, v8, v3

    if-eqz v8, :cond_3

    .line 270
    :cond_2
    :try_start_1
    sget v8, Lelectrum2/drums/exportMIDI;->patternposcounter:I

    sget v9, Lelectrum2/drums/exportMIDI;->lastpatternpos:I

    sub-int/2addr v8, v9

    invoke-static {p0, v8}, Lelectrum2/drums/exportMIDI;->writeVariableLen(Ljava/io/DataOutputStream;I)Z

    .line 271
    sget-object v8, Lelectrum2/drums/exportMIDI;->noteoff:[B

    const/4 v9, 0x0

    sget-object v10, Lelectrum2/drums/exportMIDI;->noteoff:[B

    array-length v10, v10

    invoke-virtual {p0, v8, v9, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 272
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lelectrum2/drums/exportMIDI;->writeVariableLen(Ljava/io/DataOutputStream;I)Z

    .line 273
    aget-object v8, v0, p2

    aget-boolean v8, v8, v3

    if-eqz v8, :cond_4

    .line 275
    sget-object v8, Lelectrum2/drums/exportMIDI;->noteonaccent:[B

    const/4 v9, 0x0

    sget-object v10, Lelectrum2/drums/exportMIDI;->noteonaccent:[B

    array-length v10, v10

    invoke-virtual {p0, v8, v9, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 279
    :goto_2
    sget v8, Lelectrum2/drums/exportMIDI;->patternposcounter:I

    sput v8, Lelectrum2/drums/exportMIDI;->lastpatternpos:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 294
    :cond_3
    :goto_3
    sget v8, Lelectrum2/drums/exportMIDI;->patternposcounter:I

    sget v9, Lelectrum2/drums/exportMIDI;->resolution:I

    add-int/2addr v8, v9

    sput v8, Lelectrum2/drums/exportMIDI;->patternposcounter:I

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    :cond_4
    :try_start_2
    sget-object v8, Lelectrum2/drums/exportMIDI;->noteon:[B

    const/4 v9, 0x0

    sget-object v10, Lelectrum2/drums/exportMIDI;->noteon:[B

    array-length v10, v10

    invoke-virtual {p0, v8, v9, v10}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 282
    :catch_0
    move-exception v1

    .line 285
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lelectrum2/drums/exportMIDI;->errmessage:Ljava/lang/String;

    .line 286
    const/4 v4, 0x0

    goto :goto_3

    .line 300
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #i:I
    :cond_5
    const/4 v7, 0x0

    .local v7, y:I
    :goto_4
    sget-object v8, Lelectrum2/drums/exportMIDI;->sequencelist:[I

    array-length v8, v8

    if-ge v7, v8, :cond_0

    .line 303
    sget-object v8, Lelectrum2/drums/exportMIDI;->sequencelist:[I

    aget v5, v8, v7

    .line 305
    .local v5, tempval:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    if-lt v3, v11, :cond_6

    .line 300
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 308
    :cond_6
    aget-object v8, v6, v5

    aget-boolean v8, v8, v3

    if-nez v8, :cond_7

    aget-object v8, v0, v5

    aget-boolean v8, v8, v3

    if-eqz v8, :cond_8

    .line 314
    :cond_7
    :try_start_3
    sget v8, Lelectrum2/drums/exportMIDI;->patternposcounter:I

    sget v9, Lelectrum2/drums/exportMIDI;->lastpatternpos:I

    sub-int/2addr v8, v9

    invoke-static {p0, v8}, Lelectrum2/drums/exportMIDI;->writeVariableLen(Ljava/io/DataOutputStream;I)Z

    .line 315
    sget-object v8, Lelectrum2/drums/exportMIDI;->noteoff:[B

    const/4 v9, 0x0

    sget-object v10, Lelectrum2/drums/exportMIDI;->noteoff:[B

    array-length v10, v10

    invoke-virtual {p0, v8, v9, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 316
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lelectrum2/drums/exportMIDI;->writeVariableLen(Ljava/io/DataOutputStream;I)Z

    .line 317
    aget-object v8, v0, v5

    aget-boolean v8, v8, v3

    if-eqz v8, :cond_9

    .line 319
    sget-object v8, Lelectrum2/drums/exportMIDI;->noteonaccent:[B

    const/4 v9, 0x0

    sget-object v10, Lelectrum2/drums/exportMIDI;->noteonaccent:[B

    array-length v10, v10

    invoke-virtual {p0, v8, v9, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 323
    :goto_6
    sget v8, Lelectrum2/drums/exportMIDI;->patternposcounter:I

    sput v8, Lelectrum2/drums/exportMIDI;->lastpatternpos:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 338
    :cond_8
    :goto_7
    sget v8, Lelectrum2/drums/exportMIDI;->patternposcounter:I

    sget v9, Lelectrum2/drums/exportMIDI;->resolution:I

    add-int/2addr v8, v9

    sput v8, Lelectrum2/drums/exportMIDI;->patternposcounter:I

    .line 305
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 321
    :cond_9
    :try_start_4
    sget-object v8, Lelectrum2/drums/exportMIDI;->noteon:[B

    const/4 v9, 0x0

    sget-object v10, Lelectrum2/drums/exportMIDI;->noteon:[B

    array-length v10, v10

    invoke-virtual {p0, v8, v9, v10}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 326
    :catch_1
    move-exception v1

    .line 329
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lelectrum2/drums/exportMIDI;->errmessage:Ljava/lang/String;

    .line 330
    const/4 v4, 0x0

    goto :goto_7

    .line 348
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #i:I
    .end local v5           #tempval:I
    .end local v7           #y:I
    :catch_2
    move-exception v2

    .line 350
    .local v2, e2:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lelectrum2/drums/exportMIDI;->errmessage:Ljava/lang/String;

    .line 351
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method static writeVariableLen(Ljava/io/DataOutputStream;I)Z
    .locals 7
    .parameter "os"
    .parameter "valuein"

    .prologue
    .line 400
    const/4 v2, 0x1

    .line 404
    .local v2, retval:Z
    and-int/lit8 v0, p1, 0x7f

    .line 405
    .local v0, buffer:I
    :goto_0
    shr-int/lit8 p1, p1, 0x7

    if-gtz p1, :cond_0

    .line 421
    :goto_1
    const/4 v4, 0x4

    :try_start_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 422
    .local v3, tempbuff:Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 424
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_1

    .line 428
    shr-int/lit8 v0, v0, 0x8

    .line 417
    goto :goto_1

    .line 407
    .end local v3           #tempbuff:Ljava/nio/ByteBuffer;
    :cond_0
    shl-int/lit8 v0, v0, 0x8

    .line 408
    or-int/lit16 v0, v0, 0x80

    .line 409
    and-int/lit8 v4, p1, 0x7f

    add-int/2addr v0, v4

    goto :goto_0

    .line 437
    :catch_0
    move-exception v1

    .line 439
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lelectrum2/drums/exportMIDI;->errmessage:Ljava/lang/String;

    .line 440
    const/4 v2, 0x0

    .line 443
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return v2
.end method
