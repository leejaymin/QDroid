.class public Lorg/cocos2d/g/i;
.super Ljava/lang/Object;


# static fields
.field static final synthetic D:Z

.field private static final a:Ljava/lang/String;

.field private static p:Ljava/util/Comparator;


# instance fields
.field protected A:Lorg/cocos2d/g/i;

.field protected B:F

.field protected C:Ljava/util/List;

.field private b:F

.field private c:F

.field private d:Z

.field private e:[F

.field private f:Lorg/cocos2d/l/d;

.field private g:Lorg/cocos2d/l/d;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lorg/cocos2d/opengl/e;

.field private l:I

.field private m:I

.field private n:Ljava/lang/Object;

.field private o:Z

.field protected r:F

.field protected s:F

.field protected t:F

.field protected u:Lorg/cocos2d/l/e;

.field protected v:Lorg/cocos2d/l/e;

.field protected w:Lorg/cocos2d/l/g;

.field protected x:Lorg/cocos2d/l/e;

.field protected y:Lorg/cocos2d/d/c;

.field protected z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/g/i;->D:Z

    const-class v0, Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/g/i;->a:Ljava/lang/String;

    new-instance v0, Lorg/cocos2d/g/j;

    invoke-direct {v0}, Lorg/cocos2d/g/j;-><init>()V

    sput-object v0, Lorg/cocos2d/g/i;->p:Ljava/util/Comparator;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/cocos2d/g/i;->e:[F

    iput-boolean v4, p0, Lorg/cocos2d/g/i;->o:Z

    iput v1, p0, Lorg/cocos2d/g/i;->r:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/cocos2d/g/i;->t:F

    iput v0, p0, Lorg/cocos2d/g/i;->s:F

    iput v1, p0, Lorg/cocos2d/g/i;->c:F

    iput v1, p0, Lorg/cocos2d/g/i;->b:F

    invoke-static {v1, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/i;->x:Lorg/cocos2d/l/e;

    invoke-static {}, Lorg/cocos2d/l/d;->a()Lorg/cocos2d/l/d;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/i;->f:Lorg/cocos2d/l/d;

    invoke-static {}, Lorg/cocos2d/l/d;->a()Lorg/cocos2d/l/d;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/i;->g:Lorg/cocos2d/l/d;

    iput-boolean v2, p0, Lorg/cocos2d/g/i;->d:Z

    invoke-static {v1, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/i;->u:Lorg/cocos2d/l/e;

    invoke-static {v1, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/i;->v:Lorg/cocos2d/l/e;

    invoke-static {}, Lorg/cocos2d/l/g;->a()Lorg/cocos2d/l/g;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/i;->w:Lorg/cocos2d/l/g;

    iput-boolean v2, p0, Lorg/cocos2d/g/i;->i:Z

    iput-boolean v2, p0, Lorg/cocos2d/g/i;->h:Z

    iput-boolean v2, p0, Lorg/cocos2d/g/i;->j:Z

    iput v4, p0, Lorg/cocos2d/g/i;->m:I

    iput v1, p0, Lorg/cocos2d/g/i;->B:F

    iput-object v3, p0, Lorg/cocos2d/g/i;->y:Lorg/cocos2d/d/c;

    iput-boolean v2, p0, Lorg/cocos2d/g/i;->z:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/g/i;->l:I

    iput-object v3, p0, Lorg/cocos2d/g/i;->k:Lorg/cocos2d/opengl/e;

    iput-object v3, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    iput-object v3, p0, Lorg/cocos2d/g/i;->n:Ljava/lang/Object;

    return-void
.end method

.method private a()Lorg/cocos2d/l/d;
    .locals 10

    const/high16 v9, 0x3f80

    const/high16 v8, 0x4334

    const v7, 0x40490fdb

    const/4 v6, 0x0

    iget-boolean v0, p0, Lorg/cocos2d/g/i;->h:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lorg/cocos2d/l/e;->a()Lorg/cocos2d/l/e;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/g/i;->f:Lorg/cocos2d/l/d;

    invoke-virtual {v1}, Lorg/cocos2d/l/d;->c()V

    iget-boolean v1, p0, Lorg/cocos2d/g/i;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/g/i;->u:Lorg/cocos2d/l/e;

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/g/i;->f:Lorg/cocos2d/l/d;

    iget-object v2, p0, Lorg/cocos2d/g/i;->u:Lorg/cocos2d/l/e;

    iget v2, v2, Lorg/cocos2d/l/e;->a:F

    float-to-double v2, v2

    iget-object v4, p0, Lorg/cocos2d/g/i;->u:Lorg/cocos2d/l/e;

    iget v4, v4, Lorg/cocos2d/l/e;->b:F

    float-to-double v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/cocos2d/l/d;->b(DD)V

    :cond_0
    iget-object v1, p0, Lorg/cocos2d/g/i;->x:Lorg/cocos2d/l/e;

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/cocos2d/g/i;->f:Lorg/cocos2d/l/d;

    iget-object v2, p0, Lorg/cocos2d/g/i;->x:Lorg/cocos2d/l/e;

    iget v2, v2, Lorg/cocos2d/l/e;->a:F

    float-to-double v2, v2

    iget-object v4, p0, Lorg/cocos2d/g/i;->x:Lorg/cocos2d/l/e;

    iget v4, v4, Lorg/cocos2d/l/e;->b:F

    float-to-double v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/cocos2d/l/d;->b(DD)V

    :cond_1
    iget v1, p0, Lorg/cocos2d/g/i;->r:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/cocos2d/g/i;->f:Lorg/cocos2d/l/d;

    iget v2, p0, Lorg/cocos2d/g/i;->r:F

    div-float/2addr v2, v8

    mul-float/2addr v2, v7

    neg-float v2, v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/l/d;->a(D)V

    :cond_2
    iget v1, p0, Lorg/cocos2d/g/i;->b:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_3

    iget v1, p0, Lorg/cocos2d/g/i;->c:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_4

    :cond_3
    iget v1, p0, Lorg/cocos2d/g/i;->c:F

    div-float/2addr v1, v8

    mul-float/2addr v1, v7

    float-to-double v1, v1

    invoke-static {v1, v2}, Lorg/cocos2d/m/b/a;->a(D)D

    move-result-wide v1

    iget v3, p0, Lorg/cocos2d/g/i;->b:F

    div-float/2addr v3, v8

    mul-float/2addr v3, v7

    float-to-double v3, v3

    invoke-static {v3, v4}, Lorg/cocos2d/m/b/a;->a(D)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/cocos2d/l/d;->a(DD)Lorg/cocos2d/l/d;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/g/i;->f:Lorg/cocos2d/l/d;

    invoke-virtual {v2, v1}, Lorg/cocos2d/l/d;->b(Lorg/cocos2d/l/d;)Lorg/cocos2d/l/d;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/g/i;->f:Lorg/cocos2d/l/d;

    :cond_4
    iget v1, p0, Lorg/cocos2d/g/i;->s:F

    cmpl-float v1, v1, v9

    if-nez v1, :cond_5

    iget v1, p0, Lorg/cocos2d/g/i;->t:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lorg/cocos2d/g/i;->f:Lorg/cocos2d/l/d;

    iget v2, p0, Lorg/cocos2d/g/i;->s:F

    float-to-double v2, v2

    iget v4, p0, Lorg/cocos2d/g/i;->t:F

    float-to-double v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/cocos2d/l/d;->c(DD)V

    :cond_6
    iget-object v1, p0, Lorg/cocos2d/g/i;->u:Lorg/cocos2d/l/e;

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/cocos2d/g/i;->f:Lorg/cocos2d/l/d;

    iget-object v1, p0, Lorg/cocos2d/g/i;->u:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->a:F

    neg-float v1, v1

    float-to-double v1, v1

    iget-object v3, p0, Lorg/cocos2d/g/i;->u:Lorg/cocos2d/l/e;

    iget v3, v3, Lorg/cocos2d/l/e;->b:F

    neg-float v3, v3

    float-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/cocos2d/l/d;->b(DD)V

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/g/i;->h:Z

    :cond_8
    iget-object v0, p0, Lorg/cocos2d/g/i;->f:Lorg/cocos2d/l/d;

    return-object v0
.end method

.method private a(Lorg/cocos2d/l/d;)V
    .locals 21

    invoke-direct/range {p0 .. p0}, Lorg/cocos2d/g/i;->a()Lorg/cocos2d/l/d;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/cocos2d/l/d;->a(Lorg/cocos2d/l/d;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/g/i;->A:Lorg/cocos2d/g/i;

    move-object v3, v0

    :goto_0
    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-direct {v3}, Lorg/cocos2d/g/i;->a()Lorg/cocos2d/l/d;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->a:D

    move-wide v5, v0

    iget-wide v7, v4, Lorg/cocos2d/l/d;->a:D

    mul-double/2addr v5, v7

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->b:D

    move-wide v7, v0

    iget-wide v9, v4, Lorg/cocos2d/l/d;->c:D

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->a:D

    move-wide v7, v0

    iget-wide v9, v4, Lorg/cocos2d/l/d;->b:D

    mul-double/2addr v7, v9

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->b:D

    move-wide v9, v0

    iget-wide v11, v4, Lorg/cocos2d/l/d;->d:D

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->c:D

    move-wide v9, v0

    iget-wide v11, v4, Lorg/cocos2d/l/d;->a:D

    mul-double/2addr v9, v11

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->d:D

    move-wide v11, v0

    iget-wide v13, v4, Lorg/cocos2d/l/d;->c:D

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->c:D

    move-wide v11, v0

    iget-wide v13, v4, Lorg/cocos2d/l/d;->b:D

    mul-double/2addr v11, v13

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->d:D

    move-wide v13, v0

    iget-wide v15, v4, Lorg/cocos2d/l/d;->d:D

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->e:D

    move-wide v13, v0

    iget-wide v15, v4, Lorg/cocos2d/l/d;->a:D

    mul-double/2addr v13, v15

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->f:D

    move-wide v15, v0

    move-object v0, v4

    iget-wide v0, v0, Lorg/cocos2d/l/d;->c:D

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    iget-wide v15, v4, Lorg/cocos2d/l/d;->e:D

    add-double/2addr v13, v15

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->e:D

    move-wide v15, v0

    move-object v0, v4

    iget-wide v0, v0, Lorg/cocos2d/l/d;->b:D

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->f:D

    move-wide/from16 v17, v0

    move-object v0, v4

    iget-wide v0, v0, Lorg/cocos2d/l/d;->d:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    add-double v15, v15, v17

    move-object v0, v4

    iget-wide v0, v0, Lorg/cocos2d/l/d;->f:D

    move-wide/from16 v17, v0

    add-double v15, v15, v17

    move-wide v0, v5

    move-object/from16 v2, p1

    iput-wide v0, v2, Lorg/cocos2d/l/d;->a:D

    move-wide v0, v9

    move-object/from16 v2, p1

    iput-wide v0, v2, Lorg/cocos2d/l/d;->b:D

    move-wide v0, v7

    move-object/from16 v2, p1

    iput-wide v0, v2, Lorg/cocos2d/l/d;->c:D

    move-wide v0, v11

    move-object/from16 v2, p1

    iput-wide v0, v2, Lorg/cocos2d/l/d;->d:D

    move-wide v0, v13

    move-object/from16 v2, p1

    iput-wide v0, v2, Lorg/cocos2d/l/d;->e:D

    move-wide v0, v15

    move-object/from16 v2, p1

    iput-wide v0, v2, Lorg/cocos2d/l/d;->f:D

    iget-object v3, v3, Lorg/cocos2d/g/i;->A:Lorg/cocos2d/g/i;

    goto/16 :goto_0
.end method

.method static synthetic b(Lorg/cocos2d/g/i;)I
    .locals 1

    iget v0, p0, Lorg/cocos2d/g/i;->m:I

    return v0
.end method

.method private b(Lorg/cocos2d/g/i;I)V
    .locals 4

    iput p2, p1, Lorg/cocos2d/g/i;->m:I

    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    sget-object v1, Lorg/cocos2d/g/i;->p:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    add-int/lit8 v3, v1, 0x1

    if-ge v3, v2, :cond_2

    iget-object v1, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/g/i;

    iget v1, v1, Lorg/cocos2d/g/i;->m:I

    iget v0, v0, Lorg/cocos2d/g/i;->m:I

    if-eq v1, v0, :cond_1

    move v0, v3

    :goto_1
    iget-object v1, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-boolean v0, p0, Lorg/cocos2d/g/i;->o:Z

    return v0
.end method

.method public final B()V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/g/i;->A:Lorg/cocos2d/g/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/i;->A:Lorg/cocos2d/g/i;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/g/i;Z)V

    :cond_0
    return-void
.end method

.method public final C()V
    .locals 1

    sget-boolean v0, Lorg/cocos2d/g/i;->D:Z

    invoke-static {}, Lorg/cocos2d/a/a;->a()Lorg/cocos2d/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/a/a;->b(Lorg/cocos2d/g/i;)V

    return-void
.end method

.method public final D()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2d/g/i;->f(I)V

    return-void
.end method

.method public final E()Lorg/cocos2d/l/e;
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/l/d;

    invoke-direct {p0}, Lorg/cocos2d/g/i;->a()Lorg/cocos2d/l/d;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/cocos2d/l/d;-><init>(Lorg/cocos2d/l/d;)V

    iget-object v2, p0, Lorg/cocos2d/g/i;->A:Lorg/cocos2d/g/i;

    :goto_0
    if-nez v2, :cond_0

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/d;)Lorg/cocos2d/l/e;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {v2}, Lorg/cocos2d/g/i;->a()Lorg/cocos2d/l/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/cocos2d/l/d;->c(Lorg/cocos2d/l/d;)Lorg/cocos2d/l/d;

    move-result-object v1

    iget-object v2, v2, Lorg/cocos2d/g/i;->A:Lorg/cocos2d/g/i;

    goto :goto_0
.end method

.method public F()V
    .locals 2

    invoke-static {}, Lorg/cocos2d/a/a;->a()Lorg/cocos2d/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/a/a;->a(Lorg/cocos2d/g/i;)V

    invoke-static {}, Lorg/cocos2d/a/e;->a()Lorg/cocos2d/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/a/e;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->F()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public G()V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/g/i;

    invoke-virtual {p0}, Lorg/cocos2d/g/i;->G()V

    goto :goto_0
.end method

.method public final a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;
    .locals 2

    sget-boolean v0, Lorg/cocos2d/g/i;->D:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-static {}, Lorg/cocos2d/a/a;->a()Lorg/cocos2d/a/a;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cocos2d/g/i;->o:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, p0, v1}, Lorg/cocos2d/a/a;->a(Lorg/cocos2d/a/a/a;Lorg/cocos2d/g/i;Z)V

    return-object p1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;
    .locals 2

    sget-boolean v0, Lorg/cocos2d/g/i;->D:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must be non-nil"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget v0, p1, Lorg/cocos2d/g/i;->m:I

    iget v1, p1, Lorg/cocos2d/g/i;->l:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;
    .locals 2

    sget-boolean v0, Lorg/cocos2d/g/i;->D:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must be non-nil"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget v0, p1, Lorg/cocos2d/g/i;->l:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;
    .locals 2

    sget-boolean v0, Lorg/cocos2d/g/i;->D:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must be non-nil"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-boolean v0, Lorg/cocos2d/g/i;->D:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/cocos2d/g/i;->A:Lorg/cocos2d/g/i;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "child already added. It can\'t be added again"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/g/i;->b(Lorg/cocos2d/g/i;I)V

    iput p3, p1, Lorg/cocos2d/g/i;->l:I

    iput-object p0, p1, Lorg/cocos2d/g/i;->A:Lorg/cocos2d/g/i;

    iget-boolean v0, p0, Lorg/cocos2d/g/i;->o:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/cocos2d/g/i;->a_()V

    :cond_3
    return-object p0
.end method

.method public final a(FFLorg/cocos2d/l/e;)V
    .locals 24

    invoke-static {}, Lorg/cocos2d/l/a/b;->a()Lorg/cocos2d/l/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cocos2d/l/a/b;->f()Lorg/cocos2d/m/c/c;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/cocos2d/m/c/c;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/cocos2d/l/d;

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/l/d;)V

    invoke-virtual {v4}, Lorg/cocos2d/l/d;->b()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3ddb7cdfd9d7bdbbL

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_0

    const-wide/high16 v7, 0x3ff0

    div-double v15, v7, v5

    iget-wide v5, v4, Lorg/cocos2d/l/d;->d:D

    mul-double/2addr v5, v15

    iget-wide v7, v4, Lorg/cocos2d/l/d;->b:D

    neg-double v7, v7

    mul-double/2addr v7, v15

    iget-wide v9, v4, Lorg/cocos2d/l/d;->c:D

    neg-double v9, v9

    mul-double/2addr v9, v15

    iget-wide v11, v4, Lorg/cocos2d/l/d;->a:D

    mul-double/2addr v11, v15

    iget-wide v13, v4, Lorg/cocos2d/l/d;->c:D

    move-object v0, v4

    iget-wide v0, v0, Lorg/cocos2d/l/d;->f:D

    move-wide/from16 v18, v0

    mul-double v13, v13, v18

    move-object v0, v4

    iget-wide v0, v0, Lorg/cocos2d/l/d;->d:D

    move-wide/from16 v18, v0

    move-object v0, v4

    iget-wide v0, v0, Lorg/cocos2d/l/d;->e:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    sub-double v13, v13, v18

    mul-double/2addr v13, v15

    move-object v0, v4

    iget-wide v0, v0, Lorg/cocos2d/l/d;->b:D

    move-wide/from16 v18, v0

    move-object v0, v4

    iget-wide v0, v0, Lorg/cocos2d/l/d;->e:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-object v0, v4

    iget-wide v0, v0, Lorg/cocos2d/l/d;->a:D

    move-wide/from16 v20, v0

    move-object v0, v4

    iget-wide v0, v0, Lorg/cocos2d/l/d;->f:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    mul-double v15, v15, v18

    invoke-virtual/range {v4 .. v16}, Lorg/cocos2d/l/d;->a(DDDDDD)V

    :cond_0
    move/from16 v0, p1

    move/from16 v1, p2

    move-object v2, v4

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lorg/cocos2d/l/a/a;->a(FFLorg/cocos2d/l/d;Lorg/cocos2d/l/e;)V

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/cocos2d/m/c/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;F)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/g/i;->D:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument selector must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-boolean v0, Lorg/cocos2d/g/i;->D:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument interval must be positive"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    invoke-static {}, Lorg/cocos2d/a/e;->a()Lorg/cocos2d/a/e;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cocos2d/g/i;->o:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, p0, p2, v1}, Lorg/cocos2d/a/e;->a(Ljava/lang/String;Ljava/lang/Object;FZ)V

    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    return-void
.end method

.method public final a(Lorg/cocos2d/a/i;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/a/i;F)V

    return-void
.end method

.method public final a(Lorg/cocos2d/a/i;F)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/g/i;->D:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument callback must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-boolean v0, Lorg/cocos2d/g/i;->D:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument interval must be positive"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    invoke-static {}, Lorg/cocos2d/a/e;->a()Lorg/cocos2d/a/e;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cocos2d/g/i;->o:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, p0, p2, v1}, Lorg/cocos2d/a/e;->a(Lorg/cocos2d/a/i;Ljava/lang/Object;FZ)V

    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final a(Lorg/cocos2d/d/c;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/g/i;->y:Lorg/cocos2d/d/c;

    return-void
.end method

.method public a(Lorg/cocos2d/g/i;Z)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2d/g/i;->o:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/cocos2d/g/i;->g()V

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lorg/cocos2d/g/i;->F()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/cocos2d/g/i;->A:Lorg/cocos2d/g/i;

    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lorg/cocos2d/l/g;)V
    .locals 2

    iget v0, p1, Lorg/cocos2d/l/g;->a:F

    iget v1, p1, Lorg/cocos2d/l/g;->b:F

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/g/i;->b(FF)V

    return-void
.end method

.method public a_()V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/cocos2d/a/e;->a()Lorg/cocos2d/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/a/e;->c(Ljava/lang/Object;)V

    invoke-static {}, Lorg/cocos2d/a/a;->a()Lorg/cocos2d/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/a/a;->d(Lorg/cocos2d/g/i;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/g/i;->o:Z

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->a_()V

    goto :goto_0
.end method

.method public b(F)V
    .locals 1

    const/4 v0, 0x1

    iput p1, p0, Lorg/cocos2d/g/i;->r:F

    iput-boolean v0, p0, Lorg/cocos2d/g/i;->i:Z

    iput-boolean v0, p0, Lorg/cocos2d/g/i;->h:Z

    iput-boolean v0, p0, Lorg/cocos2d/g/i;->j:Z

    return-void
.end method

.method public final b(FF)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lorg/cocos2d/g/i;->w:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/i;->w:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/g/i;->w:Lorg/cocos2d/l/g;

    invoke-virtual {v0, p1, p2}, Lorg/cocos2d/l/g;->b(FF)V

    iget-object v0, p0, Lorg/cocos2d/g/i;->u:Lorg/cocos2d/l/e;

    iget-object v1, p0, Lorg/cocos2d/g/i;->w:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    iget-object v2, p0, Lorg/cocos2d/g/i;->v:Lorg/cocos2d/l/e;

    iget v2, v2, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/cocos2d/g/i;->w:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    iget-object v3, p0, Lorg/cocos2d/g/i;->v:Lorg/cocos2d/l/e;

    iget v3, v3, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/l/e;->b(FF)V

    iput-boolean v4, p0, Lorg/cocos2d/g/i;->i:Z

    iput-boolean v4, p0, Lorg/cocos2d/g/i;->h:Z

    iput-boolean v4, p0, Lorg/cocos2d/g/i;->j:Z

    :cond_1
    return-void
.end method

.method public b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/cocos2d/g/i;->z:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v0, p0, Lorg/cocos2d/g/i;->y:Lorg/cocos2d/d/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/g/i;->y:Lorg/cocos2d/d/c;

    invoke-virtual {v0}, Lorg/cocos2d/d/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/g/i;->y:Lorg/cocos2d/d/c;

    invoke-virtual {v0, p1}, Lorg/cocos2d/d/c;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0, p1}, Lorg/cocos2d/g/i;->d(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_1
    invoke-virtual {p0, p1}, Lorg/cocos2d/g/i;->c(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    if-eqz v0, :cond_2

    move v1, v3

    :goto_1
    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    :cond_2
    invoke-virtual {p0, p1}, Lorg/cocos2d/g/i;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    if-eqz v0, :cond_3

    move v1, v3

    :goto_2
    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_6

    :cond_3
    iget-object v0, p0, Lorg/cocos2d/g/i;->y:Lorg/cocos2d/d/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/cocos2d/g/i;->y:Lorg/cocos2d/d/c;

    invoke-virtual {v0}, Lorg/cocos2d/d/c;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/cocos2d/g/i;->y:Lorg/cocos2d/d/c;

    invoke-virtual {v0, p1, p0}, Lorg/cocos2d/d/c;->a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/g/i;)V

    :cond_4
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/g/i;->m:I

    if-gez v2, :cond_2

    invoke-virtual {v0, p1}, Lorg/cocos2d/g/i;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/g/i;->m:I

    if-ltz v2, :cond_7

    invoke-virtual {v0, p1}, Lorg/cocos2d/g/i;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean p1, p0, Lorg/cocos2d/g/i;->d:Z

    iput-boolean v0, p0, Lorg/cocos2d/g/i;->i:Z

    iput-boolean v0, p0, Lorg/cocos2d/g/i;->h:Z

    iput-boolean v0, p0, Lorg/cocos2d/g/i;->j:Z

    return-void
.end method

.method public c(F)V
    .locals 1

    const/4 v0, 0x1

    iput p1, p0, Lorg/cocos2d/g/i;->s:F

    iput-boolean v0, p0, Lorg/cocos2d/g/i;->i:Z

    iput-boolean v0, p0, Lorg/cocos2d/g/i;->h:Z

    iput-boolean v0, p0, Lorg/cocos2d/g/i;->j:Z

    return-void
.end method

.method public final c(FF)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lorg/cocos2d/g/i;->v:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/i;->v:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/g/i;->v:Lorg/cocos2d/l/e;

    invoke-virtual {v0, p1, p2}, Lorg/cocos2d/l/e;->b(FF)V

    iget-object v0, p0, Lorg/cocos2d/g/i;->u:Lorg/cocos2d/l/e;

    iget-object v1, p0, Lorg/cocos2d/g/i;->w:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    iget-object v2, p0, Lorg/cocos2d/g/i;->v:Lorg/cocos2d/l/e;

    iget v2, v2, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/cocos2d/g/i;->w:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    iget-object v3, p0, Lorg/cocos2d/g/i;->v:Lorg/cocos2d/l/e;

    iget v3, v3, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/l/e;->b(FF)V

    iput-boolean v4, p0, Lorg/cocos2d/g/i;->i:Z

    iput-boolean v4, p0, Lorg/cocos2d/g/i;->h:Z

    iput-boolean v4, p0, Lorg/cocos2d/g/i;->j:Z

    :cond_1
    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lorg/cocos2d/g/i;->l:I

    return-void
.end method

.method public final c(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/cocos2d/g/i;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/cocos2d/g/i;->a()Lorg/cocos2d/l/d;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/g/i;->e:[F

    invoke-static {v0, v1}, Lorg/cocos2d/l/d;->a(Lorg/cocos2d/l/d;[F)V

    iput-boolean v2, p0, Lorg/cocos2d/g/i;->j:Z

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/g/i;->e:[F

    invoke-interface {p1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    iget v0, p0, Lorg/cocos2d/g/i;->B:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/cocos2d/g/i;->B:F

    invoke-interface {p1, v3, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/g/i;->k:Lorg/cocos2d/opengl/e;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/cocos2d/g/i;->y:Lorg/cocos2d/d/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/g/i;->y:Lorg/cocos2d/d/c;

    invoke-virtual {v0}, Lorg/cocos2d/d/c;->e()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/cocos2d/g/i;->u:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/cocos2d/g/i;->u:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/cocos2d/g/i;->u:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->a:F

    iget-object v2, p0, Lorg/cocos2d/g/i;->u:Lorg/cocos2d/l/e;

    iget v2, v2, Lorg/cocos2d/l/e;->b:F

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    :cond_3
    iget-object v1, p0, Lorg/cocos2d/g/i;->k:Lorg/cocos2d/opengl/e;

    invoke-virtual {v1, p1}, Lorg/cocos2d/opengl/e;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/cocos2d/g/i;->u:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    neg-float v0, v0

    iget-object v1, p0, Lorg/cocos2d/g/i;->u:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    neg-float v1, v1

    invoke-interface {p1, v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/cocos2d/g/i;->z:Z

    return-void
.end method

.method public d(F)V
    .locals 1

    const/4 v0, 0x1

    iput p1, p0, Lorg/cocos2d/g/i;->t:F

    iput-boolean v0, p0, Lorg/cocos2d/g/i;->i:Z

    iput-boolean v0, p0, Lorg/cocos2d/g/i;->h:Z

    iput-boolean v0, p0, Lorg/cocos2d/g/i;->j:Z

    return-void
.end method

.method public d(FF)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/cocos2d/g/i;->x:Lorg/cocos2d/l/e;

    invoke-virtual {v0, p1, p2}, Lorg/cocos2d/l/e;->b(FF)V

    iput-boolean v1, p0, Lorg/cocos2d/g/i;->i:Z

    iput-boolean v1, p0, Lorg/cocos2d/g/i;->h:Z

    iput-boolean v1, p0, Lorg/cocos2d/g/i;->j:Z

    return-void
.end method

.method public final d(I)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/g/i;->D:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid tag"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/cocos2d/g/i;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/cocos2d/g/i;->a:Ljava/lang/String;

    const-string v1, "removeChild: child not found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/g/i;Z)V

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/g/i;->a(Ljava/lang/String;F)V

    return-void
.end method

.method public final d(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/i;->A:Lorg/cocos2d/g/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/i;->A:Lorg/cocos2d/g/i;

    invoke-virtual {v0, p1}, Lorg/cocos2d/g/i;->d(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lorg/cocos2d/g/i;->A:Lorg/cocos2d/g/i;

    invoke-virtual {v0, p1}, Lorg/cocos2d/g/i;->c(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_0
    return-void
.end method

.method public d(Lorg/cocos2d/l/e;)V
    .locals 2

    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    iget v1, p1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/g/i;->c(FF)V

    return-void
.end method

.method public d(Z)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    iget-boolean v2, p0, Lorg/cocos2d/g/i;->o:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->g()V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->F()V

    :cond_3
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/cocos2d/g/i;->A:Lorg/cocos2d/g/i;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public final e(I)Lorg/cocos2d/g/i;
    .locals 3

    sget-boolean v0, Lorg/cocos2d/g/i;->D:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid tag_"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0

    :cond_3
    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/g/i;->l:I

    if-eq v2, p1, :cond_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public e(F)V
    .locals 1

    const/4 v0, 0x1

    iput p1, p0, Lorg/cocos2d/g/i;->t:F

    iput p1, p0, Lorg/cocos2d/g/i;->s:F

    iput-boolean v0, p0, Lorg/cocos2d/g/i;->i:Z

    iput-boolean v0, p0, Lorg/cocos2d/g/i;->h:Z

    iput-boolean v0, p0, Lorg/cocos2d/g/i;->j:Z

    return-void
.end method

.method public e(Lorg/cocos2d/l/e;)V
    .locals 2

    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    iget v1, p1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/g/i;->d(FF)V

    return-void
.end method

.method public f(F)V
    .locals 0

    iput p1, p0, Lorg/cocos2d/g/i;->B:F

    return-void
.end method

.method public final f(I)V
    .locals 2

    invoke-static {}, Lorg/cocos2d/a/e;->a()Lorg/cocos2d/a/e;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cocos2d/g/i;->o:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p0, p1, v1}, Lorg/cocos2d/a/e;->a(Ljava/lang/Object;IZ)V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final f(Lorg/cocos2d/l/e;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lorg/cocos2d/l/a/b;->a()Lorg/cocos2d/l/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/l/a/b;->f()Lorg/cocos2d/m/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/m/c/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/l/d;

    invoke-direct {p0, v0}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/l/d;)V

    invoke-static {v2, v2, v0, p1}, Lorg/cocos2d/l/a/a;->a(FFLorg/cocos2d/l/d;Lorg/cocos2d/l/e;)V

    invoke-virtual {v1, v0}, Lorg/cocos2d/m/c/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public g()V
    .locals 2

    invoke-static {}, Lorg/cocos2d/a/e;->a()Lorg/cocos2d/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/a/e;->d(Ljava/lang/Object;)V

    invoke-static {}, Lorg/cocos2d/a/a;->a()Lorg/cocos2d/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/a/a;->e(Lorg/cocos2d/g/i;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/g/i;->o:Z

    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/g/i;

    invoke-virtual {p0}, Lorg/cocos2d/g/i;->g()V

    goto :goto_0
.end method

.method public final i()F
    .locals 1

    iget v0, p0, Lorg/cocos2d/g/i;->r:F

    return v0
.end method

.method public final j()F
    .locals 1

    iget v0, p0, Lorg/cocos2d/g/i;->s:F

    return v0
.end method

.method public final k()F
    .locals 1

    iget v0, p0, Lorg/cocos2d/g/i;->t:F

    return v0
.end method

.method public final l()F
    .locals 2

    iget v0, p0, Lorg/cocos2d/g/i;->s:F

    iget v1, p0, Lorg/cocos2d/g/i;->t:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/g/i;->s:F

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/cocos2d/g/i;->a:Ljava/lang/String;

    const-string v1, "CCNode#scale. ScaleX != ScaleY. Don\'t know which one to return"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Lorg/cocos2d/l/e;
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/g/i;->u:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    iget-object v1, p0, Lorg/cocos2d/g/i;->u:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lorg/cocos2d/l/g;
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/g/i;->w:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    iget-object v1, p0, Lorg/cocos2d/g/i;->w:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/g;->a(FF)Lorg/cocos2d/l/g;

    move-result-object v0

    return-object v0
.end method

.method public final o()Lorg/cocos2d/l/g;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/i;->w:Lorg/cocos2d/l/g;

    return-object v0
.end method

.method public final p()Lorg/cocos2d/l/e;
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/g/i;->v:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    iget-object v1, p0, Lorg/cocos2d/g/i;->v:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    return-object v0
.end method

.method public final q()Lorg/cocos2d/l/e;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/i;->v:Lorg/cocos2d/l/e;

    return-object v0
.end method

.method public final r()Lorg/cocos2d/l/e;
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/g/i;->x:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    iget-object v1, p0, Lorg/cocos2d/g/i;->x:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    return-object v0
.end method

.method public final s()Lorg/cocos2d/l/e;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/i;->x:Lorg/cocos2d/l/e;

    return-object v0
.end method

.method public final t()Lorg/cocos2d/opengl/e;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/i;->k:Lorg/cocos2d/opengl/e;

    if-nez v0, :cond_0

    new-instance v0, Lorg/cocos2d/opengl/e;

    invoke-direct {v0}, Lorg/cocos2d/opengl/e;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/g/i;->k:Lorg/cocos2d/opengl/e;

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/g/i;->k:Lorg/cocos2d/opengl/e;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<instance of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "| Tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/g/i;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lorg/cocos2d/d/c;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/i;->y:Lorg/cocos2d/d/c;

    return-object v0
.end method

.method public final v()Z
    .locals 1

    iget-boolean v0, p0, Lorg/cocos2d/g/i;->z:Z

    return v0
.end method

.method public final w()Lorg/cocos2d/g/i;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/i;->A:Lorg/cocos2d/g/i;

    return-object v0
.end method

.method public final x()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/g/i;->l:I

    return v0
.end method

.method public final y()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/g/i;->m:I

    return v0
.end method

.method public final z()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/i;->C:Ljava/util/List;

    return-object v0
.end method
