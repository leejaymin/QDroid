.class public Lcom/superdroid/rpc/forum/calls/user/GetMessagesRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "GetMessagesRequest.java"


# static fields
.field public static final RPC_FORUM_GET_MESSAGES_SERVICE_NAME:Ljava/lang/String; = "getusermessages"

.field private static final serialVersionUID:J = 0x973f97e2ede6ee0L


# instance fields
.field public _length:I

.field public _start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 16
    const-string v0, "getusermessages"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/user/GetMessagesRequest;->_serviceName:Ljava/lang/String;

    .line 17
    return-void
.end method
