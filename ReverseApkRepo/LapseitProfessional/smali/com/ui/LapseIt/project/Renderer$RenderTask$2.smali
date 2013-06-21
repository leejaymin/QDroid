.class Lcom/ui/LapseIt/project/Renderer$RenderTask$2;
.super Ljava/lang/Object;
.source "Renderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/Renderer$RenderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/project/Renderer$RenderTask;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/Renderer$RenderTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask$2;->this$1:Lcom/ui/LapseIt/project/Renderer$RenderTask;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 387
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask$2;->this$1:Lcom/ui/LapseIt/project/Renderer$RenderTask;

    #getter for: Lcom/ui/LapseIt/project/Renderer$RenderTask;->renderIndex:I
    invoke-static {v10}, Lcom/ui/LapseIt/project/Renderer$RenderTask;->access$5(Lcom/ui/LapseIt/project/Renderer$RenderTask;)I

    move-result v10

    int-to-double v10, v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask$2;->this$1:Lcom/ui/LapseIt/project/Renderer$RenderTask;

    #getter for: Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;
    invoke-static {v12}, Lcom/ui/LapseIt/project/Renderer$RenderTask;->access$6(Lcom/ui/LapseIt/project/Renderer$RenderTask;)Lcom/ui/LapseIt/project/Renderer;

    move-result-object v12

    #getter for: Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;
    invoke-static {v12}, Lcom/ui/LapseIt/project/Renderer;->access$1(Lcom/ui/LapseIt/project/Renderer;)Landroid/app/ProgressDialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/ProgressDialog;->getMax()I

    move-result v12

    int-to-double v12, v12

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4059

    mul-double v3, v10, v12

    .line 389
    .local v3, perc:D
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask$2;->this$1:Lcom/ui/LapseIt/project/Renderer$RenderTask;

    #getter for: Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;
    invoke-static {v12}, Lcom/ui/LapseIt/project/Renderer$RenderTask;->access$6(Lcom/ui/LapseIt/project/Renderer$RenderTask;)Lcom/ui/LapseIt/project/Renderer;

    move-result-object v12

    #getter for: Lcom/ui/LapseIt/project/Renderer;->renderBegin:J
    invoke-static {v12}, Lcom/ui/LapseIt/project/Renderer;->access$2(Lcom/ui/LapseIt/project/Renderer;)J

    move-result-wide v12

    sub-long v1, v10, v12

    .line 392
    .local v1, currentTime:J
    long-to-float v10, v1

    double-to-float v11, v3

    div-float v9, v10, v11

    .line 393
    .local v9, timePerPerc:F
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    rsub-int/lit8 v7, v10, 0x64

    .line 394
    .local v7, remainingPerc:I
    int-to-float v10, v7

    mul-float/2addr v10, v9

    float-to-long v5, v10

    .line 396
    .local v5, remainingMilli:J
    const-string v10, "%d min and %d sec left"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 397
    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v13

    const-wide/16 v15, 0x3c

    div-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 398
    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v13

    const-wide/16 v15, 0x3c

    rem-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    .line 396
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 400
    .local v8, time:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask$2;->this$1:Lcom/ui/LapseIt/project/Renderer$RenderTask;

    #getter for: Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;
    invoke-static {v10}, Lcom/ui/LapseIt/project/Renderer$RenderTask;->access$6(Lcom/ui/LapseIt/project/Renderer$RenderTask;)Lcom/ui/LapseIt/project/Renderer;

    move-result-object v10

    #getter for: Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;
    invoke-static {v10}, Lcom/ui/LapseIt/project/Renderer;->access$1(Lcom/ui/LapseIt/project/Renderer;)Landroid/app/ProgressDialog;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 401
    return-void
.end method
