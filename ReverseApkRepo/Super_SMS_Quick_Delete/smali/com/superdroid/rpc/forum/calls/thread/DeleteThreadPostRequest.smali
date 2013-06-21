.class public Lcom/superdroid/rpc/forum/calls/thread/DeleteThreadPostRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "DeleteThreadPostRequest.java"


# static fields
.field public static final DELETE_EVENT_LOG:I = 0x2

.field public static final DELETE_POST:I = 0x1

.field public static final DELETE_THREAD:I = 0x0

.field public static final RPC_FORUM_DELETE_THREAD_POST_SERVICE_NAME:Ljava/lang/String; = "deletethreadpost"

.field private static final serialVersionUID:J = 0x49e26753436a0f77L


# instance fields
.field public _deleteType:I

.field public _id:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 21
    const-string v0, "deletethreadpost"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/thread/DeleteThreadPostRequest;->_serviceName:Ljava/lang/String;

    .line 22
    return-void
.end method
