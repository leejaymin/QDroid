.class public Lorg/cocos2d/g/u;
.super Lorg/cocos2d/g/b;


# static fields
.field static final synthetic n:Z


# instance fields
.field public m:Lorg/cocos2d/opengl/ai;

.field private o:Ljava/util/HashMap;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/g/u;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/g/u;->n:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v1, 0x10

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lorg/cocos2d/g/b;-><init>(Ljava/lang/String;III)V

    sget-boolean v0, Lorg/cocos2d/g/u;->n:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "file must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    invoke-static {}, Lorg/cocos2d/g/c;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/opengl/ah;->a(Ljava/io/InputStream;)Lorg/cocos2d/opengl/ai;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lorg/cocos2d/g/u;->e()V

    iget-object v0, p0, Lorg/cocos2d/g/u;->a:Lorg/cocos2d/opengl/m;

    iget v1, p0, Lorg/cocos2d/g/u;->p:I

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/m;->b(I)V

    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lorg/cocos2d/g/u;->p:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/cocos2d/g/u;->o:Ljava/util/HashMap;

    invoke-direct {p0}, Lorg/cocos2d/g/u;->h()V

    iget-object v0, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    iget v0, v0, Lorg/cocos2d/opengl/ai;->d:I

    iget v1, p0, Lorg/cocos2d/g/u;->f:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    iget v1, v1, Lorg/cocos2d/opengl/ai;->e:I

    iget v2, p0, Lorg/cocos2d/g/u;->g:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/cocos2d/l/g;->a(FF)Lorg/cocos2d/l/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/g/u;->a(Lorg/cocos2d/l/g;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/g/u;
    .locals 1

    new-instance v0, Lorg/cocos2d/g/u;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/g/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private e()V
    .locals 8

    const/4 v7, 0x0

    sget-boolean v0, Lorg/cocos2d/g/u;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "tgaInfo must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iput v7, p0, Lorg/cocos2d/g/u;->p:I

    move v0, v7

    :goto_0
    iget-object v1, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    iget v1, v1, Lorg/cocos2d/opengl/ai;->d:I

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    move v1, v7

    :goto_1
    iget-object v2, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    iget v2, v2, Lorg/cocos2d/opengl/ai;->e:I

    if-lt v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    iget v2, v2, Lorg/cocos2d/opengl/ai;->d:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    new-instance v3, Lorg/cocos2d/l/j;

    iget-object v4, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    iget-object v4, v4, Lorg/cocos2d/opengl/ai;->f:[B

    add-int/lit8 v5, v2, 0x0

    aget-byte v4, v4, v5

    iget-object v5, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    iget-object v5, v5, Lorg/cocos2d/opengl/ai;->f:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v5, v5, v6

    iget-object v6, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    iget-object v6, v6, Lorg/cocos2d/opengl/ai;->f:[B

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, v6, v2

    invoke-direct {v3, v4, v5, v2}, Lorg/cocos2d/l/j;-><init>(III)V

    iget v2, v3, Lorg/cocos2d/l/j;->j:I

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/cocos2d/g/u;->p:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/cocos2d/g/u;->p:I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private h()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    sget-boolean v0, Lorg/cocos2d/g/u;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "tgaInfo must be non-nil"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    move v0, v11

    move v1, v11

    :goto_0
    iget-object v2, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    iget v2, v2, Lorg/cocos2d/opengl/ai;->d:I

    if-lt v0, v2, :cond_1

    return-void

    :cond_1
    move v2, v1

    move v1, v11

    :goto_1
    iget-object v3, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    iget v3, v3, Lorg/cocos2d/opengl/ai;->e:I

    if-lt v1, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_2
    iget v3, p0, Lorg/cocos2d/g/u;->p:I

    if-ge v2, v3, :cond_3

    new-instance v3, Lorg/cocos2d/l/j;

    iget-object v4, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    iget-object v4, v4, Lorg/cocos2d/opengl/ai;->f:[B

    add-int/lit8 v5, v0, 0x0

    iget-object v6, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    iget v6, v6, Lorg/cocos2d/opengl/ai;->d:I

    mul-int/2addr v6, v1

    add-int/2addr v5, v6

    aget-byte v4, v4, v5

    iget-object v5, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    iget-object v5, v5, Lorg/cocos2d/opengl/ai;->f:[B

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    iget v7, v7, Lorg/cocos2d/opengl/ai;->d:I

    mul-int/2addr v7, v1

    add-int/2addr v6, v7

    aget-byte v5, v5, v6

    iget-object v6, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    iget-object v6, v6, Lorg/cocos2d/opengl/ai;->f:[B

    add-int/lit8 v7, v0, 0x2

    iget-object v8, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    iget v8, v8, Lorg/cocos2d/opengl/ai;->d:I

    mul-int/2addr v8, v1

    add-int/2addr v7, v8

    aget-byte v6, v6, v7

    invoke-direct {v3, v4, v5, v6}, Lorg/cocos2d/l/j;-><init>(III)V

    iget v4, v3, Lorg/cocos2d/l/j;->j:I

    if-eqz v4, :cond_3

    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v4

    new-instance v5, Lorg/cocos2d/l/n;

    invoke-direct {v5}, Lorg/cocos2d/l/n;-><init>()V

    new-instance v6, Lorg/cocos2d/l/o;

    invoke-direct {v6}, Lorg/cocos2d/l/o;-><init>()V

    iget v7, v4, Lorg/cocos2d/l/m;->a:I

    iget v4, v4, Lorg/cocos2d/l/m;->b:I

    iget v8, v3, Lorg/cocos2d/l/j;->j:I

    iget v9, p0, Lorg/cocos2d/g/u;->b:I

    rem-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lorg/cocos2d/g/u;->d:F

    mul-float/2addr v8, v9

    iget v3, v3, Lorg/cocos2d/l/j;->j:I

    iget v9, p0, Lorg/cocos2d/g/u;->b:I

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v9, p0, Lorg/cocos2d/g/u;->e:F

    mul-float/2addr v3, v9

    iput v8, v5, Lorg/cocos2d/l/n;->e:F

    iput v3, v5, Lorg/cocos2d/l/n;->f:F

    iget v9, p0, Lorg/cocos2d/g/u;->d:F

    add-float/2addr v9, v8

    iput v9, v5, Lorg/cocos2d/l/n;->g:F

    iput v3, v5, Lorg/cocos2d/l/n;->h:F

    iput v8, v5, Lorg/cocos2d/l/n;->a:F

    iget v9, p0, Lorg/cocos2d/g/u;->e:F

    add-float/2addr v9, v3

    iput v9, v5, Lorg/cocos2d/l/n;->b:F

    iget v9, p0, Lorg/cocos2d/g/u;->d:F

    add-float/2addr v8, v9

    iput v8, v5, Lorg/cocos2d/l/n;->c:F

    iget v8, p0, Lorg/cocos2d/g/u;->e:F

    add-float/2addr v3, v8

    iput v3, v5, Lorg/cocos2d/l/n;->d:F

    iget v3, p0, Lorg/cocos2d/g/u;->f:I

    mul-int/2addr v3, v7

    int-to-float v3, v3

    iput v3, v6, Lorg/cocos2d/l/o;->a:F

    iget v3, p0, Lorg/cocos2d/g/u;->g:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v6, Lorg/cocos2d/l/o;->b:F

    iput v10, v6, Lorg/cocos2d/l/o;->c:F

    iget v3, p0, Lorg/cocos2d/g/u;->f:I

    mul-int/2addr v3, v7

    iget v8, p0, Lorg/cocos2d/g/u;->f:I

    add-int/2addr v3, v8

    int-to-float v3, v3

    iput v3, v6, Lorg/cocos2d/l/o;->d:F

    iget v3, p0, Lorg/cocos2d/g/u;->g:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v6, Lorg/cocos2d/l/o;->e:F

    iput v10, v6, Lorg/cocos2d/l/o;->f:F

    iget v3, p0, Lorg/cocos2d/g/u;->f:I

    mul-int/2addr v3, v7

    int-to-float v3, v3

    iput v3, v6, Lorg/cocos2d/l/o;->g:F

    iget v3, p0, Lorg/cocos2d/g/u;->g:I

    mul-int/2addr v3, v4

    iget v8, p0, Lorg/cocos2d/g/u;->g:I

    add-int/2addr v3, v8

    int-to-float v3, v3

    iput v3, v6, Lorg/cocos2d/l/o;->h:F

    iput v10, v6, Lorg/cocos2d/l/o;->i:F

    iget v3, p0, Lorg/cocos2d/g/u;->f:I

    mul-int/2addr v3, v7

    iget v7, p0, Lorg/cocos2d/g/u;->f:I

    add-int/2addr v3, v7

    int-to-float v3, v3

    iput v3, v6, Lorg/cocos2d/l/o;->j:F

    iget v3, p0, Lorg/cocos2d/g/u;->g:I

    mul-int/2addr v3, v4

    iget v4, p0, Lorg/cocos2d/g/u;->g:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v6, Lorg/cocos2d/l/o;->k:F

    iput v10, v6, Lorg/cocos2d/l/o;->l:F

    iget-object v3, p0, Lorg/cocos2d/g/u;->a:Lorg/cocos2d/opengl/m;

    invoke-virtual {v3, v5, v6, v2}, Lorg/cocos2d/opengl/m;->a(Lorg/cocos2d/l/n;Lorg/cocos2d/l/o;I)V

    new-instance v3, Lorg/cocos2d/m/d;

    invoke-direct {v3}, Lorg/cocos2d/m/d;-><init>()V

    const-string v3, "%d,%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lorg/cocos2d/m/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/cocos2d/g/u;->o:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public final d()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    invoke-static {v0}, Lorg/cocos2d/opengl/ah;->a(Lorg/cocos2d/opengl/ai;)V

    :cond_0
    iput-object v1, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    iput-object v1, p0, Lorg/cocos2d/g/u;->o:Ljava/util/HashMap;

    return-void
.end method

.method public finalize()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    invoke-static {v0}, Lorg/cocos2d/opengl/ah;->a(Lorg/cocos2d/opengl/ai;)V

    :cond_0
    iput-object v1, p0, Lorg/cocos2d/g/u;->m:Lorg/cocos2d/opengl/ai;

    iput-object v1, p0, Lorg/cocos2d/g/u;->o:Ljava/util/HashMap;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
