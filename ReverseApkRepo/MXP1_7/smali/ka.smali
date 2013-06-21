.class public Lka;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final ㅼ꽑嫄:I

.field final synthetic 弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

.field final 癤욱븳援:[I

.field final 궗:I

.field final 먯꽌:I

.field private 쇰뒗:I


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lka;->弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Lms;->뚮벏()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lnt;->decoder_hw:I

    aput v1, v0, v2

    sget v1, Lnt;->decoder_omx:I

    aput v1, v0, v3

    sget v1, Lnt;->decoder_sw:I

    aput v1, v0, v4

    iput-object v0, p0, Lka;->癤욱븳援:[I

    iput v2, p0, Lka;->궗:I

    iput v3, p0, Lka;->먯꽌:I

    iput v4, p0, Lka;->ㅼ꽑嫄:I

    :goto_0
    return-void

    :cond_0
    new-array v0, v4, [I

    sget v1, Lnt;->decoder_hw:I

    aput v1, v0, v2

    sget v1, Lnt;->decoder_sw:I

    aput v1, v0, v3

    iput-object v0, p0, Lka;->癤욱븳援:[I

    iput v2, p0, Lka;->궗:I

    iput v2, p0, Lka;->먯꽌:I

    iput v3, p0, Lka;->ㅼ꽑嫄:I

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lka;->癤욱븳援:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lka;->弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lka;->癤욱븳援:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lka;->弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lka;->弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->紐낆옱()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lka;->쇰뒗:I

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lka;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lka;->弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->ㅼ젣濡()V

    iget-object v0, p0, Lka;->弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v0, p0, Lka;->궗:I

    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lka;->弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v2, v2, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v2, v0}, Lnb;->癤욱븳援(B)V

    const-string v2, "decode_mode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    iget-object v1, p0, Lka;->弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v1, v1, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v1}, Lnb;->紐낆옱()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lka;->弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->弱밧(Lcom/mxtech/videoplayer/ActivityScreen;)I

    move-result v1

    or-int/lit8 v1, v1, 0x13

    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/ActivityScreen;->먯꽌(Lcom/mxtech/videoplayer/ActivityScreen;I)V

    iget-object v0, p0, Lka;->弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->ㅼ꽑嫄()V

    iget-object v0, p0, Lka;->弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->쇰뒗(Lcom/mxtech/videoplayer/ActivityScreen;)Z

    iget-object v0, p0, Lka;->弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->대쫫(Lcom/mxtech/videoplayer/ActivityScreen;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lka;->먯꽌:I

    if-ne p2, v0, :cond_3

    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lka;->弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

    const/4 v2, 0x0

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;Landroid/net/Uri;IBI)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lka;->癤욱븳援()V

    return-void
.end method

.method public 癤욱븳援()V
    .locals 2

    iget-object v0, p0, Lka;->弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lka;->弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->紐낆옱()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lka;->弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援:Lfm;

    invoke-virtual {v0}, Lfm;->궗()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lka;->弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->ㅼ쬆()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lka;->弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lnt;->decoder_selector_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lka;->쇰뒗:I

    invoke-virtual {v0, p0, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lka;->弱밧:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v1, v0}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lka;->궗:I

    iput v0, p0, Lka;->쇰뒗:I

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lka;->먯꽌:I

    iput v0, p0, Lka;->쇰뒗:I

    goto :goto_1

    :pswitch_3
    iget v0, p0, Lka;->ㅼ꽑嫄:I

    iput v0, p0, Lka;->쇰뒗:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
