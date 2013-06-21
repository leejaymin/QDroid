.class public Lcom/superdroid/rpc/RpcResponse;
.super Ljava/lang/Object;
.source "RpcResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final RESPONSE_ERROR_AUTH_FAILED:I = 0x3

.field public static final RESPONSE_ERROR_BAD_REQUEST:I = 0x4

.field public static final RESPONSE_ERROR_SERVICE_NOT_FOUND:I = 0x2

.field public static final RESPONSE_ERROR_VERSION:I = 0x1

.field public static final RESPONSE_OK:I = 0x0

.field private static final serialVersionUID:J = -0x55e8fb50a8c724fdL


# instance fields
.field protected _errorMsg:Ljava/lang/String;

.field protected _returnCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/superdroid/rpc/RpcResponse;->_returnCode:I

    .line 11
    return-void
.end method


# virtual methods
.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/superdroid/rpc/RpcResponse;->_errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnCode()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/superdroid/rpc/RpcResponse;->_returnCode:I

    return v0
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMsg"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/superdroid/rpc/RpcResponse;->_errorMsg:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setReturnCode(I)V
    .locals 0
    .parameter "returnCode"

    .prologue
    .line 32
    iput p1, p0, Lcom/superdroid/rpc/RpcResponse;->_returnCode:I

    .line 33
    return-void
.end method
