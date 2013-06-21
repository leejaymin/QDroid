.class final Lpl/polidea/imagemanager/ImageManager$LoadThread;
.super Ljava/lang/Thread;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/polidea/imagemanager/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$0()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lpl/polidea/imagemanager/ImageManager$LoadThread;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lpl/polidea/imagemanager/ImageManager$LoadThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 79
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$1()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 81
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$0()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Image loading thread started"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    const/4 v4, 0x0

    .line 89
    .local v4, exit:Z
    :goto_0
    const/4 v6, 0x0

    .line 92
    .local v6, req:Lpl/polidea/imagemanager/ImageManagerRequest;
    :try_start_0
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$2()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$3()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lpl/polidea/imagemanager/ImageManagerRequest;

    move-object v6, v0

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    const/4 v7, 0x0

    :try_start_1
    invoke-static {v6, v7}, Lpl/polidea/imagemanager/ImageManager;->loadImage(Lpl/polidea/imagemanager/ImageManagerRequest;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 105
    .local v1, bmp:Landroid/graphics/Bitmap;
    #calls: Lpl/polidea/imagemanager/ImageManager;->isImageLoaded(Lpl/polidea/imagemanager/ImageManagerRequest;)Z
    invoke-static {v6}, Lpl/polidea/imagemanager/ImageManager;->access$4(Lpl/polidea/imagemanager/ImageManagerRequest;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 107
    #calls: Lpl/polidea/imagemanager/ImageManager;->getLoadedBitmap(Lpl/polidea/imagemanager/ImageManagerRequest;)Landroid/graphics/Bitmap;
    invoke-static {v6}, Lpl/polidea/imagemanager/ImageManager;->access$5(Lpl/polidea/imagemanager/ImageManagerRequest;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 108
    .local v5, prevbmp:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 110
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$1()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 112
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unloading preview image "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 117
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$1()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 119
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Preview image "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " unloaded"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v5           #prevbmp:Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$6()Ljava/util/Map;

    move-result-object v7

    new-instance v8, Lpl/polidea/imagemanager/ImageManager$LoadedBitmap;

    iget-boolean v9, v6, Lpl/polidea/imagemanager/ImageManagerRequest;->strong:Z

    invoke-direct {v8, v1, v9}, Lpl/polidea/imagemanager/ImageManager$LoadedBitmap;-><init>(Landroid/graphics/Bitmap;Z)V

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    :goto_1
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$2()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 142
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$1()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 144
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$0()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Image loading thread ended"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_3
    return-void

    .line 127
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 130
    .local v3, err:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$1()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 132
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error while loading full image "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Out of memory."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->logImageManagerStatus()V

    .line 136
    :cond_4
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->cleanUp()V

    goto :goto_1
.end method
