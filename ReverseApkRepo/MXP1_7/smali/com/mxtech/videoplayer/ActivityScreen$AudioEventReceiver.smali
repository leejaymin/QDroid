.class public Lcom/mxtech/videoplayer/ActivityScreen$AudioEventReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static 癤욱븳援:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static 癤욱븳援(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    sget-object v0, Lcom/mxtech/videoplayer/ActivityScreen$AudioEventReceiver;->癤욱븳援:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/mxtech/videoplayer/ActivityScreen$AudioEventReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/mxtech/videoplayer/ActivityScreen$AudioEventReceiver;->癤욱븳援:Landroid/content/ComponentName;

    :cond_0
    sget-object v0, Lcom/mxtech/videoplayer/ActivityScreen$AudioEventReceiver;->癤욱븳援:Landroid/content/ComponentName;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lfd;->먯꽌()Landroid/app/Activity;

    move-result-object v1

    instance-of v0, v1, Lcom/mxtech/videoplayer/ActivityScreen;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-nez v0, :cond_2

    sget-object v0, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄:Ljava/lang/String;

    const-string v1, "android.intent.action.MEDIA_BUTTON came without key event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    check-cast v1, Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v1, v0}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;Landroid/view/KeyEvent;)Z

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityScreen$AudioEventReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityScreen$AudioEventReceiver;->abortBroadcast()V

    goto :goto_0
.end method
