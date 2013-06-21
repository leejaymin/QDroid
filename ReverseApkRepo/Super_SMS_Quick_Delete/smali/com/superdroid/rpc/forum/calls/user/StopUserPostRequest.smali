.class public Lcom/superdroid/rpc/forum/calls/user/StopUserPostRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "StopUserPostRequest.java"


# static fields
.field public static final RPC_FORUM_STOP_USER_POST_SERVICE_NAME:Ljava/lang/String; = "stopuserpost"

.field private static final serialVersionUID:J = 0x714da1a454a405f4L


# instance fields
.field public _username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 15
    const-string v0, "stopuserpost"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/user/StopUserPostRequest;->_serviceName:Ljava/lang/String;

    .line 16
    return-void
.end method
