.class public final Lcom/feelingk/lguiab/common/Defines$IF_SOCKET_RESPONSE;
.super Ljava/lang/Object;
.source "Defines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/lguiab/common/Defines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IF_SOCKET_RESPONSE"
.end annotation


# static fields
.field public static final AE_INIT:B = 0x63t

.field public static final AE_SUCCESS:B = 0x0t

.field public static final ERR_ALREADYCONNECTED:B = -0x1t

.field public static final ERR_ALREADYINIT:B = -0x7t

.field public static final ERR_CONNECT_FAIL:B = -0x3t

.field public static final ERR_DISCONNECTED:B = -0x2t

.field public static final ERR_DOWNLOADING:B = -0x9t

.field public static final ERR_INVALIDPARITY:B = -0x8t

.field public static final ERR_NORMAL_TIMEOUT_FAIL:B = -0xbt

.field public static final ERR_NOTINIT:B = -0x6t

.field public static final ERR_PARSE_FAIL:B = -0xat

.field public static final ERR_RECV_FAIL:B = -0x5t

.field public static final ERR_RECV_TIMEOUT_FAIL:B = -0xdt

.field public static final ERR_SEND_FAIL:B = -0x4t

.field public static final ERR_SEND_TIMEOUT_FAIL:B = -0xct

.field public static final ERR_SOCKET_FAIL:B = -0xbt


# instance fields
.field final synthetic this$0:Lcom/feelingk/lguiab/common/Defines;


# direct methods
.method public constructor <init>(Lcom/feelingk/lguiab/common/Defines;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/feelingk/lguiab/common/Defines$IF_SOCKET_RESPONSE;->this$0:Lcom/feelingk/lguiab/common/Defines;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
