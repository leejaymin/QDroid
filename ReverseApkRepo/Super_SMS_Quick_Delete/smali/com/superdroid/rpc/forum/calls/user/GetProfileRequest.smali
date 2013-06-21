.class public Lcom/superdroid/rpc/forum/calls/user/GetProfileRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "GetProfileRequest.java"


# static fields
.field public static final RPC_FORUM_GET_PROFILE_SERVICE_NAME:Ljava/lang/String; = "getprofile"

.field private static final serialVersionUID:J = -0x2a020b69e82a7f4fL


# instance fields
.field public _requestUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 13
    const-string v0, "getprofile"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/user/GetProfileRequest;->_serviceName:Ljava/lang/String;

    .line 14
    return-void
.end method
