.class public final Lcom/mxtech/videoplayer/Manipulator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private final ㅼ꽑嫄:Lmr;

.field private final 弱밧:Landroid/net/Uri;

.field private 洹:Ljava/lang/String;

.field private final 癤욱븳援:Lcom/mxtech/videoplayer/SubView;

.field private final 궗:Landroid/view/ViewGroup;

.field private 꾨뱾:Landroid/view/View;

.field private 대쫫:Z

.field private 뚮Ц:Landroid/view/ViewGroup;

.field private 뚮젮議뚮떎怨:Landroid/widget/TextView;

.field private 먮:Landroid/widget/ZoomButton;

.field private 먯껜蹂대떎:Lcom/mxtech/videoplayer/Manipulator$Bar;

.field private final 먯꽌:Lfm;

.field private 몃Ъ:Landroid/view/ViewGroup;

.field private 붿슧:Landroid/widget/ZoomButton;

.field private final 쇰뒗:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/mxtech/videoplayer/SubView;[Landroid/view/View;Lfm;Lmr;Landroid/net/Uri;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->쇰뒗:Ljava/util/Map;

    iput-object p1, p0, Lcom/mxtech/videoplayer/Manipulator;->궗:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/mxtech/videoplayer/Manipulator;->癤욱븳援:Lcom/mxtech/videoplayer/SubView;

    array-length v2, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    iput-object p4, p0, Lcom/mxtech/videoplayer/Manipulator;->먯꽌:Lfm;

    iput-object p5, p0, Lcom/mxtech/videoplayer/Manipulator;->ㅼ꽑嫄:Lmr;

    iput-object p6, p0, Lcom/mxtech/videoplayer/Manipulator;->弱밧:Landroid/net/Uri;

    return-void

    :cond_0
    aget-object v3, p3, v1

    iget-object v4, p0, Lcom/mxtech/videoplayer/Manipulator;->쇰뒗:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static synthetic ㅼ꽑嫄(Lcom/mxtech/videoplayer/Manipulator;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->弱밧:Landroid/net/Uri;

    return-object v0
.end method

.method private ㅼ꽑嫄()V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->癤욱븳援:Lcom/mxtech/videoplayer/SubView;

    invoke-virtual {v0, p0}, Lcom/mxtech/videoplayer/SubView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic 弱밧(Lcom/mxtech/videoplayer/Manipulator;)Lmr;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->ㅼ꽑嫄:Lmr;

    return-object v0
.end method

.method private 弱밧()V
    .locals 6

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->뚮젮議뚮떎怨:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mxtech/videoplayer/Manipulator;->洹:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mxtech/videoplayer/Manipulator;->癤욱븳援:Lcom/mxtech/videoplayer/SubView;

    invoke-virtual {v4}, Lcom/mxtech/videoplayer/SubView;->getPositionModifier()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x447a

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private 癤욱븳援(I)V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->癤욱븳援:Lcom/mxtech/videoplayer/SubView;

    iget-object v1, p0, Lcom/mxtech/videoplayer/Manipulator;->癤욱븳援:Lcom/mxtech/videoplayer/SubView;

    invoke-virtual {v1}, Lcom/mxtech/videoplayer/SubView;->getPositionModifier()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/mxtech/videoplayer/SubView;->setPositionModifier(I)V

    invoke-direct {p0}, Lcom/mxtech/videoplayer/Manipulator;->弱밧()V

    return-void
.end method

.method static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/Manipulator;)V
    .locals 0

    invoke-direct {p0}, Lcom/mxtech/videoplayer/Manipulator;->ㅼ꽑嫄()V

    return-void
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/Manipulator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mxtech/videoplayer/Manipulator;->癤욱븳援(I)V

    return-void
.end method

.method public static synthetic 궗(Lcom/mxtech/videoplayer/Manipulator;)Lcom/mxtech/videoplayer/SubView;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->癤욱븳援:Lcom/mxtech/videoplayer/SubView;

    return-object v0
.end method

.method public static synthetic 먯꽌(Lcom/mxtech/videoplayer/Manipulator;)Lfm;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->먯꽌:Lfm;

    return-object v0
.end method

.method private 쇰뒗()V
    .locals 3

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->뚮Ц:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->뚮Ц:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/CheckBox;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->뚮Ц:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/mxtech/videoplayer/Manipulator;->癤욱븳援:Lcom/mxtech/videoplayer/SubView;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhg;

    invoke-virtual {v1, v0, p2}, Lcom/mxtech/videoplayer/SubView;->궗(Lhg;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->ㅼ꽑嫄:Lmr;

    invoke-interface {v0}, Lmr;->ㅼ꽑嫄곗쓽()V

    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->먯껜蹂대떎:Lcom/mxtech/videoplayer/Manipulator$Bar;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/Manipulator$Bar;->getHeight()I

    move-result v1

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->쇰뒗:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mxtech/videoplayer/Manipulator;->대쫫:Z

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->궗:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/Manipulator;->먯꽌()V

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public 癤욱븳援()V
    .locals 7

    const-wide/16 v5, 0x14

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->몃Ъ:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->癤욱븳援:Lcom/mxtech/videoplayer/SubView;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/SubView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lnp;->manipulator:I

    iget-object v3, p0, Lcom/mxtech/videoplayer/Manipulator;->궗:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->몃Ъ:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->몃Ъ:Landroid/view/ViewGroup;

    sget v2, Lno;->syncText:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->뚮젮議뚮떎怨:Landroid/widget/TextView;

    sget v0, Lnt;->subtitle_sync_format:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->洹:Ljava/lang/String;

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->몃Ъ:Landroid/view/ViewGroup;

    sget v1, Lno;->bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/videoplayer/Manipulator$Bar;

    iput-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->먯껜蹂대떎:Lcom/mxtech/videoplayer/Manipulator$Bar;

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->몃Ъ:Landroid/view/ViewGroup;

    sget v1, Lno;->loadSubtitle:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->꾨뱾:Landroid/view/View;

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->몃Ъ:Landroid/view/ViewGroup;

    sget v1, Lno;->syncBackward:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ZoomButton;

    iput-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->붿슧:Landroid/widget/ZoomButton;

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->몃Ъ:Landroid/view/ViewGroup;

    sget v1, Lno;->syncForward:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ZoomButton;

    iput-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->먮:Landroid/widget/ZoomButton;

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->몃Ъ:Landroid/view/ViewGroup;

    sget v1, Lno;->subtitleContainer:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->뚮Ц:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->몃Ъ:Landroid/view/ViewGroup;

    const v1, 0x1020027

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->먮:Landroid/widget/ZoomButton;

    invoke-virtual {v0, v5, v6}, Landroid/widget/ZoomButton;->setZoomSpeed(J)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->붿슧:Landroid/widget/ZoomButton;

    invoke-virtual {v0, v5, v6}, Landroid/widget/ZoomButton;->setZoomSpeed(J)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->먯껜蹂대떎:Lcom/mxtech/videoplayer/Manipulator$Bar;

    invoke-static {v0, p0}, Lcom/mxtech/videoplayer/Manipulator$Bar;->癤욱븳援(Lcom/mxtech/videoplayer/Manipulator$Bar;Lcom/mxtech/videoplayer/Manipulator;)V

    invoke-direct {p0}, Lcom/mxtech/videoplayer/Manipulator;->弱밧()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->꾨뱾:Landroid/view/View;

    new-instance v1, Lmo;

    invoke-direct {v1, p0}, Lmo;-><init>(Lcom/mxtech/videoplayer/Manipulator;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->붿슧:Landroid/widget/ZoomButton;

    new-instance v1, Lmp;

    invoke-direct {v1, p0}, Lmp;-><init>(Lcom/mxtech/videoplayer/Manipulator;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->먮:Landroid/widget/ZoomButton;

    new-instance v1, Lmq;

    invoke-direct {v1, p0}, Lmq;-><init>(Lcom/mxtech/videoplayer/Manipulator;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->궗:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mxtech/videoplayer/Manipulator;->몃Ъ:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public 癤욱븳援(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->쇰뒗:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/mxtech/videoplayer/Manipulator;->쇰뒗:Ljava/util/Map;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/mxtech/videoplayer/Manipulator;->대쫫:Z

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/mxtech/videoplayer/Manipulator;->먯껜蹂대떎:Lcom/mxtech/videoplayer/Manipulator$Bar;

    invoke-virtual {v2}, Lcom/mxtech/videoplayer/Manipulator$Bar;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public 궗()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->몃Ъ:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->몃Ъ:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mxtech/videoplayer/Manipulator;->몃Ъ:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/mxtech/videoplayer/Manipulator;->쇰뒗()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->먯껜蹂대떎:Lcom/mxtech/videoplayer/Manipulator$Bar;

    invoke-static {v0, v2}, Lcom/mxtech/videoplayer/Manipulator$Bar;->癤욱븳援(Lcom/mxtech/videoplayer/Manipulator$Bar;Lcom/mxtech/videoplayer/Manipulator;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->꾨뱾:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->붿슧:Landroid/widget/ZoomButton;

    invoke-virtual {v0, v2}, Landroid/widget/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->먮:Landroid/widget/ZoomButton;

    invoke-virtual {v0, v2}, Landroid/widget/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v2, p0, Lcom/mxtech/videoplayer/Manipulator;->몃Ъ:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/mxtech/videoplayer/Manipulator;->뚮젮議뚮떎怨:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mxtech/videoplayer/Manipulator;->먯껜蹂대떎:Lcom/mxtech/videoplayer/Manipulator$Bar;

    iput-object v2, p0, Lcom/mxtech/videoplayer/Manipulator;->꾨뱾:Landroid/view/View;

    iput-object v2, p0, Lcom/mxtech/videoplayer/Manipulator;->붿슧:Landroid/widget/ZoomButton;

    iput-object v2, p0, Lcom/mxtech/videoplayer/Manipulator;->먮:Landroid/widget/ZoomButton;

    iput-object v2, p0, Lcom/mxtech/videoplayer/Manipulator;->뚮Ц:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/mxtech/videoplayer/Manipulator;->洹:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/mxtech/videoplayer/Manipulator;->대쫫:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->쇰뒗:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->궗:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method public 궗(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->쇰뒗:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mxtech/videoplayer/Manipulator;->대쫫:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public 먯꽌()V
    .locals 9

    const/4 v8, -0x2

    const/16 v1, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->몃Ъ:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mxtech/videoplayer/Manipulator;->쇰뒗()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->癤욱븳援:Lcom/mxtech/videoplayer/SubView;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/SubView;->getSubtitleCount()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->먮:Landroid/widget/ZoomButton;

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->붿슧:Landroid/widget/ZoomButton;

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->뚮젮議뚮떎怨:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->먮:Landroid/widget/ZoomButton;

    invoke-virtual {v0, v4}, Landroid/widget/ZoomButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->붿슧:Landroid/widget/ZoomButton;

    invoke-virtual {v0, v4}, Landroid/widget/ZoomButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->뚮젮議뚮떎怨:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator;->몃Ъ:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/16 v1, 0x239f

    move v2, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    iget-object v1, p0, Lcom/mxtech/videoplayer/Manipulator;->癤욱븳援:Lcom/mxtech/videoplayer/SubView;

    invoke-virtual {v1, v3}, Lcom/mxtech/videoplayer/SubView;->궗(I)Lhg;

    move-result-object v6

    sget v1, Lnp;->subtitle_check_button:I

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setId(I)V

    invoke-interface {v6}, Lhg;->대쫫()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/mxtech/videoplayer/Manipulator;->癤욱븳援:Lcom/mxtech/videoplayer/SubView;

    invoke-virtual {v7, v3}, Lcom/mxtech/videoplayer/SubView;->먯꽌(I)Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-interface {v6}, Lhg;->ㅼ꽑嫄()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_2
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/mxtech/videoplayer/Manipulator;->뚮Ц:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method
