.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;


# static fields
.field private static final a:[I

.field private static final b:Ljava/util/Comparator;

.field private static final c:Landroid/view/animation/Interpolator;


# instance fields
.field private A:F

.field private B:I

.field private C:Landroid/view/VelocityTracker;

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field private H:Landroid/support/v4/d/a;

.field private I:Landroid/support/v4/d/a;

.field private J:Z

.field private K:Z

.field private L:I

.field private M:Landroid/support/v4/view/ac;

.field private N:Landroid/support/v4/view/ac;

.field private O:Landroid/support/v4/view/ab;

.field private P:I

.field private final d:Ljava/util/ArrayList;

.field private e:Landroid/support/v4/view/i;

.field private f:I

.field private g:I

.field private h:Landroid/os/Parcelable;

.field private i:Ljava/lang/ClassLoader;

.field private j:Landroid/widget/Scroller;

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Z

.field private w:Z

.field private x:I

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->a:[I

    new-instance v0, Landroid/support/v4/view/x;

    invoke-direct {v0}, Landroid/support/v4/view/x;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->b:Ljava/util/Comparator;

    new-instance v0, Landroid/support/v4/view/y;

    invoke-direct {v0}, Landroid/support/v4/view/y;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    iput v2, p0, Landroid/support/v4/view/ViewPager;->g:I

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/os/Parcelable;

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->i:Ljava/lang/ClassLoader;

    iput v1, p0, Landroid/support/v4/view/ViewPager;->u:I

    iput v2, p0, Landroid/support/v4/view/ViewPager;->B:I

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->J:Z

    iput v3, p0, Landroid/support/v4/view/ViewPager;->P:I

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Landroid/support/v4/view/ViewPager;->c:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/t;->a(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->x:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->D:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->E:I

    new-instance v1, Landroid/support/v4/d/a;

    invoke-direct {v1, v0}, Landroid/support/v4/d/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->H:Landroid/support/v4/d/a;

    new-instance v1, Landroid/support/v4/d/a;

    invoke-direct {v1, v0}, Landroid/support/v4/d/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/d/a;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->F:I

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/support/v4/view/aa;
    .locals 2

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->e()Landroid/support/v4/view/aa;

    move-result-object v0

    goto :goto_1
.end method

.method private a(I)V
    .locals 1

    iget v0, p0, Landroid/support/v4/view/ViewPager;->P:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Landroid/support/v4/view/ViewPager;->P:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->M:Landroid/support/v4/view/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->M:Landroid/support/v4/view/ac;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ac;->a(I)V

    goto :goto_0
.end method

.method private a(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    return-void
.end method

.method private a(IZZI)V
    .locals 13

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v0}, Landroid/support/v4/view/i;->a()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p3, :cond_3

    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Z)V

    goto :goto_0

    :cond_3
    if-gez p1, :cond_6

    const/4 p1, 0x0

    :cond_4
    :goto_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->u:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->f:I

    add-int/2addr v1, v0

    if-gt p1, v1, :cond_5

    iget v1, p0, Landroid/support/v4/view/ViewPager;->f:I

    sub-int v0, v1, v0

    if-ge p1, v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aa;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/view/aa;->c:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v0}, Landroid/support/v4/view/i;->a()I

    move-result v0

    if-lt p1, v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v0}, Landroid/support/v4/view/i;->a()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    :cond_7
    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-eq v0, p1, :cond_9

    const/4 v0, 0x1

    move v6, v0

    :goto_3
    iput p1, p0, Landroid/support/v4/view/ViewPager;->f:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->d()V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    if-eqz p2, :cond_d

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Z)V

    :goto_4
    if-eqz v6, :cond_8

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->M:Landroid/support/v4/view/ac;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->M:Landroid/support/v4/view/ac;

    invoke-interface {v0}, Landroid/support/v4/view/ac;->a()V

    :cond_8
    if-eqz v6, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ac;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ac;

    invoke-interface {v0}, Landroid/support/v4/view/ac;->a()V

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    move v6, v0

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    sub-int v3, v0, v1

    rsub-int/lit8 v4, v2, 0x0

    if-nez v3, :cond_b

    if-nez v4, :cond_b

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->f()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(I)V

    goto :goto_4

    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->t:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(I)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    int-to-float v9, v0

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    int-to-float v8, v5

    int-to-float v5, v5

    const/high16 v9, 0x3f00

    sub-float/2addr v7, v9

    float-to-double v9, v7

    const-wide v11, 0x3fde28c7460698c7L

    mul-double/2addr v9, v11

    double-to-float v7, v9

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v7, v9

    mul-float/2addr v5, v7

    add-float/2addr v5, v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lez v7, :cond_c

    const/high16 v0, 0x447a

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_5
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    goto/16 :goto_4

    :cond_c
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/2addr v0, v7

    int-to-float v0, v0

    div-float v0, v5, v0

    const/high16 v5, 0x3f80

    add-float/2addr v0, v5

    const/high16 v5, 0x42c8

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_5

    :cond_d
    if-eqz v6, :cond_e

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->M:Landroid/support/v4/view/ac;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->M:Landroid/support/v4/view/ac;

    invoke-interface {v1}, Landroid/support/v4/view/ac;->a()V

    :cond_e
    if-eqz v6, :cond_f

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ac;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ac;

    invoke-interface {v1}, Landroid/support/v4/view/ac;->a()V

    :cond_f
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->f()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {p1}, Landroid/support/v4/view/e;->a(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/e;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->B:I

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/e;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->z:F

    invoke-static {p1, v0}, Landroid/support/v4/view/e;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->B:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->C:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->C:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->r:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->r:Z

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;ZIII)Z
    .locals 10

    const/4 v2, 0x1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, p1

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/o;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private b(I)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->s:Z

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    return-void
.end method

