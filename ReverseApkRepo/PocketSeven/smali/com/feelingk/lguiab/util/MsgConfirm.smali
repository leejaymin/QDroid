.class public Lcom/feelingk/lguiab/util/MsgConfirm;
.super Lcom/feelingk/lguiab/util/Confirm;
.source "MsgConfirm.java"


# instance fields
.field private mMessage:[B

.field private mMessageLength:I

.field private mSWDumpMessage:Ljava/lang/String;

.field private mUserMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Lcom/feelingk/lguiab/util/Confirm;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/lguiab/util/MsgConfirm;->mMessageLength:I

    .line 12
    iput-object v1, p0, Lcom/feelingk/lguiab/util/MsgConfirm;->mUserMessage:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/feelingk/lguiab/util/MsgConfirm;->mSWDumpMessage:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getDumpMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/feelingk/lguiab/util/MsgConfirm;->mSWDumpMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()[B
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/feelingk/lguiab/util/MsgConfirm;->mMessage:[B

    return-object v0
.end method

.method public getMsgLength()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/feelingk/lguiab/util/MsgConfirm;->mMessageLength:I

    return v0
.end method

.method public getUserMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/feelingk/lguiab/util/MsgConfirm;->mUserMessage:Ljava/lang/String;

    return-object v0
.end method

.method public parse([B)V
    .locals 5
    .parameter "v"

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/feelingk/lguiab/util/Confirm;->parse([B)V

    .line 21
    const/16 v1, 0xd

    aget-byte v1, p1, v1

    iput v1, p0, Lcom/feelingk/lguiab/util/MsgConfirm;->mMessageLength:I

    .line 22
    iget v1, p0, Lcom/feelingk/lguiab/util/MsgConfirm;->mMessageLength:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/feelingk/lguiab/util/MsgConfirm;->mMessage:[B

    .line 26
    const/16 v1, 0xe

    :try_start_0
    iget-object v2, p0, Lcom/feelingk/lguiab/util/MsgConfirm;->mMessage:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/feelingk/lguiab/util/MsgConfirm;->mMessageLength:I

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MsgConfirm] :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDumpMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/feelingk/lguiab/util/MsgConfirm;->mSWDumpMessage:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setUserMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/feelingk/lguiab/util/MsgConfirm;->mUserMessage:Ljava/lang/String;

    .line 50
    return-void
.end method
