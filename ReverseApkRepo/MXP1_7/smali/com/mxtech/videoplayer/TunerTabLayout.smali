.class public final Lcom/mxtech/videoplayer/TunerTabLayout;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private ㅼ꽑嫄:I

.field private 弱밧:I

.field private 癤욱븳援:I

.field private 궗:I

.field private 대쫫:Lqi;

.field private 먯꽌:I

.field private 쇰뒗:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/TunerTabLayout;->getSelectedIndex()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/TunerTabLayout;->癤욱븳援(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/TunerTabLayout;->getSelectedIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/TunerTabLayout;->getTabCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/TunerTabLayout;->癤욱븳援(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getSelected()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->쇰뒗:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->쇰뒗:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->쇰뒗:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/TunerTabLayout;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/TunerTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getTabs()[Landroid/widget/TextView;
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/TunerTabLayout;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView;

    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/TunerTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/TunerTabLayout;->癤욱븳援(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v0, 0x0

    const/high16 v3, 0x4100

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/TunerTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnl;->tuner_selected_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->ㅼ꽑嫄:I

    sget v2, Lnl;->tuner_deselected_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->弱밧:I

    const/high16 v1, 0x4120

    invoke-static {v1}, Lee;->먯꽌(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->癤욱븳援:I

    invoke-static {v3}, Lee;->먯꽌(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->궗:I

    invoke-static {v3}, Lee;->먯꽌(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->먯꽌:I

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/TunerTabLayout;->getTabs()[Landroid/widget/TextView;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-lt v0, v4, :cond_0

    return-void

    :cond_0
    aget-object v5, v3, v0

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->쇰뒗:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->쇰뒗:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public setListener(Lqi;)V
    .locals 0

    iput-object p1, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->대쫫:Lqi;

    return-void
.end method

.method public 癤욱븳援(I)V
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->쇰뒗:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/TunerTabLayout;->getTabs()[Landroid/widget/TextView;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    move v2, v1

    :goto_0
    if-lt v0, v5, :cond_1

    iget-object v0, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->대쫫:Lqi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->대쫫:Lqi;

    iget-object v1, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->쇰뒗:Landroid/widget/TextView;

    invoke-interface {v0, v1, p1}, Lqi;->癤욱븳援(Landroid/widget/TextView;I)V

    :cond_0
    return-void

    :cond_1
    aget-object v6, v4, v0

    add-int/lit8 v3, v2, 0x1

    if-ne v2, p1, :cond_2

    sget v2, Lnn;->tuner_selected_tab:I

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget v2, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->ㅼ꽑嫄:I

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/TunerTabLayout;->isFocused()Z

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iput-object v6, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->쇰뒗:Landroid/widget/TextView;

    :goto_1
    iget v2, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->궗:I

    iget v7, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->癤욱븳援:I

    iget v8, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->먯꽌:I

    iget v9, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->癤욱븳援:I

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    sget v2, Lnn;->tuner_deselected_tab:I

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget v2, p0, Lcom/mxtech/videoplayer/TunerTabLayout;->弱밧:I

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1
.end method
