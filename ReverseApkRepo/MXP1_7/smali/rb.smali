.class public Lrb;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/service/PlayService;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/service/PlayService;)V
    .locals 0

    iput-object p1, p0, Lrb;->癤욱븳援:Lcom/mxtech/videoplayer/service/PlayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrb;->癤욱븳援:Lcom/mxtech/videoplayer/service/PlayService;

    invoke-static {v0}, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援(Lcom/mxtech/videoplayer/service/PlayService;)Lnb;

    move-result-object v0

    invoke-virtual {v0}, Lnb;->꾩()V

    :cond_0
    return-void
.end method
