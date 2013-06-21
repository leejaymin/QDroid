.class Lelectrum2/drums/electrum$24;
.super Ljava/lang/Object;
.source "electrum.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lelectrum2/drums/electrum;->CreateSound()V
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
    iput-object p1, p0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    .line 6693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 6700
    const/4 v1, 0x1

    sput-boolean v1, Lelectrum2/drums/globalSounds;->IsPlaying:Z

    .line 6701
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lelectrum2/drums/electrum;->IsPlaying:Z

    .line 6703
    sget-boolean v1, Lelectrum2/drums/globalSounds;->usepriority:Z

    if-eqz v1, :cond_0

    .line 6705
    const-string v1, "priority"

    const-string v2, "Setting high audio priority"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6707
    const/16 v1, -0x10

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6710
    :cond_0
    const/16 v17, 0x3

    .line 6719
    .local v17, slotminusval:I
    const/high16 v1, 0x4270

    :try_start_0
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

    .line 6727
    sget v1, Lelectrum2/drums/electrum;->samplesperslot:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sput v1, Lelectrum2/drums/globalSounds;->shufflemax:F

    .line 6731
    sget v1, Lelectrum2/drums/electrum;->slotspermeasure:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 6735
    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6736
    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6737
    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6738
    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6739
    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6740
    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6741
    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6742
    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6747
    :cond_1
    sget v1, Lelectrum2/drums/electrum;->slotspermeasure:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 6749
    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ClearShuffleSlots()V

    .line 6750
    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ClearShuffleSlots()V

    .line 6751
    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ClearShuffleSlots()V

    .line 6752
    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ClearShuffleSlots()V

    .line 6753
    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ClearShuffleSlots()V

    .line 6754
    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ClearShuffleSlots()V

    .line 6755
    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ClearShuffleSlots()V

    .line 6756
    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ClearShuffleSlots()V

    .line 6761
    :cond_2
    sget v1, Lelectrum2/drums/electrum;->slotspermeasure:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 6764
    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6765
    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6766
    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6767
    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_b

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6768
    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_c

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6769
    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_d

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6770
    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_e

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6771
    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_f

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6779
    :cond_3
    sget v1, Lelectrum2/drums/electrum;->slotspermeasure:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    .line 6782
    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_10

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6783
    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_11

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6784
    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_12

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6785
    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_13

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6786
    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_14

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6787
    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_15

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6788
    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_16

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6789
    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_17

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->SetShuffleSlot([I)V

    .line 6799
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    sget v2, Lelectrum2/drums/electrum;->numberofslots:I

    sget v3, Lelectrum2/drums/electrum;->samplesperslot:I

    mul-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v3, v3, Lelectrum2/drums/electrum;->patternmultiplier:I

    mul-int/2addr v2, v3

    iput v2, v1, Lelectrum2/drums/electrum;->totalsamples:I

    .line 6802
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    #calls: Lelectrum2/drums/electrum;->SetDrumsCurrentPattern()V
    invoke-static {v1}, Lelectrum2/drums/electrum;->access$2(Lelectrum2/drums/electrum;)V

    .line 6805
    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    sget v2, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 6806
    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    sget v2, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 6807
    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    sget v2, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 6808
    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    sget v2, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 6809
    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    sget v2, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 6810
    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    sget v2, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 6811
    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    sget v2, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 6812
    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    sget v2, Lelectrum2/drums/electrum;->samplesperslot:I

    invoke-virtual {v1, v2}, Lelectrum2/drums/soundObj;->setSlotTime(I)V

    .line 6815
    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ResetSound()V

    .line 6816
    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ResetSound()V

    .line 6817
    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ResetSound()V

    .line 6818
    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ResetSound()V

    .line 6819
    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ResetSound()V

    .line 6820
    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ResetSound()V

    .line 6821
    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ResetSound()V

    .line 6822
    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->ResetSound()V

    .line 6826
    sget v1, Lelectrum2/drums/electrum;->samplesperslot:I

    mul-int/lit8 v1, v1, 0x2

    new-array v11, v1, [S

    .line 6831
    .local v11, outdata:[S
    const/16 v16, 0x0

    .line 6832
    .local v16, slotcounter:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    const/4 v2, 0x0

    iput v2, v1, Lelectrum2/drums/electrum;->currentslot:I

    .line 6839
    const/16 v1, 0x5622

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v15

    .line 6842
    .local v15, minsize:I
    sget v1, Lelectrum2/drums/electrum;->samplesperslot:I

    mul-int/lit8 v6, v1, 0x4

    .line 6845
    .local v6, allocatesize:I
    :goto_0
    mul-int/lit8 v1, v15, 0x3

    if-le v6, v1, :cond_5

    .line 6858
    sget v1, Lelectrum2/drums/electrum;->samplesperslot:I

    div-int v17, v15, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6870
    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    new-instance v1, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    const/16 v3, 0x5622

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v1, v8, Lelectrum2/drums/electrum;->audioTrack:Landroid/media/AudioTrack;

    .line 6873
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    .line 6875
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    const-string v2, "Error Initializing Audio Stream: State not initialized \n"

    iput-object v2, v1, Lelectrum2/drums/electrum;->globalErrorString:Ljava/lang/String;

    .line 6877
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->patternHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    #getter for: Lelectrum2/drums/electrum;->GlobalErrorHandler:Ljava/lang/Runnable;
    invoke-static {v2}, Lelectrum2/drums/electrum;->access$12(Lelectrum2/drums/electrum;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7088
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lelectrum2/drums/electrum;->canStop:Z

    .line 7091
    .end local v6           #allocatesize:I
    .end local v11           #outdata:[S
    .end local v15           #minsize:I
    .end local v16           #slotcounter:I
    :goto_1
    return-void

    .line 6848
    .restart local v6       #allocatesize:I
    .restart local v11       #outdata:[S
    .restart local v15       #minsize:I
    .restart local v16       #slotcounter:I
    :cond_5
    mul-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 6887
    :catch_0
    move-exception v19

    .line 6889
    .local v19, u:Ljava/lang/Exception;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error Initializing Audio Stream: \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lelectrum2/drums/electrum;->globalErrorString:Ljava/lang/String;

    .line 6891
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->patternHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    #getter for: Lelectrum2/drums/electrum;->GlobalErrorHandler:Ljava/lang/Runnable;
    invoke-static {v2}, Lelectrum2/drums/electrum;->access$12(Lelectrum2/drums/electrum;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 7088
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lelectrum2/drums/electrum;->canStop:Z

    goto :goto_1

    .line 6903
    .end local v19           #u:Ljava/lang/Exception;
    :cond_6
    const/4 v12, 0x0

    .line 6904
    .local v12, datacounter:I
    const/4 v13, 0x0

    .line 6907
    .local v13, count:I
    const/4 v1, 0x1

    :try_start_3
    sput-boolean v1, Lelectrum2/drums/globalSounds;->patternlooped:Z

    .line 6911
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget-boolean v1, v1, Lelectrum2/drums/electrum;->CreatingSound:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v1, :cond_9

    .line 7088
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lelectrum2/drums/electrum;->canStop:Z

    goto :goto_1

    .line 6919
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget-boolean v1, v1, Lelectrum2/drums/electrum;->CreatingSound:Z

    if-eqz v1, :cond_8

    .line 6924
    const/4 v1, 0x0

    aput-short v1, v11, v12

    .line 6925
    add-int/lit8 v1, v12, 0x1

    const/4 v2, 0x0

    aput-short v2, v11, v1

    .line 6932
    sget-object v7, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    int-to-long v8, v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v10, v1, Lelectrum2/drums/electrum;->currentslot:I

    invoke-virtual/range {v7 .. v12}, Lelectrum2/drums/soundObj;->Tick(JI[SI)V

    .line 6933
    sget-object v7, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    int-to-long v8, v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v10, v1, Lelectrum2/drums/electrum;->currentslot:I

    invoke-virtual/range {v7 .. v12}, Lelectrum2/drums/soundObj;->Tick(JI[SI)V

    .line 6934
    sget-object v7, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    int-to-long v8, v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v10, v1, Lelectrum2/drums/electrum;->currentslot:I

    invoke-virtual/range {v7 .. v12}, Lelectrum2/drums/soundObj;->Tick(JI[SI)V

    .line 6935
    sget-object v7, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    int-to-long v8, v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v10, v1, Lelectrum2/drums/electrum;->currentslot:I

    invoke-virtual/range {v7 .. v12}, Lelectrum2/drums/soundObj;->Tick(JI[SI)V

    .line 6936
    sget-object v7, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    int-to-long v8, v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v10, v1, Lelectrum2/drums/electrum;->currentslot:I

    invoke-virtual/range {v7 .. v12}, Lelectrum2/drums/soundObj;->Tick(JI[SI)V

    .line 6937
    sget-object v7, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    int-to-long v8, v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v10, v1, Lelectrum2/drums/electrum;->currentslot:I

    invoke-virtual/range {v7 .. v12}, Lelectrum2/drums/soundObj;->Tick(JI[SI)V

    .line 6938
    sget-object v7, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    int-to-long v8, v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v10, v1, Lelectrum2/drums/electrum;->currentslot:I

    invoke-virtual/range {v7 .. v12}, Lelectrum2/drums/soundObj;->Tick(JI[SI)V

    .line 6939
    sget-object v7, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    int-to-long v8, v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v10, v1, Lelectrum2/drums/electrum;->currentslot:I

    invoke-virtual/range {v7 .. v12}, Lelectrum2/drums/soundObj;->Tick(JI[SI)V

    .line 6942
    add-int/lit8 v16, v16, 0x1

    .line 6946
    add-int/lit8 v12, v12, 0x2

    .line 6950
    add-int/lit8 v13, v13, 0x1

    .line 6957
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v1, v1, Lelectrum2/drums/electrum;->totalsamples:I

    if-lt v13, v1, :cond_a

    const/4 v13, 0x0

    .line 6960
    :cond_a
    sget v1, Lelectrum2/drums/electrum;->samplesperslot:I

    move/from16 v0, v16

    if-lt v0, v1, :cond_7

    .line 6964
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->audioTrack:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    sget v3, Lelectrum2/drums/electrum;->samplesperslot:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v11, v2, v3}, Landroid/media/AudioTrack;->write([SII)I

    .line 6970
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v2, v1, Lelectrum2/drums/electrum;->currentslot:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lelectrum2/drums/electrum;->currentslot:I

    .line 6973
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v1, v1, Lelectrum2/drums/electrum;->currentslot:I

    if-lez v1, :cond_b

    .line 6975
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget-boolean v1, v1, Lelectrum2/drums/electrum;->audiostarted:Z

    if-nez v1, :cond_b

    .line 6979
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 6980
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lelectrum2/drums/electrum;->audiostarted:Z

    .line 6990
    :cond_b
    const/16 v16, 0x0

    .line 6992
    const/4 v12, 0x0

    .line 6995
    sget-boolean v1, Lelectrum2/drums/globalSounds;->showslotlights:Z

    if-eqz v1, :cond_d

    .line 6997
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    move-object/from16 v0, p0

    iget-object v2, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v2, v2, Lelectrum2/drums/electrum;->currentslot:I

    sub-int v2, v2, v17

    iput v2, v1, Lelectrum2/drums/electrum;->currentslotlight:I

    .line 6999
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v1, v1, Lelectrum2/drums/electrum;->currentslotlight:I

    if-gez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    sget v2, Lelectrum2/drums/electrum;->numberofslots:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v3, v3, Lelectrum2/drums/electrum;->currentslotlight:I

    add-int/2addr v2, v3

    iput v2, v1, Lelectrum2/drums/electrum;->currentslotlight:I

    .line 7001
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->patternHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget-object v2, v2, Lelectrum2/drums/electrum;->UpdateSlotLights:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7007
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v1, v1, Lelectrum2/drums/electrum;->currentslot:I

    sget v2, Lelectrum2/drums/electrum;->numberofslots:I

    if-lt v1, v2, :cond_7

    .line 7011
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget-boolean v1, v1, Lelectrum2/drums/electrum;->PatternSequenceMode:Z

    if-eqz v1, :cond_11

    .line 7013
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v2, v1, Lelectrum2/drums/electrum;->patterncounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lelectrum2/drums/electrum;->patterncounter:I

    .line 7015
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    sget-object v2, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Lelectrum2/drums/electrum;->patternmultiplier:I

    .line 7017
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v1, v1, Lelectrum2/drums/electrum;->patterncounter:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v2, v2, Lelectrum2/drums/electrum;->patternmultiplier:I

    if-lt v1, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    const/4 v2, 0x0

    iput v2, v1, Lelectrum2/drums/electrum;->patterncounter:I

    .line 7023
    :cond_e
    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 7025
    new-instance v18, Ljava/lang/Integer;

    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v2, v2, Lelectrum2/drums/electrum;->patterncounter:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 7027
    .local v18, temppat:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lelectrum2/drums/electrum;->currentpattern:I

    .line 7030
    .end local v18           #temppat:Ljava/lang/Integer;
    :cond_f
    const/4 v1, 0x1

    sput-boolean v1, Lelectrum2/drums/globalSounds;->patternlooped:Z

    .line 7032
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v1, v1, Lelectrum2/drums/electrum;->currentpattern:I

    sput v1, Lelectrum2/drums/globalSounds;->playingpattern:I

    .line 7035
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    #calls: Lelectrum2/drums/electrum;->SetDrumsCurrentPattern()V
    invoke-static {v1}, Lelectrum2/drums/electrum;->access$2(Lelectrum2/drums/electrum;)V

    .line 7038
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->patternHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    #getter for: Lelectrum2/drums/electrum;->UpdatePattern:Ljava/lang/Runnable;
    invoke-static {v2}, Lelectrum2/drums/electrum;->access$10(Lelectrum2/drums/electrum;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7060
    :cond_10
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    const/4 v2, 0x0

    iput v2, v1, Lelectrum2/drums/electrum;->currentslot:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 7076
    .end local v6           #allocatesize:I
    .end local v11           #outdata:[S
    .end local v12           #datacounter:I
    .end local v13           #count:I
    .end local v15           #minsize:I
    .end local v16           #slotcounter:I
    :catch_1
    move-exception v14

    .line 7078
    .local v14, er:Ljava/lang/Exception;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error Playing Audio Stream: \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lelectrum2/drums/electrum;->globalErrorString:Ljava/lang/String;

    .line 7080
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->patternHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    #getter for: Lelectrum2/drums/electrum;->GlobalErrorHandler:Ljava/lang/Runnable;
    invoke-static {v2}, Lelectrum2/drums/electrum;->access$12(Lelectrum2/drums/electrum;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 7088
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lelectrum2/drums/electrum;->canStop:Z

    goto/16 :goto_1

    .line 7044
    .end local v14           #er:Ljava/lang/Exception;
    .restart local v6       #allocatesize:I
    .restart local v11       #outdata:[S
    .restart local v12       #datacounter:I
    .restart local v13       #count:I
    .restart local v15       #minsize:I
    .restart local v16       #slotcounter:I
    :cond_11
    :try_start_6
    sget-boolean v1, Lelectrum2/drums/globalSounds;->livemode:Z

    if-eqz v1, :cond_10

    .line 7046
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    sget v2, Lelectrum2/drums/globalSounds;->nextpattern:I

    iput v2, v1, Lelectrum2/drums/electrum;->currentpattern:I

    .line 7048
    const/4 v1, 0x1

    sput-boolean v1, Lelectrum2/drums/globalSounds;->patternlooped:Z

    .line 7050
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    iget v1, v1, Lelectrum2/drums/electrum;->currentpattern:I

    sput v1, Lelectrum2/drums/globalSounds;->playingpattern:I

    .line 7052
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    #calls: Lelectrum2/drums/electrum;->SetDrumsCurrentPattern()V
    invoke-static {v1}, Lelectrum2/drums/electrum;->access$2(Lelectrum2/drums/electrum;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 7087
    .end local v6           #allocatesize:I
    .end local v11           #outdata:[S
    .end local v12           #datacounter:I
    .end local v13           #count:I
    .end local v15           #minsize:I
    .end local v16           #slotcounter:I
    :catchall_0
    move-exception v1

    .line 7088
    move-object/from16 v0, p0

    iget-object v2, v0, Lelectrum2/drums/electrum$24;->this$0:Lelectrum2/drums/electrum;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lelectrum2/drums/electrum;->canStop:Z

    .line 7090
    throw v1

    .line 6735
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

    .line 6736
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

    .line 6737
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

    .line 6738
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

    .line 6739
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

    .line 6740
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

    .line 6741
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

    .line 6742
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

    .line 6764
    :array_8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 6765
    :array_9
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 6766
    :array_a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 6767
    :array_b
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 6768
    :array_c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 6769
    :array_d
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 6770
    :array_e
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 6771
    :array_f
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 6782
    :array_10
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 6783
    :array_11
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 6784
    :array_12
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 6785
    :array_13
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 6786
    :array_14
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 6787
    :array_15
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 6788
    :array_16
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 6789
    :array_17
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data
.end method
