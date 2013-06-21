.class public Lla;
.super Landroid/app/ProgressDialog;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final ㅼ꽑嫄:Lfm;

.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/App;

.field private final 궗:Landroid/app/Activity;

.field private final 먯꽌:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/App;Landroid/app/Activity;Lfm;)V
    .locals 3

    iput-object p1, p0, Lla;->癤욱븳援:Lcom/mxtech/videoplayer/App;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lla;->궗:Landroid/app/Activity;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lla;->먯꽌:Landroid/os/Handler;

    iput-object p3, p0, Lla;->ㅼ꽑嫄:Lfm;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lla;->setCancelable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lla;->setProgressStyle(I)V

    sget v0, Lnt;->version_checking:I

    invoke-virtual {p1, v0}, Lcom/mxtech/videoplayer/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lla;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p3}, Lla;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p3, p0}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lla;->show()V

    sget-object v0, Lcom/mxtech/videoplayer/L;->ㅼ꽑嫄:Lfh;

    iget-object v1, p0, Lla;->먯꽌:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lfh;->癤욱븳援(Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v6, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lla;->궗:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lla;->ㅼ꽑嫄:Lfm;

    invoke-virtual {v0, p0}, Lfm;->먯꽌(Landroid/content/DialogInterface;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lla;->dismiss()V

    invoke-static {}, Lfd;->먯꽌()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lla;->궗:Landroid/app/Activity;

    if-eq v0, v1, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lla;->궗:Landroid/app/Activity;

    iget-object v1, p0, Lla;->ㅼ꽑嫄:Lfm;

    iget-object v2, p0, Lla;->癤욱븳援:Lcom/mxtech/videoplayer/App;

    sget v3, Lnt;->version_checking_failed:I

    invoke-virtual {v2, v3}, Lcom/mxtech/videoplayer/App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lfn;->癤욱븳援(Landroid/content/Context;Lfm;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move v0, v6

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lla;->癤욱븳援:Lcom/mxtech/videoplayer/App;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lla;->癤욱븳援:Lcom/mxtech/videoplayer/App;

    invoke-virtual {v1}, Lcom/mxtech/videoplayer/App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    sget-object v0, Lcom/mxtech/videoplayer/L;->ㅼ꽑嫄:Lfh;

    iget-object v1, p0, Lla;->궗:Landroid/app/Activity;

    iget-object v2, p0, Lla;->ㅼ꽑嫄:Lfm;

    const/4 v4, 0x3

    new-instance v5, Llb;

    iget-object v7, p0, Lla;->癤욱븳援:Lcom/mxtech/videoplayer/App;

    iget-object v8, p0, Lla;->궗:Landroid/app/Activity;

    iget-object v9, p0, Lla;->ㅼ꽑嫄:Lfm;

    invoke-direct {v5, v7, v8, v9}, Llb;-><init>(Lcom/mxtech/videoplayer/App;Landroid/app/Activity;Lfm;)V

    invoke-virtual/range {v0 .. v5}, Lfh;->癤욱븳援(Landroid/content/Context;Lfm;Landroid/content/pm/PackageInfo;ILandroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lla;->궗:Landroid/app/Activity;

    iget-object v1, p0, Lla;->ㅼ꽑嫄:Lfm;

    iget-object v2, p0, Lla;->癤욱븳援:Lcom/mxtech/videoplayer/App;

    sget v3, Lnt;->version_checking_uptodate:I

    invoke-virtual {v2, v3}, Lcom/mxtech/videoplayer/App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lfn;->癤욱븳援(Landroid/content/Context;Lfm;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
