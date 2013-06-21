.class public Lcom/madvil/core/SimpleSong;
.super Ljava/lang/Object;
.source "SimpleSong.java"


# instance fields
.field private artist:Ljava/lang/String;

.field private duration:I

.field private fileName:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private rate:Ljava/lang/String;

.field private size:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/madvil/core/SimpleSong;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/madvil/core/SimpleSong;->duration:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/madvil/core/SimpleSong;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/madvil/core/SimpleSong;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/madvil/core/SimpleSong;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/madvil/core/SimpleSong;->rate:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/madvil/core/SimpleSong;->size:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "artist"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/madvil/core/SimpleSong;->artist:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 46
    iput p1, p0, Lcom/madvil/core/SimpleSong;->duration:I

    .line 47
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 50
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, dur:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/madvil/core/SimpleSong;->duration:I

    .line 52
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/madvil/core/SimpleSong;->fileName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/madvil/core/SimpleSong;->link:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/madvil/core/SimpleSong;->name:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setRate(Ljava/lang/String;)V
    .locals 0
    .parameter "rate"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/madvil/core/SimpleSong;->rate:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0
    .parameter "size"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/madvil/core/SimpleSong;->size:Ljava/lang/String;

    .line 31
    return-void
.end method
