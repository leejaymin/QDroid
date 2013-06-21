.class Lcom/ui/LapseIt/capture/CaptureThread$2;
.super Ljava/lang/Object;
.source "CaptureThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/capture/CaptureThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/capture/CaptureThread;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/CaptureThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3c

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-boolean v1, v1, Lcom/ui/LapseIt/capture/CaptureThread;->isCapturing:Z

    if-nez v1, :cond_0

    .line 132
    return-void

    .line 108
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-boolean v1, v1, Lcom/ui/LapseIt/capture/CaptureThread;->isPaused:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;
    invoke-static {v1}, Lcom/ui/LapseIt/capture/CaptureThread;->access$0(Lcom/ui/LapseIt/capture/CaptureThread;)Lcom/ui/LapseIt/capture/CaptureView;

    move-result-object v1

    iget-object v1, v1, Lcom/ui/LapseIt/capture/CaptureView;->captureMenu:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-boolean v1, v1, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->isManual:Z

    if-eqz v1, :cond_2

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->captureLength:J
    invoke-static {v1}, Lcom/ui/LapseIt/capture/CaptureThread;->access$3(Lcom/ui/LapseIt/capture/CaptureThread;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->startedAt:J
    invoke-static {v6}, Lcom/ui/LapseIt/capture/CaptureThread;->access$4(Lcom/ui/LapseIt/capture/CaptureThread;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    #setter for: Lcom/ui/LapseIt/capture/CaptureThread;->captureLength:J
    invoke-static {v1, v2, v3}, Lcom/ui/LapseIt/capture/CaptureThread;->access$5(Lcom/ui/LapseIt/capture/CaptureThread;J)V

    .line 110
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/ui/LapseIt/capture/CaptureThread;->startedAt:J
    invoke-static {v1, v2, v3}, Lcom/ui/LapseIt/capture/CaptureThread;->access$6(Lcom/ui/LapseIt/capture/CaptureThread;J)V

    .line 112
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->captureLength:J
    invoke-static {v2}, Lcom/ui/LapseIt/capture/CaptureThread;->access$3(Lcom/ui/LapseIt/capture/CaptureThread;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    #setter for: Lcom/ui/LapseIt/capture/CaptureThread;->secsTimer:J
    invoke-static {v1, v2, v3}, Lcom/ui/LapseIt/capture/CaptureThread;->access$7(Lcom/ui/LapseIt/capture/CaptureThread;J)V

    .line 113
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->secsTimer:J
    invoke-static {v2}, Lcom/ui/LapseIt/capture/CaptureThread;->access$8(Lcom/ui/LapseIt/capture/CaptureThread;)J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    #setter for: Lcom/ui/LapseIt/capture/CaptureThread;->minTimer:J
    invoke-static {v1, v2, v3}, Lcom/ui/LapseIt/capture/CaptureThread;->access$9(Lcom/ui/LapseIt/capture/CaptureThread;J)V

    .line 114
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->minTimer:J
    invoke-static {v2}, Lcom/ui/LapseIt/capture/CaptureThread;->access$10(Lcom/ui/LapseIt/capture/CaptureThread;)J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    #setter for: Lcom/ui/LapseIt/capture/CaptureThread;->hourTimer:J
    invoke-static {v1, v2, v3}, Lcom/ui/LapseIt/capture/CaptureThread;->access$11(Lcom/ui/LapseIt/capture/CaptureThread;J)V

    .line 116
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->hourTimer:J
    invoke-static {v1}, Lcom/ui/LapseIt/capture/CaptureThread;->access$12(Lcom/ui/LapseIt/capture/CaptureThread;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 117
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->minTimer:J
    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureThread;->access$10(Lcom/ui/LapseIt/capture/CaptureThread;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ui/LapseIt/capture/CaptureThread;->fixZero(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->secsTimer:J
    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureThread;->access$8(Lcom/ui/LapseIt/capture/CaptureThread;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->minTimer:J
    invoke-static {v6}, Lcom/ui/LapseIt/capture/CaptureThread;->access$10(Lcom/ui/LapseIt/capture/CaptureThread;)J

    move-result-wide v6

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/ui/LapseIt/capture/CaptureThread;->fixZero(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/ui/LapseIt/capture/CaptureThread;->totalTime:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/ui/LapseIt/capture/CaptureThread;->access$13(Lcom/ui/LapseIt/capture/CaptureThread;Ljava/lang/String;)V

    .line 122
    :goto_1
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;
    invoke-static {v1}, Lcom/ui/LapseIt/capture/CaptureThread;->access$0(Lcom/ui/LapseIt/capture/CaptureThread;)Lcom/ui/LapseIt/capture/CaptureView;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->updateElapsedInfo:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/ui/LapseIt/capture/CaptureThread;->access$14(Lcom/ui/LapseIt/capture/CaptureThread;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ui/LapseIt/capture/CaptureView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 125
    :cond_2
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 119
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->hourTimer:J
    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureThread;->access$12(Lcom/ui/LapseIt/capture/CaptureThread;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ui/LapseIt/capture/CaptureThread;->fixZero(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->minTimer:J
    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureThread;->access$10(Lcom/ui/LapseIt/capture/CaptureThread;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->hourTimer:J
    invoke-static {v6}, Lcom/ui/LapseIt/capture/CaptureThread;->access$12(Lcom/ui/LapseIt/capture/CaptureThread;)J

    move-result-wide v6

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/ui/LapseIt/capture/CaptureThread;->fixZero(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->secsTimer:J
    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureThread;->access$8(Lcom/ui/LapseIt/capture/CaptureThread;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/ui/LapseIt/capture/CaptureThread$2;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->minTimer:J
    invoke-static {v6}, Lcom/ui/LapseIt/capture/CaptureThread;->access$10(Lcom/ui/LapseIt/capture/CaptureThread;)J

    move-result-wide v6

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/ui/LapseIt/capture/CaptureThread;->fixZero(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/ui/LapseIt/capture/CaptureThread;->totalTime:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/ui/LapseIt/capture/CaptureThread;->access$13(Lcom/ui/LapseIt/capture/CaptureThread;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
