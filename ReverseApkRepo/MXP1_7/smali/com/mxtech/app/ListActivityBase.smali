.class public Lcom/mxtech/app/ListActivityBase;
.super Landroid/app/ListActivity;


# instance fields
.field protected 癤욱븳援:Lfm;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Lfm;

    invoke-direct {v0}, Lfm;-><init>()V

    iput-object v0, p0, Lcom/mxtech/app/ListActivityBase;->癤욱븳援:Lfm;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lfd;->癤욱븳援(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/app/ListActivityBase;->癤욱븳援:Lfm;

    invoke-virtual {v0}, Lfm;->癤욱븳援()V

    invoke-static {p0}, Lfd;->쇰뒗(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-static {p0}, Lfd;->ㅼ꽑嫄(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    invoke-static {p0}, Lfd;->먯꽌(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    invoke-static {p0}, Lfd;->궗(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-static {p0}, Lfd;->弱밧(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    return-void
.end method
