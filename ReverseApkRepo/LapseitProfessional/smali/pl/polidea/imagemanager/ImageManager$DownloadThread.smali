.class final Lpl/polidea/imagemanager/ImageManager$DownloadThread;
.super Ljava/lang/Thread;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/polidea/imagemanager/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$0()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Lpl/polidea/imagemanager/ImageManager$DownloadThread;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    invoke-direct {p0}, Lpl/polidea/imagemanager/ImageManager$DownloadThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 164
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$1()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Image downloading thread started"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    const/4 v2, 0x0

    .line 174
    .local v2, exit:Z
    :goto_0
    const/4 v3, 0x0

    .line 177
    .local v3, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$7()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$8()Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/net/Uri;

    move-object v3, v0

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :try_start_1
    #calls: Lpl/polidea/imagemanager/ImageManager;->getFilenameForUri(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v3}, Lpl/polidea/imagemanager/ImageManager;->access$9(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lpl/polidea/imagemanager/ImageManager;->downloadImage(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    :cond_1
    :goto_1
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$7()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 201
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$1()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Image downloading thread ended"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_2
    return-void

    .line 189
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 192
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$1()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error while downloading image from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