.method private c(I)V
    .locals 2

    new-instance v0, Landroid/support/v4/view/aa;

    invoke-direct {v0}, Landroid/support/v4/view/aa;-><init>()V

    iput p1, v0, Landroid/support/v4/view/aa;->b:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method instantiateItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c()[I
    .locals 1

    sget-object v0, Landroid/support/v4/view/ViewPager;->a:[I

    return-object v0
.end method

.method private d()V
    .locals 9

    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->s:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    iget v0, p0, Landroid/support/v4/view/ViewPager;->u:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->f:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v1}, Landroid/support/v4/view/i;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Landroid/support/v4/view/ViewPager;->f:I

    add-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v1, v2

    move v3, v4

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aa;

    iget v8, v0, Landroid/support/v4/view/aa;->b:I

    if-lt v8, v5, :cond_2

    iget v8, v0, Landroid/support/v4/view/aa;->b:I

    if-le v8, v7, :cond_3

    :cond_2
    iget-boolean v8, v0, Landroid/support/v4/view/aa;->c:Z

    if-nez v8, :cond_3

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    iget v1, v0, Landroid/support/v4/view/aa;->b:I

    iget-object v0, v0, Landroid/support/v4/view/aa;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method destroyItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ge v3, v7, :cond_5

    iget v8, v0, Landroid/support/v4/view/aa;->b:I

    if-le v8, v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v5, :cond_4

    move v3, v5

    :cond_4
    :goto_1
    if-gt v3, v7, :cond_5

    iget v8, v0, Landroid/support/v4/view/aa;->b:I

    if-ge v3, v8, :cond_5

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->c(I)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v3, v1

    iget v1, v0, Landroid/support/v4/view/aa;->b:I

    add-int/lit8 v0, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aa;

    iget v4, v0, Landroid/support/v4/view/aa;->b:I

    :cond_7
    if-ge v4, v7, :cond_9

    add-int/lit8 v0, v4, 0x1

    if-le v0, v5, :cond_8

    :goto_2
    if-gt v0, v7, :cond_9

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v5

    goto :goto_2

    :cond_9
    move v1, v2

    :goto_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_f

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aa;

    iget v0, v0, Landroid/support/v4/view/aa;->b:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v0, v3, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aa;

    :goto_4
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    iget v1, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-eqz v0, :cond_a

    iget-object v0, v0, Landroid/support/v4/view/aa;->a:Ljava/lang/Object;

    :cond_a
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/aa;

    move-result-object v6

    :cond_b
    if-eqz v6, :cond_c

    iget v0, v6, Landroid/support/v4/view/aa;->b:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-eq v0, v1, :cond_0

    :cond_c
    :goto_5
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->e()Landroid/support/v4/view/aa;

    move-result-object v1

    if-eqz v1, :cond_d

    iget v1, v1, Landroid/support/v4/view/aa;->b:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v1, v3, :cond_d

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_f
    move-object v0, v6

    goto :goto_4
.end method

.method private d(I)V
    .locals 12

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/2addr v1, v2

    div-int v4, p1, v1

    rem-int v2, p1, v1

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v5, v2, v1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->K:Z

    iget v1, p0, Landroid/support/v4/view/ViewPager;->L:I

    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v8

    move v3, v0

    :goto_0
    if-ge v3, v8, :cond_1

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v10, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v10, :cond_5

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    move v11, v2

    move v2, v1

    move v1, v11

    :goto_1
    add-int/2addr v0, v6

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v0, v10

    if-eqz v0, :cond_0

    invoke-virtual {v9, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v11, v1

    move v1, v2

    move v2, v11

    goto :goto_0

    :pswitch_1
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v11, v1

    move v1, v2

    move v2, v0

    move v0, v11

    goto :goto_1

    :pswitch_2
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v7, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v11, v2

    move v2, v1

    move v1, v11

    goto :goto_1

    :pswitch_3
    sub-int v0, v7, v2

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v0, v10

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v2, v10

    move v11, v2

    move v2, v1

    move v1, v11

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->M:Landroid/support/v4/view/ac;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->M:Landroid/support/v4/view/ac;

    invoke-interface {v0, v4, v5}, Landroid/support/v4/view/ac;->a(IF)V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ac;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ac;

    invoke-interface {v0, v4, v5}, Landroid/support/v4/view/ac;->a(IF)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->K:Z

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->K:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void

    :cond_5
    move v11, v2

    move v2, v1

    move v1, v11

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private e()Landroid/support/v4/view/aa;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aa;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    iget-object v3, v0, Landroid/support/v4/view/aa;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/support/v4/view/i;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private e(I)Z
    .locals 6

    const/16 v5, 0x42

    const/16 v4, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    if-eq v3, v0, :cond_6

    if-ne p1, v4, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v1, v0, :cond_3

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->h()Z

    move-result v0

    :goto_0
    move v2, v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    :cond_2
    return v2

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    :cond_4
    if-ne p1, v5, :cond_1

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v4, v0, :cond_9

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    :cond_6
    if-eq p1, v4, :cond_7

    if-ne p1, v1, :cond_8

    :cond_7
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->h()Z

    move-result v0

    goto :goto_0

    :cond_8
    if-eq p1, v5, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_9
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v3}, Landroid/support/v4/view/i;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(I)V

    move v0, v1

    goto :goto_0

    :cond_a
    move v0, v2

    goto :goto_0
.end method

.method private f()V
    .locals 6

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->t:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->a(Z)V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    if-ne v1, v4, :cond_0

    if-eq v3, v5, :cond_1

    :cond_0
    invoke-virtual {p0, v4, v5}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    :cond_1
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->a(I)V

    :cond_2
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->s:Z

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->t:Z

    move v1, v2

    move v3, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aa;

    iget-boolean v4, v0, Landroid/support/v4/view/aa;->c:Z

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    iput-boolean v2, v0, Landroid/support/v4/view/aa;->c:Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->d()V

    :cond_5
    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->v:Z

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->w:Z

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->C:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->C:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->C:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private h()Z
    .locals 1

    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/support/v4/view/ac;)Landroid/support/v4/view/ac;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ac;

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ac;

    return-object v0
