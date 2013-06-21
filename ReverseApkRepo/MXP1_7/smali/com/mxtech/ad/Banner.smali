.class public final Lcom/mxtech/ad/Banner;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lfb;


# instance fields
.field private ㅼ꽑嫄:Lfh;

.field private 寃껋씠:Ljava/lang/Runnable;

.field private 弱밧:Lew;

.field private 洹:Landroid/view/animation/Animation;

.field private 癤욱븳援:I

.field private 궗:I

.field private 꾨뱾:Lfa;

.field private final 대쫫:Landroid/os/Handler;

.field private 덉쓣:Ljava/lang/Runnable;

.field private 뚮Ц:Lfa;

.field private 뚮벏:I

.field private 뚮젮議뚮떎怨:Z

.field private 먮:Z

.field private 먯껜蹂대떎:Lfa;

.field private 먯꽌:I

.field private 몃Ъ:Landroid/view/animation/Animation;

.field private 붿슧:Z

.field private final 쇰뒗:Ljava/util/Set;

.field private 留먰븷:Z

.field private 紐낆옱:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->쇰뒗:Ljava/util/Set;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->대쫫:Landroid/os/Handler;

    new-instance v0, Let;

    invoke-direct {v0, p0}, Let;-><init>(Lcom/mxtech/ad/Banner;)V

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->덉쓣:Ljava/lang/Runnable;

    new-instance v0, Leu;

    invoke-direct {v0, p0}, Leu;-><init>(Lcom/mxtech/ad/Banner;)V

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->寃껋씠:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mxtech/ad/Banner;->뚮벏:I

    new-instance v0, Lev;

    invoke-direct {v0, p0}, Lev;-><init>(Lcom/mxtech/ad/Banner;)V

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->紐낆옱:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->쇰뒗:Ljava/util/Set;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->대쫫:Landroid/os/Handler;

    new-instance v0, Let;

    invoke-direct {v0, p0}, Let;-><init>(Lcom/mxtech/ad/Banner;)V

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->덉쓣:Ljava/lang/Runnable;

    new-instance v0, Leu;

    invoke-direct {v0, p0}, Leu;-><init>(Lcom/mxtech/ad/Banner;)V

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->寃껋씠:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mxtech/ad/Banner;->뚮벏:I

    new-instance v0, Lev;

    invoke-direct {v0, p0}, Lev;-><init>(Lcom/mxtech/ad/Banner;)V

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->紐낆옱:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->쇰뒗:Ljava/util/Set;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->대쫫:Landroid/os/Handler;

    new-instance v0, Let;

    invoke-direct {v0, p0}, Let;-><init>(Lcom/mxtech/ad/Banner;)V

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->덉쓣:Ljava/lang/Runnable;

    new-instance v0, Leu;

    invoke-direct {v0, p0}, Leu;-><init>(Lcom/mxtech/ad/Banner;)V

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->寃껋씠:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mxtech/ad/Banner;->뚮벏:I

    new-instance v0, Lev;

    invoke-direct {v0, p0}, Lev;-><init>(Lcom/mxtech/ad/Banner;)V

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->紐낆옱:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic ㅼ꽑嫄(Lcom/mxtech/ad/Banner;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->洹:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/ad/Banner;)Lew;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->弱밧:Lew;

    return-object v0
.end method

