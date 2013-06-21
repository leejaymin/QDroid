.class public final Lcom/mxtech/videoplayer/ad/ActivityVideoList;
.super Lcom/mxtech/videoplayer/ActivityVideoList;

# interfaces
.implements Lew;


# instance fields
.field private 뚮Ц:Lcom/mxtech/ad/Banner;

.field private 붿슧:Les;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/mxtech/videoplayer/ActivityVideoList;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/mxtech/videoplayer/L;->ㅼ꽑嫄:Lfh;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000e

    iget-object v2, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->쇰뒗:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/ad/Banner;

    iput-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->뚮Ц:Lcom/mxtech/ad/Banner;

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->뚮Ц:Lcom/mxtech/ad/Banner;

    sget-object v1, Lcom/mxtech/videoplayer/L;->ㅼ꽑嫄:Lfh;

    const v2, 0x7f040001

    const/high16 v3, 0x7f04

    sget-boolean v5, Lcom/mxtech/videoplayer/L;->대쫫:Z

    if-eqz v5, :cond_0

    move v4, v6

    :cond_0
    invoke-static {p0}, Lcom/mxtech/videoplayer/ad/App;->먯꽌(Landroid/app/Activity;)I

    move-result v5

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/mxtech/ad/Banner;->癤욱븳援(Lfh;IIIIILew;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->쇰뒗:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->뚮Ц:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/mxtech/videoplayer/ActivityVideoList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->onDestroy()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->뚮Ц:Lcom/mxtech/ad/Banner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->뚮Ц:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0}, Lcom/mxtech/ad/Banner;->대쫫()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->뚮Ц:Lcom/mxtech/ad/Banner;

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->붿슧:Les;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->붿슧:Les;

    invoke-virtual {v0}, Les;->洹()V

    :cond_1
    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->쇰뒗:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->onPause()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->뚮Ц:Lcom/mxtech/ad/Banner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->뚮Ц:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0}, Lcom/mxtech/ad/Banner;->쇰뒗()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->onResume()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->뚮Ц:Lcom/mxtech/ad/Banner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->뚮Ц:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0}, Lcom/mxtech/ad/Banner;->弱밧()V

    :cond_0
    return-void
.end method

.method public ㅼ꽑嫄()V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->뚮Ц:Lcom/mxtech/ad/Banner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->뚮Ц:Lcom/mxtech/ad/Banner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mxtech/ad/Banner;->setVisibility(I)V

    :cond_0
    invoke-super {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->ㅼ꽑嫄()V

    return-void
.end method

.method public 弱밧()V
    .locals 2

    invoke-super {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->弱밧()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->뚮Ц:Lcom/mxtech/ad/Banner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->뚮Ц:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0}, Lcom/mxtech/ad/Banner;->ㅼ꽑嫄()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->뚮Ц:Lcom/mxtech/ad/Banner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mxtech/ad/Banner;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public 癤욱븳援(Lcom/mxtech/ad/Banner;Lfl;Z)Lfa;
    .locals 3

    if-eqz p3, :cond_1

    sget-object v0, Lcom/mxtech/videoplayer/L;->ㅼ꽑嫄:Lfh;

    iget v0, v0, Lfh;->쇰뒗:I

    :goto_0
    :try_start_0
    iget-char v1, p2, Lfl;->癤욱븳援:C

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1}, Lcom/mxtech/ad/Banner;->癤욱븳援()I

    move-result v1

    invoke-static {}, Ler;->弱밧()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    new-instance v1, Ler;

    iget-object v2, p2, Lfl;->먯꽌:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0}, Ler;-><init>(Lfb;Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_2

    :sswitch_1
    invoke-virtual {p1}, Lcom/mxtech/ad/Banner;->癤욱븳援()I

    move-result v0

    invoke-static {}, Les;->弱밧()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->붿슧:Les;

    if-nez v0, :cond_2

    new-instance v0, Les;

    iget-object v1, p2, Lfl;->먯꽌:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Les;-><init>(Lfb;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->붿슧:Les;

    :cond_2
    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->붿슧:Les;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x76 -> :sswitch_1
    .end sparse-switch
.end method

.method public 癤욱븳援(Lcom/mxtech/ad/Banner;)V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->뚮Ц:Lcom/mxtech/ad/Banner;

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ad/ActivityVideoList;->먯꽌()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/mxtech/ad/Banner;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/mxtech/ad/Banner;->setVisibility(IZ)V

    goto :goto_0
.end method

.method public bridge synthetic 癤욱븳援(Lcom/mxtech/widget/ListRow;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/mxtech/videoplayer/ActivityVideoList;->癤욱븳援(Lcom/mxtech/widget/ListRow;)V

    return-void
.end method

.method public 궗(Lcom/mxtech/ad/Banner;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic 대쫫()V
    .locals 0

    invoke-super {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->대쫫()V

    return-void
.end method

.method public bridge synthetic 쇰뒗()V
    .locals 0

    invoke-super {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->쇰뒗()V

    return-void
.end method
