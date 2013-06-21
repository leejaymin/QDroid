.class public Lcom/madvil/core/SimpleDownload;
.super Ljava/lang/Object;
.source "SimpleDownload.java"


# instance fields
.field private ID:I

.field private abortDownload:Z

.field private artist:Ljava/lang/String;

.field private downloadThread:Ljava/lang/Thread;

.field private downloaded:I

.field private finished:Z

.field private finishedWithError:Z

.field private link:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private progress:I

.field private size:Ljava/lang/String;

.field private sizeInBytes:I

.field private toAddToAdapter:Z

.field private toDeleteFromAdapter:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/madvil/core/SimpleDownload;->sizeInBytes:I

    .line 9
    iput v0, p0, Lcom/madvil/core/SimpleDownload;->downloaded:I

    .line 11
    iput v0, p0, Lcom/madvil/core/SimpleDownload;->progress:I

    .line 12
    iput v0, p0, Lcom/madvil/core/SimpleDownload;->ID:I

    .line 14
    iput-boolean v0, p0, Lcom/madvil/core/SimpleDownload;->abortDownload:Z

    .line 15
    iput-boolean v0, p0, Lcom/madvil/core/SimpleDownload;->finished:Z

    .line 16
    iput-boolean v0, p0, Lcom/madvil/core/SimpleDownload;->finishedWithError:Z

    .line 17
    iput-boolean v0, p0, Lcom/madvil/core/SimpleDownload;->toDeleteFromAdapter:Z

    .line 18
    iput-boolean v0, p0, Lcom/madvil/core/SimpleDownload;->toAddToAdapter:Z

    .line 22
    return-void
.end method


# virtual methods
.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/madvil/core/SimpleDownload;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/madvil/core/SimpleDownload;->downloadThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getDownloaded()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/madvil/core/SimpleDownload;->downloaded:I

    return v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/madvil/core/SimpleDownload;->ID:I

    return v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/madvil/core/SimpleDownload;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/madvil/core/SimpleDownload;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/madvil/core/SimpleDownload;->progress:I

    return v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/madvil/core/SimpleDownload;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeInBytes()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/madvil/core/SimpleDownload;->sizeInBytes:I

    return v0
.end method

.method public isAbortDownload()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/madvil/core/SimpleDownload;->abortDownload:Z

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/madvil/core/SimpleDownload;->finished:Z

    return v0
.end method

.method public isFinishedWithError()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/madvil/core/SimpleDownload;->finishedWithError:Z

    return v0
.end method

.method public isToAddToAdapter()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/madvil/core/SimpleDownload;->toAddToAdapter:Z

    return v0
.end method

.method public isToDeleteFromAdapter()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/madvil/core/SimpleDownload;->toDeleteFromAdapter:Z

    return v0
.end method

.method public setAbortDownload(Z)V
    .locals 0
    .parameter "abortDownload"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/madvil/core/SimpleDownload;->abortDownload:Z

    .line 82
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "artist"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/madvil/core/SimpleDownload;->artist:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setDownloadThread(Ljava/lang/Thread;)V
    .locals 0
    .parameter "downloadThread"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/madvil/core/SimpleDownload;->downloadThread:Ljava/lang/Thread;

    .line 74
    return-void
.end method

.method public setDownloaded(I)V
    .locals 0
    .parameter "downloaded"

    .prologue
    .line 113
    iput p1, p0, Lcom/madvil/core/SimpleDownload;->downloaded:I

    .line 114
    return-void
.end method

.method public setFinished(Z)V
    .locals 0
    .parameter "finished"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/madvil/core/SimpleDownload;->finished:Z

    .line 90
    return-void
.end method

.method public setFinishedWithError(Z)V
    .locals 0
    .parameter "finishedWithError"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/madvil/core/SimpleDownload;->finishedWithError:Z

    .line 98
    return-void
.end method

.method public setID(I)V
    .locals 0
    .parameter "iD"

    .prologue
    .line 65
    iput p1, p0, Lcom/madvil/core/SimpleDownload;->ID:I

    .line 66
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/madvil/core/SimpleDownload;->link:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/madvil/core/SimpleDownload;->name:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 57
    iput p1, p0, Lcom/madvil/core/SimpleDownload;->progress:I

    .line 58
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0
    .parameter "size"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/madvil/core/SimpleDownload;->size:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setSizeInBytes(I)V
    .locals 0
    .parameter "sizeInBytes"

    .prologue
    .line 105
    iput p1, p0, Lcom/madvil/core/SimpleDownload;->sizeInBytes:I

    .line 106
    return-void
.end method

.method public setToAddToAdapter(Z)V
    .locals 0
    .parameter "toAddToAdapter"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/madvil/core/SimpleDownload;->toAddToAdapter:Z

    .line 130
    return-void
.end method

.method public setToDeleteFromAdapter(Z)V
    .locals 0
    .parameter "toDeleteFromAdapter"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/madvil/core/SimpleDownload;->toDeleteFromAdapter:Z

    .line 122
    return-void
.end method