.method private 癤욱븳援(J)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/mxtech/ad/Banner;->留먰븷:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->대쫫:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->대쫫:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private 癤욱븳援(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mxtech/ad/Banner;->removeAllViewsInLayout()V

    invoke-virtual {p0, p1}, Lcom/mxtech/ad/Banner;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/ad/Banner;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mxtech/ad/Banner;->癤욱븳援(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/ad/Banner;Lfa;)V
    .locals 0

    iput-object p1, p0, Lcom/mxtech/ad/Banner;->뚮Ц:Lfa;

    return-void
.end method

.method public static synthetic 궗(Lcom/mxtech/ad/Banner;)Lfa;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->뚮Ц:Lfa;

    return-object v0
.end method

.method private 꾨뱾()I
    .locals 1

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->ㅼ꽑嫄:Lfh;

    iget v0, v0, Lfh;->쇰뒗:I

    if-gez v0, :cond_0

    const/16 v0, 0x7530

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->ㅼ꽑嫄:Lfh;

    iget v0, v0, Lfh;->쇰뒗:I

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method

.method private 뚮Ц()I
    .locals 1

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->ㅼ꽑嫄:Lfh;

    iget v0, v0, Lfh;->쇰뒗:I

    if-gez v0, :cond_0

    const/16 v0, 0x7530

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->ㅼ꽑嫄:Lfh;

    iget v0, v0, Lfh;->쇰뒗:I

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method

.method private 먮()V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->대쫫:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mxtech/ad/Banner;->뚮젮議뚮떎怨:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mxtech/ad/Banner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->대쫫:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private 먯껜蹂대떎()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mxtech/ad/Banner;->留먰븷:Z

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->대쫫:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public static synthetic 먯꽌(Lcom/mxtech/ad/Banner;)Lfa;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    return-object v0
.end method

.method private 붿슧()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/mxtech/ad/Banner;->뚮젮議뚮떎怨:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/mxtech/ad/Banner;->留먰븷:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    invoke-interface {v0}, Lfa;->먯꽌()V

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    invoke-interface {v0}, Lfa;->ㅼ꽑嫄()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    :cond_2
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->쇰뒗:Ljava/util/Set;

    iget-object v3, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    invoke-interface {v3}, Lfa;->쇰뒗()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->ㅼ꽑嫄:Lfh;

    iget-object v3, p0, Lcom/mxtech/ad/Banner;->쇰뒗:Ljava/util/Set;

    invoke-virtual {v0, v3}, Lfh;->癤욱븳援(Ljava/util/Set;)Lfl;

    move-result-object v3

    if-nez v3, :cond_6

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/mxtech/ad/Banner;->붿슧:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    invoke-interface {v0}, Lfa;->대쫫()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->쇰뒗:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-direct {p0}, Lcom/mxtech/ad/Banner;->뚮Ц()I

    move-result v0

    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/mxtech/ad/Banner;->癤욱븳援(J)V

    iput-boolean v1, p0, Lcom/mxtech/ad/Banner;->留먰븷:Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/mxtech/ad/Banner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lex;->癤욱븳援(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iput-boolean v2, p0, Lcom/mxtech/ad/Banner;->먮:Z

    new-instance v0, Lex;

    iget v2, p0, Lcom/mxtech/ad/Banner;->癤욱븳援:I

    invoke-direct {v0, p0, v2}, Lex;-><init>(Lfb;I)V

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->쇰뒗:Ljava/util/Set;

    iget-char v4, v3, Lfl;->癤욱븳援:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v0, v3, Lfl;->궗:I

    if-lez v0, :cond_7

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/mxtech/ad/Banner;->먮:Z

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->弱밧:Lew;

    iget-boolean v4, p0, Lcom/mxtech/ad/Banner;->먮:Z

    invoke-interface {v0, p0, v3, v4}, Lew;->癤욱븳援(Lcom/mxtech/ad/Banner;Lfl;Z)Lfa;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    invoke-interface {v0}, Lfa;->궗()V

    const-wide/16 v0, 0x1f40

    invoke-direct {p0, v0, v1}, Lcom/mxtech/ad/Banner;->癤욱븳援(J)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/mxtech/ad/Banner;->뚮젮議뚮떎怨:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/mxtech/ad/Banner;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/mxtech/ad/Banner;->getWidth()I

    move-result v2

    const/16 v3, 0xa0

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/mxtech/ad/Banner;->getHeight()I

    move-result v2

    const/16 v3, 0x19

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    invoke-interface {v2}, Lfa;->癤욱븳援()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget v2, p0, Lcom/mxtech/ad/Banner;->뚮벏:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mxtech/ad/Banner;->뚮벏:I

    iget-object v2, p0, Lcom/mxtech/ad/Banner;->쇰뒗:Ljava/util/Set;

    iget-object v3, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    invoke-interface {v3}, Lfa;->쇰뒗()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    invoke-interface {v2}, Lfa;->먯꽌()V

    iget-object v2, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    invoke-interface {v2}, Lfa;->ㅼ꽑嫄()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    iput-boolean v1, p0, Lcom/mxtech/ad/Banner;->留먰븷:Z

    invoke-direct {p0}, Lcom/mxtech/ad/Banner;->붿슧()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    instance-of v2, v2, Lex;

    if-nez v2, :cond_1

    iput v1, p0, Lcom/mxtech/ad/Banner;->뚮벏:I

    goto :goto_0

    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_4

    iput-boolean v1, p0, Lcom/mxtech/ad/Banner;->留먰븷:Z

    invoke-direct {p0}, Lcom/mxtech/ad/Banner;->붿슧()V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->대쫫:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mxtech/ad/Banner;->紐낆옱:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->대쫫:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->대쫫:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->대쫫:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/mxtech/ad/Banner;->먮()V

    return-void
.end method

.method public setVisibility(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/mxtech/ad/Banner;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->洹:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->洹:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/ad/Banner;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mxtech/ad/Banner;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->몃Ъ:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->몃Ъ:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/ad/Banner;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public ㅼ꽑嫄()Z
    .locals 1

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 弱밧()V
    .locals 2

    iget-boolean v0, p0, Lcom/mxtech/ad/Banner;->뚮젮議뚮떎怨:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mxtech/ad/Banner;->뚮젮議뚮떎怨:Z

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    invoke-interface {v0}, Lfa;->궗()V

    iget-boolean v0, p0, Lcom/mxtech/ad/Banner;->붿슧:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mxtech/ad/Banner;->꾨뱾()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/mxtech/ad/Banner;->癤욱븳援(J)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mxtech/ad/Banner;->먮()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    invoke-interface {v0}, Lfa;->궗()V

    const-wide/16 v0, 0x1f40

    invoke-direct {p0, v0, v1}, Lcom/mxtech/ad/Banner;->癤욱븳援(J)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/mxtech/ad/Banner;->붿슧()V

    goto :goto_0
.end method

.method public 洹()Ljava/util/Collection;
    .locals 1

    sget-object v0, Lfc;->먯꽌:Ljava/util/ArrayList;

    return-object v0
.end method

.method public 癤욱븳援()I
    .locals 1

    iget v0, p0, Lcom/mxtech/ad/Banner;->궗:I

    return v0
.end method

.method public 癤욱븳援(Lfa;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    if-eq p1, v0, :cond_0

    sget-object v0, Lfc;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dispatch success is reported from unexpected advertisement: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/mxtech/ad/Banner;->붿슧:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/mxtech/ad/Banner;->먯껜蹂대떎()V

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mxtech/ad/Banner;->뚮젮議뚮떎怨:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    invoke-interface {v0}, Lfa;->먯꽌()V

    :cond_1
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    invoke-interface {v0}, Lfa;->ㅼ꽑嫄()V

    iput-object v1, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->대쫫:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mxtech/ad/Banner;->寃껋씠:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/mxtech/ad/Banner;->먮()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/mxtech/ad/Banner;->먯껜蹂대떎()V

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    if-nez v0, :cond_4

    invoke-interface {p1}, Lfa;->癤욱븳援()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mxtech/ad/Banner;->癤욱븳援(Landroid/view/ViewGroup;)V

    :goto_2
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    iget-boolean v0, p0, Lcom/mxtech/ad/Banner;->먮:Z

    iput-boolean v0, p0, Lcom/mxtech/ad/Banner;->붿슧:Z

    iput-object v1, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->대쫫:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mxtech/ad/Banner;->덉쓣:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->쇰뒗:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-boolean v0, p0, Lcom/mxtech/ad/Banner;->붿슧:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/mxtech/ad/Banner;->꾨뱾()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/mxtech/ad/Banner;->癤욱븳援(J)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/mxtech/ad/Banner;->뚮젮議뚮떎怨:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    invoke-interface {v0}, Lfa;->먯꽌()V

    :cond_5
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->뚮Ц:Lfa;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/mxtech/ad/Banner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->몃Ъ:Landroid/view/animation/Animation;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->몃Ъ:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/ad/Banner;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->뚮Ц:Lfa;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    invoke-interface {v0}, Lfa;->ㅼ꽑嫄()V

    invoke-interface {p1}, Lfa;->癤욱븳援()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mxtech/ad/Banner;->癤욱븳援(Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->뚮Ц:Lfa;

    invoke-interface {v0}, Lfa;->ㅼ꽑嫄()V

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->뚮Ц:Lfa;

    goto :goto_2
.end method

.method public 癤욱븳援(Lfa;Z)V
    .locals 3

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    if-eq p1, v0, :cond_1

    sget-object v0, Lfc;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dispatch failure is reported from unexpected advertisement: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/mxtech/ad/Banner;->뚮젮議뚮떎怨:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/mxtech/ad/Banner;->癤욱븳援(J)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mxtech/ad/Banner;->뚮젮議뚮떎怨:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/mxtech/ad/Banner;->癤욱븳援(J)V

    goto :goto_0
.end method

.method public 癤욱븳援(Lfh;IIIIILew;)V
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mxtech/ad/Banner;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_0

    move-object v2, v3

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/mxtech/ad/Banner;->癤욱븳援(Lfh;Landroid/view/animation/Animation;Landroid/view/animation/Animation;IIILew;)V

    return-void

    :cond_0
    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {v0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    goto :goto_1
.end method

.method public 癤욱븳援(Lfh;Landroid/view/animation/Animation;Landroid/view/animation/Animation;IIILew;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mxtech/ad/Banner;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iput p5, p0, Lcom/mxtech/ad/Banner;->궗:I

    iput p4, p0, Lcom/mxtech/ad/Banner;->癤욱븳援:I

    iput p6, p0, Lcom/mxtech/ad/Banner;->먯꽌:I

    iput-object p7, p0, Lcom/mxtech/ad/Banner;->弱밧:Lew;

    iput-object p1, p0, Lcom/mxtech/ad/Banner;->ㅼ꽑嫄:Lfh;

    iput-object p2, p0, Lcom/mxtech/ad/Banner;->洹:Landroid/view/animation/Animation;

    if-eqz p3, :cond_1

    iput-object p3, p0, Lcom/mxtech/ad/Banner;->몃Ъ:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->몃Ъ:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    return-void
.end method

.method public 궗()I
    .locals 2

    iget v0, p0, Lcom/mxtech/ad/Banner;->궗:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x140

    :goto_0
    sget v1, Lee;->궗:F

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :pswitch_1
    const/16 v0, 0x1d4

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x2d8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public 궗(Lfa;)V
    .locals 0

    return-void
.end method

.method public 대쫫()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mxtech/ad/Banner;->뚮젮議뚮떎怨:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    invoke-interface {v0}, Lfa;->먯꽌()V

    :cond_0
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    invoke-interface {v0}, Lfa;->ㅼ꽑嫄()V

    iput-object v1, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    :cond_1
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/mxtech/ad/Banner;->뚮젮議뚮떎怨:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    invoke-interface {v0}, Lfa;->먯꽌()V

    :cond_2
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    invoke-interface {v0}, Lfa;->ㅼ꽑嫄()V

    iput-object v1, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    :cond_3
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->뚮Ц:Lfa;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->뚮Ц:Lfa;

    invoke-interface {v0}, Lfa;->ㅼ꽑嫄()V

    iput-object v1, p0, Lcom/mxtech/ad/Banner;->뚮Ц:Lfa;

    :cond_4
    invoke-virtual {p0}, Lcom/mxtech/ad/Banner;->removeAllViews()V

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->대쫫:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public 먯꽌()I
    .locals 2

    iget v0, p0, Lcom/mxtech/ad/Banner;->궗:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x32

    :goto_0
    sget v1, Lee;->궗:F

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :pswitch_1
    const/16 v0, 0x3c

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x5a

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public 몃Ъ()Z
    .locals 1

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->ㅼ꽑嫄:Lfh;

    iget-boolean v0, v0, Lfh;->몃Ъ:Z

    return v0
.end method

.method public 쇰뒗()V
    .locals 1

    iget-boolean v0, p0, Lcom/mxtech/ad/Banner;->뚮젮議뚮떎怨:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mxtech/ad/Banner;->뚮젮議뚮떎怨:Z

    invoke-direct {p0}, Lcom/mxtech/ad/Banner;->먯껜蹂대떎()V

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    invoke-interface {v0}, Lfa;->먯꽌()V

    :cond_0
    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    invoke-interface {v0}, Lfa;->먯꽌()V

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->먯껜蹂대떎:Lfa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    invoke-interface {v0}, Lfa;->ㅼ꽑嫄()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/ad/Banner;->꾨뱾:Lfa;

    :cond_1
    invoke-direct {p0}, Lcom/mxtech/ad/Banner;->먮()V

    :cond_2
    return-void
.end method
