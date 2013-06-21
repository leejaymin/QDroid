.class public Lcom/superdroid/rpc/forum/calls/user/CreateMessageRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "CreateMessageRequest.java"


# static fields
.field public static final RPC_FORUM_CREATE_MESSAGES_SERVICE_NAME:Ljava/lang/String; = "createusermessage"

.field private static final serialVersionUID:J = -0x6efa7e6df8de6d45L


# instance fields
.field public _usermessage:Lcom/superdroid/rpc/forum/model/UserMessage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 17
    const-string v0, "createusermessage"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/user/CreateMessageRequest;->_serviceName:Ljava/lang/String;

    .line 18
    return-void
.end method
