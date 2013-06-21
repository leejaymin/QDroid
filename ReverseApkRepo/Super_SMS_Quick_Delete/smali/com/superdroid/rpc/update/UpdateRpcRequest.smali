.class public Lcom/superdroid/rpc/update/UpdateRpcRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "UpdateRpcRequest.java"


# static fields
.field public static final RPC_CHECKUPDATE_SERVICES_NAME:Ljava/lang/String; = "checkupdate"

.field private static final serialVersionUID:J = 0x4bd6450a7c32f876L


# instance fields
.field public _appId:Ljava/lang/String;

.field public _versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 23
    const-string v0, "checkupdate"

    iput-object v0, p0, Lcom/superdroid/rpc/update/UpdateRpcRequest;->_serviceName:Ljava/lang/String;

    .line 24
    return-void
.end method
