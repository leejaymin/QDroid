.class Lcom/madvil/core/DownloadService$ServiceWorker;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/madvil/core/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madvil/core/DownloadService;

.field private whatDownload:Lcom/madvil/core/SimpleDownload;


# direct methods
.method constructor <init>(Lcom/madvil/core/DownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/madvil/core/DownloadService$ServiceWorker;->this$0:Lcom/madvil/core/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWhatDownload()Lcom/madvil/core/SimpleDownload;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/madvil/core/DownloadService$ServiceWorker;->whatDownload:Lcom/madvil/core/SimpleDownload;

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 247
    :try_start_0
    iget-object v2, p0, Lcom/madvil/core/DownloadService$ServiceWorker;->whatDownload:Lcom/madvil/core/SimpleDownload;

    invoke-static {v2}, Lcom/madvil/core/Downloading;->downloadSong(Lcom/madvil/core/SimpleDownload;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :try_start_1
    iget-object v2, p0, Lcom/madvil/core/DownloadService$ServiceWorker;->whatDownload:Lcom/madvil/core/SimpleDownload;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/madvil/core/SimpleDownload;->setToDeleteFromAdapter(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 256
    :try_start_2
    iget-object v2, p0, Lcom/madvil/core/DownloadService$ServiceWorker;->whatDownload:Lcom/madvil/core/SimpleDownload;

    if-eqz v2, :cond_0

    .line 257
    sget-object v2, Lcom/madvil/core/DownloadService;->activeDownloads:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/madvil/core/DownloadService$ServiceWorker;->whatDownload:Lcom/madvil/core/SimpleDownload;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 258
    iget-object v2, p0, Lcom/madvil/core/DownloadService$ServiceWorker;->this$0:Lcom/madvil/core/DownloadService;

    #calls: Lcom/madvil/core/DownloadService;->nextFromQueue()V
    invoke-static {v2}, Lcom/madvil/core/DownloadService;->access$0(Lcom/madvil/core/DownloadService;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 250
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 254
    :try_start_4
    iget-object v2, p0, Lcom/madvil/core/DownloadService$ServiceWorker;->whatDownload:Lcom/madvil/core/SimpleDownload;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/madvil/core/SimpleDownload;->setToDeleteFromAdapter(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 256
    :try_start_5
    iget-object v2, p0, Lcom/madvil/core/DownloadService$ServiceWorker;->whatDownload:Lcom/madvil/core/SimpleDownload;

    if-eqz v2, :cond_0

    .line 257
    sget-object v2, Lcom/madvil/core/DownloadService;->activeDownloads:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/madvil/core/DownloadService$ServiceWorker;->whatDownload:Lcom/madvil/core/SimpleDownload;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 258
    iget-object v2, p0, Lcom/madvil/core/DownloadService$ServiceWorker;->this$0:Lcom/madvil/core/DownloadService;

    #calls: Lcom/madvil/core/DownloadService;->nextFromQueue()V
    invoke-static {v2}, Lcom/madvil/core/DownloadService;->access$0(Lcom/madvil/core/DownloadService;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 260
    :catch_1
    move-exception v2

    goto :goto_0

    .line 251
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 254
    :try_start_6
    iget-object v3, p0, Lcom/madvil/core/DownloadService$ServiceWorker;->whatDownload:Lcom/madvil/core/SimpleDownload;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/madvil/core/SimpleDownload;->setToDeleteFromAdapter(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 256
    :try_start_7
    iget-object v3, p0, Lcom/madvil/core/DownloadService$ServiceWorker;->whatDownload:Lcom/madvil/core/SimpleDownload;

    if-eqz v3, :cond_1

    .line 257
    sget-object v3, Lcom/madvil/core/DownloadService;->activeDownloads:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/madvil/core/DownloadService$ServiceWorker;->whatDownload:Lcom/madvil/core/SimpleDownload;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 258
    iget-object v3, p0, Lcom/madvil/core/DownloadService$ServiceWorker;->this$0:Lcom/madvil/core/DownloadService;

    #calls: Lcom/madvil/core/DownloadService;->nextFromQueue()V
    invoke-static {v3}, Lcom/madvil/core/DownloadService;->access$0(Lcom/madvil/core/DownloadService;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 265
    :cond_1
    :goto_1
    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 267
    :catch_2
    move-exception v1

    .line 268
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 262
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    goto :goto_0

    .line 260
    :catch_4
    move-exception v2

    goto :goto_0

    .line 262
    :catch_5
    move-exception v3

    goto :goto_1

    .line 260
    :catch_6
    move-exception v3

    goto :goto_1

    .line 262
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_7
    move-exception v2

    goto :goto_0
.end method

.method public setWhatDownload(Lcom/madvil/core/SimpleDownload;)V
    .locals 0
    .parameter "whatDownload"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/madvil/core/DownloadService$ServiceWorker;->whatDownload:Lcom/madvil/core/SimpleDownload;

    .line 275
    return-void
.end method
