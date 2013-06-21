.class public Lkb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

.field private 궗:Landroid/app/AlertDialog;

.field private 먯꽌:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;)V
    .locals 1

    iput-object p1, p0, Lkb;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->뚮Ц()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lkb;->먯꽌:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v2, 0x2

    iget-object v0, p0, Lkb;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援:Lfm;

    invoke-virtual {v0, p1}, Lfm;->궗(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lkb;->궗:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkb;->궗:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lkb;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lkb;->먯꽌:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkb;->먯꽌:Landroid/net/Uri;

    iget-object v1, p0, Lkb;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v1, v1, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v1}, Lnb;->뚮Ц()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "playback_complete_action"

    invoke-static {v0, v1, v2}, Lel;->癤욱븳援(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lkb;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->뚮Ц()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lkb;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v1}, Lcom/mxtech/videoplayer/ActivityScreen;->뚮젮議뚮떎怨(Lcom/mxtech/videoplayer/ActivityScreen;)Lmv;

    move-result-object v1

    iget-object v2, p0, Lkb;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v2}, Lcom/mxtech/videoplayer/ActivityScreen;->寃껋씠(Lcom/mxtech/videoplayer/ActivityScreen;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lmv;->癤욱븳援(Landroid/net/Uri;IZ)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lkb;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v2, p0, Lkb;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v2}, Lcom/mxtech/videoplayer/ActivityScreen;->寃껋씠(Lcom/mxtech/videoplayer/ActivityScreen;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Landroid/net/Uri;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lkb;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->finish()V

    goto :goto_0
.end method
