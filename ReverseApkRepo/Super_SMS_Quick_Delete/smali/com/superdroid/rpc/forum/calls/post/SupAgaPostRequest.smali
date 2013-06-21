.class public Lcom/superdroid/rpc/forum/calls/post/SupAgaPostRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "SupAgaPostRequest.java"


# static fields
.field public static final RPC_FORUM_SUPPORT_AGAINEST_SERVICE_NAME:Ljava/lang/String; = "supagapost"

.field private static final serialVersionUID:J = -0x16041bf5354bb249L


# instance fields
.field public _isSupport:Z

.field public _postID:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/superdroid/rpc/forum/calls/post/SupAgaPostRequest;->_isSupport:Z

    .line 16
    const-string v0, "supagapost"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/post/SupAgaPostRequest;->_serviceName:Ljava/lang/String;

    .line 17
    return-void
.end method
