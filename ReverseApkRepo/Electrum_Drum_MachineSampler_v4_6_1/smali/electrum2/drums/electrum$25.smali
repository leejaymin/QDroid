.class Lelectrum2/drums/electrum$25;
.super Ljava/lang/Object;
.source "electrum.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lelectrum2/drums/electrum;->CreateExportedSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/electrum;


# direct methods
.method constructor <init>(Lelectrum2/drums/electrum;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    .line 7396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 7410
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget-boolean v1, v1, Lelectrum2/drums/electrum;->CreatingSound:Z

    if-eqz v1, :cond_6

    .line 7413
    const/high16 v1, 0x4270

    sget v2, Lelectrum2/drums/electrum;->bpm:F

    div-float/2addr v1, v2

    sget v2, Lelectrum2/drums/electrum;->samplefrequency:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lelectrum2/drums/electrum;->slotspermeasure:I

    div-int/lit8 v2, v2, 0x4

    div-int/2addr v1, v2

    sput v1, Lelectrum2/drums/electrum;->samplesperslot:I

    .line 7417
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    sget v2, Lelectrum2/drums/electrum;->numberofslots:I

    sget v3, Lelectrum2/drums/electrum;->samplesperslot:I

    mul-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget v3, v3, Lelectrum2/drums/electrum;->patternmultiplier:I

    mul-int/2addr v2, v3

    iput v2, v1, Lelectrum2/drums/electrum;->totalsamples:I

    .line 7420
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    #calls: Lelectrum2/drums/electrum;->SetDrumsCurrentPattern()V
    invoke-static {v1}, Lelectrum2/drums/electrum;->access$2(Lelectrum2/drums/electrum;)V

    .line 7422
    sget v1, Lelectrum2/drums/electrum;->samplesperslot:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sput v1, Lelectrum2/drums/globalSounds;->shufflemax:F

    .line 7426
    sget v1, Lelectrum2/drums/electrum;->slotspermeasure:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 7430
    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7431
    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7432
    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7433
    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7434
    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7435
    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7436
    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7437
    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7441
    :cond_0
    sget v1, Lelectrum2/drums/electrum;->slotspermeasure:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 7443
    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ClearShuffleSlots()V

    .line 7444
    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ClearShuffleSlots()V

    .line 7445
    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ClearShuffleSlots()V

    .line 7446
    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ClearShuffleSlots()V

    .line 7447
    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ClearShuffleSlots()V

    .line 7448
    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ClearShuffleSlots()V

    .line 7449
    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ClearShuffleSlots()V

    .line 7450
    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ClearShuffleSlots()V

    .line 7454
    :cond_1
    sget v1, Lelectrum2/drums/electrum;->slotspermeasure:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 7457
    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7458
    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7459
    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7460
    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_b

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7461
    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_c

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7462
    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_d

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7463
    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_e

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7464
    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_f

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7472
    :cond_2
    sget v1, Lelectrum2/drums/electrum;->slotspermeasure:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    .line 7475
    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_10

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7476
    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_11

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7477
    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_12

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7478
    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_13

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7479
    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_14

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7480
    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_15

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7481
    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_16

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7482
    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_17

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 7487
    :cond_3
    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    sget v2, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 7488
    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    sget v2, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 7489
    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    sget v2, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 7490
    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    sget v2, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 7491
    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    sget v2, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 7492
    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    sget v2, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 7493
    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    sget v2, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 7494
    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    sget v2, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 7496
    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ResetSound()V

    .line 7497
    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ResetSound()V

    .line 7498
    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ResetSound()V

    .line 7499
    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ResetSound()V

    .line 7500
    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ResetSound()V

    .line 7501
    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ResetSound()V

    .line 7502
    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ResetSound()V

    .line 7503
    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ResetSound()V

    .line 7508
    sget v1, Lelectrum2/drums/electrum;->samplesperslot:I

    mul-int/lit8 v1, v1, 0x2

    new-array v5, v1, [S

    .line 7510
    .local v5, outdata:[S
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget v1, v1, Lelectrum2/drums/electrum;->totalsamples:I

    div-int/lit8 v15, v1, 0x8

    .line 7511
    .local v15, progressupdatetime:I
    const/4 v14, 0x0

    .line 7524
    .local v14, progressupdatecount:I
    const/16 v16, 0x0

    .line 7525
    .local v16, slotcounter:I
    const/4 v4, 0x0

    .line 7529
    .local v4, currentslot:I
    sget v20, Lelectrum2/drums/electrum;->numberofslots:I

    .line 7536
    .local v20, totalslotscount:I
    const/4 v6, 0x0

    .line 7545
    .local v6, datacounter:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget-boolean v1, v1, Lelectrum2/drums/electrum;->IsExporting:Z

    if-eqz v1, :cond_8

    .line 7548
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget-boolean v1, v1, Lelectrum2/drums/electrum;->exportringtone:Z

    if-nez v1, :cond_7

    .line 7550
    new-instance v13, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget-object v2, v2, Lelectrum2/drums/electrum;->exportFilename:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7568
    .local v13, outfile:Ljava/io/File;
    :goto_0
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7569
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 7571
    :cond_4
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 7575
    new-instance v12, Ljava/io/RandomAccessFile;

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rws"

    invoke-direct {v12, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7579
    .local v12, of:Ljava/io/RandomAccessFile;
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 7580
    .local v17, tempbuff1:Ljava/nio/ByteBuffer;
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 7582
    .local v18, tempbuff2:Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 7583
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 7589
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget v1, v1, Lelectrum2/drums/electrum;->totalsamples:I

    mul-int/lit8 v1, v1, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7590
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget v1, v1, Lelectrum2/drums/electrum;->totalsamples:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x24

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7593
    sget-object v1, Lelectrum2/drums/electrum;->headerdata:[B

    invoke-virtual {v12, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 7594
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 7595
    sget-object v1, Lelectrum2/drums/electrum;->headerdata2:[B

    invoke-virtual {v12, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 7597
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 7602
    const/4 v8, 0x0

    .local v8, count:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget v1, v1, Lelectrum2/drums/electrum;->totalsamples:I

    if-lt v8, v1, :cond_9

    .line 7722
    :cond_5
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7747
    .end local v4           #currentslot:I
    .end local v5           #outdata:[S
    .end local v6           #datacounter:I
    .end local v8           #count:I
    .end local v12           #of:Ljava/io/RandomAccessFile;
    .end local v13           #outfile:Ljava/io/File;
    .end local v14           #progressupdatecount:I
    .end local v15           #progressupdatetime:I
    .end local v16           #slotcounter:I
    .end local v17           #tempbuff1:Ljava/nio/ByteBuffer;
    .end local v18           #tempbuff2:Ljava/nio/ByteBuffer;
    .end local v20           #totalslotscount:I
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget-boolean v1, v1, Lelectrum2/drums/electrum;->IsExporting:Z

    if-nez v1, :cond_10

    .line 7750
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 7751
    .local v11, m:Landroid/os/Message;
    const/16 v1, 0x3039

    iput v1, v11, Landroid/os/Message;->what:I

    .line 7753
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->myGUIUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7763
    .end local v11           #m:Landroid/os/Message;
    :goto_3
    return-void

    .line 7553
    .restart local v4       #currentslot:I
    .restart local v5       #outdata:[S
    .restart local v6       #datacounter:I
    .restart local v14       #progressupdatecount:I
    .restart local v15       #progressupdatetime:I
    .restart local v16       #slotcounter:I
    .restart local v20       #totalslotscount:I
    :cond_7
    :try_start_1
    new-instance v13, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget-object v2, v2, Lelectrum2/drums/electrum;->exportFilename:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v13       #outfile:Ljava/io/File;
    goto/16 :goto_0

    .line 7558
    .end local v13           #outfile:Ljava/io/File;
    :cond_8
    new-instance v13, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/electrum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "electrumsound.wav"

    invoke-direct {v13, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v13       #outfile:Ljava/io/File;
    goto/16 :goto_0

    .line 7605
    .restart local v8       #count:I
    .restart local v12       #of:Ljava/io/RandomAccessFile;
    .restart local v17       #tempbuff1:Ljava/nio/ByteBuffer;
    .restart local v18       #tempbuff2:Ljava/nio/ByteBuffer;
    :cond_9
    add-int/lit8 v14, v14, 0x1

    .line 7606
    if-le v14, v15, :cond_a

    .line 7608
    const/4 v14, 0x0

    .line 7609
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->patternHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget-object v2, v2, Lelectrum2/drums/electrum;->UpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7613
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget-boolean v1, v1, Lelectrum2/drums/electrum;->CreatingSound:Z

    if-eqz v1, :cond_5

    .line 7622
    const/4 v1, 0x0

    aput-short v1, v5, v6

    .line 7625
    add-int/lit8 v1, v6, 0x1

    const/4 v2, 0x0

    aput-short v2, v5, v1

    .line 7627
    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    int-to-long v2, v8

    invoke-virtual/range {v1 .. v6}, Lelectrum2/drums/soundObj;->Tick(JI[SI)V

    .line 7628
    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    int-to-long v2, v8

    invoke-virtual/range {v1 .. v6}, Lelectrum2/drums/soundObj;->Tick(JI[SI)V

    .line 7629
    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    int-to-long v2, v8

    invoke-virtual/range {v1 .. v6}, Lelectrum2/drums/soundObj;->Tick(JI[SI)V

    .line 7630
    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    int-to-long v2, v8

    invoke-virtual/range {v1 .. v6}, Lelectrum2/drums/soundObj;->Tick(JI[SI)V

    .line 7631
    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    int-to-long v2, v8

    invoke-virtual/range {v1 .. v6}, Lelectrum2/drums/soundObj;->Tick(JI[SI)V

    .line 7632
    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    int-to-long v2, v8

    invoke-virtual/range {v1 .. v6}, Lelectrum2/drums/soundObj;->Tick(JI[SI)V

    .line 7633
    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    int-to-long v2, v8

    invoke-virtual/range {v1 .. v6}, Lelectrum2/drums/soundObj;->Tick(JI[SI)V

    .line 7634
    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    int-to-long v2, v8

    invoke-virtual/range {v1 .. v6}, Lelectrum2/drums/soundObj;->Tick(JI[SI)V

    .line 7637
    add-int/lit8 v16, v16, 0x1

    .line 7641
    add-int/lit8 v6, v6, 0x2

    .line 7645
    sget v1, Lelectrum2/drums/electrum;->samplesperslot:I

    move/from16 v0, v16

    if-lt v0, v1, :cond_c

    .line 7647
    add-int/lit8 v4, v4, 0x1

    .line 7649
    const/16 v16, 0x0

    .line 7650
    const/4 v6, 0x0

    .line 7654
    array-length v1, v5

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 7655
    .local v7, TempBuff:Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 7658
    const/4 v9, 0x0

    .local v9, counter2:I
    :goto_4
    array-length v1, v5

    if-lt v9, v1, :cond_d

    .line 7666
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 7670
    move/from16 v0, v20

    if-lt v4, v0, :cond_c

    .line 7672
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget-boolean v1, v1, Lelectrum2/drums/electrum;->PatternSequenceMode:Z

    if-eqz v1, :cond_b

    .line 7674
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget v2, v1, Lelectrum2/drums/electrum;->patterncounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lelectrum2/drums/electrum;->patterncounter:I

    .line 7683
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget v1, v1, Lelectrum2/drums/electrum;->patterncounter:I

    sget-object v2, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_e

    .line 7685
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lelectrum2/drums/electrum;->CreatingSound:Z

    .line 7710
    :cond_b
    :goto_5
    const/4 v4, 0x0

    .line 7602
    .end local v7           #TempBuff:Ljava/nio/ByteBuffer;
    .end local v9           #counter2:I
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 7661
    .restart local v7       #TempBuff:Ljava/nio/ByteBuffer;
    .restart local v9       #counter2:I
    :cond_d
    aget-short v1, v5, v9

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 7658
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 7691
    :cond_e
    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 7693
    new-instance v19, Ljava/lang/Integer;

    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget v2, v2, Lelectrum2/drums/electrum;->patterncounter:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 7695
    .local v19, temppat:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lelectrum2/drums/electrum;->currentpattern:I

    .line 7699
    .end local v19           #temppat:Ljava/lang/Integer;
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    #calls: Lelectrum2/drums/electrum;->SetDrumsCurrentPattern()V
    invoke-static {v1}, Lelectrum2/drums/electrum;->access$2(Lelectrum2/drums/electrum;)V

    .line 7702
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->patternHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    #getter for: Lelectrum2/drums/electrum;->UpdatePattern:Ljava/lang/Runnable;
    invoke-static {v2}, Lelectrum2/drums/electrum;->access$10(Lelectrum2/drums/electrum;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 7730
    .end local v4           #currentslot:I
    .end local v5           #outdata:[S
    .end local v6           #datacounter:I
    .end local v7           #TempBuff:Ljava/nio/ByteBuffer;
    .end local v8           #count:I
    .end local v9           #counter2:I
    .end local v12           #of:Ljava/io/RandomAccessFile;
    .end local v13           #outfile:Ljava/io/File;
    .end local v14           #progressupdatecount:I
    .end local v15           #progressupdatetime:I
    .end local v16           #slotcounter:I
    .end local v17           #tempbuff1:Ljava/nio/ByteBuffer;
    .end local v18           #tempbuff2:Ljava/nio/ByteBuffer;
    .end local v20           #totalslotscount:I
    :catch_0
    move-exception v10

    .line 7733
    .local v10, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error creating sound data: \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lelectrum2/drums/electrum;->globalErrorString:Ljava/lang/String;

    .line 7735
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->patternHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    #getter for: Lelectrum2/drums/electrum;->GlobalErrorHandler:Ljava/lang/Runnable;
    invoke-static {v2}, Lelectrum2/drums/electrum;->access$12(Lelectrum2/drums/electrum;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 7757
    .end local v10           #e:Ljava/lang/Exception;
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->patternHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lelectrum2/drums/electrum$25;->this$0:Lelectrum2/drums/electrum;

    #getter for: Lelectrum2/drums/electrum;->DoneExporting:Ljava/lang/Runnable;
    invoke-static {v2}, Lelectrum2/drums/electrum;->access$13(Lelectrum2/drums/electrum;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 7430
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 7431
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 7432
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 7433
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 7434
    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 7435
    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 7436
    :array_6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 7437
    :array_7
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 7457
    :array_8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 7458
    :array_9
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 7459
    :array_a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 7460
    :array_b
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 7461
    :array_c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 7462
    :array_d
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 7463
    :array_e
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 7464
    :array_f
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 7475
    :array_10
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 7476
    :array_11
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 7477
    :array_12
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 7478
    :array_13
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 7479
    :array_14
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 7480
    :array_15
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 7481
    :array_16
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 7482
    :array_17
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data
.end method
