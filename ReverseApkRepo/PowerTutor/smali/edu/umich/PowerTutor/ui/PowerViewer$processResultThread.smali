.class Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;
.super Ljava/lang/Thread;
.source "PowerViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/PowerViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "processResultThread"
.end annotation


# instance fields
.field AudioPower:[I

.field CpuPower:[I

.field GpsPower:[I

.field LedPower:[I

.field ThreegPower:[I

.field TotalPower:[I

.field WiFiPower:[I

.field mValue:I

.field final synthetic this$0:Ledu/umich/PowerTutor/ui/PowerViewer;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/PowerViewer;)V
    .locals 1
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 440
    const/4 v0, 0x0

    iput v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->mValue:I

    .line 443
    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I
    invoke-static {p1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$1(Ledu/umich/PowerTutor/ui/PowerViewer;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->TotalPower:[I

    .line 444
    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I
    invoke-static {p1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$1(Ledu/umich/PowerTutor/ui/PowerViewer;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->LedPower:[I

    .line 445
    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I
    invoke-static {p1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$1(Ledu/umich/PowerTutor/ui/PowerViewer;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->CpuPower:[I

    .line 446
    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I
    invoke-static {p1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$1(Ledu/umich/PowerTutor/ui/PowerViewer;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->WiFiPower:[I

    .line 447
    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I
    invoke-static {p1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$1(Ledu/umich/PowerTutor/ui/PowerViewer;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->ThreegPower:[I

    .line 448
    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I
    invoke-static {p1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$1(Ledu/umich/PowerTutor/ui/PowerViewer;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->GpsPower:[I

    .line 449
    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I
    invoke-static {p1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$1(Ledu/umich/PowerTutor/ui/PowerViewer;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->AudioPower:[I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 458
    :goto_0
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$3(Ledu/umich/PowerTutor/ui/PowerViewer;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    :try_start_0
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$3(Ledu/umich/PowerTutor/ui/PowerViewer;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$1(Ledu/umich/PowerTutor/ui/PowerViewer;)I

    move-result v1

    .line 469
    const/4 v2, -0x1

    const/4 v3, -0x1

    .line 468
    invoke-interface {v0, v1, v2, v3}, Ledu/umich/PowerTutor/service/ICounterService;->getComponentHistory(III)[I

    move-result-object v0

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->TotalPower:[I

    .line 470
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$3(Ledu/umich/PowerTutor/ui/PowerViewer;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$1(Ledu/umich/PowerTutor/ui/PowerViewer;)I

    move-result v1

    .line 471
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 470
    invoke-interface {v0, v1, v2, v3}, Ledu/umich/PowerTutor/service/ICounterService;->getComponentHistory(III)[I

    move-result-object v0

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->LedPower:[I

    .line 472
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$3(Ledu/umich/PowerTutor/ui/PowerViewer;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$1(Ledu/umich/PowerTutor/ui/PowerViewer;)I

    move-result v1

    .line 473
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 472
    invoke-interface {v0, v1, v2, v3}, Ledu/umich/PowerTutor/service/ICounterService;->getComponentHistory(III)[I

    move-result-object v0

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->CpuPower:[I

    .line 474
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$3(Ledu/umich/PowerTutor/ui/PowerViewer;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$1(Ledu/umich/PowerTutor/ui/PowerViewer;)I

    move-result v1

    .line 475
    const/4 v2, 0x2

    const/4 v3, -0x1

    .line 474
    invoke-interface {v0, v1, v2, v3}, Ledu/umich/PowerTutor/service/ICounterService;->getComponentHistory(III)[I

    move-result-object v0

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->WiFiPower:[I

    .line 476
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$3(Ledu/umich/PowerTutor/ui/PowerViewer;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$1(Ledu/umich/PowerTutor/ui/PowerViewer;)I

    move-result v1

    .line 477
    const/4 v2, 0x3

    const/4 v3, -0x1

    .line 476
    invoke-interface {v0, v1, v2, v3}, Ledu/umich/PowerTutor/service/ICounterService;->getComponentHistory(III)[I

    move-result-object v0

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->ThreegPower:[I

    .line 478
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$3(Ledu/umich/PowerTutor/ui/PowerViewer;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$1(Ledu/umich/PowerTutor/ui/PowerViewer;)I

    move-result v1

    .line 479
    const/4 v2, 0x4

    const/4 v3, -0x1

    .line 478
    invoke-interface {v0, v1, v2, v3}, Ledu/umich/PowerTutor/service/ICounterService;->getComponentHistory(III)[I

    move-result-object v0

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->GpsPower:[I

    .line 480
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$3(Ledu/umich/PowerTutor/ui/PowerViewer;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$1(Ledu/umich/PowerTutor/ui/PowerViewer;)I

    move-result v1

    .line 481
    const/4 v2, 0x5

    const/4 v3, -0x1

    .line 480
    invoke-interface {v0, v1, v2, v3}, Ledu/umich/PowerTutor/service/ICounterService;->getComponentHistory(III)[I

    move-result-object v0

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->AudioPower:[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 486
    :goto_1
    const-string v0, "PowerViewer"

    const-string v1, "processResult information 6 pass"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_2
    iget v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->mValue:I

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$1(Ledu/umich/PowerTutor/ui/PowerViewer;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 511
    return-void

    .line 460
    :cond_0
    const-wide/16 v0, 0x1

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 461
    :catch_0
    move-exception v9

    .line 463
    .local v9, e:Ljava/lang/InterruptedException;
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 482
    .end local v9           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v9

    .line 484
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 490
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_1
    iget v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->mValue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->mValue:I

    .line 492
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    iget-object v0, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 493
    .local v11, msg:Landroid/os/Message;
    iput v13, v11, Landroid/os/Message;->what:I

    .line 494
    iget v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->mValue:I

    iput v0, v11, Landroid/os/Message;->arg1:I

    .line 496
    :try_start_2
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->SeletedPackageName:Ljava/lang/String;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$9(Ledu/umich/PowerTutor/ui/PowerViewer;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->TotalPower:[I

    iget v3, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->mValue:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->LedPower:[I

    iget v4, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->mValue:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    .line 497
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->CpuPower:[I

    iget v5, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->mValue:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->WiFiPower:[I

    iget v6, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->mValue:I

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    .line 498
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->ThreegPower:[I

    iget v7, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->mValue:I

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    iget-object v7, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->GpsPower:[I

    iget v8, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->mValue:I

    add-int/lit8 v8, v8, -0x1

    aget v7, v7, v8

    .line 499
    iget-object v8, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->AudioPower:[I

    iget v12, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->mValue:I

    add-int/lit8 v12, v12, -0x1

    aget v8, v8, v12

    .line 496
    #calls: Ledu/umich/PowerTutor/ui/PowerViewer;->sendData(Ljava/lang/String;IIIIIII)Ljava/lang/String;
    invoke-static/range {v0 .. v8}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$10(Ledu/umich/PowerTutor/ui/PowerViewer;Ljava/lang/String;IIIIIII)Ljava/lang/String;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 509
    :goto_3
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    iget-object v0, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 502
    :catch_2
    move-exception v10

    .line 504
    .local v10, e1:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v10}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_3

    .line 505
    .end local v10           #e1:Lorg/apache/http/client/ClientProtocolException;
    :catch_3
    move-exception v10

    .line 507
    .local v10, e1:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
