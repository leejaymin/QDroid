.class public Lcom/trilead/ssh2/SFTPv3FileHandle;
.super Ljava/lang/Object;
.source "SFTPv3FileHandle.java"


# instance fields
.field final client:Lcom/trilead/ssh2/SFTPv3Client;

.field final fileHandle:[B

.field isClosed:Z


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/SFTPv3Client;[B)V
    .locals 1
    .parameter "client"
    .parameter "h"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/trilead/ssh2/SFTPv3FileHandle;->isClosed:Z

    .line 21
    iput-object p1, p0, Lcom/trilead/ssh2/SFTPv3FileHandle;->client:Lcom/trilead/ssh2/SFTPv3Client;

    .line 22
    iput-object p2, p0, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    .line 23
    return-void
.end method


# virtual methods
.method public getClient()Lcom/trilead/ssh2/SFTPv3Client;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3FileHandle;->client:Lcom/trilead/ssh2/SFTPv3Client;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/trilead/ssh2/SFTPv3FileHandle;->isClosed:Z

    return v0
.end method
