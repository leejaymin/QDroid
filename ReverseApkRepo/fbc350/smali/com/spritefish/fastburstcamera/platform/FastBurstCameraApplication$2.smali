.class Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;
.super Ljava/lang/Object;
.source "FastBurstCameraApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->initialize(Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 300
    .line 303
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->recorderStateHandler:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$0(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecordMode;->NORMAL:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$1(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spritefish/camera/memory/NewByteArrayManager;->hasFreeBuffer()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    .line 310
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->currentWritingByteArray:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$2(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getWriteQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spritefish/camera/memory/ByteArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->currentWritingByteArray:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$2(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/spritefish/camera/memory/ByteArray;

    .line 313
    .local v9, arr:Lcom/spritefish/camera/memory/ByteArray;
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->currentWritingByteArray:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$2(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isUltraVersion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 321
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v9}, Lcom/spritefish/camera/memory/ByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {v9}, Lcom/spritefish/camera/memory/ByteArray;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v9}, Lcom/spritefish/camera/memory/ByteArray;->getRotation()Lcom/spritefish/camera/RotationManager$Rotation;

    move-result-object v4

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v6}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isUltraVersion()Z

    move-result v5

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->rgbHandler:Lcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;
    invoke-static {v6}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$4(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Lcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;

    move-result-object v6

    invoke-virtual {v9}, Lcom/spritefish/camera/memory/ByteArray;->getTag()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->writeYuvAsJpg([BJLcom/spritefish/camera/RotationManager$Rotation;ZLcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v0 .. v7}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$5(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;[BJLcom/spritefish/camera/RotationManager$Rotation;ZLcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 327
    .local v5, fullpath:Ljava/lang/String;
    :goto_1
    invoke-static {v5}, Lcom/spritefish/camera/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$7(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    move-result-object v0

    invoke-virtual {v9}, Lcom/spritefish/camera/memory/ByteArray;->getBurstId()J

    move-result-wide v1

    invoke-virtual {v9}, Lcom/spritefish/camera/memory/ByteArray;->getTimestamp()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->addPicture(JJLjava/lang/String;)J

    move-result-wide v12

    .line 333
    .local v12, lastId:J
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 334
    .local v11, i:Landroid/content/Intent;
    const-string v0, "com.spritefish.fastburstcamera.newpicture"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string v0, "burstid"

    invoke-virtual {v9}, Lcom/spritefish/camera/memory/ByteArray;->getBurstId()J

    move-result-wide v1

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 336
    const-string v0, "pictureid"

    invoke-virtual {v11, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 337
    const-string v0, "resolution"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$8(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$9(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v0, v11}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    .end local v5           #fullpath:Ljava/lang/String;
    .end local v11           #i:Landroid/content/Intent;
    .end local v12           #lastId:J
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->currentWritingByteArray:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$2(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 349
    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getCameraSetup()Lcom/spritefish/fastburstcamera/core/CameraSetupApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/spritefish/fastburstcamera/core/CameraSetupApi;->useDirectBuffers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->activePreviewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$3(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v1

    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->currentWritingByteArray:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$2(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spritefish/camera/memory/ByteArray;

    invoke-virtual {v0}, Lcom/spritefish/camera/memory/ByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/spritefish/camera/controls/PreviewControl;->returnUsedBuffer([B)V

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$1(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v1

    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->currentWritingByteArray:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$2(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spritefish/camera/memory/ByteArray;

    invoke-virtual {v1, v0}, Lcom/spritefish/camera/memory/NewByteArrayManager;->returnBuffer(Lcom/spritefish/camera/memory/ByteArray;)V

    .line 353
    :cond_3
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->currentWritingByteArray:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$2(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 357
    .end local v9           #arr:Lcom/spritefish/camera/memory/ByteArray;
    :catch_0
    move-exception v10

    .line 359
    .local v10, e:Ljava/lang/Exception;
    const-string v0, "insta"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "breaking writer thread due to : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 305
    .end local v10           #e:Ljava/lang/Exception;
    :cond_4
    const-wide/16 v0, 0x64

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 323
    .restart local v9       #arr:Lcom/spritefish/camera/memory/ByteArray;
    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v9}, Lcom/spritefish/camera/memory/ByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {v9}, Lcom/spritefish/camera/memory/ByteArray;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v9}, Lcom/spritefish/camera/memory/ByteArray;->getRotation()Lcom/spritefish/camera/RotationManager$Rotation;

    move-result-object v4

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v6}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isUltraVersion()Z

    move-result v5

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->rgbHandler:Lcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;
    invoke-static {v6}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$4(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Lcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;

    move-result-object v6

    invoke-virtual {v9}, Lcom/spritefish/camera/memory/ByteArray;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9}, Lcom/spritefish/camera/memory/ByteArray;->getCameraId()I

    move-result v8

    #calls: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->writeYuvAsJpgPlatform([BJLcom/spritefish/camera/RotationManager$Rotation;ZLcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;Ljava/lang/String;I)Ljava/lang/String;
    invoke-static/range {v0 .. v8}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$6(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;[BJLcom/spritefish/camera/RotationManager$Rotation;ZLcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .restart local v5       #fullpath:Ljava/lang/String;
    goto/16 :goto_1

    .line 344
    .end local v5           #fullpath:Ljava/lang/String;
    .end local v9           #arr:Lcom/spritefish/camera/memory/ByteArray;
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 347
    :try_start_5
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->currentWritingByteArray:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$2(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 349
    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getCameraSetup()Lcom/spritefish/fastburstcamera/core/CameraSetupApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/spritefish/fastburstcamera/core/CameraSetupApi;->useDirectBuffers()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 350
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->activePreviewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$3(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v2

    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->currentWritingByteArray:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$2(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spritefish/camera/memory/ByteArray;

    invoke-virtual {v0}, Lcom/spritefish/camera/memory/ByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/spritefish/camera/controls/PreviewControl;->returnUsedBuffer([B)V

    .line 351
    :cond_6
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$1(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v2

    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->currentWritingByteArray:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$2(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spritefish/camera/memory/ByteArray;

    invoke-virtual {v2, v0}, Lcom/spritefish/camera/memory/NewByteArrayManager;->returnBuffer(Lcom/spritefish/camera/memory/ByteArray;)V

    .line 353
    :cond_7
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;->this$0:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    #getter for: Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->currentWritingByteArray:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->access$2(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 354
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method
