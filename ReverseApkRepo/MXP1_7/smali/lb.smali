.class public Llb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/App;

.field private final 궗:Landroid/app/Activity;

.field private final 먯꽌:Lfm;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/App;Landroid/app/Activity;Lfm;)V
    .locals 0

    iput-object p1, p0, Llb;->癤욱븳援:Lcom/mxtech/videoplayer/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Llb;->궗:Landroid/app/Activity;

    iput-object p3, p0, Llb;->먯꽌:Lfm;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Llb;->癤욱븳援:Lcom/mxtech/videoplayer/App;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/App;->ㅼ꽑嫄()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Llb;->癤욱븳援:Lcom/mxtech/videoplayer/App;

    sget v2, Lnt;->direct_download_url:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Llb;->癤욱븳援:Lcom/mxtech/videoplayer/App;

    invoke-virtual {v4}, Lcom/mxtech/videoplayer/App;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {}, Lcom/mxtech/videoplayer/L;->癤욱븳援()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/mxtech/videoplayer/App;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Llb;->궗:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Llb;->癤욱븳援:Lcom/mxtech/videoplayer/App;

    invoke-static {v0}, Lfu;->癤욱븳援(Landroid/content/Context;)Lft;

    move-result-object v0

    iget-object v1, p0, Llb;->癤욱븳援:Lcom/mxtech/videoplayer/App;

    invoke-virtual {v1}, Lcom/mxtech/videoplayer/App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lft;->癤욱븳援(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Llb;->궗:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_2

    iget-object v0, p0, Llb;->癤욱븳援:Lcom/mxtech/videoplayer/App;

    sget v1, Lnt;->cannot_open_downloader:I

    invoke-virtual {v0, v1}, Lcom/mxtech/videoplayer/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Llb;->궗:Landroid/app/Activity;

    iget-object v2, p0, Llb;->먯꽌:Lfm;

    invoke-static {v1, v2, v0}, Lfn;->癤욱븳援(Landroid/content/Context;Lfm;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Llb;->癤욱븳援:Lcom/mxtech/videoplayer/App;

    sget v2, Lnt;->market_not_found:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Llb;->궗:Landroid/app/Activity;

    invoke-interface {v0, v4}, Lft;->癤욱븳援(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/mxtech/videoplayer/App;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
