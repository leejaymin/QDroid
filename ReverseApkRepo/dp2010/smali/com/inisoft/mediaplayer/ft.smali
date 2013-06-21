.class public final Lcom/inisoft/mediaplayer/ft;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/os/Messenger;

.field private b:Landroid/os/Messenger;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/inisoft/mediaplayer/bw;

.field private f:Landroid/content/Context;

.field private g:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/inisoft/mediaplayer/fv;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/fv;-><init>(Lcom/inisoft/mediaplayer/ft;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ft;->b:Landroid/os/Messenger;

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/ft;->c:Z

    new-instance v0, Lcom/inisoft/mediaplayer/fu;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/fu;-><init>(Lcom/inisoft/mediaplayer/ft;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ft;->g:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ft;->f:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ft;->d:Ljava/lang/String;

    sget-object v0, Lcom/inisoft/mediaplayer/bw;->b:Lcom/inisoft/mediaplayer/bw;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ft;->e:Lcom/inisoft/mediaplayer/bw;

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/ft;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ft;->a:Landroid/os/Messenger;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/inisoft/mediaplayer/PopupService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ft;->g:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/ft;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/ft;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/ft;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ft;->a:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/ft;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ft;->b:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/ft;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ft;->a:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/ft;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ft;->f:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xa

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ft;->a:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xb

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ft;->a:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/ft;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ft;->g:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/ft;->c:Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x32

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ft;->a:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
