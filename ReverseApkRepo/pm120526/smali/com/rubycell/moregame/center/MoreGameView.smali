.class public Lcom/rubycell/moregame/center/MoreGameView;
.super Landroid/widget/HorizontalScrollView;


# static fields
.field public static a:Lcom/rubycell/moregame/a/a/e;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/util/ArrayList;

.field private g:Landroid/widget/LinearLayout;

.field private h:Ljava/util/ArrayList;

.field private i:Landroid/view/GestureDetector;

.field private j:Lcom/rubycell/moregame/center/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->d:I

    iput v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->h:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/rubycell/moregame/center/MoreGameView;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/rubycell/moregame/center/MoreGameView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->d:I

    iput v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->h:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/rubycell/moregame/center/MoreGameView;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/rubycell/moregame/center/MoreGameView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->d:I

    iput v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->h:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/rubycell/moregame/center/MoreGameView;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/rubycell/moregame/center/MoreGameView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/rubycell/moregame/center/MoreGameView;)I
    .locals 1

    iget v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->d:I

    return v0
.end method

.method public static a()Lcom/rubycell/moregame/a/a/e;
    .locals 1

    sget-object v0, Lcom/rubycell/moregame/center/MoreGameView;->a:Lcom/rubycell/moregame/a/a/e;

    return-object v0
.end method

.method static synthetic a(Lcom/rubycell/moregame/center/MoreGameView;I)V
    .locals 0

    iput p1, p0, Lcom/rubycell/moregame/center/MoreGameView;->e:I

    return-void
.end method

.method static synthetic b(Lcom/rubycell/moregame/center/MoreGameView;)I
    .locals 1

    iget v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->c:I

    return v0
.end method

.method public static b()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/rubycell/moregame/center/MoreGameView;->a:Lcom/rubycell/moregame/a/a/e;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "------>davao one"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/rubycell/moregame/center/MoreGameView;->a:Lcom/rubycell/moregame/a/a/e;

    invoke-virtual {v0}, Lcom/rubycell/moregame/a/a/e;->a()V

    const/4 v0, 0x0

    sput-object v0, Lcom/rubycell/moregame/center/MoreGameView;->a:Lcom/rubycell/moregame/a/a/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/rubycell/moregame/center/MoreGameView;I)V
    .locals 0

    iput p1, p0, Lcom/rubycell/moregame/center/MoreGameView;->d:I

    return-void
.end method

.method private c()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/rubycell/moregame/center/MoreGameView;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->g:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameView;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/rubycell/moregame/a/a/e;

    iget-object v1, p0, Lcom/rubycell/moregame/center/MoreGameView;->b:Landroid/content/Context;

    const v2, 0x7f02017b

    invoke-direct {v0, v1, v2}, Lcom/rubycell/moregame/a/a/e;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/rubycell/moregame/center/MoreGameView;->a:Lcom/rubycell/moregame/a/a/e;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/rubycell/moregame/center/m;

    invoke-direct {v1, p0, v3}, Lcom/rubycell/moregame/center/m;-><init>(Lcom/rubycell/moregame/center/MoreGameView;B)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->i:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->i:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/rubycell/moregame/center/MoreGameView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/rubycell/moregame/center/MoreGameView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->d:I

    iget v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->d:I

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v4}, Lcom/rubycell/moregame/center/MoreGameView;->smoothScrollTo(II)V

    invoke-virtual {p0, v0, v4}, Lcom/rubycell/moregame/center/MoreGameView;->scrollTo(II)V

    iget v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->d:I

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameView;->setImageForPage(I)V

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setImageForPage(I)V
    .locals 5

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rubycell/moregame/center/MoreGameView;->a:Lcom/rubycell/moregame/a/a/e;

    if-eqz v0, :cond_0

    :try_start_0
    iput p1, p0, Lcom/rubycell/moregame/center/MoreGameView;->d:I

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a005a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a005b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/rubycell/moregame/center/MoreGameView;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rubycell/b/a/b;

    sget-object v3, Lcom/rubycell/moregame/center/MoreGameView;->a:Lcom/rubycell/moregame/a/a/e;

    invoke-virtual {v2}, Lcom/rubycell/b/a/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/rubycell/moregame/a/a/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    sget-object v1, Lcom/rubycell/moregame/center/MoreGameView;->a:Lcom/rubycell/moregame/a/a/e;

    invoke-virtual {v2}, Lcom/rubycell/b/a/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/rubycell/moregame/a/a/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->j:Lcom/rubycell/moregame/center/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->j:Lcom/rubycell/moregame/center/d;

    invoke-interface {v0, v2}, Lcom/rubycell/moregame/center/d;->b(Lcom/rubycell/b/a/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setListMoregameItem(Ljava/util/ArrayList;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/rubycell/moregame/center/MoreGameView;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameView;->setNumberImage(I)V

    invoke-virtual {p0, v1, v1}, Lcom/rubycell/moregame/center/MoreGameView;->smoothScrollTo(II)V

    invoke-virtual {p0, v1, v1}, Lcom/rubycell/moregame/center/MoreGameView;->scrollTo(II)V

    invoke-virtual {p0, v1}, Lcom/rubycell/moregame/center/MoreGameView;->setImageForPage(I)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->j:Lcom/rubycell/moregame/center/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameView;->j:Lcom/rubycell/moregame/center/d;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/rubycell/b/a/b;

    invoke-interface {v0, p0}, Lcom/rubycell/moregame/center/d;->a(Lcom/rubycell/b/a/b;)V

    goto :goto_0
.end method

.method public setNumberImage(I)V
    .locals 5

    const/4 v4, -0x2

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/rubycell/moregame/center/MoreGameView;->c:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/moregame/center/MoreGameView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f03000d

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/rubycell/moregame/center/MoreGameView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/rubycell/moregame/center/MoreGameView;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public setOnChangePageListener(Lcom/rubycell/moregame/center/d;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/moregame/center/MoreGameView;->j:Lcom/rubycell/moregame/center/d;

    return-void
.end method
