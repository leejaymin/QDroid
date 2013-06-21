.class public Lorg/cocos2d/e/a;
.super Lorg/cocos2d/e/b;

# interfaces
.implements Lorg/cocos2d/i/c;


# instance fields
.field protected a:Lorg/cocos2d/l/j;

.field protected b:I

.field protected c:Lorg/cocos2d/l/i;

.field private d:Ljava/nio/FloatBuffer;

.field private e:Ljava/nio/FloatBuffer;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/l/k;)V
    .locals 2

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    invoke-direct {p0, p1, v1, v0}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/l/k;FF)V

    return-void
.end method

.method private constructor <init>(Lorg/cocos2d/l/k;FF)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/l/k;FF)V

    return-void
.end method

.method public static a(Lorg/cocos2d/l/k;)Lorg/cocos2d/e/a;
    .locals 3

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/e/a;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    invoke-direct {v1, p0, v2, v0}, Lorg/cocos2d/e/a;-><init>(Lorg/cocos2d/l/k;FF)V

    return-object v1
.end method

.method private a(Lorg/cocos2d/l/k;FF)V
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/e/a;->d:Ljava/nio/FloatBuffer;

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/e/a;->e:Ljava/nio/FloatBuffer;

    new-instance v0, Lorg/cocos2d/l/j;

    iget v1, p1, Lorg/cocos2d/l/k;->a:I

    iget v2, p1, Lorg/cocos2d/l/k;->b:I

    iget v3, p1, Lorg/cocos2d/l/k;->c:I

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/l/j;-><init>(III)V

    iput-object v0, p0, Lorg/cocos2d/e/a;->a:Lorg/cocos2d/l/j;

    iget v0, p1, Lorg/cocos2d/l/k;->d:I

    iput v0, p0, Lorg/cocos2d/e/a;->b:I

    new-instance v0, Lorg/cocos2d/l/i;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/l/i;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/e/a;->c:Lorg/cocos2d/l/i;

    move v0, v4

    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2d/e/a;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0}, Lorg/cocos2d/e/a;->h()V

    invoke-static {p2, p3}, Lorg/cocos2d/l/g;->a(FF)Lorg/cocos2d/l/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/l/g;)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/cocos2d/e/a;->d:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private h()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x437f

    move v0, v4

    :goto_0
    iget-object v1, p0, Lorg/cocos2d/e/a;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    rem-int/lit8 v1, v0, 0x4

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lorg/cocos2d/e/a;->e:Ljava/nio/FloatBuffer;

    iget v2, p0, Lorg/cocos2d/e/a;->b:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :goto_1
    iget-object v1, p0, Lorg/cocos2d/e/a;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lorg/cocos2d/e/a;->e:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lorg/cocos2d/e/a;->a:Lorg/cocos2d/l/j;

    iget v2, v2, Lorg/cocos2d/l/j;->j:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lorg/cocos2d/e/a;->e:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lorg/cocos2d/e/a;->a:Lorg/cocos2d/l/j;

    iget v2, v2, Lorg/cocos2d/l/j;->k:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lorg/cocos2d/e/a;->e:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lorg/cocos2d/e/a;->a:Lorg/cocos2d/l/j;

    iget v2, v2, Lorg/cocos2d/l/j;->l:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a()Lorg/cocos2d/l/j;
    .locals 3

    iget-object v0, p0, Lorg/cocos2d/e/a;->a:Lorg/cocos2d/l/j;

    iget v0, v0, Lorg/cocos2d/l/j;->j:I

    iget-object v1, p0, Lorg/cocos2d/e/a;->a:Lorg/cocos2d/l/j;

    iget v1, v1, Lorg/cocos2d/l/j;->k:I

    iget-object v2, p0, Lorg/cocos2d/e/a;->a:Lorg/cocos2d/l/j;

    iget v2, v2, Lorg/cocos2d/l/j;->l:I

    invoke-static {v0, v1, v2}, Lorg/cocos2d/l/j;->a(III)Lorg/cocos2d/l/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lorg/cocos2d/e/a;->b:I

    invoke-direct {p0}, Lorg/cocos2d/e/a;->h()V

    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    const/16 v7, 0xde1

    const/4 v6, 0x4

    const/16 v5, 0x303

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/4 v0, 0x2

    const/16 v1, 0x1406

    iget-object v2, p0, Lorg/cocos2d/e/a;->d:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const/16 v0, 0x1406

    iget-object v1, p0, Lorg/cocos2d/e/a;->e:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v6, v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lorg/cocos2d/e/a;->c:Lorg/cocos2d/l/i;

    iget v0, v0, Lorg/cocos2d/l/i;->a:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lorg/cocos2d/e/a;->c:Lorg/cocos2d/l/i;

    iget v0, v0, Lorg/cocos2d/l/i;->b:I

    if-eq v0, v5, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/e/a;->c:Lorg/cocos2d/l/i;

    iget v0, v0, Lorg/cocos2d/l/i;->a:I

    iget-object v1, p0, Lorg/cocos2d/e/a;->c:Lorg/cocos2d/l/i;

    iget v1, v1, Lorg/cocos2d/l/i;->b:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    move v0, v4

    :goto_0
    const/4 v1, 0x5

    invoke-interface {p1, v1, v3, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    if-eqz v0, :cond_1

    invoke-interface {p1, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    :cond_1
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    return-void

    :cond_2
    iget v0, p0, Lorg/cocos2d/e/a;->b:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_3

    const/16 v0, 0x302

    invoke-interface {p1, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public final a(Lorg/cocos2d/l/g;)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2d/e/a;->d:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/e/a;->d:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    iget v2, p1, Lorg/cocos2d/l/g;->a:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/cocos2d/e/a;->d:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    iget v2, p1, Lorg/cocos2d/l/g;->b:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/cocos2d/e/a;->d:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    iget v2, p1, Lorg/cocos2d/l/g;->a:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/cocos2d/e/a;->d:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    iget v2, p1, Lorg/cocos2d/l/g;->b:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :cond_0
    invoke-super {p0, p1}, Lorg/cocos2d/e/b;->a(Lorg/cocos2d/l/g;)V

    return-void
.end method

.method public final a(Lorg/cocos2d/l/j;)V
    .locals 3

    iget v0, p1, Lorg/cocos2d/l/j;->j:I

    iget v1, p1, Lorg/cocos2d/l/j;->k:I

    iget v2, p1, Lorg/cocos2d/l/j;->l:I

    invoke-static {v0, v1, v2}, Lorg/cocos2d/l/j;->a(III)Lorg/cocos2d/l/j;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/e/a;->a:Lorg/cocos2d/l/j;

    invoke-direct {p0}, Lorg/cocos2d/e/a;->h()V

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/e/a;->b:I

    return v0
.end method
