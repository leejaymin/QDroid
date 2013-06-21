.class Lcom/madvil/core/DownloadService$2;
.super Landroid/os/Handler;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/core/DownloadService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madvil/core/DownloadService;


# direct methods
.method constructor <init>(Lcom/madvil/core/DownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/madvil/core/DownloadService$2;->this$0:Lcom/madvil/core/DownloadService;

    .line 64
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 68
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/madvil/core/DownloadService;->activeDownloadsForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 72
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/madvil/core/DownloadService;->activeDownloads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 95
    :cond_0
    :try_start_0
    sget-object v3, Lcom/madvil/ms/MusicToPhoneActivity;->singletone:Lcom/madvil/ms/MusicToPhoneActivity;

    invoke-virtual {v3}, Lcom/madvil/ms/MusicToPhoneActivity;->updateDownloadsFromService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_2
    return-void

    .line 69
    :cond_1
    sget-object v3, Lcom/madvil/core/DownloadService;->activeDownloadsForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/madvil/core/SimpleDownloadForAdapter;

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownloadForAdapter;->setFree()V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_2
    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    .line 79
    :try_start_1
    sget-object v3, Lcom/madvil/core/DownloadService;->activeDownloadsForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/madvil/core/SimpleDownloadForAdapter;

    .line 80
    .local v2, sdfa:Lcom/madvil/core/SimpleDownloadForAdapter;
    sget-object v3, Lcom/madvil/core/DownloadService;->activeDownloads:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/madvil/core/SimpleDownload;

    .line 82
    .local v1, sd:Lcom/madvil/core/SimpleDownload;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/madvil/core/SimpleDownloadForAdapter;->setFree(Z)V

    .line 83
    invoke-virtual {v1}, Lcom/madvil/core/SimpleDownload;->getDownloaded()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/madvil/core/SimpleDownloadForAdapter;->setDownloaded(I)V

    .line 84
    invoke-virtual {v1}, Lcom/madvil/core/SimpleDownload;->getSizeInBytes()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/madvil/core/SimpleDownloadForAdapter;->setSizeInBytes(I)V

    .line 85
    invoke-virtual {v1}, Lcom/madvil/core/SimpleDownload;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/madvil/core/SimpleDownloadForAdapter;->setProgress(I)V

    .line 86
    invoke-virtual {v1}, Lcom/madvil/core/SimpleDownload;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/madvil/core/SimpleDownloadForAdapter;->setArtist(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1}, Lcom/madvil/core/SimpleDownload;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/madvil/core/SimpleDownloadForAdapter;->setName(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1}, Lcom/madvil/core/SimpleDownload;->getID()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/madvil/core/SimpleDownloadForAdapter;->setID(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    .end local v1           #sd:Lcom/madvil/core/SimpleDownload;
    .end local v2           #sdfa:Lcom/madvil/core/SimpleDownloadForAdapter;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :catch_0
    move-exception v3

    goto :goto_2

    .line 90
    :catch_1
    move-exception v3

    goto :goto_3
.end method
