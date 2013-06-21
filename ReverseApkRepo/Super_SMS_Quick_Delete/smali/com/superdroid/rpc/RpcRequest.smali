.class public Lcom/superdroid/rpc/RpcRequest;
.super Ljava/lang/Object;
.source "RpcRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x19299652146d8a15L


# instance fields
.field protected _passWord:Ljava/lang/String;

.field protected _serviceName:Ljava/lang/String;

.field protected _userID:Ljava/lang/String;

.field protected _version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPassWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/superdroid/rpc/RpcRequest;->_passWord:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/superdroid/rpc/RpcRequest;->_serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/superdroid/rpc/RpcRequest;->_userID:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/superdroid/rpc/RpcRequest;->_version:I

    return v0
.end method

.method public setPassWord(Ljava/lang/String;)V
    .locals 0
    .parameter "passWord"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/superdroid/rpc/RpcRequest;->_passWord:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceName"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/superdroid/rpc/RpcRequest;->_serviceName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .parameter "userID"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/superdroid/rpc/RpcRequest;->_userID:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 28
    iput p1, p0, Lcom/superdroid/rpc/RpcRequest;->_version:I

    .line 29
    return-void
.end method
