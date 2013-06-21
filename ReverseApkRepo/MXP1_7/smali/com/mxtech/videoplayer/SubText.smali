.class public final Lcom/mxtech/videoplayer/SubText;
.super Lcom/mxtech/widget/StrokeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mxtech/widget/StrokeView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Lcom/mxtech/widget/StrokeView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Lcom/mxtech/videoplayer/SubView;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/mxtech/videoplayer/SubView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/mxtech/videoplayer/SubView;->弱밧(I)V

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Lcom/mxtech/videoplayer/SubView;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/mxtech/videoplayer/SubView;

    invoke-virtual {v0, v1}, Lcom/mxtech/videoplayer/SubView;->弱밧(I)V

    :cond_2
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
