.class public Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/SocketMakeByte;
.super Ljava/lang/Object;
.source "SocketMakeByte.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/SocketMakeByte$TunnelingSendDataParam;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static etcPacket()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    new-instance v0, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTnnelingSendDataMakeByte;

    invoke-direct {v0}, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTnnelingSendDataMakeByte;-><init>()V

    .line 18
    .local v0, n:Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTnnelingSendDataMakeByte;
    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTnnelingSendDataMakeByte;->makePacketISBody()[B

    move-result-object v1

    return-object v1
.end method

.method public static sessionMakePacket()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 7
    new-instance v0, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWSessionMakeByte;

    invoke-direct {v0}, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWSessionMakeByte;-><init>()V

    .line 8
    .local v0, n:Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWSessionMakeByte;
    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWSessionMakeByte;->makePacketISHeaderISBody()[B

    move-result-object v1

    return-object v1
.end method

.method public static tunnelingMakePacket()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTunnelingInitMakeByte;

    invoke-direct {v0}, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTunnelingInitMakeByte;-><init>()V

    .line 13
    .local v0, n:Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTunnelingInitMakeByte;
    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTunnelingInitMakeByte;->makePacketISHeaderISBody()[B

    move-result-object v1

    return-object v1
.end method
