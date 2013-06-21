.class Lelectrum2/drums/recordactivity$6;
.super Ljava/lang/Object;
.source "recordactivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/recordactivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/recordactivity;


# direct methods
.method constructor <init>(Lelectrum2/drums/recordactivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 234
    :try_start_0
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    sget v1, Lelectrum2/drums/recordactivity;->RECORD_TIME:I

    mul-int/lit16 v1, v1, 0x5622

    new-array v1, v1, [S

    iput-object v1, v0, Lelectrum2/drums/recordactivity;->soundbuffer:[S

    .line 237
    iget-object v9, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    sget v5, Lelectrum2/drums/recordactivity;->RECORD_TIME:I

    mul-int/lit16 v5, v5, 0x5622

    mul-int/lit8 v5, v5, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, v9, Lelectrum2/drums/recordactivity;->soundrecorder:Landroid/media/AudioRecord;

    .line 241
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v0, v0, Lelectrum2/drums/recordactivity;->soundrecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 243
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    const-string v1, "Recording..."

    iput-object v1, v0, Lelectrum2/drums/recordactivity;->statustext:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v0, v0, Lelectrum2/drums/recordactivity;->statushandler:Landroid/os/Handler;

    iget-object v1, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v1, v1, Lelectrum2/drums/recordactivity;->showstatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    sget v1, Lelectrum2/drums/recordactivity;->RECORD_TIME:I

    iput v1, v0, Lelectrum2/drums/recordactivity;->countdownval:I

    .line 247
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v0, v0, Lelectrum2/drums/recordactivity;->statushandler:Landroid/os/Handler;

    iget-object v1, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v1, v1, Lelectrum2/drums/recordactivity;->startcountdown:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    sget v0, Lelectrum2/drums/recordactivity;->RECORD_TIME:I

    mul-int/lit16 v0, v0, 0x5622

    mul-int/lit8 v8, v0, 0x2

    .line 255
    .local v8, totalbytesneeded:I
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v0, v0, Lelectrum2/drums/recordactivity;->soundrecorder:Landroid/media/AudioRecord;

    iget-object v1, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v1, v1, Lelectrum2/drums/recordactivity;->soundbuffer:[S

    const/4 v2, 0x0

    sget v3, Lelectrum2/drums/recordactivity;->RECORD_TIME:I

    mul-int/lit16 v3, v3, 0x5622

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v7

    .line 258
    .local v7, readbytes:I
    const/4 v0, -0x3

    if-eq v7, v0, :cond_0

    const/4 v0, -0x2

    if-eq v7, v0, :cond_0

    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    .line 262
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v0, v0, Lelectrum2/drums/recordactivity;->soundrecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 263
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v0, v0, Lelectrum2/drums/recordactivity;->soundrecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 265
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recording completed. Read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes of data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lelectrum2/drums/recordactivity;->statustext:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v0, v0, Lelectrum2/drums/recordactivity;->statushandler:Landroid/os/Handler;

    iget-object v1, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v1, v1, Lelectrum2/drums/recordactivity;->showstatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v7           #readbytes:I
    .end local v8           #totalbytesneeded:I
    :goto_0
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iput-boolean v10, v0, Lelectrum2/drums/recordactivity;->isRecording:Z

    .line 306
    return-void

    .line 272
    .restart local v7       #readbytes:I
    .restart local v8       #totalbytesneeded:I
    :cond_0
    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 275
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    const-string v1, "Error - ERROR_INVALID_OPERATION"

    iput-object v1, v0, Lelectrum2/drums/recordactivity;->statustext:Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v0, v0, Lelectrum2/drums/recordactivity;->statushandler:Landroid/os/Handler;

    iget-object v1, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v1, v1, Lelectrum2/drums/recordactivity;->showstatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 293
    .end local v7           #readbytes:I
    .end local v8           #totalbytesneeded:I
    :catch_0
    move-exception v6

    .line 298
    .local v6, e:Ljava/lang/Exception;
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lelectrum2/drums/recordactivity;->statustext:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v0, v0, Lelectrum2/drums/recordactivity;->statushandler:Landroid/os/Handler;

    iget-object v1, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v1, v1, Lelectrum2/drums/recordactivity;->showstatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 280
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v7       #readbytes:I
    .restart local v8       #totalbytesneeded:I
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    const-string v1, "Error - ERROR_BAD_VALUE"

    iput-object v1, v0, Lelectrum2/drums/recordactivity;->statustext:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v0, v0, Lelectrum2/drums/recordactivity;->statushandler:Landroid/os/Handler;

    iget-object v1, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v1, v1, Lelectrum2/drums/recordactivity;->showstatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 285
    :pswitch_2
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    const-string v1, "Error - ERROR_GENERAL_ERROR"

    iput-object v1, v0, Lelectrum2/drums/recordactivity;->statustext:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v0, v0, Lelectrum2/drums/recordactivity;->statushandler:Landroid/os/Handler;

    iget-object v1, p0, Lelectrum2/drums/recordactivity$6;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v1, v1, Lelectrum2/drums/recordactivity;->showstatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
