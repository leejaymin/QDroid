.class public Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;
.super Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
.source "RegisterUserResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x13a96e5d12c47829L


# instance fields
.field public _level:Ljava/lang/String;

.field public _role:Lcom/superdroid/rpc/forum/model/UserRole;

.field public _userID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;-><init>()V

    return-void
.end method
