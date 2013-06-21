.class public Lcom/feelingk/lguiab/manager/net/wifimgr/common/SocketCommond;
.super Ljava/lang/Object;
.source "SocketCommond.java"


# static fields
.field public static final WIFIGW_SOCKET_IP:Ljava/lang/String; = null

.field public static final WIFIGW_SOCKET_PORT:I = 0x1e6c

.field public static final WIFIGW_SOCKET_SESSION_TYPE:I = 0x1

.field public static final WIFIGW_SOCKET_TIMEOUT:I = 0x1388

.field public static final WIFIGW_SOCKET_TUNNELING_INIT_TYPE:I = 0x2

.field public static final WIFIGW_SOCKET_TUNNELING_SENDDATA_TYPE:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    sget-boolean v0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->serverType:Z

    if-eqz v0, :cond_0

    const-string v0, "wifigw.ez-i.co.kr"

    :goto_0
    sput-object v0, Lcom/feelingk/lguiab/manager/net/wifimgr/common/SocketCommond;->WIFIGW_SOCKET_IP:Ljava/lang/String;

    .line 5
    return-void

    .line 8
    :cond_0
    const-string v0, "wifigwdt.ez-i.co.kr"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
