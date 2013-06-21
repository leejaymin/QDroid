.class public Lorg/cocos2d/opengl/i;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/opengl/s;


# static fields
.field static a:Landroid/graphics/Bitmap$Config;

.field static final synthetic b:Z

.field private static p:Ljava/util/HashMap;

.field private static synthetic q:[I


# instance fields
.field private c:Z

.field private d:Ljava/nio/FloatBuffer;

.field private e:Ljava/nio/FloatBuffer;

.field private f:Landroid/graphics/Bitmap;

.field private g:I

.field private h:Lorg/cocos2d/l/g;

.field private i:I

.field private j:I

.field private k:Landroid/graphics/Bitmap$Config;

.field private l:F

.field private m:F

.field private n:Lorg/cocos2d/l/b;

.field private o:Ljavax/microedition/khronos/opengles/GL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/opengl/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/opengl/i;->b:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/cocos2d/opengl/i;->p:Ljava/util/HashMap;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lorg/cocos2d/opengl/i;->a:Landroid/graphics/Bitmap$Config;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const v1, 0x812f

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/cocos2d/opengl/i;->c:Z

    iput v0, p0, Lorg/cocos2d/opengl/i;->g:I

    new-instance v0, Lorg/cocos2d/l/b;

    invoke-direct {v0, v1, v1}, Lorg/cocos2d/l/b;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/opengl/i;->n:Lorg/cocos2d/l/b;

    sget-object v0, Lorg/cocos2d/opengl/i;->a:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lorg/cocos2d/opengl/i;->k:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method private static a(I)I
    .locals 2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    sub-int v0, p0, v1

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    if-lt v0, p0, :cond_0

    :goto_1
    return v0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_1
.end method

.method private static a(Landroid/graphics/Paint;Ljava/lang/String;F)Ljava/util/ArrayList;
    .locals 12

    const/4 v10, 0x1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, " "

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v0

    const/4 v5, 0x0

    move v6, p2

    move-object v11, v3

    move v3, v5

    move-object v5, v11

    :goto_0
    if-lt v3, v4, :cond_1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_1
    aget-object v7, v0, v3

    invoke-virtual {p0, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    cmpl-float v9, v8, v6

    if-lez v9, :cond_3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-float v6, v8, v2

    sub-float v6, p2, v6

    :goto_1
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-float v7, v8, v2

    sub-float/2addr v6, v7

    goto :goto_1
.end method

.method static synthetic a(Lorg/cocos2d/opengl/i;)Ljavax/microedition/khronos/opengles/GL;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/i;->o:Ljavax/microedition/khronos/opengles/GL;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/l/g;
    .locals 5

    sget-object v0, Lorg/cocos2d/opengl/i;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Lorg/cocos2d/g/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    sget-object v0, Lorg/cocos2d/g/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/cocos2d/opengl/i;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    int-to-float v1, v1

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {v1, v0}, Lorg/cocos2d/l/g;->a(FF)Lorg/cocos2d/l/g;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/cocos2d/opengl/i;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    goto :goto_1
.end method

.method private a(II)V
    .locals 2

    const v1, 0x812f

    iget-object v0, p0, Lorg/cocos2d/opengl/i;->n:Lorg/cocos2d/l/b;

    invoke-virtual {v0, p1, p2, v1, v1}, Lorg/cocos2d/l/b;->a(IIII)V

    iget v0, p0, Lorg/cocos2d/opengl/i;->g:I

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/cocos2d/opengl/n;->a()Lorg/cocos2d/opengl/n;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/opengl/l;

    invoke-direct {v1, p0}, Lorg/cocos2d/opengl/l;-><init>(Lorg/cocos2d/opengl/i;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/n;->a(Lorg/cocos2d/opengl/q;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lorg/cocos2d/opengl/i;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/opengl/i;->c(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method static synthetic b(Lorg/cocos2d/opengl/i;)I
    .locals 1

    iget v0, p0, Lorg/cocos2d/opengl/i;->g:I

    return v0
.end method

.method private b(Landroid/graphics/Bitmap;Lorg/cocos2d/l/g;)V
    .locals 2

    iput-object p1, p0, Lorg/cocos2d/opengl/i;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/cocos2d/opengl/i;->i:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/cocos2d/opengl/i;->j:I

    iput-object p2, p0, Lorg/cocos2d/opengl/i;->h:Lorg/cocos2d/l/g;

    iget-object v0, p0, Lorg/cocos2d/opengl/i;->h:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    iget v1, p0, Lorg/cocos2d/opengl/i;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/opengl/i;->l:F

    iget-object v0, p0, Lorg/cocos2d/opengl/i;->h:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    iget v1, p0, Lorg/cocos2d/opengl/i;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/opengl/i;->m:F

    const/16 v0, 0x30

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/i;->d:Ljava/nio/FloatBuffer;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/i;->e:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/cocos2d/opengl/i;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/opengl/i;->c:Z

    :cond_0
    iget v0, p0, Lorg/cocos2d/opengl/i;->g:I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/opengl/i;->g:I

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p0, v0}, Lorg/cocos2d/opengl/i;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lorg/cocos2d/opengl/n;->a()Lorg/cocos2d/opengl/n;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/opengl/k;

    invoke-direct {v1, p0}, Lorg/cocos2d/opengl/k;-><init>(Lorg/cocos2d/opengl/i;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/n;->a(Lorg/cocos2d/opengl/q;)V

    goto :goto_0
.end method

.method private c(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    const/16 v2, 0xde1

    iget v0, p0, Lorg/cocos2d/opengl/i;->g:I

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/16 v0, 0x2801

    iget-object v1, p0, Lorg/cocos2d/opengl/i;->n:Lorg/cocos2d/l/b;

    iget v1, v1, Lorg/cocos2d/l/b;->a:I

    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    const/16 v0, 0x2800

    iget-object v1, p0, Lorg/cocos2d/opengl/i;->n:Lorg/cocos2d/l/b;

    iget v1, v1, Lorg/cocos2d/l/b;->b:I

    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    const/16 v0, 0x2802

    iget-object v1, p0, Lorg/cocos2d/opengl/i;->n:Lorg/cocos2d/l/b;

    iget v1, v1, Lorg/cocos2d/l/b;->c:I

    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    const/16 v0, 0x2803

    iget-object v1, p0, Lorg/cocos2d/opengl/i;->n:Lorg/cocos2d/l/b;

    iget v1, v1, Lorg/cocos2d/l/b;->d:I

    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    return-void
.end method

.method private static synthetic k()[I
    .locals 3

    sget-object v0, Lorg/cocos2d/opengl/i;->q:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/cocos2d/g/f;->a()[Lorg/cocos2d/g/f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/cocos2d/g/f;->b:Lorg/cocos2d/g/f;

    invoke-virtual {v1}, Lorg/cocos2d/g/f;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lorg/cocos2d/g/f;->a:Lorg/cocos2d/g/f;

    invoke-virtual {v1}, Lorg/cocos2d/g/f;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/cocos2d/g/f;->c:Lorg/cocos2d/g/f;

    invoke-virtual {v1}, Lorg/cocos2d/g/f;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lorg/cocos2d/opengl/i;->q:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap$Config;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/i;->k:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 11

    const/16 v9, 0x400

    const/4 v7, 0x0

    const/high16 v6, 0x3f00

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/cocos2d/l/g;->a(FF)Lorg/cocos2d/l/g;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lorg/cocos2d/l/g;->a(FF)Lorg/cocos2d/l/g;

    move-result-object v1

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    float-to-int v2, v2

    invoke-static {v2}, Lorg/cocos2d/opengl/i;->a(I)I

    move-result v2

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    float-to-int v3, v3

    invoke-static {v3}, Lorg/cocos2d/opengl/i;->a(I)I

    move-result v3

    const/high16 v4, 0x3f80

    move v5, v2

    move v2, v4

    move v4, v3

    move v3, v7

    :goto_0
    if-gt v5, v9, :cond_1

    if-gt v4, v9, :cond_1

    if-eqz v3, :cond_4

    iget v3, v0, Lorg/cocos2d/l/g;->a:F

    float-to-int v3, v3

    iget v6, v0, Lorg/cocos2d/l/g;->b:F

    float-to-int v6, v6

    invoke-static {p1, v3, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    iget v6, v0, Lorg/cocos2d/l/g;->a:F

    int-to-float v7, v5

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    int-to-float v6, v4

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :goto_2
    invoke-static {v5, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :goto_3
    invoke-direct {p0, v0, v1}, Lorg/cocos2d/opengl/i;->b(Landroid/graphics/Bitmap;Lorg/cocos2d/l/g;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/cocos2d/opengl/i;->i:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lorg/cocos2d/opengl/i;->j:I

    return-void

    :cond_1
    div-int/lit8 v3, v5, 0x2

    div-int/lit8 v4, v4, 0x2

    iget v5, v0, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v5, v6

    iput v5, v0, Lorg/cocos2d/l/g;->a:F

    iget v5, v0, Lorg/cocos2d/l/g;->b:F

    mul-float/2addr v5, v6

    iput v5, v0, Lorg/cocos2d/l/g;->b:F

    const/high16 v5, 0x4000

    mul-float/2addr v2, v5

    const/4 v5, 0x1

    move v10, v5

    move v5, v3

    move v3, v10

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    :cond_3
    move-object v0, v3

    goto :goto_3

    :cond_4
    move-object v3, p1

    goto :goto_1
.end method

.method public final a(Landroid/graphics/Bitmap;Lorg/cocos2d/l/g;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget v1, p2, Lorg/cocos2d/l/g;->a:F

    float-to-int v1, v1

    iget v2, p2, Lorg/cocos2d/l/g;->b:F

    float-to-int v2, v2

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-direct {p0, v0, p2}, Lorg/cocos2d/opengl/i;->b(Landroid/graphics/Bitmap;Lorg/cocos2d/l/g;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;FI)V
    .locals 7

    invoke-static {p1, p2, p3}, Lorg/cocos2d/opengl/i;->a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/l/g;

    move-result-object v2

    sget-object v3, Lorg/cocos2d/g/f;->b:Lorg/cocos2d/g/f;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2d/opengl/i;->a(Ljava/lang/String;Lorg/cocos2d/l/g;Lorg/cocos2d/g/f;Ljava/lang/String;FI)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/cocos2d/l/g;Lorg/cocos2d/g/f;Ljava/lang/String;FI)V
    .locals 19

    sget-object v5, Lorg/cocos2d/opengl/i;->p:Ljava/util/HashMap;

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :try_start_0
    sget-object v5, Lorg/cocos2d/g/c;->a:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    sget-object v5, Lorg/cocos2d/g/c;->a:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    sget-object v6, Lorg/cocos2d/opengl/i;->p:Ljava/util/HashMap;

    move-object v0, v6

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object v0, v6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v7

    add-float v8, v5, v7

    float-to-int v8, v8

    add-float v9, v5, v7

    const v10, 0x3dcccccd

    mul-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    move v10, v0

    float-to-int v10, v10

    invoke-static {v10}, Lorg/cocos2d/opengl/i;->a(I)I

    move-result v10

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    move v11, v0

    float-to-int v11, v11

    invoke-static {v11}, Lorg/cocos2d/opengl/i;->a(I)I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/graphics/Bitmap;->eraseColor(I)V

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    move v12, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move v2, v12

    invoke-static {v0, v1, v2}, Lorg/cocos2d/opengl/i;->a(Landroid/graphics/Paint;Ljava/lang/String;F)Ljava/util/ArrayList;

    move-result-object v12

    add-float/2addr v7, v5

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v7, v13

    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v13, v14, :cond_1

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/opengl/i;->b(Landroid/graphics/Bitmap;Lorg/cocos2d/l/g;)V

    return-void

    :catch_0
    move-exception v5

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    goto/16 :goto_0

    :cond_0
    sget-object v5, Lorg/cocos2d/opengl/i;->p:Ljava/util/HashMap;

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Typeface;

    move-object/from16 v5, p4

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {}, Lorg/cocos2d/opengl/i;->k()[I

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Lorg/cocos2d/g/f;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    move/from16 v18, v15

    move v15, v14

    move/from16 v14, v18

    :goto_3
    add-float/2addr v14, v5

    add-int v16, v8, v9

    mul-int v16, v16, v13

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v14, v14, v16

    move-object v0, v11

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :pswitch_0
    const/4 v14, 0x0

    move/from16 v18, v15

    move v15, v14

    move/from16 v14, v18

    goto :goto_3

    :pswitch_1
    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    move v14, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f00

    mul-float/2addr v14, v15

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    move v15, v0

    sub-float/2addr v15, v7

    const/high16 v16, 0x3f00

    mul-float v15, v15, v16

    move/from16 v18, v15

    move v15, v14

    move/from16 v14, v18

    goto :goto_3

    :pswitch_2
    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    move v14, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    sub-float v14, v14, v16

    move/from16 v18, v15

    move v15, v14

    move/from16 v14, v18

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lorg/cocos2d/opengl/i;->g:I

    if-eqz v0, :cond_0

    new-array v0, v3, [I

    iget v1, p0, Lorg/cocos2d/opengl/i;->g:I

    aput v1, v0, v2

    invoke-interface {p1, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    iput v2, p0, Lorg/cocos2d/opengl/i;->g:I

    :cond_0
    return-void
.end method

.method public final a(Lorg/cocos2d/l/b;)V
    .locals 5

    iget-object v0, p0, Lorg/cocos2d/opengl/i;->n:Lorg/cocos2d/l/b;

    iget v1, p1, Lorg/cocos2d/l/b;->a:I

    iget v2, p1, Lorg/cocos2d/l/b;->b:I

    iget v3, p1, Lorg/cocos2d/l/b;->c:I

    iget v4, p1, Lorg/cocos2d/l/b;->d:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/cocos2d/l/b;->a(IIII)V

    return-void
.end method

.method public final a(Lorg/cocos2d/opengl/r;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lorg/cocos2d/opengl/r;->a(Lorg/cocos2d/opengl/s;)V

    invoke-static {}, Lorg/cocos2d/opengl/n;->a()Lorg/cocos2d/opengl/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lorg/cocos2d/opengl/n;->a(Lorg/cocos2d/opengl/s;Lorg/cocos2d/opengl/r;Z)V

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/opengl/i;->i:I

    return v0
.end method

.method public final b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lorg/cocos2d/opengl/i;->g:I

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/cocos2d/opengl/i;->o:Ljavax/microedition/khronos/opengles/GL;

    new-array v0, v1, [I

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    aget v0, v0, v2

    iput v0, p0, Lorg/cocos2d/opengl/i;->g:I

    invoke-direct {p0, p1}, Lorg/cocos2d/opengl/i;->c(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lorg/cocos2d/opengl/i;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xde1

    iget-object v1, p0, Lorg/cocos2d/opengl/i;->f:Landroid/graphics/Bitmap;

    invoke-static {v0, v2, v1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    iget-object v0, p0, Lorg/cocos2d/opengl/i;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/opengl/i;->f:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/opengl/i;->j:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/opengl/i;->g:I

    return v0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Lorg/cocos2d/opengl/i;->l:F

    return v0
.end method

.method public final f()F
    .locals 1

    iget v0, p0, Lorg/cocos2d/opengl/i;->m:F

    return v0
.end method

.method protected finalize()V
    .locals 2

    iget v0, p0, Lorg/cocos2d/opengl/i;->g:I

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/cocos2d/opengl/n;->a()Lorg/cocos2d/opengl/n;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/opengl/j;

    invoke-direct {v1, p0}, Lorg/cocos2d/opengl/j;-><init>(Lorg/cocos2d/opengl/i;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/n;->a(Lorg/cocos2d/opengl/q;)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lorg/cocos2d/opengl/i;->c:Z

    return v0
.end method

.method public final h()Lorg/cocos2d/l/g;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/i;->h:Lorg/cocos2d/l/g;

    return-object v0
.end method

.method public final i()V
    .locals 1

    const/16 v0, 0x2600

    invoke-direct {p0, v0, v0}, Lorg/cocos2d/opengl/i;->a(II)V

    return-void
.end method

.method public final j()V
    .locals 1

    const/16 v0, 0x2601

    invoke-direct {p0, v0, v0}, Lorg/cocos2d/opengl/i;->a(II)V

    return-void
.end method
