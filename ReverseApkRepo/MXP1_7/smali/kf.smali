.class public Lkf;
.super Lli;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;)V
    .locals 0

    iput-object p1, p0, Lkf;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0, p1}, Lli;-><init>(Lcom/mxtech/app/ActivityBase;)V

    return-void
.end method


# virtual methods
.method protected 癤욱븳援(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lkf;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "video_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "subs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "subs.enable"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v1, p0, Lkf;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v1, v1, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v1}, Lnb;->ㅼ젣濡()V

    iget-object v1, p0, Lkf;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v1, v1, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v1}, Lnb;->궗()V

    iget-object v1, p0, Lkf;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
