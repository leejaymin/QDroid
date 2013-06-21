.class public Lcom/thinkyeah/smartlock/view/LockPatternView;
.super Landroid/view/View;


# static fields
.field private static final a:[J


# instance fields
.field private final A:Landroid/graphics/Path;

.field private final B:Landroid/graphics/Rect;

.field private C:I

.field private D:I

.field private E:Landroid/os/Vibrator;

.field private F:[J

.field private G:I

.field private b:Z

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Lcom/thinkyeah/smartlock/view/c;

.field private f:Ljava/util/ArrayList;

.field private g:[[Z

.field private h:F

.field private i:F

.field private j:J

.field private k:Lcom/thinkyeah/smartlock/view/b;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:Landroid/graphics/Bitmap;

.field private u:Landroid/graphics/Bitmap;

.field private v:Landroid/graphics/Bitmap;

.field private w:Landroid/graphics/Bitmap;

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/graphics/Bitmap;

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [J

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide/16 v2, 0x28

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    const-wide/16 v2, 0x29

    aput-wide v2, v0, v1

    sput-object v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->a:[J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x3

    const/high16 v4, -0x4080

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->b:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->d:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->f:Ljava/util/ArrayList;

    filled-new-array {v5, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->g:[[Z

    iput v4, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->h:F

    iput v4, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->i:F

    sget-object v0, Lcom/thinkyeah/smartlock/view/b;->a:Lcom/thinkyeah/smartlock/view/b;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->k:Lcom/thinkyeah/smartlock/view/b;

    iput-boolean v2, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->l:Z

    iput-boolean v3, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->m:Z

    iput-boolean v2, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->n:Z

    iput-boolean v3, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->o:Z

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->p:F

    const v0, 0x3f19999a

    iput v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->q:F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->A:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->B:Landroid/graphics/Rect;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->E:Landroid/os/Vibrator;

    sget-object v0, Lcom/thinkyeah/smartlock/dh;->LockPatternView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "square"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "lock_width"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v2, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->G:I

    :goto_0
    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setClickable(Z)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->d:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->d:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const v0, 0x7f020002

    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->t:Landroid/graphics/Bitmap;

    const v0, 0x7f020003

    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->u:Landroid/graphics/Bitmap;

    const v0, 0x7f020026

    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->v:Landroid/graphics/Bitmap;

    const v0, 0x7f020027

    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->w:Landroid/graphics/Bitmap;

    const v0, 0x7f020028

    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->x:Landroid/graphics/Bitmap;

    const v0, 0x7f020024

    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->y:Landroid/graphics/Bitmap;

    const v0, 0x7f020025

    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->z:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->C:I

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->D:I

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->d()[J

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->F:[J

    return-void

    :cond_0
    const-string v1, "lock_height"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->G:I

    goto/16 :goto_0

    :cond_1
    iput v3, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->G:I

    goto/16 :goto_0
.end method

.method private a(I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(FF)Lcom/thinkyeah/smartlock/view/a;
    .locals 11

    const/4 v1, 0x0

    const/high16 v10, 0x4000

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget v5, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->s:F

    iget v4, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->q:F

    mul-float v6, v5, v4

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float v7, v5, v6

    div-float/2addr v7, v10

    add-float/2addr v7, v4

    move v4, v1

    :goto_0
    const/4 v8, 0x3

    if-lt v4, v8, :cond_6

    move v4, v3

    :cond_0
    if-gez v4, :cond_8

    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_5

    iget-object v1, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/view/a;

    iget v1, v5, Lcom/thinkyeah/smartlock/view/a;->a:I

    iget v4, v0, Lcom/thinkyeah/smartlock/view/a;->a:I

    sub-int v6, v1, v4

    iget v1, v5, Lcom/thinkyeah/smartlock/view/a;->b:I

    iget v4, v0, Lcom/thinkyeah/smartlock/view/a;->b:I

    sub-int v7, v1, v4

    iget v1, v0, Lcom/thinkyeah/smartlock/view/a;->a:I

    iget v4, v0, Lcom/thinkyeah/smartlock/view/a;->b:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v2, :cond_1

    iget v8, v0, Lcom/thinkyeah/smartlock/view/a;->a:I

    if-lez v6, :cond_e

    move v1, v2

    :goto_2
    add-int/2addr v1, v8

    :cond_1
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_10

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-eq v6, v2, :cond_10

    iget v0, v0, Lcom/thinkyeah/smartlock/view/a;->b:I

    if-lez v7, :cond_f

    :goto_3
    add-int/2addr v0, v2

    :goto_4
    invoke-static {v1, v0}, Lcom/thinkyeah/smartlock/view/a;->a(II)Lcom/thinkyeah/smartlock/view/a;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->g:[[Z

    iget v2, v0, Lcom/thinkyeah/smartlock/view/a;->a:I

    aget-object v1, v1, v2

    iget v2, v0, Lcom/thinkyeah/smartlock/view/a;->b:I

    aget-boolean v1, v1, v2

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a(Lcom/thinkyeah/smartlock/view/a;)V

    :cond_3
    invoke-direct {p0, v5}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a(Lcom/thinkyeah/smartlock/view/a;)V

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->n:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->E:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->F:[J

    invoke-virtual {v0, v1, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_4
    move-object v0, v5

    :cond_5
    return-object v0

    :cond_6
    int-to-float v8, v4

    mul-float/2addr v8, v5

    add-float/2addr v8, v7

    cmpl-float v9, p2, v8

    if-ltz v9, :cond_7

    add-float/2addr v8, v6

    cmpg-float v8, p2, v8

    if-lez v8, :cond_0

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    iget v5, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->r:F

    iget v6, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->q:F

    mul-float/2addr v6, v5

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float v8, v5, v6

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    :goto_5
    const/4 v8, 0x3

    if-lt v1, v8, :cond_a

    move v1, v3

    :cond_9
    if-gez v1, :cond_c

    move-object v5, v0

    goto/16 :goto_1

    :cond_a
    int-to-float v8, v1

    mul-float/2addr v8, v5

    add-float/2addr v8, v7

    cmpl-float v9, p1, v8

    if-ltz v9, :cond_b

    add-float/2addr v8, v6

    cmpg-float v8, p1, v8

    if-lez v8, :cond_9

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    iget-object v5, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->g:[[Z

    aget-object v5, v5, v4

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_d

    move-object v5, v0

    goto/16 :goto_1

    :cond_d
    invoke-static {v4, v1}, Lcom/thinkyeah/smartlock/view/a;->a(II)Lcom/thinkyeah/smartlock/view/a;

    move-result-object v5

    goto/16 :goto_1

    :cond_e
    move v1, v3

    goto :goto_2

    :cond_f
    move v2, v3

    goto :goto_3

    :cond_10
    move v0, v4

    goto :goto_4
.end method

.method private a(Lcom/thinkyeah/smartlock/view/a;)V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->g:[[Z

    invoke-virtual {p1}, Lcom/thinkyeah/smartlock/view/a;->a()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/thinkyeah/smartlock/view/a;->b()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->e:Lcom/thinkyeah/smartlock/view/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->e:Lcom/thinkyeah/smartlock/view/c;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->f:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method private b(I)F
    .locals 3

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->r:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->r:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private c(I)F
    .locals 3

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->s:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->s:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private d()[J
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f07

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-nez v2, :cond_0

    sget-object v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->a:[J

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "LockPatternView"

    const-string v3, "Vibrate pattern missing, using default"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    goto :goto_0

    :cond_0
    array-length v0, v2

    new-array v1, v0, [J

    const/4 v0, 0x0

    :goto_2
    array-length v3, v2

    if-lt v0, v3, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    aget v3, v2, v0

    int-to-long v3, v3

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->f()V

    sget-object v0, Lcom/thinkyeah/smartlock/view/b;->a:Lcom/thinkyeah/smartlock/view/b;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->k:Lcom/thinkyeah/smartlock/view/b;

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->invalidate()V

    return-void
.end method

.method private f()V
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    return-void

    :cond_0
    move v0, v1

    :goto_1
    if-lt v0, v4, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->g:[[Z

    aget-object v3, v3, v2

    aput-boolean v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->e()V

    return-void
.end method

.method public final a(Lcom/thinkyeah/smartlock/view/b;Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->f()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setDisplayMode(Lcom/thinkyeah/smartlock/view/b;)V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/view/a;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->g:[[Z

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/a;->a()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/a;->b()I

    move-result v0

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->l:Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->l:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->g:[[Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->k:Lcom/thinkyeah/smartlock/view/b;

    sget-object v5, Lcom/thinkyeah/smartlock/view/b;->b:Lcom/thinkyeah/smartlock/view/b;

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v10, 0x1

    mul-int/lit16 v4, v4, 0x2bc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->j:J

    sub-long/2addr v5, v7

    long-to-int v5, v5

    rem-int v6, v5, v4

    div-int/lit16 v7, v6, 0x2bc

    invoke-direct/range {p0 .. p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->f()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v7, :cond_7

    if-lez v7, :cond_8

    if-ge v7, v10, :cond_8

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_0

    rem-int/lit16 v4, v6, 0x2bc

    int-to-float v4, v4

    const/high16 v5, 0x442f

    div-float v5, v4, v5

    add-int/lit8 v4, v7, -0x1

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/thinkyeah/smartlock/view/a;

    iget v6, v4, Lcom/thinkyeah/smartlock/view/a;->b:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/thinkyeah/smartlock/view/LockPatternView;->b(I)F

    move-result v6

    iget v4, v4, Lcom/thinkyeah/smartlock/view/a;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/thinkyeah/smartlock/view/LockPatternView;->c(I)F

    move-result v8

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/thinkyeah/smartlock/view/a;

    iget v7, v4, Lcom/thinkyeah/smartlock/view/a;->b:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/thinkyeah/smartlock/view/LockPatternView;->b(I)F

    move-result v7

    sub-float/2addr v7, v6

    mul-float/2addr v7, v5

    iget v4, v4, Lcom/thinkyeah/smartlock/view/a;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/thinkyeah/smartlock/view/LockPatternView;->c(I)F

    move-result v4

    sub-float/2addr v4, v8

    mul-float/2addr v4, v5

    add-float v5, v6, v7

    move-object/from16 v0, p0

    iput v5, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->h:F

    add-float/2addr v4, v8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->i:F

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->invalidate()V

    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->r:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->s:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->p:F

    mul-float/2addr v4, v12

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->d:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->A:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->m:Z

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->k:Lcom/thinkyeah/smartlock/view/b;

    sget-object v5, Lcom/thinkyeah/smartlock/view/b;->c:Lcom/thinkyeah/smartlock/view/b;

    if-eq v4, v5, :cond_9

    const/4 v4, 0x0

    move v8, v4

    :goto_2
    if-eqz v8, :cond_5

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v6, v5

    move v5, v4

    :goto_3
    if-lt v5, v10, :cond_a

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->o:Z

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->k:Lcom/thinkyeah/smartlock/view/b;

    sget-object v5, Lcom/thinkyeah/smartlock/view/b;->b:Lcom/thinkyeah/smartlock/view/b;

    if-ne v4, v5, :cond_4

    :cond_3
    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->h:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->i:F

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->d:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->getPaddingLeft()I

    move-result v15

    const/4 v4, 0x0

    move v6, v4

    :goto_4
    const/4 v4, 0x3

    if-lt v6, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->c:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    move v6, v4

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->c:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-eqz v8, :cond_6

    const/4 v4, 0x0

    move v8, v4

    :goto_6
    add-int/lit8 v4, v10, -0x1

    if-lt v8, v4, :cond_15

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->c:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void

    :cond_7
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/thinkyeah/smartlock/view/a;

    invoke-virtual {v4}, Lcom/thinkyeah/smartlock/view/a;->a()I

    move-result v8

    aget-object v8, v11, v8

    invoke-virtual {v4}, Lcom/thinkyeah/smartlock/view/a;->b()I

    move-result v4

    const/4 v12, 0x1

    aput-boolean v12, v8, v4

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v4, 0x1

    move v8, v4

    goto :goto_2

    :cond_a
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/thinkyeah/smartlock/view/a;

    iget v14, v4, Lcom/thinkyeah/smartlock/view/a;->a:I

    aget-object v14, v11, v14

    iget v15, v4, Lcom/thinkyeah/smartlock/view/a;->b:I

    aget-boolean v14, v14, v15

    if-eqz v14, :cond_2

    const/4 v6, 0x1

    iget v14, v4, Lcom/thinkyeah/smartlock/view/a;->b:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/thinkyeah/smartlock/view/LockPatternView;->b(I)F

    move-result v14

    iget v4, v4, Lcom/thinkyeah/smartlock/view/a;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/thinkyeah/smartlock/view/LockPatternView;->c(I)F

    move-result v4

    if-nez v5, :cond_b

    invoke-virtual {v7, v14, v4}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_7
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v7, v14, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_7

    :cond_c
    int-to-float v4, v14

    int-to-float v5, v6

    mul-float/2addr v5, v13

    add-float v16, v4, v5

    const/4 v4, 0x0

    move v7, v4

    :goto_8
    const/4 v4, 0x3

    if-lt v7, v4, :cond_d

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto/16 :goto_4

    :cond_d
    int-to-float v4, v15

    int-to-float v5, v7

    mul-float/2addr v5, v12

    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v17, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    aget-object v4, v11, v6

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->m:Z

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->k:Lcom/thinkyeah/smartlock/view/b;

    sget-object v5, Lcom/thinkyeah/smartlock/view/b;->c:Lcom/thinkyeah/smartlock/view/b;

    if-eq v4, v5, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->v:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->t:Landroid/graphics/Bitmap;

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->C:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->D:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->r:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->s:F

    move/from16 v22, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v21, v19

    const/high16 v21, 0x4000

    div-float v19, v19, v21

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v22, v20

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v21, v17, v19

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-int v22, v18, v20

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->c:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int v5, v17, v19

    int-to-float v5, v5

    add-int v17, v18, v20

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->c:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto/16 :goto_8

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->o:Z

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->w:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->u:Landroid/graphics/Bitmap;

    goto/16 :goto_9

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->k:Lcom/thinkyeah/smartlock/view/b;

    sget-object v5, Lcom/thinkyeah/smartlock/view/b;->c:Lcom/thinkyeah/smartlock/view/b;

    if-ne v4, v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->x:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->t:Landroid/graphics/Bitmap;

    goto/16 :goto_9

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->k:Lcom/thinkyeah/smartlock/view/b;

    sget-object v5, Lcom/thinkyeah/smartlock/view/b;->a:Lcom/thinkyeah/smartlock/view/b;

    if-eq v4, v5, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->k:Lcom/thinkyeah/smartlock/view/b;

    sget-object v5, Lcom/thinkyeah/smartlock/view/b;->b:Lcom/thinkyeah/smartlock/view/b;

    if-ne v4, v5, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->w:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->t:Landroid/graphics/Bitmap;

    goto/16 :goto_9

    :cond_13
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unknown display mode "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->k:Lcom/thinkyeah/smartlock/view/b;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_14
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_5

    :cond_15
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/thinkyeah/smartlock/view/a;

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/thinkyeah/smartlock/view/a;

    iget v7, v5, Lcom/thinkyeah/smartlock/view/a;->a:I

    aget-object v7, v11, v7

    iget v0, v5, Lcom/thinkyeah/smartlock/view/a;->b:I

    move/from16 v16, v0

    aget-boolean v7, v7, v16

    if-eqz v7, :cond_6

    int-to-float v7, v15

    iget v0, v4, Lcom/thinkyeah/smartlock/view/a;->b:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v12

    add-float v16, v16, v7

    int-to-float v7, v14

    iget v0, v4, Lcom/thinkyeah/smartlock/view/a;->a:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v13

    add-float v17, v17, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->k:Lcom/thinkyeah/smartlock/view/b;

    sget-object v18, Lcom/thinkyeah/smartlock/view/b;->c:Lcom/thinkyeah/smartlock/view/b;

    move-object/from16 v0, v18

    if-eq v7, v0, :cond_16

    const/4 v7, 0x1

    :goto_a
    iget v0, v5, Lcom/thinkyeah/smartlock/view/a;->a:I

    move/from16 v18, v0

    iget v0, v4, Lcom/thinkyeah/smartlock/view/a;->a:I

    move/from16 v19, v0

    iget v5, v5, Lcom/thinkyeah/smartlock/view/a;->b:I

    iget v0, v4, Lcom/thinkyeah/smartlock/view/a;->b:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->r:F

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->C:I

    move/from16 v21, v0

    sub-int v4, v4, v21

    div-int/lit8 v21, v4, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->s:F

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->D:I

    move/from16 v22, v0

    sub-int v4, v4, v22

    div-int/lit8 v22, v4, 0x2

    if-eqz v7, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->y:Landroid/graphics/Bitmap;

    :goto_b
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->v:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->v:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    sub-int v5, v5, v20

    int-to-double v0, v5

    move-wide/from16 v25, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v25

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v5, v0

    float-to-double v0, v5

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v5, v0

    const/high16 v18, 0x42b4

    add-float v5, v5, v18

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v16, v16, v18

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v5, v0, v1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v23, v5

    int-to-float v5, v5

    const/high16 v16, 0x4000

    div-float v5, v5, v16

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v5, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto/16 :goto_6

    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_a

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/thinkyeah/smartlock/view/LockPatternView;->z:Landroid/graphics/Bitmap;

    goto/16 :goto_b
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v2, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->G:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setMeasuredDimension(II)V

    return-void

    :pswitch_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    goto :goto_0

    :pswitch_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;

    invoke-virtual {p1}, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    sget-object v0, Lcom/thinkyeah/smartlock/view/b;->a:Lcom/thinkyeah/smartlock/view/b;

    invoke-virtual {p1}, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/thinkyeah/smartlock/co;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a(Lcom/thinkyeah/smartlock/view/b;Ljava/util/List;)V

    invoke-static {}, Lcom/thinkyeah/smartlock/view/b;->values()[Lcom/thinkyeah/smartlock/view/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->b()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->k:Lcom/thinkyeah/smartlock/view/b;

    invoke-virtual {p1}, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->l:Z

    invoke-virtual {p1}, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->m:Z

    invoke-virtual {p1}, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->n:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/co;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->k:Lcom/thinkyeah/smartlock/view/b;

    invoke-virtual {v3}, Lcom/thinkyeah/smartlock/view/b;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->l:Z

    iget-boolean v5, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->m:Z

    iget-boolean v6, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->n:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZB)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    const/high16 v2, 0x4040

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->r:F

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->s:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->e()V

    invoke-direct {p0, v6, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a(FF)Lcom/thinkyeah/smartlock/view/a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->e:Lcom/thinkyeah/smartlock/view/c;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->o:Z

    sget-object v2, Lcom/thinkyeah/smartlock/view/b;->a:Lcom/thinkyeah/smartlock/view/b;

    iput-object v2, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->k:Lcom/thinkyeah/smartlock/view/b;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->e:Lcom/thinkyeah/smartlock/view/c;

    invoke-interface {v2}, Lcom/thinkyeah/smartlock/view/c;->a()V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget v2, v0, Lcom/thinkyeah/smartlock/view/a;->b:I

    invoke-direct {p0, v2}, Lcom/thinkyeah/smartlock/view/LockPatternView;->b(I)F

    move-result v2

    iget v0, v0, Lcom/thinkyeah/smartlock/view/a;->a:I

    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->c(I)F

    move-result v0

    iget v3, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->r:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iget v4, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->s:F

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float v5, v2, v3

    float-to-int v5, v5

    sub-float v7, v0, v4

    float-to-int v7, v7

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p0, v5, v7, v2, v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->invalidate(IIII)V

    :cond_3
    iput v6, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->h:F

    iput v1, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->i:F

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->e:Lcom/thinkyeah/smartlock/view/c;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->o:Z

    iget-object v2, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->e:Lcom/thinkyeah/smartlock/view/c;

    invoke-interface {v2}, Lcom/thinkyeah/smartlock/view/c;->b()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->e:Lcom/thinkyeah/smartlock/view/c;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->o:Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->e:Lcom/thinkyeah/smartlock/view/c;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/thinkyeah/smartlock/view/c;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->invalidate()V

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {p0, v6, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a(FF)Lcom/thinkyeah/smartlock/view/a;

    move-result-object v9

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v9, :cond_6

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->e:Lcom/thinkyeah/smartlock/view/c;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    if-ne v10, v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->o:Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->e:Lcom/thinkyeah/smartlock/view/c;

    invoke-interface {v0}, Lcom/thinkyeah/smartlock/view/c;->a()V

    :cond_6
    iget v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->h:F

    sub-float v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->i:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->r:F

    const v3, 0x3c23d70a

    mul-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    iget v4, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->h:F

    iget v3, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->i:F

    iput v6, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->h:F

    iput v1, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->i:F

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->o:Z

    if-eqz v0, :cond_10

    if-lez v10, :cond_10

    iget-object v11, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->f:Ljava/util/ArrayList;

    iget v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->r:F

    iget v2, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->p:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f00

    mul-float v12, v0, v2

    add-int/lit8 v0, v10, -0x1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/view/a;

    iget v2, v0, Lcom/thinkyeah/smartlock/view/a;->b:I

    invoke-direct {p0, v2}, Lcom/thinkyeah/smartlock/view/LockPatternView;->b(I)F

    move-result v5

    iget v0, v0, Lcom/thinkyeah/smartlock/view/a;->a:I

    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->c(I)F

    move-result v2

    iget-object v13, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->B:Landroid/graphics/Rect;

    cmpg-float v0, v5, v6

    if-gez v0, :cond_a

    move v7, v5

    :goto_2
    cmpg-float v0, v2, v1

    if-gez v0, :cond_b

    move v0, v1

    move v1, v2

    :goto_3
    sub-float/2addr v7, v12

    float-to-int v7, v7

    sub-float/2addr v1, v12

    float-to-int v1, v1

    add-float/2addr v6, v12

    float-to-int v6, v6

    add-float/2addr v0, v12

    float-to-int v0, v0

    invoke-virtual {v13, v7, v1, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    cmpg-float v0, v5, v4

    if-gez v0, :cond_c

    move v0, v4

    :goto_4
    cmpg-float v1, v2, v3

    if-gez v1, :cond_7

    move v14, v3

    move v3, v2

    move v2, v14

    :cond_7
    sub-float v1, v5, v12

    float-to-int v1, v1

    sub-float/2addr v3, v12

    float-to-int v3, v3

    add-float/2addr v0, v12

    float-to-int v0, v0

    add-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v13, v1, v3, v0, v2}, Landroid/graphics/Rect;->union(IIII)V

    if-eqz v9, :cond_8

    iget v0, v9, Lcom/thinkyeah/smartlock/view/a;->b:I

    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->b(I)F

    move-result v1

    iget v0, v9, Lcom/thinkyeah/smartlock/view/a;->a:I

    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->c(I)F

    move-result v3

    const/4 v0, 0x2

    if-lt v10, v0, :cond_f

    add-int/lit8 v0, v10, -0x1

    sub-int v2, v10, v8

    sub-int/2addr v0, v2

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/view/a;

    iget v2, v0, Lcom/thinkyeah/smartlock/view/a;->b:I

    invoke-direct {p0, v2}, Lcom/thinkyeah/smartlock/view/LockPatternView;->b(I)F

    move-result v4

    iget v0, v0, Lcom/thinkyeah/smartlock/view/a;->a:I

    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->c(I)F

    move-result v2

    cmpg-float v0, v1, v4

    if-gez v0, :cond_d

    move v0, v4

    :goto_5
    cmpg-float v4, v3, v2

    if-gez v4, :cond_e

    :goto_6
    iget v4, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->r:F

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget v5, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->s:F

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float/2addr v1, v4

    float-to-int v1, v1

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v13, v1, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_8
    invoke-virtual {p0, v13}, Lcom/thinkyeah/smartlock/view/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    :cond_9
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    move v7, v6

    move v6, v5

    goto :goto_2

    :cond_b
    move v0, v2

    goto :goto_3

    :cond_c
    move v0, v5

    move v5, v4

    goto :goto_4

    :cond_d
    move v0, v1

    move v1, v4

    goto :goto_5

    :cond_e
    move v14, v3

    move v3, v2

    move v2, v14

    goto :goto_6

    :cond_f
    move v0, v1

    move v2, v3

    goto :goto_6

    :cond_10
    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->invalidate()V

    goto :goto_7

    :pswitch_3
    invoke-direct {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->e()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->e:Lcom/thinkyeah/smartlock/view/c;

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->o:Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->e:Lcom/thinkyeah/smartlock/view/c;

    invoke-interface {v0}, Lcom/thinkyeah/smartlock/view/c;->b()V

    :cond_11
    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDisplayMode(Lcom/thinkyeah/smartlock/view/b;)V
    .locals 2

    iput-object p1, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->k:Lcom/thinkyeah/smartlock/view/b;

    sget-object v0, Lcom/thinkyeah/smartlock/view/b;->b:Lcom/thinkyeah/smartlock/view/b;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->j:J

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/view/a;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/a;->b()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->b(I)F

    move-result v1

    iput v1, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->h:F

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/a;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->c(I)F

    move-result v0

    iput v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->i:F

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->f()V

    :cond_1
    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->invalidate()V

    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->m:Z

    return-void
.end method

.method public setOnPatternListener(Lcom/thinkyeah/smartlock/view/c;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->e:Lcom/thinkyeah/smartlock/view/c;

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/thinkyeah/smartlock/view/LockPatternView;->n:Z

    return-void
.end method
