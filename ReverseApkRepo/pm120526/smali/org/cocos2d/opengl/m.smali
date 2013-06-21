.class public Lorg/cocos2d/opengl/m;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z

.field private static j:[F


# instance fields
.field private b:I

.field private c:I

.field private d:Lorg/cocos2d/opengl/i;

.field private e:Ljava/nio/FloatBuffer;

.field private f:Ljava/nio/FloatBuffer;

.field private g:Ljava/nio/FloatBuffer;

.field private h:Ljava/nio/ShortBuffer;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/opengl/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/opengl/m;->a:Z

    const/16 v0, 0xc

    new-array v0, v0, [F

    sput-object v0, Lorg/cocos2d/opengl/m;->j:[F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/cocos2d/opengl/m;-><init>(Lorg/cocos2d/opengl/i;I)V

    return-void
.end method

.method public constructor <init>(Lorg/cocos2d/opengl/i;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/cocos2d/opengl/m;->c:I

    iput-object p1, p0, Lorg/cocos2d/opengl/m;->d:Lorg/cocos2d/opengl/i;

    iput v0, p0, Lorg/cocos2d/opengl/m;->b:I

    iput-boolean v0, p0, Lorg/cocos2d/opengl/m;->i:Z

    iget v0, p0, Lorg/cocos2d/opengl/m;->c:I

    mul-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/m;->e:Ljava/nio/FloatBuffer;

    iget v0, p0, Lorg/cocos2d/opengl/m;->c:I

    mul-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/m;->f:Ljava/nio/FloatBuffer;

    iget v0, p0, Lorg/cocos2d/opengl/m;->c:I

    mul-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/m;->h:Ljava/nio/ShortBuffer;

    invoke-direct {p0}, Lorg/cocos2d/opengl/m;->g()V

    return-void
.end method

.method private static a(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V
    .locals 3

    if-ne p0, p2, :cond_0

    mul-int/lit8 v0, p1, 0x8

    mul-int/lit8 v1, p3, 0x8

    mul-int/lit8 v2, p4, 0x8

    invoke-static {p0, v0, p2, v1, v2}, Lorg/cocos2d/opengl/m;->d(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    :goto_0
    return-void

    :cond_0
    mul-int/lit8 v0, p1, 0x8

    mul-int/lit8 v1, p3, 0x8

    mul-int/lit8 v2, p4, 0x8

    invoke-static {p0, v0, p2, v1, v2}, Lorg/cocos2d/opengl/m;->e(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    goto :goto_0
.end method

.method public static a(Ljava/nio/FloatBuffer;[FI)V
    .locals 1

    mul-int/lit8 v0, p2, 0xc

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    array-length v0, p1

    invoke-static {p1, p0, v0}, Lorg/cocos2d/m/c;->a([FLjava/nio/FloatBuffer;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private static a(Ljava/nio/FloatBuffer;[Lorg/cocos2d/l/k;I)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x437f

    move v0, v4

    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_0
    mul-int/lit8 v1, p2, 0x4

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x0

    aget-object v2, p1, v0

    iget v2, v2, Lorg/cocos2d/l/k;->a:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    mul-int/lit8 v1, p2, 0x4

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-object v2, p1, v0

    iget v2, v2, Lorg/cocos2d/l/k;->b:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    mul-int/lit8 v1, p2, 0x4

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    aget-object v2, p1, v0

    iget v2, v2, Lorg/cocos2d/l/k;->c:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    mul-int/lit8 v1, p2, 0x4

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    aget-object v2, p1, v0

    iget v2, v2, Lorg/cocos2d/l/k;->d:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V
    .locals 3

    if-ne p0, p2, :cond_0

    mul-int/lit8 v0, p1, 0xc

    mul-int/lit8 v1, p3, 0xc

    mul-int/lit8 v2, p4, 0xc

    invoke-static {p0, v0, p2, v1, v2}, Lorg/cocos2d/opengl/m;->d(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    :goto_0
    return-void

    :cond_0
    mul-int/lit8 v0, p1, 0xc

    mul-int/lit8 v1, p3, 0xc

    mul-int/lit8 v2, p4, 0xc

    invoke-static {p0, v0, p2, v1, v2}, Lorg/cocos2d/opengl/m;->e(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    goto :goto_0
.end method

.method private static c(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V
    .locals 3

    if-ne p0, p2, :cond_0

    mul-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v1, p3, 0x4

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, p4, 0x4

    mul-int/lit8 v2, v2, 0x4

    invoke-static {p0, v0, p2, v1, v2}, Lorg/cocos2d/opengl/m;->d(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    :goto_0
    return-void

    :cond_0
    mul-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v1, p3, 0x4

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, p4, 0x4

    mul-int/lit8 v2, v2, 0x4

    invoke-static {p0, v0, p2, v1, v2}, Lorg/cocos2d/opengl/m;->e(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    goto :goto_0
.end method

.method private static d(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V
    .locals 3

    if-ge p3, p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p4, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int v1, v0, p3

    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    sub-int v0, p4, v0

    :goto_1
    if-ltz v0, :cond_0

    add-int v1, v0, p3

    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private static e(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2, p3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p0, p2, p4}, Lcom/badlogic/gdx/utils/BufferUtils;->a(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    return-void
.end method

.method private f()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/cocos2d/opengl/m;->i:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/opengl/m;->c:I

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/m;->g:Ljava/nio/FloatBuffer;

    move v0, v3

    :goto_0
    iget v1, p0, Lorg/cocos2d/opengl/m;->c:I

    mul-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/cocos2d/opengl/m;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/opengl/m;->i:Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/cocos2d/opengl/m;->g:Ljava/nio/FloatBuffer;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v0, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private g()V
    .locals 5

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    iget v1, p0, Lorg/cocos2d/opengl/m;->c:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2d/opengl/m;->h:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_0
    iget-object v1, p0, Lorg/cocos2d/opengl/m;->h:Ljava/nio/ShortBuffer;

    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x0

    int-to-short v2, v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x0

    int-to-short v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lorg/cocos2d/opengl/m;->h:Ljava/nio/ShortBuffer;

    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lorg/cocos2d/opengl/m;->h:Ljava/nio/ShortBuffer;

    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lorg/cocos2d/opengl/m;->h:Ljava/nio/ShortBuffer;

    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x5

    int-to-short v2, v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lorg/cocos2d/opengl/m;->h:Ljava/nio/ShortBuffer;

    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x4

    int-to-short v2, v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lorg/cocos2d/opengl/m;->h:Ljava/nio/ShortBuffer;

    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x3

    int-to-short v2, v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/m;->f:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public final a(I)V
    .locals 5

    const/4 v4, 0x1

    sget-boolean v0, Lorg/cocos2d/opengl/m;->a:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/cocos2d/opengl/m;->b:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "removeQuadAtIndex: Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/cocos2d/opengl/m;->b:I

    sub-int/2addr v0, v4

    sub-int/2addr v0, p1

    if-lez v0, :cond_2

    iget-object v1, p0, Lorg/cocos2d/opengl/m;->e:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/cocos2d/opengl/m;->e:Ljava/nio/FloatBuffer;

    invoke-static {v1, v2, v3, p1, v0}, Lorg/cocos2d/opengl/m;->a(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    iget-object v1, p0, Lorg/cocos2d/opengl/m;->f:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/cocos2d/opengl/m;->f:Ljava/nio/FloatBuffer;

    invoke-static {v1, v2, v3, p1, v0}, Lorg/cocos2d/opengl/m;->b(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    iget-boolean v1, p0, Lorg/cocos2d/opengl/m;->i:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/cocos2d/opengl/m;->g:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/cocos2d/opengl/m;->g:Ljava/nio/FloatBuffer;

    invoke-static {v1, v2, v3, p1, v0}, Lorg/cocos2d/opengl/m;->c(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    :cond_2
    iget v0, p0, Lorg/cocos2d/opengl/m;->b:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/cocos2d/opengl/m;->b:I

    return-void
.end method

.method public final a(Ljava/nio/FloatBuffer;I)V
    .locals 3

    const/4 v2, 0x0

    mul-int/lit8 v0, p2, 0x8

    iget-object v1, p0, Lorg/cocos2d/opengl/m;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/cocos2d/opengl/m;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->a(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/cocos2d/opengl/m;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final a(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;I)V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lorg/cocos2d/opengl/m;->a:Z

    if-nez v0, :cond_1

    if-ltz p3, :cond_0

    iget v0, p0, Lorg/cocos2d/opengl/m;->c:I

    if-lt p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "insert quad with texture_: Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/cocos2d/opengl/m;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cocos2d/opengl/m;->b:I

    iget v0, p0, Lorg/cocos2d/opengl/m;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p3

    if-lez v0, :cond_2

    iget-object v1, p0, Lorg/cocos2d/opengl/m;->e:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lorg/cocos2d/opengl/m;->e:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, p3, 0x1

    invoke-static {v1, p3, v2, v3, v0}, Lorg/cocos2d/opengl/m;->a(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    iget-object v1, p0, Lorg/cocos2d/opengl/m;->f:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lorg/cocos2d/opengl/m;->f:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, p3, 0x1

    invoke-static {v1, p3, v2, v3, v0}, Lorg/cocos2d/opengl/m;->b(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    iget-boolean v1, p0, Lorg/cocos2d/opengl/m;->i:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/cocos2d/opengl/m;->g:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lorg/cocos2d/opengl/m;->g:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, p3, 0x1

    invoke-static {v1, p3, v2, v3, v0}, Lorg/cocos2d/opengl/m;->c(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    :cond_2
    invoke-virtual {p0, p1, p3}, Lorg/cocos2d/opengl/m;->a(Ljava/nio/FloatBuffer;I)V

    mul-int/lit8 v0, p3, 0xc

    iget-object v1, p0, Lorg/cocos2d/opengl/m;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/cocos2d/opengl/m;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/cocos2d/opengl/m;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget v0, p0, Lorg/cocos2d/opengl/m;->b:I

    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/opengl/m;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 6

    const/16 v5, 0x2901

    const/4 v4, 0x4

    const/16 v3, 0x1406

    const/16 v1, 0xde1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/cocos2d/opengl/m;->d:Lorg/cocos2d/opengl/i;

    invoke-virtual {v0, p1}, Lorg/cocos2d/opengl/i;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lorg/cocos2d/opengl/m;->d:Lorg/cocos2d/opengl/i;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->d()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/16 v0, 0x2802

    invoke-interface {p1, v1, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    const/16 v0, 0x2803

    invoke-interface {p1, v1, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    const/4 v0, 0x3

    iget-object v1, p0, Lorg/cocos2d/opengl/m;->f:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lorg/cocos2d/opengl/m;->e:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    iget-boolean v0, p0, Lorg/cocos2d/opengl/m;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/opengl/m;->g:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v4, v3, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    :cond_0
    mul-int/lit8 v0, p2, 0x6

    const/16 v1, 0x1403

    iget-object v2, p0, Lorg/cocos2d/opengl/m;->h:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v4, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public final a(Lorg/cocos2d/l/n;Lorg/cocos2d/l/o;I)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Lorg/cocos2d/opengl/m;->a:Z

    if-nez v0, :cond_1

    if-ltz p3, :cond_0

    iget v0, p0, Lorg/cocos2d/opengl/m;->c:I

    if-lt p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "update quad with texture_: Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    add-int/lit8 v0, p3, 0x1

    iget v1, p0, Lorg/cocos2d/opengl/m;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/cocos2d/opengl/m;->b:I

    iget-object v0, p0, Lorg/cocos2d/opengl/m;->e:Ljava/nio/FloatBuffer;

    mul-int/lit8 v1, p3, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    iget v2, p1, Lorg/cocos2d/l/n;->a:F

    aput v2, v1, v4

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    iget v2, p1, Lorg/cocos2d/l/n;->b:F

    aput v2, v1, v5

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    iget v2, p1, Lorg/cocos2d/l/n;->c:F

    aput v2, v1, v6

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    iget v2, p1, Lorg/cocos2d/l/n;->d:F

    aput v2, v1, v7

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    iget v2, p1, Lorg/cocos2d/l/n;->e:F

    aput v2, v1, v8

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    const/4 v2, 0x5

    iget v3, p1, Lorg/cocos2d/l/n;->f:F

    aput v3, v1, v2

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    const/4 v2, 0x6

    iget v3, p1, Lorg/cocos2d/l/n;->g:F

    aput v3, v1, v2

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    const/4 v2, 0x7

    iget v3, p1, Lorg/cocos2d/l/n;->h:F

    aput v3, v1, v2

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lorg/cocos2d/m/c;->a([FLjava/nio/FloatBuffer;I)V

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/cocos2d/opengl/m;->f:Ljava/nio/FloatBuffer;

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    iget v2, p2, Lorg/cocos2d/l/o;->a:F

    aput v2, v1, v4

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    iget v2, p2, Lorg/cocos2d/l/o;->b:F

    aput v2, v1, v5

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    iget v2, p2, Lorg/cocos2d/l/o;->c:F

    aput v2, v1, v6

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    iget v2, p2, Lorg/cocos2d/l/o;->d:F

    aput v2, v1, v7

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    iget v2, p2, Lorg/cocos2d/l/o;->e:F

    aput v2, v1, v8

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    const/4 v2, 0x5

    iget v3, p2, Lorg/cocos2d/l/o;->f:F

    aput v3, v1, v2

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    const/4 v2, 0x6

    iget v3, p2, Lorg/cocos2d/l/o;->g:F

    aput v3, v1, v2

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    const/4 v2, 0x7

    iget v3, p2, Lorg/cocos2d/l/o;->h:F

    aput v3, v1, v2

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    const/16 v2, 0x8

    iget v3, p2, Lorg/cocos2d/l/o;->i:F

    aput v3, v1, v2

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    const/16 v2, 0x9

    iget v3, p2, Lorg/cocos2d/l/o;->j:F

    aput v3, v1, v2

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    const/16 v2, 0xa

    iget v3, p2, Lorg/cocos2d/l/o;->k:F

    aput v3, v1, v2

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    const/16 v2, 0xb

    iget v3, p2, Lorg/cocos2d/l/o;->l:F

    aput v3, v1, v2

    mul-int/lit8 v1, p3, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v1, Lorg/cocos2d/opengl/m;->j:[F

    const/16 v2, 0xc

    invoke-static {v1, v0, v2}, Lorg/cocos2d/m/c;->a([FLjava/nio/FloatBuffer;I)V

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final a([Lorg/cocos2d/l/k;I)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/opengl/m;->a:Z

    if-nez v0, :cond_1

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/cocos2d/opengl/m;->c:I

    if-lt p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "update color with quad color: Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lorg/cocos2d/opengl/m;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/cocos2d/opengl/m;->b:I

    iget-boolean v0, p0, Lorg/cocos2d/opengl/m;->i:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/cocos2d/opengl/m;->f()V

    :cond_2
    iget-boolean v0, p0, Lorg/cocos2d/opengl/m;->i:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/cocos2d/opengl/m;->g:Ljava/nio/FloatBuffer;

    invoke-static {v0, p1, p2}, Lorg/cocos2d/opengl/m;->a(Ljava/nio/FloatBuffer;[Lorg/cocos2d/l/k;I)V

    :cond_3
    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/opengl/m;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lorg/cocos2d/opengl/m;->c:I

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/cocos2d/opengl/m;->b:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/cocos2d/opengl/m;->b:I

    iput p1, p0, Lorg/cocos2d/opengl/m;->c:I

    mul-int/lit8 v0, p1, 0x8

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/opengl/m;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lorg/cocos2d/opengl/m;->e:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/cocos2d/opengl/m;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    mul-int/lit8 v0, p1, 0xc

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/opengl/m;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lorg/cocos2d/opengl/m;->f:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/cocos2d/opengl/m;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    mul-int/lit8 v0, p1, 0x6

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/opengl/m;->h:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lorg/cocos2d/opengl/m;->h:Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lorg/cocos2d/opengl/m;->h:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0}, Lorg/cocos2d/opengl/m;->g()V

    iget-boolean v0, p0, Lorg/cocos2d/opengl/m;->i:Z

    if-eqz v0, :cond_0

    mul-int/lit8 v0, p1, 0x10

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/opengl/m;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lorg/cocos2d/opengl/m;->g:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/cocos2d/opengl/m;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/opengl/m;->c:I

    return v0
.end method

.method public final d()Lorg/cocos2d/opengl/i;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/m;->d:Lorg/cocos2d/opengl/i;

    return-object v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/opengl/m;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/cocos2d/m/d;

    invoke-direct {v0}, Lorg/cocos2d/m/d;-><init>()V

    const-string v0, "<%s = %08X | getTotalQuads = %i>"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lorg/cocos2d/opengl/m;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/cocos2d/opengl/m;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/m/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
