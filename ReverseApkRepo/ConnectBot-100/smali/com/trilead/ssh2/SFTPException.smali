.class public Lcom/trilead/ssh2/SFTPException;
.super Ljava/io/IOException;
.source "SFTPException.java"


# static fields
.field private static final serialVersionUID:J = 0x807cb554481eb33L


# instance fields
.field private final sftpErrorCode:I

.field private final sftpErrorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "msg"
    .parameter "errorCode"

    .prologue
    .line 36
    invoke-static {p1, p2}, Lcom/trilead/ssh2/SFTPException;->constructMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/trilead/ssh2/SFTPException;->sftpErrorMessage:Ljava/lang/String;

    .line 38
    iput p2, p0, Lcom/trilead/ssh2/SFTPException;->sftpErrorCode:I

    .line 39
    return-void
.end method

.method private static constructMessage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "s"
    .parameter "errorCode"

    .prologue
    .line 26
    invoke-static {p1}, Lcom/trilead/ssh2/sftp/ErrorCodes;->getDescription(I)[Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, detail:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " (UNKNOW SFTP ERROR CODE)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getServerErrorCode()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/trilead/ssh2/SFTPException;->sftpErrorCode:I

    return v0
.end method

.method public getServerErrorCodeSymbol()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    iget v1, p0, Lcom/trilead/ssh2/SFTPException;->sftpErrorCode:I

    invoke-static {v1}, Lcom/trilead/ssh2/sftp/ErrorCodes;->getDescription(I)[Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, detail:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UNKNOW SFTP ERROR CODE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/trilead/ssh2/SFTPException;->sftpErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public getServerErrorCodeVerbose()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    iget v1, p0, Lcom/trilead/ssh2/SFTPException;->sftpErrorCode:I

    invoke-static {v1}, Lcom/trilead/ssh2/sftp/ErrorCodes;->getDescription(I)[Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, detail:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The error code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/trilead/ssh2/SFTPException;->sftpErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public getServerErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPException;->sftpErrorMessage:Ljava/lang/String;

    return-object v0
.end method
