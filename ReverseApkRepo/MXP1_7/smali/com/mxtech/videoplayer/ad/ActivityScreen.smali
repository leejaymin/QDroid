.class public final Lcom/mxtech/videoplayer/ad/ActivityScreen;
.super Lcom/mxtech/videoplayer/ActivityScreen;

# interfaces
.implements Lew;
.implements Ljava/lang/Runnable;


# static fields
.field public static final 뚮젮議뚮떎怨:Ljava/lang/String;


# instance fields
.field private 덉쓣:Z

.field private 留먰븷:Lcom/mxtech/ad/Banner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".Ad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->뚮젮議뚮떎怨:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityScreen;-><init>()V

    return-void
.end method

.method private ㅼ꽑嫄(Z)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0}, Lcom/mxtech/ad/Banner;->ㅼ꽑嫄()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0}, Lcom/mxtech/ad/Banner;->쇰뒗()V

    :cond_2
    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0}, Lcom/mxtech/ad/Banner;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0, v1}, Lcom/mxtech/ad/Banner;->setVisibility(I)V

    goto :goto_0
.end method

.method private 洹멸()V
    .locals 4

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->뚮Ц:Lcom/mxtech/videoplayer/OptionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->洹:Lcom/mxtech/videoplayer/TopLayout;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/TopLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v1}, Lcom/mxtech/ad/Banner;->궗()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->뚮Ц:Lcom/mxtech/videoplayer/OptionBar;

    iget-object v2, v2, Lcom/mxtech/videoplayer/OptionBar;->癤욱븳援:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4160

    invoke-static {v3}, Lee;->먯꽌(F)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0}, Lcom/mxtech/ad/Banner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->몃Ъ:Landroid/widget/RelativeLayout;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->洹:Lcom/mxtech/videoplayer/TopLayout;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0, v1}, Lcom/mxtech/videoplayer/TopLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->몃Ъ:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0}, Lcom/mxtech/ad/Banner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->洹:Lcom/mxtech/videoplayer/TopLayout;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->몃Ъ:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->洹:Lcom/mxtech/videoplayer/TopLayout;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0, v1}, Lcom/mxtech/videoplayer/TopLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private 꾩()V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->대쫫:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0}, Lcom/mxtech/ad/Banner;->대쫫()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->洹:Lcom/mxtech/videoplayer/TopLayout;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0, v1}, Lcom/mxtech/videoplayer/TopLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    goto :goto_0
.end method

.method private 먯꽌(Z)V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->대쫫:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ad/ActivityScreen;->앸ぐ()V

    :cond_0
    iget-boolean v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->덉쓣:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0}, Lcom/mxtech/ad/Banner;->弱밧()V

    :cond_1
    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0}, Lcom/mxtech/ad/Banner;->ㅼ꽑嫄()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0}, Lcom/mxtech/ad/Banner;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/mxtech/ad/Banner;->setVisibility(IZ)V

    :cond_2
    return-void
.end method

.method private 앸ぐ()V
    .locals 10

    const v9, 0x7f070016

    const/4 v8, -0x2

    const/4 v4, 0x3

    new-instance v0, Lcom/mxtech/ad/Banner;

    invoke-direct {v0, p0}, Lcom/mxtech/ad/Banner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    sget-object v1, Lcom/mxtech/videoplayer/L;->ㅼ꽑嫄:Lfh;

    const v2, 0x7f04000a

    const v3, 0x7f04000b

    invoke-static {p0}, Lcom/mxtech/videoplayer/ad/App;->먯꽌(Landroid/app/Activity;)I

    move-result v5

    const/4 v6, 0x0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/mxtech/ad/Banner;->癤욱븳援(Lfh;IIIIILew;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0, v9}, Lcom/mxtech/ad/Banner;->setId(I)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mxtech/ad/Banner;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v1, 0x7f070038

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v1, v0}, Lcom/mxtech/ad/Banner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->몃Ъ:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    aput v9, v0, v4

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    const/high16 v1, 0x4248

    invoke-static {v1}, Lee;->먯꽌(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/mxtech/ad/Banner;->setMinimumHeight(I)V

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ad/ActivityScreen;->洹멸()V

    return-void
.end method

.method private 李()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->덉쓣:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/mxtech/videoplayer/ad/ActivityScreen;->ㅼ꽑嫄(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->寃껋씠()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/mxtech/videoplayer/ad/ActivityScreen;->먯꽌(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lcom/mxtech/videoplayer/ad/ActivityScreen;->ㅼ꽑嫄(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/mxtech/videoplayer/ActivityScreen;->onDestroy()V

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ad/ActivityScreen;->꾩()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->洹:Lcom/mxtech/videoplayer/TopLayout;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/TopLayout;->removeAllViews()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/mxtech/videoplayer/ActivityScreen;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->덉쓣:Z

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ad/ActivityScreen;->李()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/mxtech/videoplayer/ActivityScreen;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->덉쓣:Z

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ad/ActivityScreen;->李()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0}, Lcom/mxtech/ad/Banner;->ㅼ꽑嫄()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0}, Lcom/mxtech/ad/Banner;->弱밧()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->대쫫:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ad/ActivityScreen;->앸ぐ()V

    iget-boolean v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->덉쓣:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0}, Lcom/mxtech/ad/Banner;->弱밧()V

    :cond_0
    return-void
.end method

.method public ㅼ꽑嫄(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄(II)V

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/mxtech/videoplayer/ad/ActivityScreen;->李()V

    :cond_1
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

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/mxtech/ad/Banner;->癤욱븳援()I

    move-result v1

    invoke-static {}, Ler;->弱밧()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    new-instance v1, Ler;

    iget-object v2, p2, Lfl;->먯꽌:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0}, Ler;-><init>(Lfb;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch
.end method

.method public 癤욱븳援(Lcom/mxtech/ad/Banner;)V
    .locals 0

    return-void
.end method

.method public 궗(Lcom/mxtech/ad/Banner;)V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/mxtech/videoplayer/ad/ActivityScreen;->李()V

    goto :goto_0
.end method

.method public 먯꽌(II)V
    .locals 8

    const/4 v6, 0x3

    invoke-super {p0, p1, p2}, Lcom/mxtech/videoplayer/ActivityScreen;->먯꽌(II)V

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->대쫫:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :cond_1
    if-ne p2, v6, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ad/ActivityScreen;->대쫫()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leo;->궗(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v7, v0

    move-object v0, v1

    move v1, v7

    :goto_0
    if-lt v1, v3, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lfc;->癤욱븳援(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_4

    const-string v5, "the"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected 쇰뒗()V
    .locals 1

    invoke-super {p0}, Lcom/mxtech/videoplayer/ActivityScreen;->쇰뒗()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ad/ActivityScreen;->留먰븷:Lcom/mxtech/ad/Banner;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ad/ActivityScreen;->洹멸()V

    :cond_0
    return-void
.end method
