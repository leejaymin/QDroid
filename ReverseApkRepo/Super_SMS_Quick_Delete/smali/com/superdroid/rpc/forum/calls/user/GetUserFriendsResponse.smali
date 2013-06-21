.class public Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;
.super Lcom/superdroid/rpc/RpcResponse;
.source "GetUserFriendsResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x1cbf45123614dc73L


# instance fields
.field public _friends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/Friend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcResponse;-><init>()V

    return-void
.end method