.end method

.method public final a()Landroid/support/v4/view/i;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    return-object v0
.end method

.method final a(Landroid/support/v4/view/ab;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->O:Landroid/support/v4/view/ab;

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v2

    const/high16 v0, 0x6

    if-eq v2, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->e()Landroid/support/v4/view/aa;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Landroid/support/v4/view/aa;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x4

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_5
    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->e()Landroid/support/v4/view/aa;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Landroid/support/v4/view/aa;->b:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_0
    move-object v0, v1

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    instance-of v3, p1, Landroid/support/v4/view/z;

    or-int/2addr v2, v3

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->q:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    iget v0, p0, Landroid/support/v4/view/ViewPager;->o:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->p:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    :goto_1
    return-void

    :cond_1
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    move-object v1, p3

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->d(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->f()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :sswitch_0
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->e(I)Z

    move-result v2

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->e(I)Z

    move-result v2

    goto :goto_0

    :sswitch_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/a;->b(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->e(I)Z

    move-result v2

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/support/v4/view/a;->a(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->e(I)Z

    move-result v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->e()Landroid/support/v4/view/aa;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, v4, Landroid/support/v4/view/aa;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/support/v4/view/o;->a(Landroid/view/View;)I

    move-result v2

    if-eqz v2, :cond_0

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v2}, Landroid/support/v4/view/i;->a()I

    move-result v2

    if-le v2, v1, :cond_5

    :cond_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->H:Landroid/support/v4/d/a;

    invoke-virtual {v2}, Landroid/support/v4/d/a;->a()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    const/high16 v3, 0x4387

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->H:Landroid/support/v4/d/a;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/support/v4/d/a;->a(II)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->H:Landroid/support/v4/d/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/d/a;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/d/a;

    invoke-virtual {v2}, Landroid/support/v4/d/a;->a()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    if-eqz v5, :cond_2

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v1}, Landroid/support/v4/view/i;->a()I

    move-result v1

    :cond_2
    const/high16 v5, 0x42b4

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v1, v1

    iget v6, p0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/2addr v6, v3

    mul-int/2addr v1, v6

    iget v6, p0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/d/a;

    invoke-virtual {v1, v4, v3}, Landroid/support/v4/d/a;->a(II)V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/d/a;

    invoke-virtual {v1, p1}, Landroid/support/v4/d/a;->a(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->H:Landroid/support/v4/d/a;

    invoke-virtual {v1}, Landroid/support/v4/d/a;->b()V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/d/a;

    invoke-virtual {v1}, Landroid/support/v4/d/a;->b()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->J:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/2addr v2, v1

    rem-int v2, v0, v2

    if-eqz v2, :cond_0

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/support/v4/view/ViewPager;->m:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/support/v4/view/ViewPager;->n:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v6, :cond_2

    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->v:Z

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->w:Z

    iput v3, p0, Landroid/support/v4/view/ViewPager;->B:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->C:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->C:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->C:Landroid/view/VelocityTracker;

    :cond_1
    :goto_0
    return v2

    :cond_2
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->v:Z

    if-eqz v1, :cond_3

    move v2, v6

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->w:Z

    if-nez v1, :cond_1

    :cond_4
    sparse-switch v0, :sswitch_data_0

    :cond_5
    :goto_1
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->v:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->C:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->C:Landroid/view/VelocityTracker;

    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->C:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_7
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->v:Z

    goto :goto_0

    :sswitch_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->B:I

    if-eq v0, v3, :cond_5

    invoke-static {p1, v0}, Landroid/support/v4/view/e;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/e;->c(Landroid/view/MotionEvent;I)F

    move-result v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->z:F

    sub-float v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {p1, v0}, Landroid/support/v4/view/e;->d(Landroid/view/MotionEvent;I)F

    move-result v9

    iget v0, p0, Landroid/support/v4/view/ViewPager;->A:F

    sub-float v0, v9, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v1

    float-to-int v4, v7

    float-to-int v5, v9

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_8

    iput v7, p0, Landroid/support/v4/view/ViewPager;->z:F

    iput v7, p0, Landroid/support/v4/view/ViewPager;->y:F

    iput v9, p0, Landroid/support/v4/view/ViewPager;->A:F

    goto :goto_0

    :cond_8
    iget v0, p0, Landroid/support/v4/view/ViewPager;->x:I

    int-to-float v0, v0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_9

    cmpl-float v0, v8, v10

    if-lez v0, :cond_9

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->v:Z

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->a(I)V

    iput v7, p0, Landroid/support/v4/view/ViewPager;->z:F

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->a(Z)V

    goto :goto_1

    :cond_9
    iget v0, p0, Landroid/support/v4/view/ViewPager;->x:I

    int-to-float v0, v0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_5

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->w:Z

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->y:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->z:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->A:F

    invoke-static {p1, v2}, Landroid/support/v4/view/e;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->B:I

    iget v0, p0, Landroid/support/v4/view/ViewPager;->P:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->v:Z

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->w:Z

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->a(I)V

    goto/16 :goto_1

    :cond_a
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->f()V

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->v:Z

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->w:Z

    goto/16 :goto_1

    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->q:Z

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->d()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->q:Z

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    sub-int v10, p4, p2

    sub-int v11, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v9, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_1

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v7, :cond_0

    iget v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v7, v7, 0x7

    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v14, v1, 0x70

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move v7, v6

    :goto_1
    sparse-switch v14, :sswitch_data_0

    move v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    :goto_2
    add-int/2addr v7, v12

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v1

    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V

    move v1, v4

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v6

    :goto_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    goto :goto_1

    :pswitch_3
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_1

    :sswitch_0
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v16, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v16

    goto :goto_2

    :sswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_2

    :sswitch_2
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_2

    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->e()Landroid/support/v4/view/aa;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/2addr v7, v10

    iget v1, v1, Landroid/support/v4/view/aa;->b:I

    mul-int/2addr v1, v7

    add-int/2addr v1, v6

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v2

    invoke-virtual {v13, v1, v2, v7, v14}, Landroid/view/View;->layout(IIII)V

    :cond_1
    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/view/ViewPager;->m:I

    sub-int v1, v11, v3

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->n:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/view/ViewPager;->L:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->J:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 11

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v2, v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_7

    invoke-virtual {p0, v6}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_b

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_b

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v1, :cond_b

    iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v9, v1, 0x7

    iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v4, v1, 0x70

    const-string v1, "ViewPager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "gravity: "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " hgrav: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " vgrav: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, -0x8000

    const/high16 v0, -0x8000

    const/16 v5, 0x30

    if-eq v4, v5, :cond_0

    const/16 v5, 0x50

    if-ne v4, v5, :cond_3

    :cond_0
    const/4 v4, 0x1

    move v5, v4

    :goto_1
    const/4 v4, 0x3

    if-eq v9, v4, :cond_1

    const/4 v4, 0x5

    if-ne v9, v4, :cond_4

    :cond_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v5, :cond_5

    const/high16 v1, 0x4000

    :cond_2
    :goto_3
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v8, v1, v0}, Landroid/view/View;->measure(II)V

    if-eqz v5, :cond_6

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v2, v0

    move v1, v3

    :goto_4
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v3, v1

    move v2, v0

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    move v5, v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_2

    const/high16 v0, 0x4000

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_b

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v3, v0

    move v1, v0

    move v0, v2

    goto :goto_4

    :cond_7
    const/high16 v0, 0x4000

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->o:I

    const/high16 v0, 0x4000

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->p:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->q:Z

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->q:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_a

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_8

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v0, :cond_9

    :cond_8
    iget v0, p0, Landroid/support/v4/view/ViewPager;->o:I

    iget v4, p0, Landroid/support/v4/view/ViewPager;->p:I

    invoke-virtual {v3, v0, v4}, Landroid/view/View;->measure(II)V

    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_a
    return-void

    :cond_b
    move v0, v2

    move v1, v3

    goto :goto_4
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_0

    move v3, v0

    move v4, v1

    :goto_0
    if-eq v4, v2, :cond_2

    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->e()Landroid/support/v4/view/aa;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v6, v6, Landroid/support/v4/view/aa;->b:I

    iget v7, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    move v2, v3

    goto :goto_0

    :cond_1
    add-int/2addr v4, v3

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->g:I

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/os/Parcelable;

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->i:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    iput v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    const/4 v0, 0x0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->k:I

    add-int v3, p1, v0

    if-lez p3, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    add-int/2addr v1, p3

    div-int v4, v0, v1

    rem-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, v4

    add-float/2addr v0, v1

    int-to-float v1, v3

    mul-float/2addr v0, v1

    float-to-int v1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->timePassed()I

    move-result v4

    sub-int v5, v0, v4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    iget v4, p0, Landroid/support/v4/view/ViewPager;->f:I

    mul-int/2addr v3, v4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->f()V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v6, -0x1

    const/4 v0, 0x0

    const/4 v4, 0x1

    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->G:Z

    if-eqz v1, :cond_1

    move v0, v4

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v1}, Landroid/support/v4/view/i;->a()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->C:Landroid/view/VelocityTracker;

    if-nez v1, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->C:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->C:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    :cond_5
    move v0, v4

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->f()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->y:F

    iput v1, p0, Landroid/support/v4/view/ViewPager;->z:F

    invoke-static {p1, v0}, Landroid/support/v4/view/e;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->B:I

    goto :goto_1

    :pswitch_2
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->v:Z

    if-nez v1, :cond_6

    iget v1, p0, Landroid/support/v4/view/ViewPager;->B:I

    invoke-static {p1, v1}, Landroid/support/v4/view/e;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/e;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->z:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p1, v1}, Landroid/support/v4/view/e;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    iget v5, p0, Landroid/support/v4/view/ViewPager;->A:F

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v5, p0, Landroid/support/v4/view/ViewPager;->x:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_6

    cmpl-float v1, v3, v1

    if-lez v1, :cond_6

    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->v:Z

    iput v2, p0, Landroid/support/v4/view/ViewPager;->z:F

    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->a(I)V

    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->a(Z)V

    :cond_6
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->v:Z

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/support/v4/view/ViewPager;->B:I

    invoke-static {p1, v1}, Landroid/support/v4/view/e;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/e;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->z:F

    sub-float/2addr v2, v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->z:F

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float v3, v1, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v5

    iget v1, p0, Landroid/support/v4/view/ViewPager;->k:I

    add-int v6, v5, v1

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v1}, Landroid/support/v4/view/i;->a()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    iget v1, p0, Landroid/support/v4/view/ViewPager;->f:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/2addr v2, v6

    int-to-float v2, v2

    cmpg-float v8, v3, v1

    if-gez v8, :cond_8

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_7

    neg-float v0, v3

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->H:Landroid/support/v4/d/a;

    int-to-float v3, v5

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/support/v4/d/a;->a(F)Z

    move-result v0

    :cond_7
    move v9, v1

    move v1, v0

    move v0, v9

    :goto_2
    iget v2, p0, Landroid/support/v4/view/ViewPager;->z:F

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v0, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/support/v4/view/ViewPager;->z:F

    float-to-int v2, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->d(I)V

    move v0, v1

    goto/16 :goto_1

    :cond_8
    cmpl-float v1, v3, v2

    if-lez v1, :cond_c

    mul-int v1, v7, v6

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-nez v1, :cond_9

    sub-float v0, v3, v2

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/d/a;

    int-to-float v3, v5

    div-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/support/v4/d/a;->a(F)Z

    move-result v0

    :cond_9
    move v1, v0

    move v0, v2

    goto :goto_2

    :pswitch_3
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->v:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->C:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/v4/view/ViewPager;->E:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, p0, Landroid/support/v4/view/ViewPager;->B:I

    invoke-static {v0, v1}, Landroid/support/v4/view/k;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v1, v0

    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->s:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    div-int v0, v3, v2

    rem-int/2addr v3, v2

    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->B:I

    invoke-static {p1, v3}, Landroid/support/v4/view/e;->a(Landroid/view/MotionEvent;I)I

    move-result v3

    invoke-static {p1, v3}, Landroid/support/v4/view/e;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    iget v5, p0, Landroid/support/v4/view/ViewPager;->y:F

    sub-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Landroid/support/v4/view/ViewPager;->F:I

    if-le v3, v5, :cond_b

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Landroid/support/v4/view/ViewPager;->D:I

    if-le v3, v5, :cond_b

    if-lez v1, :cond_a

    :goto_3
    invoke-direct {p0, v0, v4, v4, v1}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    iput v6, p0, Landroid/support/v4/view/ViewPager;->B:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->H:Landroid/support/v4/d/a;

    invoke-virtual {v0}, Landroid/support/v4/d/a;->c()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/d/a;

    invoke-virtual {v1}, Landroid/support/v4/d/a;->c()Z

    move-result v1

    or-int/2addr v0, v1

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v2, 0x3f00

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3

    :pswitch_4
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->v:Z

    if-eqz v1, :cond_4

    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    invoke-direct {p0, v0, v4, v4}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    iput v6, p0, Landroid/support/v4/view/ViewPager;->B:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->H:Landroid/support/v4/d/a;

    invoke-virtual {v0}, Landroid/support/v4/d/a;->c()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/d/a;

    invoke-virtual {v1}, Landroid/support/v4/d/a;->c()Z

    move-result v1

    or-int/2addr v0, v1

    goto/16 :goto_1

    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/e;->a(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/e;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->z:F

    invoke-static {p1, v1}, Landroid/support/v4/view/e;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->B:I

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    iget v1, p0, Landroid/support/v4/view/ViewPager;->B:I

    invoke-static {p1, v1}, Landroid/support/v4/view/e;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/e;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->z:F

    goto/16 :goto_1

    :cond_c
    move v1, v0

    move v0, v3

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method