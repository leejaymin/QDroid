.class public Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/SocketMakeByte$TunnelingSendDataParam;
.super Ljava/lang/Object;
.source "SocketMakeByte.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/SocketMakeByte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TunnelingSendDataParam"
.end annotation


# static fields
.field public static strBuf:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/SocketMakeByte$TunnelingSendDataParam;->strBuf:Ljava/lang/StringBuffer;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
