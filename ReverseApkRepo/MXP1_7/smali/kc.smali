.class public Lkc;
.super Landroid/app/ProgressDialog;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lkc;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lkc;->setCancelable(Z)V

    invoke-virtual {p0, v0}, Lkc;->setProgressStyle(I)V

    sget v0, Lnt;->wait_for_building_fontcache:I

    invoke-virtual {p1, v0}, Lcom/mxtech/videoplayer/ActivityScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkc;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援:Lfm;

    invoke-virtual {p0, v0}, Lkc;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p1, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援:Lfm;

    invoke-virtual {v0, p0}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lkc;->show()V

    return-void
.end method
