.class public Lorg/cocos2d/f/a;
.super Lorg/cocos2d/e/b;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lorg/cocos2d/f/c;

.field private c:Lorg/cocos2d/f/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/f/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/f/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs constructor <init>([Lorg/cocos2d/f/c;)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x4000

    const/high16 v1, 0x3f00

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/f/a;->k:Z

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    invoke-virtual {p0, v3}, Lorg/cocos2d/f/a;->b(Z)V

    invoke-virtual {p0, v1, v1}, Lorg/cocos2d/f/a;->c(FF)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/f/a;->a(Lorg/cocos2d/l/g;)V

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v2

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/f/a;->e(Lorg/cocos2d/l/e;)V

    if-eqz p1, :cond_0

    move v0, v3

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/f/a;->b:Lorg/cocos2d/f/c;

    sget-object v0, Lorg/cocos2d/f/b;->a:Lorg/cocos2d/f/b;

    iput-object v0, p0, Lorg/cocos2d/f/a;->c:Lorg/cocos2d/f/b;

    return-void

    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, v0}, Lorg/cocos2d/f/a;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs a([Lorg/cocos2d/f/c;)Lorg/cocos2d/f/a;
    .locals 1

    new-instance v0, Lorg/cocos2d/f/a;

    invoke-direct {v0, p0}, Lorg/cocos2d/f/a;-><init>([Lorg/cocos2d/f/c;)V

    return-object v0
.end method

.method private e(Landroid/view/MotionEvent;)Lorg/cocos2d/f/c;
    .locals 10

    const/4 v9, 0x0

    iget-object v0, p0, Lorg/cocos2d/f/a;->C:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v9

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/cocos2d/l/a/b;->a()Lorg/cocos2d/l/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/l/a/b;->b()Lorg/cocos2d/m/c/c;

    move-result-object v4

    invoke-virtual {v0}, Lorg/cocos2d/l/a/b;->e()Lorg/cocos2d/m/c/c;

    move-result-object v5

    invoke-virtual {v4}, Lorg/cocos2d/m/c/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/l/e;

    invoke-virtual {v4}, Lorg/cocos2d/m/c/c;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/l/e;

    invoke-virtual {v5}, Lorg/cocos2d/m/c/c;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/l/f;

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v3, v6, v7, v0}, Lorg/cocos2d/g/c;->a(FFLorg/cocos2d/l/e;)V

    const/4 v3, 0x0

    move v6, v3

    :goto_1
    iget-object v3, p0, Lorg/cocos2d/f/a;->C:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v6, v3, :cond_2

    move-object v3, v9

    :cond_1
    invoke-virtual {v4, v0}, Lorg/cocos2d/m/c/c;->a(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lorg/cocos2d/m/c/c;->a(Ljava/lang/Object;)V

    invoke-virtual {v5, v2}, Lorg/cocos2d/m/c/c;->a(Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/cocos2d/f/a;->C:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/f/c;

    invoke-virtual {v3}, Lorg/cocos2d/f/c;->v()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Lorg/cocos2d/f/c;->h()Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v0, Lorg/cocos2d/l/e;->a:F

    iget v8, v0, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v3, v7, v8, v1}, Lorg/cocos2d/f/c;->a(FFLorg/cocos2d/l/e;)V

    invoke-virtual {v3, v2}, Lorg/cocos2d/f/c;->a(Lorg/cocos2d/l/f;)V

    iget-object v7, v2, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    invoke-static {v7}, Lorg/cocos2d/l/a/a;->a(Lorg/cocos2d/l/e;)V

    invoke-static {v2, v1}, Lorg/cocos2d/l/f;->a(Lorg/cocos2d/l/f;Lorg/cocos2d/l/e;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_3
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_1
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;
    .locals 1

    check-cast p1, Lorg/cocos2d/f/c;

    invoke-super {p0, p1, p2, p3}, Lorg/cocos2d/e/b;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 8

    const/high16 v7, 0x40a0

    const/high16 v6, 0x4000

    const/high16 v0, -0x3f60

    iget-object v1, p0, Lorg/cocos2d/f/a;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    div-float v0, v2, v6

    const/4 v1, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lorg/cocos2d/f/a;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->n()Lorg/cocos2d/l/g;

    move-result-object v3

    iget v3, v3, Lorg/cocos2d/l/g;->b:F

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->k()F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v7

    add-float/2addr v0, v2

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/f/a;->C:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/f/c;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/cocos2d/f/c;->n()Lorg/cocos2d/l/g;

    move-result-object v4

    iget v4, v4, Lorg/cocos2d/l/g;->b:F

    invoke-virtual {v0}, Lorg/cocos2d/f/c;->k()F

    move-result v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    sub-float v4, v2, v4

    invoke-virtual {v0, v3, v4}, Lorg/cocos2d/f/c;->d(FF)V

    invoke-virtual {v0}, Lorg/cocos2d/f/c;->n()Lorg/cocos2d/l/g;

    move-result-object v3

    iget v3, v3, Lorg/cocos2d/l/g;->b:F

    invoke-virtual {v0}, Lorg/cocos2d/f/c;->k()F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v7

    sub-float v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public final a(F)V
    .locals 5

    const/high16 v4, 0x4000

    neg-float v0, p1

    iget-object v1, p0, Lorg/cocos2d/f/a;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    neg-float v0, v2

    div-float/2addr v0, v4

    iget-object v1, p0, Lorg/cocos2d/f/a;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->n()Lorg/cocos2d/l/g;

    move-result-object v3

    iget v3, v3, Lorg/cocos2d/l/g;->a:F

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->j()F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, p1

    add-float/2addr v0, v2

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/g/i;

    invoke-virtual {p0}, Lorg/cocos2d/g/i;->n()Lorg/cocos2d/l/g;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/l/g;->a:F

    invoke-virtual {p0}, Lorg/cocos2d/g/i;->j()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cocos2d/g/i;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0}, Lorg/cocos2d/g/i;->n()Lorg/cocos2d/l/g;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/l/g;->a:F

    invoke-virtual {p0}, Lorg/cocos2d/g/i;->j()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    add-float/2addr v0, v2

    goto :goto_1
.end method

.method public final a([I)V
    .locals 17

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    if-lt v2, v4, :cond_0

    const/4 v2, -0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v4

    move v4, v7

    move v7, v2

    move v15, v5

    move v5, v6

    move v6, v15

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/f/a;->C:Ljava/util/List;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v4, v2, :cond_1

    sget-boolean v2, Lorg/cocos2d/f/a;->a:Z

    if-nez v2, :cond_4

    if-nez v5, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Too many rows/columns for available menu items."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_0
    aget v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/f/a;->C:Ljava/util/List;

    move-object v2, v0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2d/f/c;

    sget-boolean v2, Lorg/cocos2d/f/a;->a:Z

    if-nez v2, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v8, v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Too many menu items for the amount of rows/columns."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_2
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-boolean v9, Lorg/cocos2d/f/a;->a:Z

    if-nez v9, :cond_3

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Can\'t have zero columns on a row"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_3
    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Lorg/cocos2d/f/c;->n()Lorg/cocos2d/l/g;

    move-result-object v9

    iget v9, v9, Lorg/cocos2d/l/g;->b:F

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v2, :cond_8

    add-int/lit8 v2, v6, 0x5

    add-int/2addr v2, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    add-int/lit8 v7, v8, 0x1

    move v15, v5

    move v5, v6

    move v6, v2

    move v2, v15

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v2

    goto :goto_1

    :cond_4
    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    const/4 v11, 0x0

    move v15, v11

    move v11, v2

    move v2, v10

    move v10, v7

    move v7, v8

    move v8, v5

    move v5, v15

    move/from16 v16, v9

    move v9, v6

    move/from16 v6, v16

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/f/a;->C:Ljava/util/List;

    move-object v12, v0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lt v5, v12, :cond_5

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/f/a;->C:Ljava/util/List;

    move-object v12, v0

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2d/f/c;

    if-nez v7, :cond_6

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v6, v4, Lorg/cocos2d/l/g;->a:F

    add-int/lit8 v7, v2, 0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    move v7, v2

    move v2, v6

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/cocos2d/f/c;->n()Lorg/cocos2d/l/g;

    move-result-object v12

    iget v12, v12, Lorg/cocos2d/l/g;->b:F

    float-to-int v12, v12

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v12, v4, Lorg/cocos2d/l/g;->a:F

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    sub-float v12, v2, v12

    invoke-virtual/range {p1 .. p1}, Lorg/cocos2d/f/c;->n()Lorg/cocos2d/l/g;

    move-result-object v13

    iget v13, v13, Lorg/cocos2d/l/g;->b:F

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    sub-float v13, v10, v13

    invoke-static {v12, v13}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v12

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Lorg/cocos2d/f/c;->e(Lorg/cocos2d/l/e;)V

    const/high16 v12, 0x4120

    add-float/2addr v12, v6

    add-float/2addr v2, v12

    add-int/lit8 v8, v8, 0x1

    if-lt v8, v7, :cond_7

    add-int/lit8 v7, v9, 0x5

    int-to-float v7, v7

    sub-float v7, v10, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    add-int/lit8 v11, v11, 0x1

    move v15, v9

    move v9, v10

    move v10, v7

    move v7, v15

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    move v2, v5

    move v5, v6

    move v6, v7

    move v7, v8

    goto/16 :goto_2
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/cocos2d/f/a;->c:Lorg/cocos2d/f/b;

    sget-object v1, Lorg/cocos2d/f/b;->a:Lorg/cocos2d/f/b;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/cocos2d/f/a;->z:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lorg/cocos2d/f/a;->e(Landroid/view/MotionEvent;)Lorg/cocos2d/f/c;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/f/a;->b:Lorg/cocos2d/f/c;

    iget-object v0, p0, Lorg/cocos2d/f/a;->b:Lorg/cocos2d/f/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/f/a;->b:Lorg/cocos2d/f/c;

    invoke-virtual {v0}, Lorg/cocos2d/f/c;->d()V

    sget-object v0, Lorg/cocos2d/f/b;->b:Lorg/cocos2d/f/b;

    iput-object v0, p0, Lorg/cocos2d/f/a;->c:Lorg/cocos2d/f/b;

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/high16 v0, 0x40a0

    invoke-virtual {p0, v0}, Lorg/cocos2d/f/a;->a(F)V

    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/f/a;->c:Lorg/cocos2d/f/b;

    sget-object v1, Lorg/cocos2d/f/b;->b:Lorg/cocos2d/f/b;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/cocos2d/f/a;->b:Lorg/cocos2d/f/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/f/a;->b:Lorg/cocos2d/f/c;

    invoke-virtual {v0}, Lorg/cocos2d/f/c;->e()V

    iget-object v0, p0, Lorg/cocos2d/f/a;->b:Lorg/cocos2d/f/c;

    invoke-virtual {v0}, Lorg/cocos2d/f/c;->c()V

    :cond_0
    sget-object v0, Lorg/cocos2d/f/b;->a:Lorg/cocos2d/f/b;

    iput-object v0, p0, Lorg/cocos2d/f/a;->c:Lorg/cocos2d/f/b;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/f/a;->c:Lorg/cocos2d/f/b;

    sget-object v1, Lorg/cocos2d/f/b;->b:Lorg/cocos2d/f/b;

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lorg/cocos2d/f/a;->e(Landroid/view/MotionEvent;)Lorg/cocos2d/f/c;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/f/a;->b:Lorg/cocos2d/f/c;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/cocos2d/f/a;->b:Lorg/cocos2d/f/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/f/a;->b:Lorg/cocos2d/f/c;

    invoke-virtual {v1}, Lorg/cocos2d/f/c;->e()V

    :cond_0
    iput-object v0, p0, Lorg/cocos2d/f/a;->b:Lorg/cocos2d/f/c;

    iget-object v0, p0, Lorg/cocos2d/f/a;->b:Lorg/cocos2d/f/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/f/a;->b:Lorg/cocos2d/f/c;

    invoke-virtual {v0}, Lorg/cocos2d/f/c;->d()V

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/f/a;->c:Lorg/cocos2d/f/b;

    sget-object v1, Lorg/cocos2d/f/b;->b:Lorg/cocos2d/f/b;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/cocos2d/f/a;->b:Lorg/cocos2d/f/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/f/a;->b:Lorg/cocos2d/f/c;

    invoke-virtual {v0}, Lorg/cocos2d/f/c;->e()V

    :cond_0
    sget-object v0, Lorg/cocos2d/f/b;->a:Lorg/cocos2d/f/b;

    iput-object v0, p0, Lorg/cocos2d/f/a;->c:Lorg/cocos2d/f/b;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final e()V
    .locals 1

    invoke-static {}, Lorg/cocos2d/c/d;->b()Lorg/cocos2d/c/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/c/d;->b(Lorg/cocos2d/i/d;)V

    return-void
.end method
