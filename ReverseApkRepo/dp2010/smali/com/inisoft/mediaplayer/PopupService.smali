.class public Lcom/inisoft/mediaplayer/PopupService;
.super Landroid/app/Service;


# instance fields
.field final a:Landroid/os/Messenger;

.field private b:Landroid/content/Context;

.field private c:Lcom/inisoft/mediaplayer/gb;

.field private d:Lcom/inisoft/mediaplayer/et;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/inisoft/mediaplayer/gk;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/gk;-><init>(Lcom/inisoft/mediaplayer/PopupService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PopupService;->a:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PopupService;->d:Lcom/inisoft/mediaplayer/et;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PopupService;->c:Lcom/inisoft/mediaplayer/gb;

    return-object v0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/PopupService;Lcom/inisoft/mediaplayer/et;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/PopupService;->d:Lcom/inisoft/mediaplayer/et;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/PopupService;Lcom/inisoft/mediaplayer/gb;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/PopupService;->c:Lcom/inisoft/mediaplayer/gb;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/PopupService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inisoft/mediaplayer/PopupService;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "FFMPEG_ERROR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/PopupService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/PopupService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PopupService;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/et;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PopupService;->d:Lcom/inisoft/mediaplayer/et;

    return-object v0
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/PopupService;)V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PopupService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/a/DicePlayerApplication;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/a/DicePlayerApplication;->a()Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->S()Lcom/inisoft/mediaplayer/bw;

    move-result-object v1

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->J()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/inisoft/mediaplayer/PopupService;->b:Landroid/content/Context;

    const-class v5, Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "FILE_PATH"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "SELECTED_AUDIOTRACK_INDEX"

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->N()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "FORCE_SPEED"

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->Z()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->O()Lcom/inisoft/mediaplayer/gm;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "SUBTITLE_INDEX1"

    iget v4, v0, Lcom/inisoft/mediaplayer/gm;->b:I

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "SUBTITLE_INDEX2"

    iget v4, v0, Lcom/inisoft/mediaplayer/gm;->c:I

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "SUBTITLE_ISEMBEDDED"

    iget-boolean v0, v0, Lcom/inisoft/mediaplayer/gm;->a:Z

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    sget-object v0, Lcom/inisoft/mediaplayer/bw;->a:Lcom/inisoft/mediaplayer/bw;

    if-eq v1, v0, :cond_2

    const-string v0, "SELECTED_FORCECODEC"

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bw;->a()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    const/high16 v0, 0x1000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PopupService;->b:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v6}, Lcom/inisoft/mediaplayer/PopupService;->a(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PopupService;->a:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PopupService;->c:Lcom/inisoft/mediaplayer/gb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PopupService;->c:Lcom/inisoft/mediaplayer/gb;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gb;->f()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "PopupPlayActivity"

    const-string v1, "Service has started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/inisoft/mediaplayer/PopupService;->b:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PopupService;->c:Lcom/inisoft/mediaplayer/gb;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "PopupPlayActivity"

    const-string v1, "Serice destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PopupService;->c:Lcom/inisoft/mediaplayer/gb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PopupService;->c:Lcom/inisoft/mediaplayer/gb;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gb;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PopupService;->c:Lcom/inisoft/mediaplayer/gb;

    :cond_0
    return-void
.end method
