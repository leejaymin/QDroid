.class public Ljq;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;)V
    .locals 0

    iput-object p1, p0, Ljq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v0, p0, Ljq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "level"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "scale"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "plugged"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ltz v0, :cond_1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    iget-object v1, p0, Ljq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v1}, Lcom/mxtech/videoplayer/ActivityScreen;->궗(Lcom/mxtech/videoplayer/ActivityScreen;)I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Ljq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v1}, Lcom/mxtech/videoplayer/ActivityScreen;->먯꽌(Lcom/mxtech/videoplayer/ActivityScreen;)I

    move-result v1

    if-eq v1, v2, :cond_1

    :cond_3
    iget-object v1, p0, Ljq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v1, v0}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;I)V

    iget-object v0, p0, Ljq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0, v2}, Lcom/mxtech/videoplayer/ActivityScreen;->궗(Lcom/mxtech/videoplayer/ActivityScreen;I)V

    iget-object v0, p0, Ljq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;)V

    goto :goto_0

    :cond_4
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->꾩()V

    goto :goto_0
.end method
