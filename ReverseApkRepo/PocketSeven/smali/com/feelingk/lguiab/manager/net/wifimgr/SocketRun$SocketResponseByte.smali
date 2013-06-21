.class Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;
.super Ljava/lang/Object;
.source "SocketRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketResponseByte"
.end annotation


# instance fields
.field public body:[B

.field public header:[B

.field final synthetic this$0:Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;


# direct methods
.method constructor <init>(Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 88
    iput-object p1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;->this$0:Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;->header:[B

    .line 90
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;->body:[B

    return-void
.end method
