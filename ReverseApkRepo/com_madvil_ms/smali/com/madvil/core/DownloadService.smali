.class public Lcom/madvil/core/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/madvil/core/DownloadService$ServiceWorker;
    }
.end annotation


# static fields
.field private static final ACTIVE_DOWNLOADS:I = 0x2

.field public static activeDownloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/madvil/core/SimpleDownload;",
            ">;"
        }
    .end annotation
.end field

.field public static activeDownloadsForAdapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/madvil/core/SimpleDownloadForAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public static downloadsQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/madvil/core/SimpleDownload;",
            ">;"
        }
    .end annotation
.end field

.field private static iterator:I

.field public static singletone:Lcom/madvil/core/DownloadService;

.field public static started:Z


# instance fields
.field private downloadsUpdateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    sput v0, Lcom/madvil/core/DownloadService;->iterator:I

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/madvil/core/DownloadService;->started:Z

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/madvil/core/DownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/madvil/core/DownloadService;->nextFromQueue()V

    return-void
.end method

.method static synthetic access$1(Lcom/madvil/core/DownloadService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/madvil/core/DownloadService;->downloadsUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private nextFromQueue()V
    .locals 5

    .prologue
    .line 161
    :try_start_0
    sget-object v3, Lcom/madvil/core/DownloadService;->activeDownloads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    sget-object v3, Lcom/madvil/core/DownloadService;->downloadsQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 162
    sget-object v3, Lcom/madvil/core/DownloadService;->downloadsQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/madvil/core/SimpleDownload;

    .line 163
    .local v0, sd:Lcom/madvil/core/SimpleDownload;
    sget-object v3, Lcom/madvil/core/DownloadService;->activeDownloads:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v3, Lcom/madvil/core/DownloadService;->downloadsQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 166
    new-instance v1, Lcom/madvil/core/DownloadService$ServiceWorker;

    invoke-direct {v1, p0}, Lcom/madvil/core/DownloadService$ServiceWorker;-><init>(Lcom/madvil/core/DownloadService;)V

    .line 167
    .local v1, sw:Lcom/madvil/core/DownloadService$ServiceWorker;
    invoke-virtual {v1, v0}, Lcom/madvil/core/DownloadService$ServiceWorker;->setWhatDownload(Lcom/madvil/core/SimpleDownload;)V

    .line 169
    new-instance v2, Ljava/lang/Thread;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 170
    .local v2, thr:Ljava/lang/Thread;
    invoke-virtual {v0, v2}, Lcom/madvil/core/SimpleDownload;->setDownloadThread(Ljava/lang/Thread;)V

    .line 171
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v0           #sd:Lcom/madvil/core/SimpleDownload;
    .end local v1           #sw:Lcom/madvil/core/DownloadService$ServiceWorker;
    .end local v2           #thr:Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public abortDownload(Lcom/madvil/core/SimpleDownloadForAdapter;)V
    .locals 9
    .parameter "sd"

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 182
    .local v1, _sd:Lcom/madvil/core/SimpleDownload;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_0
    sget-object v4, Lcom/madvil/core/DownloadService;->activeDownloads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 189
    :goto_1
    if-eqz v1, :cond_0

    .line 190
    sget-object v4, Lcom/madvil/core/DownloadService;->activeDownloads:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 191
    invoke-direct {p0}, Lcom/madvil/core/DownloadService;->nextFromQueue()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    :goto_2
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v1, v4}, Lcom/madvil/core/SimpleDownload;->setToDeleteFromAdapter(Z)V

    .line 198
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/madvil/core/SimpleDownload;->setAbortDownload(Z)V

    .line 200
    invoke-static {v1}, Lcom/madvil/core/Helper;->deleteDownloadFromStorage(Lcom/madvil/core/SimpleDownload;)V

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{%1$s} "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/madvil/core/SimpleDownload;->getID()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "aborted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/madvil/core/DebugLog;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    :goto_3
    return-void

    .line 183
    :cond_1
    :try_start_2
    sget-object v4, Lcom/madvil/core/DownloadService;->activeDownloads:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/madvil/core/SimpleDownload;

    invoke-virtual {v4}, Lcom/madvil/core/SimpleDownload;->getID()I

    move-result v4

    invoke-virtual {p1}, Lcom/madvil/core/SimpleDownloadForAdapter;->getID()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 184
    sget-object v4, Lcom/madvil/core/DownloadService;->activeDownloads:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/madvil/core/SimpleDownload;

    move-object v1, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 185
    goto :goto_1

    .line 182
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 194
    .local v2, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 202
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 203
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public deleteFromQueue(Lcom/madvil/core/SimpleDownload;)V
    .locals 2
    .parameter "sd"

    .prologue
    .line 210
    :try_start_0
    sget-object v1, Lcom/madvil/core/DownloadService;->downloadsQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 213
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public existInDownloads(Lcom/madvil/core/SimpleSong;)Z
    .locals 5
    .parameter "ss"

    .prologue
    const/4 v4, 0x1

    .line 218
    invoke-static {p1}, Lcom/madvil/core/Helper;->isSongExists(Lcom/madvil/core/SimpleSong;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    .line 234
    :goto_0
    return v1

    .line 222
    :cond_0
    sget-object v1, Lcom/madvil/core/DownloadService;->activeDownloads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 228
    sget-object v1, Lcom/madvil/core/DownloadService;->downloadsQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 234
    const/4 v1, 0x0

    goto :goto_0

    .line 222
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/madvil/core/SimpleDownload;

    .line 223
    .local v0, sd:Lcom/madvil/core/SimpleDownload;
    invoke-virtual {v0}, Lcom/madvil/core/SimpleDownload;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/madvil/core/SimpleSong;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/madvil/core/SimpleDownload;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/madvil/core/SimpleSong;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    .line 224
    goto :goto_0

    .line 228
    .end local v0           #sd:Lcom/madvil/core/SimpleDownload;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/madvil/core/SimpleDownload;

    .line 229
    .restart local v0       #sd:Lcom/madvil/core/SimpleDownload;
    invoke-virtual {v0}, Lcom/madvil/core/SimpleDownload;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/madvil/core/SimpleSong;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/madvil/core/SimpleDownload;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/madvil/core/SimpleSong;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v4

    .line 230
    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 34
    const/4 v2, 0x1

    sput-boolean v2, Lcom/madvil/core/DownloadService;->started:Z

    .line 35
    sput-object p0, Lcom/madvil/core/DownloadService;->singletone:Lcom/madvil/core/DownloadService;

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/madvil/core/DownloadService;->activeDownloads:Ljava/util/ArrayList;

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/madvil/core/DownloadService;->downloadsQueue:Ljava/util/ArrayList;

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/madvil/core/DownloadService;->activeDownloadsForAdapter:Ljava/util/ArrayList;

    .line 40
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 47
    new-instance v2, Lcom/madvil/core/DownloadService$1;

    invoke-direct {v2, p0}, Lcom/madvil/core/DownloadService$1;-><init>(Lcom/madvil/core/DownloadService;)V

    .line 62
    invoke-virtual {v2}, Lcom/madvil/core/DownloadService$1;->start()V

    .line 64
    new-instance v2, Lcom/madvil/core/DownloadService$2;

    invoke-direct {v2, p0}, Lcom/madvil/core/DownloadService$2;-><init>(Lcom/madvil/core/DownloadService;)V

    iput-object v2, p0, Lcom/madvil/core/DownloadService;->downloadsUpdateHandler:Landroid/os/Handler;

    .line 101
    return-void

    .line 41
    :cond_0
    new-instance v1, Lcom/madvil/core/SimpleDownloadForAdapter;

    invoke-direct {v1}, Lcom/madvil/core/SimpleDownloadForAdapter;-><init>()V

    .line 42
    .local v1, sdfa:Lcom/madvil/core/SimpleDownloadForAdapter;
    invoke-virtual {v1}, Lcom/madvil/core/SimpleDownloadForAdapter;->setFree()V

    .line 44
    sget-object v2, Lcom/madvil/core/DownloadService;->activeDownloadsForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lcom/madvil/core/DownloadService;->started:Z

    .line 106
    sget-object v0, Lcom/madvil/core/DownloadService;->activeDownloads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    sput-object v1, Lcom/madvil/core/DownloadService;->activeDownloads:Ljava/util/ArrayList;

    .line 109
    sget-object v0, Lcom/madvil/core/DownloadService;->activeDownloadsForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    sput-object v1, Lcom/madvil/core/DownloadService;->activeDownloadsForAdapter:Ljava/util/ArrayList;

    .line 112
    sget-object v0, Lcom/madvil/core/DownloadService;->downloadsQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 113
    sput-object v1, Lcom/madvil/core/DownloadService;->downloadsQueue:Ljava/util/ArrayList;

    .line 115
    sput-object v1, Lcom/madvil/core/DownloadService;->singletone:Lcom/madvil/core/DownloadService;

    .line 117
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 118
    return-void
.end method

.method public startNewDownload(Lcom/madvil/core/SimpleSong;)Lcom/madvil/core/SimpleDownload;
    .locals 6
    .parameter "ss"

    .prologue
    .line 121
    new-instance v1, Lcom/madvil/core/SimpleDownload;

    invoke-direct {v1}, Lcom/madvil/core/SimpleDownload;-><init>()V

    .line 122
    .local v1, ret:Lcom/madvil/core/SimpleDownload;
    sget v4, Lcom/madvil/core/DownloadService;->iterator:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/madvil/core/DownloadService;->iterator:I

    invoke-virtual {v1, v4}, Lcom/madvil/core/SimpleDownload;->setID(I)V

    .line 126
    :try_start_0
    invoke-virtual {p1}, Lcom/madvil/core/SimpleSong;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/madvil/core/Helper;->prepareString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/madvil/core/SimpleDownload;->setArtist(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/madvil/core/SimpleSong;->getLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/madvil/core/SimpleDownload;->setLink(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lcom/madvil/core/SimpleSong;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/madvil/core/Helper;->prepareString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/madvil/core/SimpleDownload;->setName(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lcom/madvil/core/SimpleSong;->getSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/madvil/core/SimpleDownload;->setSize(Ljava/lang/String;)V

    .line 131
    sget-object v4, Lcom/madvil/core/DownloadService;->activeDownloads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 132
    sget-object v4, Lcom/madvil/core/DownloadService;->downloadsQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-object v1

    .line 138
    :cond_0
    :try_start_1
    sget-object v4, Lcom/madvil/core/DownloadService;->activeDownloads:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    :goto_1
    :try_start_2
    new-instance v2, Lcom/madvil/core/DownloadService$ServiceWorker;

    invoke-direct {v2, p0}, Lcom/madvil/core/DownloadService$ServiceWorker;-><init>(Lcom/madvil/core/DownloadService;)V

    .line 145
    .local v2, sw:Lcom/madvil/core/DownloadService$ServiceWorker;
    invoke-virtual {v2, v1}, Lcom/madvil/core/DownloadService$ServiceWorker;->setWhatDownload(Lcom/madvil/core/SimpleDownload;)V

    .line 147
    new-instance v3, Ljava/lang/Thread;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 148
    .local v3, thr:Ljava/lang/Thread;
    invoke-virtual {v1, v3}, Lcom/madvil/core/SimpleDownload;->setDownloadThread(Ljava/lang/Thread;)V

    .line 149
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 151
    .end local v2           #sw:Lcom/madvil/core/DownloadService$ServiceWorker;
    .end local v3           #thr:Ljava/lang/Thread;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 152
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_1
.end method
