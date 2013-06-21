.class public abstract Lorg/cocos2d/h/l;
.super Lorg/cocos2d/g/i;

# interfaces
.implements Lorg/cocos2d/a/i;


# static fields
.field static final synthetic Y:Z


# instance fields
.field protected E:F

.field protected F:F

.field protected G:F

.field protected H:Lorg/cocos2d/l/l;

.field protected I:Lorg/cocos2d/l/l;

.field protected J:Lorg/cocos2d/l/l;

.field protected K:Lorg/cocos2d/l/l;

.field L:Lorg/cocos2d/l/i;

.field protected M:Z

.field protected N:[Lorg/cocos2d/h/m;

.field protected O:I

.field protected P:I

.field protected Q:F

.field protected R:F

.field protected S:Lorg/cocos2d/opengl/i;

.field T:I

.field U:Lorg/cocos2d/h/p;

.field V:Lorg/cocos2d/h/q;

.field protected W:I

.field protected X:I

.field private Z:I

.field protected a:Z

.field protected b:F

.field protected c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field j:F

.field k:F

.field protected l:Lorg/cocos2d/l/e;

.field protected m:Lorg/cocos2d/l/e;

.field protected n:Lorg/cocos2d/l/e;

.field protected o:F

.field protected p:F

.field protected q:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/h/l;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/h/l;->Y:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(I)V
    .locals 5

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/cocos2d/g/i;-><init>()V

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/h/l;->l:Lorg/cocos2d/l/e;

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/h/l;->m:Lorg/cocos2d/l/e;

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/h/l;->n:Lorg/cocos2d/l/e;

    new-instance v0, Lorg/cocos2d/l/l;

    invoke-direct {v0}, Lorg/cocos2d/l/l;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/h/l;->H:Lorg/cocos2d/l/l;

    new-instance v0, Lorg/cocos2d/l/l;

    invoke-direct {v0}, Lorg/cocos2d/l/l;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/h/l;->I:Lorg/cocos2d/l/l;

    new-instance v0, Lorg/cocos2d/l/l;

    invoke-direct {v0}, Lorg/cocos2d/l/l;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/h/l;->J:Lorg/cocos2d/l/l;

    new-instance v0, Lorg/cocos2d/l/l;

    invoke-direct {v0}, Lorg/cocos2d/l/l;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/h/l;->K:Lorg/cocos2d/l/l;

    new-instance v0, Lorg/cocos2d/l/i;

    const/16 v1, 0x303

    invoke-direct {v0, v4, v1}, Lorg/cocos2d/l/i;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/h/l;->L:Lorg/cocos2d/l/i;

    iput v2, p0, Lorg/cocos2d/h/l;->T:I

    iput v2, p0, Lorg/cocos2d/h/l;->W:I

    iput p1, p0, Lorg/cocos2d/h/l;->O:I

    iget v0, p0, Lorg/cocos2d/h/l;->O:I

    new-array v0, v0, [Lorg/cocos2d/h/m;

    iput-object v0, p0, Lorg/cocos2d/h/l;->N:[Lorg/cocos2d/h/m;

    move v0, v3

    :goto_0
    iget v1, p0, Lorg/cocos2d/h/l;->O:I

    if-lt v0, v1, :cond_0

    iput-boolean v4, p0, Lorg/cocos2d/h/l;->a:Z

    iput v3, p0, Lorg/cocos2d/h/l;->Z:I

    invoke-virtual {p0, v3}, Lorg/cocos2d/h/l;->a(I)V

    iput-boolean v3, p0, Lorg/cocos2d/h/l;->M:Z

    invoke-virtual {p0, v4}, Lorg/cocos2d/h/l;->f(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/cocos2d/h/l;->N:[Lorg/cocos2d/h/m;

    new-instance v2, Lorg/cocos2d/h/m;

    invoke-direct {v2}, Lorg/cocos2d/h/m;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final H()Lorg/cocos2d/l/l;
    .locals 2

    new-instance v0, Lorg/cocos2d/l/l;

    iget-object v1, p0, Lorg/cocos2d/h/l;->H:Lorg/cocos2d/l/l;

    invoke-direct {v0, v1}, Lorg/cocos2d/l/l;-><init>(Lorg/cocos2d/l/l;)V

    return-object v0
.end method

.method public final I()Lorg/cocos2d/l/l;
    .locals 2

    new-instance v0, Lorg/cocos2d/l/l;

    iget-object v1, p0, Lorg/cocos2d/h/l;->I:Lorg/cocos2d/l/l;

    invoke-direct {v0, v1}, Lorg/cocos2d/l/l;-><init>(Lorg/cocos2d/l/l;)V

    return-object v0
.end method

.method public final J()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/h/l;->O:I

    return v0
.end method

.method public final K()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/h/l;->M:Z

    return-void
.end method

.method public final L()V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/h/l;->Y:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/h/l;->T:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Radius"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/h/l;->V:Lorg/cocos2d/h/q;

    const/4 v1, 0x0

    iput v1, v0, Lorg/cocos2d/h/q;->b:F

    return-void
.end method

.method public final M()V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/h/l;->Y:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/h/l;->T:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Radius"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/h/l;->V:Lorg/cocos2d/h/q;

    const/4 v1, 0x0

    iput v1, v0, Lorg/cocos2d/h/q;->d:F

    return-void
.end method

.method public final N()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/h/l;->P:I

    return v0
.end method

.method public final O()V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/h/l;->V:Lorg/cocos2d/h/q;

    const/4 v1, 0x0

    iput v1, v0, Lorg/cocos2d/h/q;->f:F

    return-void
.end method

.method public final P()V
    .locals 1

    const/high16 v0, -0x4080

    iput v0, p0, Lorg/cocos2d/h/l;->b:F

    return-void
.end method

.method public final Q()F
    .locals 1

    iget v0, p0, Lorg/cocos2d/h/l;->F:F

    return v0
.end method

.method public R()V
    .locals 0

    return-void
.end method

.method public final a(F)V
    .locals 14

    iget-boolean v0, p0, Lorg/cocos2d/h/l;->a:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/cocos2d/h/l;->Q:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f80

    iget v1, p0, Lorg/cocos2d/h/l;->Q:F

    div-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/h/l;->R:F

    add-float/2addr v1, p1

    iput v1, p0, Lorg/cocos2d/h/l;->R:F

    :goto_0
    iget v1, p0, Lorg/cocos2d/h/l;->P:I

    iget v2, p0, Lorg/cocos2d/h/l;->O:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Lorg/cocos2d/h/l;->R:F

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_3

    :cond_0
    iget v0, p0, Lorg/cocos2d/h/l;->c:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/cocos2d/h/l;->c:F

    iget v0, p0, Lorg/cocos2d/h/l;->b:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/cocos2d/h/l;->b:F

    iget v1, p0, Lorg/cocos2d/h/l;->c:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/h/l;->a:Z

    iget v0, p0, Lorg/cocos2d/h/l;->b:F

    iput v0, p0, Lorg/cocos2d/h/l;->c:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/h/l;->R:F

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/h/l;->X:I

    invoke-static {}, Lorg/cocos2d/l/a/b;->a()Lorg/cocos2d/l/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/l/a/b;->b()Lorg/cocos2d/m/c/c;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cocos2d/m/c/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/l/e;

    invoke-virtual {v4}, Lorg/cocos2d/m/c/c;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/l/e;

    invoke-virtual {v4}, Lorg/cocos2d/m/c/c;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/l/e;

    invoke-virtual {v4}, Lorg/cocos2d/m/c/c;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/l/e;

    iget v5, p0, Lorg/cocos2d/h/l;->Z:I

    if-nez v5, :cond_d

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/l;->f(Lorg/cocos2d/l/e;)V

    :cond_2
    :goto_1
    iget v5, p0, Lorg/cocos2d/h/l;->X:I

    iget v6, p0, Lorg/cocos2d/h/l;->P:I

    if-lt v5, v6, :cond_e

    invoke-virtual {v4, v0}, Lorg/cocos2d/m/c/c;->a(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lorg/cocos2d/m/c/c;->a(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Lorg/cocos2d/m/c/c;->a(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lorg/cocos2d/m/c/c;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/cocos2d/h/l;->R()V

    :goto_2
    return-void

    :cond_3
    iget v1, p0, Lorg/cocos2d/h/l;->P:I

    iget v2, p0, Lorg/cocos2d/h/l;->O:I

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/cocos2d/h/l;->N:[Lorg/cocos2d/h/m;

    iget v2, p0, Lorg/cocos2d/h/l;->P:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iget v3, p0, Lorg/cocos2d/h/l;->F:F

    iget v4, p0, Lorg/cocos2d/h/l;->G:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lorg/cocos2d/h/m;->i:F

    iget-object v2, v1, Lorg/cocos2d/h/m;->a:Lorg/cocos2d/l/e;

    iget-object v3, p0, Lorg/cocos2d/h/l;->l:Lorg/cocos2d/l/e;

    iget v3, v3, Lorg/cocos2d/l/e;->a:F

    iget-object v4, p0, Lorg/cocos2d/h/l;->n:Lorg/cocos2d/l/e;

    iget v4, v4, Lorg/cocos2d/l/e;->a:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/cocos2d/h/l;->l:Lorg/cocos2d/l/e;

    iget v4, v4, Lorg/cocos2d/l/e;->b:F

    iget-object v5, p0, Lorg/cocos2d/h/l;->n:Lorg/cocos2d/l/e;

    iget v5, v5, Lorg/cocos2d/l/e;->b:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/l/e;->b(FF)V

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/cocos2d/h/l;->H:Lorg/cocos2d/l/l;

    iget v4, v4, Lorg/cocos2d/l/l;->a:F

    iget-object v5, p0, Lorg/cocos2d/h/l;->I:Lorg/cocos2d/l/l;

    iget v5, v5, Lorg/cocos2d/l/l;->a:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/cocos2d/h/l;->H:Lorg/cocos2d/l/l;

    iget v5, v5, Lorg/cocos2d/l/l;->b:F

    iget-object v6, p0, Lorg/cocos2d/h/l;->I:Lorg/cocos2d/l/l;

    iget v6, v6, Lorg/cocos2d/l/l;->b:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/cocos2d/h/l;->H:Lorg/cocos2d/l/l;

    iget v6, v6, Lorg/cocos2d/l/l;->c:F

    iget-object v7, p0, Lorg/cocos2d/h/l;->I:Lorg/cocos2d/l/l;

    iget v7, v7, Lorg/cocos2d/l/l;->c:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/cocos2d/h/l;->H:Lorg/cocos2d/l/l;

    iget v7, v7, Lorg/cocos2d/l/l;->d:F

    iget-object v8, p0, Lorg/cocos2d/h/l;->I:Lorg/cocos2d/l/l;

    iget v8, v8, Lorg/cocos2d/l/l;->d:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/cocos2d/h/l;->J:Lorg/cocos2d/l/l;

    iget v8, v8, Lorg/cocos2d/l/l;->a:F

    iget-object v9, p0, Lorg/cocos2d/h/l;->K:Lorg/cocos2d/l/l;

    iget v9, v9, Lorg/cocos2d/l/l;->a:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/cocos2d/h/l;->J:Lorg/cocos2d/l/l;

    iget v9, v9, Lorg/cocos2d/l/l;->b:F

    iget-object v10, p0, Lorg/cocos2d/h/l;->K:Lorg/cocos2d/l/l;

    iget v10, v10, Lorg/cocos2d/l/l;->b:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/cocos2d/h/l;->J:Lorg/cocos2d/l/l;

    iget v10, v10, Lorg/cocos2d/l/l;->c:F

    iget-object v11, p0, Lorg/cocos2d/h/l;->K:Lorg/cocos2d/l/l;

    iget v11, v11, Lorg/cocos2d/l/l;->c:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/cocos2d/h/l;->J:Lorg/cocos2d/l/l;

    iget v11, v11, Lorg/cocos2d/l/l;->d:F

    iget-object v12, p0, Lorg/cocos2d/h/l;->K:Lorg/cocos2d/l/l;

    iget v12, v12, Lorg/cocos2d/l/l;->d:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v13

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget-object v10, v1, Lorg/cocos2d/h/m;->c:Lorg/cocos2d/l/l;

    invoke-static {v10, v2, v3, v4, v5}, Lorg/cocos2d/l/a/i;->a(Lorg/cocos2d/l/l;FFFF)V

    iget-object v10, v1, Lorg/cocos2d/h/m;->d:Lorg/cocos2d/l/l;

    sub-float v2, v6, v2

    iget v6, v1, Lorg/cocos2d/h/m;->i:F

    div-float/2addr v2, v6

    sub-float v3, v7, v3

    iget v6, v1, Lorg/cocos2d/h/m;->i:F

    div-float/2addr v3, v6

    sub-float v4, v8, v4

    iget v6, v1, Lorg/cocos2d/h/m;->i:F

    div-float/2addr v4, v6

    sub-float v5, v9, v5

    iget v6, v1, Lorg/cocos2d/h/m;->i:F

    div-float/2addr v5, v6

    invoke-static {v10, v2, v3, v4, v5}, Lorg/cocos2d/l/a/i;->a(Lorg/cocos2d/l/l;FFFF)V

    const/4 v2, 0x0

    iget v3, p0, Lorg/cocos2d/h/l;->d:F

    iget v4, p0, Lorg/cocos2d/h/l;->e:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lorg/cocos2d/h/m;->e:F

    iget v3, p0, Lorg/cocos2d/h/l;->f:F

    const/high16 v4, -0x4080

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8

    const/4 v2, 0x0

    iput v2, v1, Lorg/cocos2d/h/m;->f:F

    :goto_4
    iget v2, p0, Lorg/cocos2d/h/l;->h:F

    iget v3, p0, Lorg/cocos2d/h/l;->i:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lorg/cocos2d/h/l;->j:F

    iget v4, p0, Lorg/cocos2d/h/l;->k:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v2, v1, Lorg/cocos2d/h/m;->g:F

    sub-float v2, v3, v2

    iget v3, v1, Lorg/cocos2d/h/m;->i:F

    div-float/2addr v2, v3

    iput v2, v1, Lorg/cocos2d/h/m;->h:F

    iget v2, p0, Lorg/cocos2d/h/l;->Z:I

    if-nez v2, :cond_9

    iget-object v2, v1, Lorg/cocos2d/h/m;->b:Lorg/cocos2d/l/e;

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/l;->f(Lorg/cocos2d/l/e;)V

    :cond_4
    :goto_5
    iget v2, p0, Lorg/cocos2d/h/l;->o:F

    iget v3, p0, Lorg/cocos2d/h/l;->p:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x4334

    div-float/2addr v2, v3

    const v3, 0x40490fdb

    mul-float/2addr v2, v3

    iget v3, p0, Lorg/cocos2d/h/l;->T:I

    if-nez v3, :cond_a

    iget-object v3, p0, Lorg/cocos2d/h/l;->U:Lorg/cocos2d/h/p;

    iget v3, v3, Lorg/cocos2d/h/p;->b:F

    iget-object v4, p0, Lorg/cocos2d/h/l;->U:Lorg/cocos2d/h/p;

    iget v4, v4, Lorg/cocos2d/h/p;->c:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, v1, Lorg/cocos2d/h/m;->j:Lorg/cocos2d/h/n;

    if-nez v4, :cond_5

    new-instance v4, Lorg/cocos2d/h/n;

    invoke-direct {v4}, Lorg/cocos2d/h/n;-><init>()V

    iput-object v4, v1, Lorg/cocos2d/h/m;->j:Lorg/cocos2d/h/n;

    :cond_5
    iget-object v4, v1, Lorg/cocos2d/h/m;->j:Lorg/cocos2d/h/n;

    iget-object v4, v4, Lorg/cocos2d/h/n;->a:Lorg/cocos2d/l/e;

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v2, v6

    invoke-virtual {v4, v5, v2}, Lorg/cocos2d/l/e;->b(FF)V

    iget-object v2, v1, Lorg/cocos2d/h/m;->j:Lorg/cocos2d/h/n;

    iget-object v2, v2, Lorg/cocos2d/h/n;->a:Lorg/cocos2d/l/e;

    invoke-static {v2, v3}, Lorg/cocos2d/l/a/a;->a(Lorg/cocos2d/l/e;F)V

    iget-object v2, v1, Lorg/cocos2d/h/m;->j:Lorg/cocos2d/h/n;

    iget-object v3, p0, Lorg/cocos2d/h/l;->U:Lorg/cocos2d/h/p;

    iget v3, v3, Lorg/cocos2d/h/p;->f:F

    iget-object v4, p0, Lorg/cocos2d/h/l;->U:Lorg/cocos2d/h/p;

    iget v4, v4, Lorg/cocos2d/h/p;->g:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lorg/cocos2d/h/n;->b:F

    iget-object v1, v1, Lorg/cocos2d/h/m;->j:Lorg/cocos2d/h/n;

    iget-object v2, p0, Lorg/cocos2d/h/l;->U:Lorg/cocos2d/h/p;

    iget v2, v2, Lorg/cocos2d/h/p;->d:F

    iget-object v3, p0, Lorg/cocos2d/h/l;->U:Lorg/cocos2d/h/p;

    iget v3, v3, Lorg/cocos2d/h/p;->e:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/cocos2d/h/n;->c:F

    :goto_6
    iget v1, p0, Lorg/cocos2d/h/l;->P:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/cocos2d/h/l;->P:I

    :cond_6
    iget v1, p0, Lorg/cocos2d/h/l;->R:F

    sub-float/2addr v1, v0

    iput v1, p0, Lorg/cocos2d/h/l;->R:F

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_8
    iget v3, p0, Lorg/cocos2d/h/l;->f:F

    iget v4, p0, Lorg/cocos2d/h/l;->g:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float v2, v3, v2

    iget v3, v1, Lorg/cocos2d/h/m;->i:F

    div-float/2addr v2, v3

    iput v2, v1, Lorg/cocos2d/h/m;->f:F

    goto/16 :goto_4

    :cond_9
    iget v2, p0, Lorg/cocos2d/h/l;->Z:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-object v2, v1, Lorg/cocos2d/h/m;->b:Lorg/cocos2d/l/e;

    iget-object v3, p0, Lorg/cocos2d/h/l;->x:Lorg/cocos2d/l/e;

    invoke-virtual {v2, v3}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;)V

    goto/16 :goto_5

    :cond_a
    iget-object v3, p0, Lorg/cocos2d/h/l;->V:Lorg/cocos2d/h/q;

    iget v3, v3, Lorg/cocos2d/h/q;->a:F

    iget-object v4, p0, Lorg/cocos2d/h/l;->V:Lorg/cocos2d/h/q;

    iget v4, v4, Lorg/cocos2d/h/q;->b:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/cocos2d/h/l;->V:Lorg/cocos2d/h/q;

    iget v4, v4, Lorg/cocos2d/h/q;->c:F

    iget-object v5, p0, Lorg/cocos2d/h/l;->V:Lorg/cocos2d/h/q;

    iget v5, v5, Lorg/cocos2d/h/q;->d:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, v1, Lorg/cocos2d/h/m;->k:Lorg/cocos2d/h/o;

    if-nez v5, :cond_b

    new-instance v5, Lorg/cocos2d/h/o;

    invoke-direct {v5}, Lorg/cocos2d/h/o;-><init>()V

    iput-object v5, v1, Lorg/cocos2d/h/m;->k:Lorg/cocos2d/h/o;

    :cond_b
    iget-object v5, v1, Lorg/cocos2d/h/m;->k:Lorg/cocos2d/h/o;

    iput v3, v5, Lorg/cocos2d/h/o;->c:F

    iget-object v5, p0, Lorg/cocos2d/h/l;->V:Lorg/cocos2d/h/q;

    iget v5, v5, Lorg/cocos2d/h/q;->c:F

    const/high16 v6, -0x4080

    cmpl-float v5, v5, v6

    if-nez v5, :cond_c

    iget-object v3, v1, Lorg/cocos2d/h/m;->k:Lorg/cocos2d/h/o;

    const/4 v4, 0x0

    iput v4, v3, Lorg/cocos2d/h/o;->d:F

    :goto_7
    iget-object v3, v1, Lorg/cocos2d/h/m;->k:Lorg/cocos2d/h/o;

    iput v2, v3, Lorg/cocos2d/h/o;->a:F

    iget-object v1, v1, Lorg/cocos2d/h/m;->k:Lorg/cocos2d/h/o;

    iget-object v2, p0, Lorg/cocos2d/h/l;->V:Lorg/cocos2d/h/q;

    iget v2, v2, Lorg/cocos2d/h/q;->e:F

    iget-object v3, p0, Lorg/cocos2d/h/l;->V:Lorg/cocos2d/h/q;

    iget v3, v3, Lorg/cocos2d/h/q;->f:F

    invoke-static {}, Lorg/cocos2d/b/a;->a()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x4334

    div-float/2addr v2, v3

    const v3, 0x40490fdb

    mul-float/2addr v2, v3

    iput v2, v1, Lorg/cocos2d/h/o;->b:F

    goto/16 :goto_6

    :cond_c
    iget-object v5, v1, Lorg/cocos2d/h/m;->k:Lorg/cocos2d/h/o;

    sub-float v3, v4, v3

    iget v4, v1, Lorg/cocos2d/h/m;->i:F

    div-float/2addr v3, v4

    iput v3, v5, Lorg/cocos2d/h/o;->d:F

    goto :goto_7

    :cond_d
    iget v5, p0, Lorg/cocos2d/h/l;->Z:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lorg/cocos2d/h/l;->x:Lorg/cocos2d/l/e;

    invoke-virtual {v0, v5}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;)V

    goto/16 :goto_1

    :cond_e
    iget-object v5, p0, Lorg/cocos2d/h/l;->N:[Lorg/cocos2d/h/m;

    iget v6, p0, Lorg/cocos2d/h/l;->X:I

    aget-object v5, v5, v6

    iget v6, v5, Lorg/cocos2d/h/m;->i:F

    sub-float/2addr v6, p1

    iput v6, v5, Lorg/cocos2d/h/m;->i:F

    iget v6, v5, Lorg/cocos2d/h/m;->i:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_14

    iget v6, p0, Lorg/cocos2d/h/l;->T:I

    if-nez v6, :cond_12

    invoke-static {v2}, Lorg/cocos2d/l/a/a;->a(Lorg/cocos2d/l/e;)V

    iget-object v6, v5, Lorg/cocos2d/h/m;->a:Lorg/cocos2d/l/e;

    iget v6, v6, Lorg/cocos2d/l/e;->a:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_f

    iget-object v6, v5, Lorg/cocos2d/h/m;->a:Lorg/cocos2d/l/e;

    iget v6, v6, Lorg/cocos2d/l/e;->b:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_10

    :cond_f
    iget-object v6, v5, Lorg/cocos2d/h/m;->a:Lorg/cocos2d/l/e;

    const/high16 v7, 0x3f80

    invoke-static {v6}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;)F

    move-result v8

    div-float/2addr v7, v8

    iget v8, v6, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v8, v7

    iget v6, v6, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v6, v7

    invoke-virtual {v2, v8, v6}, Lorg/cocos2d/l/e;->b(FF)V

    :cond_10
    invoke-virtual {v3, v2}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;)V

    iget-object v6, v5, Lorg/cocos2d/h/m;->j:Lorg/cocos2d/h/n;

    iget v6, v6, Lorg/cocos2d/h/n;->b:F

    invoke-static {v2, v6}, Lorg/cocos2d/l/a/a;->a(Lorg/cocos2d/l/e;F)V

    iget v6, v3, Lorg/cocos2d/l/e;->a:F

    iget v7, v3, Lorg/cocos2d/l/e;->b:F

    neg-float v7, v7

    iput v7, v3, Lorg/cocos2d/l/e;->a:F

    iput v6, v3, Lorg/cocos2d/l/e;->b:F

    iget-object v6, v5, Lorg/cocos2d/h/m;->j:Lorg/cocos2d/h/n;

    iget v6, v6, Lorg/cocos2d/h/n;->c:F

    invoke-static {v3, v6}, Lorg/cocos2d/l/a/a;->a(Lorg/cocos2d/l/e;F)V

    iget v6, v2, Lorg/cocos2d/l/e;->a:F

    iget v7, v3, Lorg/cocos2d/l/e;->a:F

    add-float/2addr v6, v7

    iput v6, v1, Lorg/cocos2d/l/e;->a:F

    iget v6, v2, Lorg/cocos2d/l/e;->b:F

    iget v7, v3, Lorg/cocos2d/l/e;->b:F

    add-float/2addr v6, v7

    iput v6, v1, Lorg/cocos2d/l/e;->b:F

    iget-object v6, p0, Lorg/cocos2d/h/l;->U:Lorg/cocos2d/h/p;

    iget-object v6, v6, Lorg/cocos2d/h/p;->a:Lorg/cocos2d/l/e;

    invoke-static {v1, v6}, Lorg/cocos2d/l/a/a;->a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V

    invoke-static {v1, p1}, Lorg/cocos2d/l/a/a;->a(Lorg/cocos2d/l/e;F)V

    iget-object v6, v5, Lorg/cocos2d/h/m;->j:Lorg/cocos2d/h/n;

    iget-object v6, v6, Lorg/cocos2d/h/n;->a:Lorg/cocos2d/l/e;

    invoke-static {v6, v1}, Lorg/cocos2d/l/a/a;->a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V

    iget-object v6, v5, Lorg/cocos2d/h/m;->j:Lorg/cocos2d/h/n;

    iget-object v6, v6, Lorg/cocos2d/h/n;->a:Lorg/cocos2d/l/e;

    iget v7, v6, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v7, p1

    iput v7, v1, Lorg/cocos2d/l/e;->a:F

    iget v6, v6, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v6, p1

    iput v6, v1, Lorg/cocos2d/l/e;->b:F

    iget-object v6, v5, Lorg/cocos2d/h/m;->a:Lorg/cocos2d/l/e;

    invoke-static {v6, v1}, Lorg/cocos2d/l/a/a;->a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V

    :goto_8
    iget-object v6, v5, Lorg/cocos2d/h/m;->c:Lorg/cocos2d/l/l;

    iget v7, v6, Lorg/cocos2d/l/l;->a:F

    iget-object v8, v5, Lorg/cocos2d/h/m;->d:Lorg/cocos2d/l/l;

    iget v8, v8, Lorg/cocos2d/l/l;->a:F

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    iput v7, v6, Lorg/cocos2d/l/l;->a:F

    iget-object v6, v5, Lorg/cocos2d/h/m;->c:Lorg/cocos2d/l/l;

    iget v7, v6, Lorg/cocos2d/l/l;->b:F

    iget-object v8, v5, Lorg/cocos2d/h/m;->d:Lorg/cocos2d/l/l;

    iget v8, v8, Lorg/cocos2d/l/l;->b:F

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    iput v7, v6, Lorg/cocos2d/l/l;->b:F

    iget-object v6, v5, Lorg/cocos2d/h/m;->c:Lorg/cocos2d/l/l;

    iget v7, v6, Lorg/cocos2d/l/l;->c:F

    iget-object v8, v5, Lorg/cocos2d/h/m;->d:Lorg/cocos2d/l/l;

    iget v8, v8, Lorg/cocos2d/l/l;->c:F

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    iput v7, v6, Lorg/cocos2d/l/l;->c:F

    iget-object v6, v5, Lorg/cocos2d/h/m;->c:Lorg/cocos2d/l/l;

    iget v7, v6, Lorg/cocos2d/l/l;->d:F

    iget-object v8, v5, Lorg/cocos2d/h/m;->d:Lorg/cocos2d/l/l;

    iget v8, v8, Lorg/cocos2d/l/l;->d:F

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    iput v7, v6, Lorg/cocos2d/l/l;->d:F

    iget v6, v5, Lorg/cocos2d/h/m;->e:F

    iget v7, v5, Lorg/cocos2d/h/m;->f:F

    mul-float/2addr v7, p1

    add-float/2addr v6, v7

    iput v6, v5, Lorg/cocos2d/h/m;->e:F

    const/4 v6, 0x0

    iget v7, v5, Lorg/cocos2d/h/m;->e:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v5, Lorg/cocos2d/h/m;->e:F

    iget v6, v5, Lorg/cocos2d/h/m;->g:F

    iget v7, v5, Lorg/cocos2d/h/m;->h:F

    mul-float/2addr v7, p1

    add-float/2addr v6, v7

    iput v6, v5, Lorg/cocos2d/h/m;->g:F

    iget v6, p0, Lorg/cocos2d/h/l;->Z:I

    if-eqz v6, :cond_11

    iget v6, p0, Lorg/cocos2d/h/l;->Z:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_13

    :cond_11
    iget-object v6, v5, Lorg/cocos2d/h/m;->b:Lorg/cocos2d/l/e;

    invoke-static {v0, v6, v1}, Lorg/cocos2d/l/a/a;->a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V

    iget-object v6, v5, Lorg/cocos2d/h/m;->a:Lorg/cocos2d/l/e;

    invoke-static {v6, v1, v1}, Lorg/cocos2d/l/a/a;->a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V

    move-object v6, v1

    :goto_9
    invoke-virtual {p0, v5, v6}, Lorg/cocos2d/h/l;->a(Lorg/cocos2d/h/m;Lorg/cocos2d/l/e;)V

    iget v5, p0, Lorg/cocos2d/h/l;->X:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/cocos2d/h/l;->X:I

    goto/16 :goto_1

    :cond_12
    iget-object v6, v5, Lorg/cocos2d/h/m;->k:Lorg/cocos2d/h/o;

    iget v7, v6, Lorg/cocos2d/h/o;->a:F

    iget-object v8, v5, Lorg/cocos2d/h/m;->k:Lorg/cocos2d/h/o;

    iget v8, v8, Lorg/cocos2d/h/o;->b:F

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    iput v7, v6, Lorg/cocos2d/h/o;->a:F

    iget-object v6, v5, Lorg/cocos2d/h/m;->k:Lorg/cocos2d/h/o;

    iget v7, v6, Lorg/cocos2d/h/o;->c:F

    iget-object v8, v5, Lorg/cocos2d/h/m;->k:Lorg/cocos2d/h/o;

    iget v8, v8, Lorg/cocos2d/h/o;->d:F

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    iput v7, v6, Lorg/cocos2d/h/o;->c:F

    iget-object v6, v5, Lorg/cocos2d/h/m;->a:Lorg/cocos2d/l/e;

    iget-object v7, v5, Lorg/cocos2d/h/m;->k:Lorg/cocos2d/h/o;

    iget v7, v7, Lorg/cocos2d/h/o;->a:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    neg-float v7, v7

    iget-object v8, v5, Lorg/cocos2d/h/m;->k:Lorg/cocos2d/h/o;

    iget v8, v8, Lorg/cocos2d/h/o;->c:F

    mul-float/2addr v7, v8

    iput v7, v6, Lorg/cocos2d/l/e;->a:F

    iget-object v6, v5, Lorg/cocos2d/h/m;->a:Lorg/cocos2d/l/e;

    iget-object v7, v5, Lorg/cocos2d/h/m;->k:Lorg/cocos2d/h/o;

    iget v7, v7, Lorg/cocos2d/h/o;->a:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    neg-float v7, v7

    iget-object v8, v5, Lorg/cocos2d/h/m;->k:Lorg/cocos2d/h/o;

    iget v8, v8, Lorg/cocos2d/h/o;->c:F

    mul-float/2addr v7, v8

    iput v7, v6, Lorg/cocos2d/l/e;->b:F

    goto/16 :goto_8

    :cond_13
    iget-object v6, v5, Lorg/cocos2d/h/m;->a:Lorg/cocos2d/l/e;

    goto :goto_9

    :cond_14
    iget v5, p0, Lorg/cocos2d/h/l;->X:I

    iget v6, p0, Lorg/cocos2d/h/l;->P:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-eq v5, v6, :cond_15

    iget-object v5, p0, Lorg/cocos2d/h/l;->N:[Lorg/cocos2d/h/m;

    iget v6, p0, Lorg/cocos2d/h/l;->X:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lorg/cocos2d/h/l;->N:[Lorg/cocos2d/h/m;

    iget v7, p0, Lorg/cocos2d/h/l;->X:I

    iget-object v8, p0, Lorg/cocos2d/h/l;->N:[Lorg/cocos2d/h/m;

    iget v9, p0, Lorg/cocos2d/h/l;->P:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    iget-object v6, p0, Lorg/cocos2d/h/l;->N:[Lorg/cocos2d/h/m;

    iget v7, p0, Lorg/cocos2d/h/l;->P:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aput-object v5, v6, v7

    :cond_15
    iget v5, p0, Lorg/cocos2d/h/l;->P:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, p0, Lorg/cocos2d/h/l;->P:I

    iget v5, p0, Lorg/cocos2d/h/l;->P:I

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lorg/cocos2d/h/l;->M:Z

    if-eqz v5, :cond_2

    invoke-static {}, Lorg/cocos2d/a/e;->a()Lorg/cocos2d/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/a/e;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/cocos2d/h/l;->w()Lorg/cocos2d/g/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/g/i;Z)V

    goto/16 :goto_2
.end method

.method public final a(I)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lorg/cocos2d/h/l;->T:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lorg/cocos2d/h/l;->T:I

    if-nez p1, :cond_2

    new-instance v0, Lorg/cocos2d/h/p;

    invoke-direct {v0, p0}, Lorg/cocos2d/h/p;-><init>(Lorg/cocos2d/h/l;)V

    iput-object v0, p0, Lorg/cocos2d/h/l;->U:Lorg/cocos2d/h/p;

    iget-object v0, p0, Lorg/cocos2d/h/l;->V:Lorg/cocos2d/h/q;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/cocos2d/h/l;->V:Lorg/cocos2d/h/q;

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/cocos2d/h/q;

    invoke-direct {v0, p0}, Lorg/cocos2d/h/q;-><init>(Lorg/cocos2d/h/l;)V

    iput-object v0, p0, Lorg/cocos2d/h/l;->V:Lorg/cocos2d/h/q;

    iget-object v0, p0, Lorg/cocos2d/h/l;->U:Lorg/cocos2d/h/p;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/cocos2d/h/l;->U:Lorg/cocos2d/h/p;

    goto :goto_0
.end method

.method public a(Lorg/cocos2d/h/m;Lorg/cocos2d/l/e;)V
    .locals 0

    return-void
.end method

.method public final a(Lorg/cocos2d/l/e;)V
    .locals 2

    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    iget v1, p1, Lorg/cocos2d/l/e;->b:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/h/l;->n:Lorg/cocos2d/l/e;

    return-void
.end method

.method public final a(Lorg/cocos2d/l/l;)V
    .locals 1

    new-instance v0, Lorg/cocos2d/l/l;

    invoke-direct {v0, p1}, Lorg/cocos2d/l/l;-><init>(Lorg/cocos2d/l/l;)V

    iput-object v0, p0, Lorg/cocos2d/h/l;->H:Lorg/cocos2d/l/l;

    return-void
.end method

.method public a(Lorg/cocos2d/opengl/i;)V
    .locals 3

    const/16 v2, 0x303

    iput-object p1, p0, Lorg/cocos2d/h/l;->S:Lorg/cocos2d/opengl/i;

    iget-object v0, p0, Lorg/cocos2d/h/l;->S:Lorg/cocos2d/opengl/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/h/l;->S:Lorg/cocos2d/opengl/i;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/h/l;->L:Lorg/cocos2d/l/i;

    iget v0, v0, Lorg/cocos2d/l/i;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2d/h/l;->L:Lorg/cocos2d/l/i;

    iget v0, v0, Lorg/cocos2d/l/i;->b:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/cocos2d/h/l;->L:Lorg/cocos2d/l/i;

    const/16 v1, 0x302

    iput v1, v0, Lorg/cocos2d/l/i;->a:I

    iget-object v0, p0, Lorg/cocos2d/h/l;->L:Lorg/cocos2d/l/i;

    iput v2, v0, Lorg/cocos2d/l/i;->b:I

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 4

    const/16 v3, 0x303

    const/16 v2, 0x302

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/cocos2d/h/l;->L:Lorg/cocos2d/l/i;

    iput v2, v0, Lorg/cocos2d/l/i;->a:I

    iget-object v0, p0, Lorg/cocos2d/h/l;->L:Lorg/cocos2d/l/i;

    iput v1, v0, Lorg/cocos2d/l/i;->b:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/h/l;->S:Lorg/cocos2d/opengl/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/h/l;->S:Lorg/cocos2d/opengl/i;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/h/l;->L:Lorg/cocos2d/l/i;

    iput v2, v0, Lorg/cocos2d/l/i;->a:I

    iget-object v0, p0, Lorg/cocos2d/h/l;->L:Lorg/cocos2d/l/i;

    iput v3, v0, Lorg/cocos2d/l/i;->b:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/h/l;->L:Lorg/cocos2d/l/i;

    iput v1, v0, Lorg/cocos2d/l/i;->a:I

    iget-object v0, p0, Lorg/cocos2d/h/l;->L:Lorg/cocos2d/l/i;

    iput v3, v0, Lorg/cocos2d/l/i;->b:I

    goto :goto_0
.end method

.method public final b(Lorg/cocos2d/l/e;)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/h/l;->Y:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/h/l;->T:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/h/l;->U:Lorg/cocos2d/h/p;

    iget-object v0, v0, Lorg/cocos2d/h/p;->a:Lorg/cocos2d/l/e;

    invoke-virtual {v0, p1}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;)V

    return-void
.end method

.method public final b(Lorg/cocos2d/l/l;)V
    .locals 1

    new-instance v0, Lorg/cocos2d/l/l;

    invoke-direct {v0, p1}, Lorg/cocos2d/l/l;-><init>(Lorg/cocos2d/l/l;)V

    iput-object v0, p0, Lorg/cocos2d/h/l;->I:Lorg/cocos2d/l/l;

    return-void
.end method

.method public final c()V
    .locals 1

    const/high16 v0, 0x4100

    iput v0, p0, Lorg/cocos2d/h/l;->g:F

    return-void
.end method

.method public final c(Lorg/cocos2d/l/l;)V
    .locals 1

    new-instance v0, Lorg/cocos2d/l/l;

    invoke-direct {v0, p1}, Lorg/cocos2d/l/l;-><init>(Lorg/cocos2d/l/l;)V

    iput-object v0, p0, Lorg/cocos2d/h/l;->J:Lorg/cocos2d/l/l;

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/h/l;->i:F

    return-void
.end method

.method public final d(Lorg/cocos2d/l/l;)V
    .locals 1

    new-instance v0, Lorg/cocos2d/l/l;

    invoke-direct {v0, p1}, Lorg/cocos2d/l/l;-><init>(Lorg/cocos2d/l/l;)V

    iput-object v0, p0, Lorg/cocos2d/h/l;->K:Lorg/cocos2d/l/l;

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/h/l;->j:F

    return-void
.end method

.method public g(F)V
    .locals 0

    iput p1, p0, Lorg/cocos2d/h/l;->d:F

    return-void
.end method

.method public final h()Lorg/cocos2d/l/e;
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/h/l;->l:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    iget-object v1, p0, Lorg/cocos2d/h/l;->l:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    return-object v0
.end method

.method public final h(F)V
    .locals 0

    iput p1, p0, Lorg/cocos2d/h/l;->e:F

    return-void
.end method

.method public i(F)V
    .locals 0

    iput p1, p0, Lorg/cocos2d/h/l;->f:F

    return-void
.end method

.method public j(F)V
    .locals 0

    iput p1, p0, Lorg/cocos2d/h/l;->h:F

    return-void
.end method

.method public k(F)V
    .locals 0

    iput p1, p0, Lorg/cocos2d/h/l;->k:F

    return-void
.end method

.method public final l(F)V
    .locals 0

    iput p1, p0, Lorg/cocos2d/h/l;->o:F

    return-void
.end method

.method public final m(F)V
    .locals 0

    iput p1, p0, Lorg/cocos2d/h/l;->p:F

    return-void
.end method

.method public final n(F)V
    .locals 0

    iput p1, p0, Lorg/cocos2d/h/l;->G:F

    return-void
.end method

.method public final o(F)V
    .locals 0

    iput p1, p0, Lorg/cocos2d/h/l;->Q:F

    return-void
.end method

.method public final p(F)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/h/l;->Y:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/h/l;->T:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/h/l;->U:Lorg/cocos2d/h/p;

    iput p1, v0, Lorg/cocos2d/h/p;->d:F

    return-void
.end method

.method public final q(F)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/h/l;->Y:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/h/l;->T:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/h/l;->U:Lorg/cocos2d/h/p;

    iput p1, v0, Lorg/cocos2d/h/p;->e:F

    return-void
.end method

.method public final r(F)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/h/l;->Y:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/h/l;->T:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/h/l;->U:Lorg/cocos2d/h/p;

    iput p1, v0, Lorg/cocos2d/h/p;->f:F

    return-void
.end method

.method public final s(F)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/h/l;->Y:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/h/l;->T:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/h/l;->U:Lorg/cocos2d/h/p;

    iput p1, v0, Lorg/cocos2d/h/p;->g:F

    return-void
.end method

.method public final t(F)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/h/l;->Y:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/h/l;->T:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/h/l;->U:Lorg/cocos2d/h/p;

    iput p1, v0, Lorg/cocos2d/h/p;->b:F

    return-void
.end method

.method public final u(F)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/h/l;->Y:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/h/l;->T:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/h/l;->U:Lorg/cocos2d/h/p;

    iput p1, v0, Lorg/cocos2d/h/p;->c:F

    return-void
.end method

.method public final v(F)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/h/l;->Y:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/h/l;->T:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Radius"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/h/l;->V:Lorg/cocos2d/h/q;

    iput p1, v0, Lorg/cocos2d/h/q;->a:F

    return-void
.end method

.method public final w(F)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/h/l;->Y:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/h/l;->T:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Radius"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/h/l;->V:Lorg/cocos2d/h/q;

    iput p1, v0, Lorg/cocos2d/h/q;->c:F

    return-void
.end method

.method public final x(F)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/h/l;->V:Lorg/cocos2d/h/q;

    iput p1, v0, Lorg/cocos2d/h/q;->e:F

    return-void
.end method

.method public final y(F)V
    .locals 0

    iput p1, p0, Lorg/cocos2d/h/l;->F:F

    return-void
.end method
