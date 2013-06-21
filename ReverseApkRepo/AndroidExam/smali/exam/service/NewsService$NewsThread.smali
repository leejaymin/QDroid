.class Lexam/service/NewsService$NewsThread;
.super Ljava/lang/Thread;
.source "NewsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/service/NewsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NewsThread"
.end annotation


# instance fields
.field arNews:[Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field mParent:Lexam/service/NewsService;

.field final synthetic this$0:Lexam/service/NewsService;


# direct methods
.method public constructor <init>(Lexam/service/NewsService;Lexam/service/NewsService;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "parent"
    .parameter "handler"

    .prologue
    .line 49
    iput-object p1, p0, Lexam/service/NewsService$NewsThread;->this$0:Lexam/service/NewsService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 40
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 41
    const-string v2, "\uc77c\ubcf8, \ub3c5\ub3c4\ub294 \ud55c\uad6d\ub545\uc73c\ub85c \uc778\uc815"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 42
    const-string v2, "\ubc88\ub370\uae30 \ub9db \ucd78\ucf54\ud30c\uc774 \ucd9c\uc2dc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 43
    const-string v2, "\ucd98\ucc9c \uc9c0\uc5ed\uc5d0 \ucd08\uac70\ub300 \uc720\uc804 \ubc1c\uacac"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 44
    const-string v2, "\ud55c\uad6d \uc6d4\ub4dc\ucef5 \uacb0\uc2b9 \uc9c4\ucd9c"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 45
    const-string v2, "\uad6d\ubbfc \uc18c\ub4dd 6\ub9cc\ubd88 \ub3cc\ud30c"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 46
    const-string v2, "\ud559\uad50 \ud3ed\ub825 \uc644\uc804 \uadfc\uc808\ub41c \uac83\uc73c\ub85c \uc870\uc0ac"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 47
    const-string v2, "\uc548\ub4dc\ub85c\uc774\ub4dc \uc810\uc720\uc728 \uc544\uc774\ud3f0\uc744 \uc55e\uc9c8\ub800\ub2e4"

    aput-object v2, v0, v1

    iput-object v0, p0, Lexam/service/NewsService$NewsThread;->arNews:[Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lexam/service/NewsService$NewsThread;->mParent:Lexam/service/NewsService;

    .line 51
    iput-object p3, p0, Lexam/service/NewsService$NewsThread;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 54
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    iget-object v2, p0, Lexam/service/NewsService$NewsThread;->this$0:Lexam/service/NewsService;

    iget-boolean v2, v2, Lexam/service/NewsService;->mQuit:Z

    if-eqz v2, :cond_0

    .line 61
    return-void

    .line 55
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 56
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 57
    iget-object v2, p0, Lexam/service/NewsService$NewsThread;->arNews:[Ljava/lang/String;

    iget-object v3, p0, Lexam/service/NewsService$NewsThread;->arNews:[Ljava/lang/String;

    array-length v3, v3

    rem-int v3, v0, v3

    aget-object v2, v2, v3

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    iget-object v2, p0, Lexam/service/NewsService$NewsThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v2

    goto :goto_1
.end method
