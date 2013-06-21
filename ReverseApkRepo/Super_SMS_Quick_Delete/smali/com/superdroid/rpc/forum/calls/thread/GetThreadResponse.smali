.class public Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;
.super Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
.source "GetThreadResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x3cf1ff8938e8c492L


# instance fields
.field public _threads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/ForumThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;-><init>()V

    return-void
.end method
