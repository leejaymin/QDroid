.class public Lorg/cocos2d/e/e;
.super Lorg/cocos2d/g/r;


# static fields
.field static final synthetic p:Z


# instance fields
.field public a:Lorg/cocos2d/e/k;

.field public b:Ljava/lang/String;

.field public c:Lorg/cocos2d/l/g;

.field public d:Lorg/cocos2d/l/g;

.field public e:Ljava/nio/IntBuffer;

.field public f:I

.field public g:Ljava/util/HashMap;

.field h:I

.field i:I

.field j:I

.field k:I

.field l:Z

.field m:F

.field n:Lorg/cocos2d/g/o;

.field o:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/e/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/e/e;->p:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/cocos2d/e/k;Lorg/cocos2d/e/f;Lorg/cocos2d/e/g;)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x4000

    const/high16 v5, 0x3f80

    const v4, 0x3eb33333

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p2, Lorg/cocos2d/e/f;->b:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    iget-object v2, p2, Lorg/cocos2d/e/f;->b:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    add-float/2addr v1, v5

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lorg/cocos2d/g/r;-><init>(Lorg/cocos2d/opengl/i;I)V

    iget-object v0, p2, Lorg/cocos2d/e/f;->a:Ljava/lang/String;

    iput-object v0, p0, Lorg/cocos2d/e/e;->b:Ljava/lang/String;

    iget-object v0, p2, Lorg/cocos2d/e/f;->b:Lorg/cocos2d/l/g;

    iput-object v0, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget-object v0, p2, Lorg/cocos2d/e/f;->c:Ljava/nio/IntBuffer;

    iput-object v0, p0, Lorg/cocos2d/e/e;->e:Ljava/nio/IntBuffer;

    iget v0, p2, Lorg/cocos2d/e/f;->g:I

    iput v0, p0, Lorg/cocos2d/e/e;->i:I

    iget v0, p2, Lorg/cocos2d/e/f;->h:I

    iput v0, p0, Lorg/cocos2d/e/e;->j:I

    iget v0, p2, Lorg/cocos2d/e/f;->e:I

    iput v0, p0, Lorg/cocos2d/e/e;->h:I

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p2, Lorg/cocos2d/e/f;->i:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/cocos2d/e/e;->g:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/cocos2d/e/e;->a:Lorg/cocos2d/e/k;

    iget-object v0, p3, Lorg/cocos2d/e/g;->j:Lorg/cocos2d/l/g;

    iput-object v0, p0, Lorg/cocos2d/e/e;->d:Lorg/cocos2d/l/g;

    iget v0, p3, Lorg/cocos2d/e/g;->h:I

    iput v0, p0, Lorg/cocos2d/e/e;->f:I

    iget-object v0, p2, Lorg/cocos2d/e/f;->j:Lorg/cocos2d/l/e;

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/e/e;->f:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    move-object v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/cocos2d/e/e;->e(Lorg/cocos2d/l/e;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/e/e;->o:Ljava/util/ArrayList;

    iget-object v0, p2, Lorg/cocos2d/e/f;->b:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    iget-object v1, p2, Lorg/cocos2d/e/f;->b:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    iget-object v1, p0, Lorg/cocos2d/e/e;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v0, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    iget-object v1, p0, Lorg/cocos2d/e/e;->d:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    iget-object v2, p0, Lorg/cocos2d/e/e;->d:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/l/g;->a(FF)Lorg/cocos2d/l/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/e/e;->a(Lorg/cocos2d/l/g;)V

    iput-boolean v7, p0, Lorg/cocos2d/e/e;->l:Z

    iput v7, p0, Lorg/cocos2d/e/e;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/e/e;->m:F

    return-void

    :cond_1
    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    iget-object v1, p1, Lorg/cocos2d/e/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_0
    iget v1, v0, Lorg/cocos2d/l/e;->a:F

    iget-object v2, p0, Lorg/cocos2d/e/e;->d:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v1, v2

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    neg-float v0, v0

    iget-object v2, p0, Lorg/cocos2d/e/e;->d:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lorg/cocos2d/e/e;->d:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v6

    iget v2, v0, Lorg/cocos2d/l/e;->a:F

    iget v3, v0, Lorg/cocos2d/l/e;->b:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/cocos2d/e/e;->d:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v2, v6

    iget v3, v0, Lorg/cocos2d/l/e;->a:F

    neg-float v3, v3

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    sub-float v0, v3, v0

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    sget-boolean v2, Lorg/cocos2d/e/e;->p:Z

    if-nez v2, :cond_0

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "offset for hexagonal map not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private a(I)I
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/e/e;->o:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static a(Lorg/cocos2d/e/k;Lorg/cocos2d/e/f;Lorg/cocos2d/e/g;)Lorg/cocos2d/e/e;
    .locals 1

    new-instance v0, Lorg/cocos2d/e/e;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/e/e;-><init>(Lorg/cocos2d/e/k;Lorg/cocos2d/e/f;Lorg/cocos2d/e/g;)V

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/e/e;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private g(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;
    .locals 7

    const/high16 v6, 0x3f80

    const/high16 v5, 0x4000

    const v4, 0x3efae148

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/e/e;->f:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    iget-object v1, p0, Lorg/cocos2d/e/e;->d:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v1, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    iget v2, p1, Lorg/cocos2d/l/e;->b:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, v6

    iget-object v2, p0, Lorg/cocos2d/e/e;->d:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/cocos2d/e/e;->d:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v0, v5

    iget-object v1, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    iget v2, p1, Lorg/cocos2d/l/e;->a:F

    add-float/2addr v1, v2

    iget v2, p1, Lorg/cocos2d/l/e;->b:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, v6

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v1, p0, Lorg/cocos2d/e/e;->d:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v1, v5

    iget-object v2, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    mul-float/2addr v2, v5

    iget v3, p1, Lorg/cocos2d/l/e;->a:F

    sub-float/2addr v2, v3

    iget v3, p1, Lorg/cocos2d/l/e;->b:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v5

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    iget v1, p1, Lorg/cocos2d/l/e;->a:F

    float-to-int v1, v1

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/cocos2d/e/e;->d:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    neg-float v0, v0

    div-float/2addr v0, v5

    :cond_0
    iget v1, p1, Lorg/cocos2d/l/e;->a:F

    iget-object v2, p0, Lorg/cocos2d/e/e;->d:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    const/high16 v2, 0x4080

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v2, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    iget v3, p1, Lorg/cocos2d/l/e;->b:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v6

    iget-object v3, p0, Lorg/cocos2d/e/e;->d:Lorg/cocos2d/l/g;

    iget v3, v3, Lorg/cocos2d/l/g;->b:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    add-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private h(Lorg/cocos2d/l/e;)I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/cocos2d/e/e;->l:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/cocos2d/e/e;->f:I

    packed-switch v1, :pswitch_data_0

    sget-boolean v1, Lorg/cocos2d/e/e;->p:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TMX invalid value"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    iget-object v1, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p1, Lorg/cocos2d/l/e;->a:F

    iget v2, p1, Lorg/cocos2d/l/e;->b:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    neg-float v0, v0

    float-to-int v0, v0

    :cond_0
    :goto_0
    return v0

    :pswitch_1
    iget-object v0, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    iget v1, p1, Lorg/cocos2d/l/e;->b:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    float-to-int v0, v0

    goto :goto_0

    :pswitch_2
    sget-boolean v1, Lorg/cocos2d/e/e;->p:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TMX Hexa zOrder not supported"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/cocos2d/e/e;->k:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private i(Lorg/cocos2d/l/e;)Lorg/cocos2d/g/o;
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lorg/cocos2d/e/e;->a:Lorg/cocos2d/e/k;

    invoke-virtual {v0, v5}, Lorg/cocos2d/e/k;->a(I)Lorg/cocos2d/l/f;

    move-result-object v0

    iget v1, p1, Lorg/cocos2d/l/e;->a:F

    iget v2, p1, Lorg/cocos2d/l/e;->b:F

    iget-object v3, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v3, v3, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p0, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/r;Lorg/cocos2d/l/f;)Lorg/cocos2d/g/o;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    iget-object v0, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    invoke-direct {p0, p1}, Lorg/cocos2d/e/e;->g(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    invoke-direct {p0, p1}, Lorg/cocos2d/e/e;->h(Lorg/cocos2d/l/e;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/o;->f(F)V

    iget-object v0, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/o;->d(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    iget v2, p0, Lorg/cocos2d/e/e;->h:I

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/o;->a(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lorg/cocos2d/e/e;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    invoke-virtual {p0, v0, v2}, Lorg/cocos2d/e/e;->c(Lorg/cocos2d/g/o;I)V

    iget-object v0, p0, Lorg/cocos2d/e/e;->o:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/cocos2d/e/e;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/cocos2d/e/e;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1, v5}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v0, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/cocos2d/e/e;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v1, v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/g/o;

    iget v4, v0, Lorg/cocos2d/g/o;->n:I

    if-lt v4, v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lorg/cocos2d/g/o;->n:I

    goto :goto_1
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;
    .locals 2

    sget-boolean v0, Lorg/cocos2d/e/e;->p:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "addChild: is not supported on CCTMXLayer. Instead use setTileGID:at:/tileAt:"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lorg/cocos2d/l/e;)Lorg/cocos2d/g/o;
    .locals 4

    const/4 v2, 0x0

    sget-boolean v0, Lorg/cocos2d/e/e;->p:Z

    if-nez v0, :cond_1

    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    iget-object v1, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lorg/cocos2d/l/e;->b:F

    iget-object v1, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p1, Lorg/cocos2d/l/e;->b:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TMXLayer: invalid position"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    sget-boolean v0, Lorg/cocos2d/e/e;->p:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/cocos2d/e/e;->e:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/e/e;->o:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TMXLayer: the tiles map has been released"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lorg/cocos2d/e/e;->b(Lorg/cocos2d/l/e;)I

    move-result v1

    if-eqz v1, :cond_4

    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    iget v2, p1, Lorg/cocos2d/l/e;->b:F

    iget-object v3, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v3, v3, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v2, v0

    invoke-virtual {p0, v2}, Lorg/cocos2d/e/e;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/o;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/cocos2d/e/e;->a:Lorg/cocos2d/e/k;

    invoke-virtual {v0, v1}, Lorg/cocos2d/e/k;->a(I)Lorg/cocos2d/l/f;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/r;Lorg/cocos2d/l/f;)Lorg/cocos2d/g/o;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/cocos2d/e/e;->g(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    invoke-direct {p0, p1}, Lorg/cocos2d/e/e;->h(Lorg/cocos2d/l/e;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->f(F)V

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(Lorg/cocos2d/l/e;)V

    iget v1, p0, Lorg/cocos2d/e/e;->h:I

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(I)V

    invoke-direct {p0, v2}, Lorg/cocos2d/e/e;->a(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/cocos2d/e/e;->a(Lorg/cocos2d/g/o;II)Lorg/cocos2d/g/r;

    :cond_4
    return-object v0
.end method

.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/cocos2d/e/e;->e:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/cocos2d/e/e;->e:Ljava/nio/IntBuffer;

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/e/e;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lorg/cocos2d/e/e;->o:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    const v3, 0x8076

    const/16 v2, 0xbc0

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    iget-boolean v0, p0, Lorg/cocos2d/e/e;->l:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x204

    iget v1, p0, Lorg/cocos2d/e/e;->m:F

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    :cond_0
    invoke-super {p0, p1}, Lorg/cocos2d/g/r;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-boolean v0, p0, Lorg/cocos2d/e/e;->l:Z

    if-eqz v0, :cond_1

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_1
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    return-void
.end method

.method public final a(Lorg/cocos2d/g/i;Z)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v1, Lorg/cocos2d/e/e;->p:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/cocos2d/e/e;->C:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Tile does not belong to TMXLayer"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    instance-of v1, p1, Lorg/cocos2d/g/o;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/cocos2d/g/o;

    move-object v1, v0

    iget v2, v1, Lorg/cocos2d/g/o;->n:I

    iget-object v1, p0, Lorg/cocos2d/e/e;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lorg/cocos2d/e/e;->e:Ljava/nio/IntBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v1, p0, Lorg/cocos2d/e/e;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, Lorg/cocos2d/g/r;->a(Lorg/cocos2d/g/i;Z)V

    goto :goto_0
.end method

.method public final b(Lorg/cocos2d/l/e;)I
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lorg/cocos2d/e/e;->p:Z

    if-nez v0, :cond_1

    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    iget-object v1, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lorg/cocos2d/l/e;->b:F

    iget-object v1, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p1, Lorg/cocos2d/l/e;->b:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TMXLayer: invalid position"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    sget-boolean v0, Lorg/cocos2d/e/e;->p:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/cocos2d/e/e;->e:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/e/e;->o:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TMXLayer: the tiles map has been released"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    iget v1, p1, Lorg/cocos2d/l/e;->b:F

    iget-object v2, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/cocos2d/e/e;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/cocos2d/e/e;->a:Lorg/cocos2d/e/k;

    iget-object v1, p0, Lorg/cocos2d/e/e;->q:Lorg/cocos2d/opengl/m;

    invoke-virtual {v1}, Lorg/cocos2d/opengl/m;->d()Lorg/cocos2d/opengl/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/opengl/i;->h()Lorg/cocos2d/l/g;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/e/k;->g:Lorg/cocos2d/l/g;

    iget-object v0, p0, Lorg/cocos2d/e/e;->a:Lorg/cocos2d/e/k;

    iget-object v0, v0, Lorg/cocos2d/e/k;->g:Lorg/cocos2d/l/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/e/e;->a:Lorg/cocos2d/e/k;

    invoke-static {}, Lorg/cocos2d/l/g;->a()Lorg/cocos2d/l/g;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/e/k;->g:Lorg/cocos2d/l/g;

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/e/e;->q:Lorg/cocos2d/opengl/m;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/m;->d()Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->i()V

    const-string v0, "cc_vertexz"

    invoke-direct {p0, v0}, Lorg/cocos2d/e/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "automatic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/e/e;->l:Z

    :cond_1
    :goto_0
    const-string v0, "cc_alpha_func"

    invoke-direct {p0, v0}, Lorg/cocos2d/e/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lorg/cocos2d/e/e;->m:F

    move v0, v8

    :goto_2
    int-to-float v1, v0

    iget-object v2, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_5

    sget-boolean v0, Lorg/cocos2d/e/e;->p:Z

    if-nez v0, :cond_a

    iget v0, p0, Lorg/cocos2d/e/e;->j:I

    iget-object v1, p0, Lorg/cocos2d/e/e;->a:Lorg/cocos2d/e/k;

    iget v1, v1, Lorg/cocos2d/e/k;->b:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lorg/cocos2d/e/e;->i:I

    iget-object v1, p0, Lorg/cocos2d/e/e;->a:Lorg/cocos2d/e/k;

    iget v1, v1, Lorg/cocos2d/e/k;->b:I

    if-ge v0, v1, :cond_a

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TMX: Only 1 tilset per layer is supported"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/cocos2d/e/e;->k:I

    goto :goto_0

    :cond_4
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_1

    :cond_5
    move v1, v8

    :goto_3
    int-to-float v2, v1

    iget-object v3, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v3, v3, Lorg/cocos2d/l/g;->a:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    int-to-float v2, v1

    iget-object v3, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v3, v3, Lorg/cocos2d/l/g;->a:F

    int-to-float v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lorg/cocos2d/e/e;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-static {v2}, Lorg/cocos2d/m/d;->a(I)I

    move-result v2

    if-eqz v2, :cond_7

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-static {v3, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    iget-object v4, p0, Lorg/cocos2d/e/e;->a:Lorg/cocos2d/e/k;

    invoke-virtual {v4, v2}, Lorg/cocos2d/e/k;->a(I)Lorg/cocos2d/l/f;

    move-result-object v4

    iget v5, v3, Lorg/cocos2d/l/e;->a:F

    iget v6, v3, Lorg/cocos2d/l/e;->b:F

    iget-object v7, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v7, v7, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {p0, v4}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/r;Lorg/cocos2d/l/f;)Lorg/cocos2d/g/o;

    move-result-object v4

    iput-object v4, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    iget-object v4, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    invoke-direct {p0, v3}, Lorg/cocos2d/e/e;->g(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v4, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    invoke-direct {p0, v3}, Lorg/cocos2d/e/e;->h(Lorg/cocos2d/l/e;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Lorg/cocos2d/g/o;->f(F)V

    iget-object v3, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/g/o;->d(Lorg/cocos2d/l/e;)V

    iget-object v3, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    iget v4, p0, Lorg/cocos2d/e/e;->h:I

    invoke-virtual {v3, v4}, Lorg/cocos2d/g/o;->a(I)V

    iget-object v3, p0, Lorg/cocos2d/e/e;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    invoke-virtual {p0, v4, v3}, Lorg/cocos2d/e/e;->c(Lorg/cocos2d/g/o;I)V

    iget-object v4, p0, Lorg/cocos2d/e/e;->o:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    iget v3, p0, Lorg/cocos2d/e/e;->i:I

    if-ge v2, v3, :cond_8

    move v3, v2

    :goto_4
    iput v3, p0, Lorg/cocos2d/e/e;->i:I

    iget v3, p0, Lorg/cocos2d/e/e;->j:I

    if-le v2, v3, :cond_9

    :goto_5
    iput v2, p0, Lorg/cocos2d/e/e;->j:I

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_8
    iget v3, p0, Lorg/cocos2d/e/e;->i:I

    goto :goto_4

    :cond_9
    iget v2, p0, Lorg/cocos2d/e/e;->j:I

    goto :goto_5

    :cond_a
    return-void
.end method

.method public final c(Lorg/cocos2d/l/e;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    sget-boolean v0, Lorg/cocos2d/e/e;->p:Z

    if-nez v0, :cond_1

    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    iget-object v1, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lorg/cocos2d/l/e;->b:F

    iget-object v1, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p1, Lorg/cocos2d/l/e;->b:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TMXLayer: invalid position"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    sget-boolean v0, Lorg/cocos2d/e/e;->p:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/cocos2d/e/e;->e:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/e/e;->o:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TMXLayer: the tiles map has been released"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    invoke-virtual {p0, p1}, Lorg/cocos2d/e/e;->b(Lorg/cocos2d/l/e;)I

    move-result v0

    if-eq v0, v4, :cond_4

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lorg/cocos2d/e/e;->i(Lorg/cocos2d/l/e;)Lorg/cocos2d/g/o;

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    iget v1, p1, Lorg/cocos2d/l/e;->b:F

    iget-object v2, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v1, v0

    invoke-virtual {p0, v1}, Lorg/cocos2d/e/e;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/o;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lorg/cocos2d/e/e;->a:Lorg/cocos2d/e/k;

    invoke-virtual {v2, v4}, Lorg/cocos2d/e/k;->a(I)Lorg/cocos2d/l/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/f;)V

    iget-object v0, p0, Lorg/cocos2d/e/e;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/cocos2d/e/e;->a:Lorg/cocos2d/e/k;

    invoke-virtual {v0, v4}, Lorg/cocos2d/e/k;->a(I)Lorg/cocos2d/l/f;

    move-result-object v0

    iget v1, p1, Lorg/cocos2d/l/e;->a:F

    iget v2, p1, Lorg/cocos2d/l/e;->b:F

    iget-object v3, p0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    iget v3, v3, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p0, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/r;Lorg/cocos2d/l/f;)Lorg/cocos2d/g/o;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    iget-object v0, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    invoke-direct {p0, p1}, Lorg/cocos2d/e/e;->g(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    invoke-direct {p0, p1}, Lorg/cocos2d/e/e;->h(Lorg/cocos2d/l/e;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/o;->f(F)V

    iget-object v0, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/o;->d(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    iget v2, p0, Lorg/cocos2d/e/e;->h:I

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/o;->a(I)V

    invoke-direct {p0, v1}, Lorg/cocos2d/e/e;->a(I)I

    move-result v0

    iget-object v2, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    iput v0, v2, Lorg/cocos2d/g/o;->n:I

    iget-object v0, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    invoke-virtual {v0}, Lorg/cocos2d/g/o;->K()V

    iget-object v0, p0, Lorg/cocos2d/e/e;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v0, p0, Lorg/cocos2d/e/e;->n:Lorg/cocos2d/g/o;

    goto :goto_0
.end method
