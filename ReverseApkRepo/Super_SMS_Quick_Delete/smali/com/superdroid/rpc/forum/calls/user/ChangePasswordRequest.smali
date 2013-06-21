.class public Lcom/superdroid/rpc/forum/calls/user/ChangePasswordRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "ChangePasswordRequest.java"


# static fields
.field public static final RPC_FORUM_CHANGE_PASSWORD_SERVICE_NAME:Ljava/lang/String; = "changepassword"

.field private static final serialVersionUID:J = -0x399e9d78c46dc56fL


# instance fields
.field public _newPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 13
    const-string v0, "changepassword"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/user/ChangePasswordRequest;->_serviceName:Ljava/lang/String;

    .line 14
    return-void
.end method
