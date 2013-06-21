.class public Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;
.super Ljava/lang/Object;
.source "SocketError.java"


# static fields
.field private static volatile instance:Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;


# instance fields
.field private resultCode:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->instance:Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    if-nez v0, :cond_1

    .line 14
    const-class v1, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->instance:Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    invoke-direct {v0}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;-><init>()V

    sput-object v0, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->instance:Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    .line 14
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->instance:Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getResultCode()Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->resultCode:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    return-object v0
.end method

.method public setResultCode(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->resultCode:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 36
    return-void
.end method
