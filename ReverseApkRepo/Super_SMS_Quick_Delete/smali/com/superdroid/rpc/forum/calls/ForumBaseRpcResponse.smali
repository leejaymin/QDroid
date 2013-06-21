.class public Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
.super Lcom/superdroid/rpc/RpcResponse;
.source "ForumBaseRpcResponse.java"


# static fields
.field public static final RESPONSE_IMEI_ALREADY_BIND:I = 0x6

.field public static final RESPONSE_PERMISSION_NOT_ALLOWED:I = 0x7

.field public static final RESPONSE_USER_NAME_ALREADY_EXIST:I = 0x5

.field public static final RESPONSE_USER_NOT_FOUND:I = 0x8

.field public static final RESPONSE_USER_PASSWORD_NOT_MATCH:I = 0x9

.field private static final serialVersionUID:J = 0x54621aa25ccb8c98L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcResponse;-><init>()V

    return-void
.end method
