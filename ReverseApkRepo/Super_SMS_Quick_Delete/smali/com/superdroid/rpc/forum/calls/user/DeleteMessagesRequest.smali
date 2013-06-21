.class public Lcom/superdroid/rpc/forum/calls/user/DeleteMessagesRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "DeleteMessagesRequest.java"


# static fields
.field public static final RPC_FORUM_DELETE_MESSAGES_SERVICE_NAME:Ljava/lang/String; = "deleteusermessages"

.field private static final serialVersionUID:J = 0x7a62f217747a0e29L


# instance fields
.field public _messageIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 17
    const-string v0, "deleteusermessages"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/user/DeleteMessagesRequest;->_serviceName:Ljava/lang/String;

    .line 18
    return-void
.end method
