.class public Lcom/madvil/core/SimpleDownloadForAdapter;
.super Ljava/lang/Object;
.source "SimpleDownloadForAdapter.java"


# instance fields
.field private ID:I

.field private artist:Ljava/lang/String;

.field private downloaded:I

.field private free:Z

.field private name:Ljava/lang/String;

.field private progress:I

.field private sizeInBytes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->sizeInBytes:I

    .line 8
    iput v0, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->downloaded:I

    .line 9
    iput v0, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->progress:I

    .line 10
    iput v0, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->ID:I

    .line 3
    return-void
.end method


# virtual methods
.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloaded()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->downloaded:I

    return v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->ID:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->progress:I

    return v0
.end method

.method public getSizeInBytes()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->sizeInBytes:I

    return v0
.end method

.method public isFree()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->free:Z

    return v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "artist"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->artist:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setDownloaded(I)V
    .locals 0
    .parameter "downloaded"

    .prologue
    .line 54
    iput p1, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->downloaded:I

    .line 55
    return-void
.end method

.method public setFree()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->name:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->artist:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->free:Z

    .line 73
    iput v1, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->sizeInBytes:I

    .line 74
    iput v1, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->downloaded:I

    .line 75
    iput v1, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->progress:I

    .line 76
    return-void
.end method

.method public setFree(Z)V
    .locals 0
    .parameter "free"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->free:Z

    .line 63
    return-void
.end method

.method public setID(I)V
    .locals 0
    .parameter "iD"

    .prologue
    .line 38
    iput p1, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->ID:I

    .line 39
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->name:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 30
    iput p1, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->progress:I

    .line 31
    return-void
.end method

.method public setSizeInBytes(I)V
    .locals 0
    .parameter "sizeInBytes"

    .prologue
    .line 46
    iput p1, p0, Lcom/madvil/core/SimpleDownloadForAdapter;->sizeInBytes:I

    .line 47
    return-void
.end method
