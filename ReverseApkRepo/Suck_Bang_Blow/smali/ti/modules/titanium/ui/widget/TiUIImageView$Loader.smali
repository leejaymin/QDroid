.class Lti/modules/titanium/ui/widget/TiUIImageView$Loader;
.super Ljava/lang/Object;
.source "TiUIImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Loader"
.end annotation


# instance fields
.field private bitmapQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;",
            ">;"
        }
    .end annotation
.end field

.field private repeatIndex:I

.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIImageView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V
    .locals 2
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->repeatIndex:I

    .line 244
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->bitmapQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 245
    return-void
.end method

.method private getCounter()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1000(Lti/modules/titanium/ui/widget/TiUIImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 272
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getStart()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 260
    :goto_0
    return v0

    .line 259
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1000(Lti/modules/titanium/ui/widget/TiUIImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 260
    goto :goto_0
.end method

.method private isNotFinalFrame(I)Z
    .locals 3
    .parameter "frame"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 267
    :goto_0
    return v0

    .line 266
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1000(Lti/modules/titanium/ui/widget/TiUIImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private isRepeating()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 249
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->getRepeatCount()I

    move-result v0

    .line 250
    .local v0, repeatCount:I
    if-gtz v0, :cond_0

    move v1, v2

    .line 253
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->repeatIndex:I

    if-ge v1, v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBitmapQueue()Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->bitmapQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v11, "TiUIImageView"

    .line 277
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v6

    if-nez v6, :cond_0

    .line 278
    const-string v6, "TiUIImageView"

    const-string v6, "Multi-image loader exiting early because proxy has been gc\'d"

    invoke-static {v11, v6}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    .line 282
    .local v1, context:Lorg/appcelerator/titanium/TiContext;
    if-nez v1, :cond_1

    .line 283
    const-string v6, "TiUIImageView"

    const-string v6, "Multi-image loader exiting early because context has been gc\'d"

    invoke-static {v11, v6}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_1
    iput v12, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->repeatIndex:I

    .line 287
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1100(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 288
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #setter for: Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z
    invoke-static {v6, v12}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1202(Lti/modules/titanium/ui/widget/TiUIImageView;Z)Z

    .line 289
    :cond_2
    :goto_1
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->isRepeating()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 290
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_4

    .line 324
    :cond_3
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1100(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 291
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 292
    .local v4, time:J
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->getStart()I

    move-result v3

    .local v3, j:I
    :goto_2
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->isNotFinalFrame(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 293
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->bitmapQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1200(Lti/modules/titanium/ui/widget/TiUIImageView;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 294
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    const-string v7, "images"

    #calls: Lti/modules/titanium/ui/widget/TiUIImageView;->fireLoad(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1300(Lti/modules/titanium/ui/widget/TiUIImageView;Ljava/lang/String;)V

    .line 295
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #setter for: Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z
    invoke-static {v6, v13}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1202(Lti/modules/titanium/ui/widget/TiUIImageView;Z)Z

    .line 297
    :cond_5
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1400(Lti/modules/titanium/ui/widget/TiUIImageView;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_8

    .line 299
    :try_start_0
    const-string v6, "TiUIImageView"

    const-string v7, "Pausing"

    invoke-static {v6, v7}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1500(Lti/modules/titanium/ui/widget/TiUIImageView;)Lti/modules/titanium/ui/widget/TiUIImageView$Loader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-nez v6, :cond_7

    .line 320
    :cond_6
    invoke-static {}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$100()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 321
    const-string v6, "TiUIImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TIME TO LOAD FRAMES: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 301
    :cond_7
    :try_start_1
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1500(Lti/modules/titanium/ui/widget/TiUIImageView;)Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    move-result-object v6

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 302
    :try_start_2
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;
    invoke-static {v7}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1500(Lti/modules/titanium/ui/widget/TiUIImageView;)Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V

    .line 303
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    :try_start_3
    const-string v6, "TiUIImageView"

    const-string v7, "Waking from pause."

    invoke-static {v6, v7}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 309
    :cond_8
    :goto_3
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1100(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 312
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 314
    .local v0, b:Landroid/graphics/Bitmap;
    :try_start_4
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->bitmapQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v7, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;

    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {v7, v8, v0, v3}, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/Bitmap;I)V

    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-virtual {v8}, Lti/modules/titanium/ui/widget/TiUIImageView;->getDuration()D

    move-result-wide v8

    double-to-int v8, v8

    iget-object v9, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    mul-int/2addr v8, v9

    int-to-long v8, v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v9, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 318
    :goto_4
    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->repeatIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->repeatIndex:I

    .line 292
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->getCounter()I

    move-result v6

    add-int/2addr v3, v6

    goto/16 :goto_2

    .line 303
    .end local v0           #b:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 305
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 306
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v6, "TiUIImageView"

    const-string v6, "Interrupted from paused state."

    invoke-static {v11, v6}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 315
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 316
    .restart local v2       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4
.end method
