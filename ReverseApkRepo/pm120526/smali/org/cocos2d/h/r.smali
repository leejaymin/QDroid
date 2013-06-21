.class public Lorg/cocos2d/h/r;
.super Lorg/cocos2d/h/l;


# static fields
.field static final synthetic ac:Z


# instance fields
.field Z:Ljava/nio/FloatBuffer;

.field aa:Ljava/nio/FloatBuffer;

.field ab:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/h/r;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/h/r;->ac:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 7

    const v6, 0x88e8

    const/16 v5, 0x3e8

    const/4 v2, 0x2

    const/4 v4, 0x0

    const v3, 0x8892

    invoke-direct {p0, v5}, Lorg/cocos2d/h/l;-><init>(I)V

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1770

    invoke-static {v1}, Lorg/cocos2d/m/b;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/h/r;->Z:Ljava/nio/FloatBuffer;

    invoke-static {v5}, Lorg/cocos2d/m/b;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/h/r;->aa:Ljava/nio/FloatBuffer;

    new-array v1, v2, [I

    iput-object v1, p0, Lorg/cocos2d/h/r;->ab:[I

    iget-object v1, p0, Lorg/cocos2d/h/r;->ab:[I

    invoke-interface {v0, v2, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    iget-object v1, p0, Lorg/cocos2d/h/r;->ab:[I

    aget v1, v1, v4

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget v1, p0, Lorg/cocos2d/h/r;->O:I

    mul-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lorg/cocos2d/h/r;->Z:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v1, v2, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    iget-object v1, p0, Lorg/cocos2d/h/r;->ab:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget v1, p0, Lorg/cocos2d/h/r;->O:I

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lorg/cocos2d/h/r;->aa:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v1, v2, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-interface {v0, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    return-void
.end method


# virtual methods
.method public final R()V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x8892

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lorg/cocos2d/h/r;->ab:[I

    aget v1, v1, v4

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget v1, p0, Lorg/cocos2d/h/r;->P:I

    mul-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lorg/cocos2d/h/r;->Z:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    iget-object v1, p0, Lorg/cocos2d/h/r;->ab:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget v1, p0, Lorg/cocos2d/h/r;->P:I

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lorg/cocos2d/h/r;->aa:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    invoke-interface {v0, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    return-void
.end method

.method public final a(Lorg/cocos2d/h/m;Lorg/cocos2d/l/e;)V
    .locals 4

    iget v0, p0, Lorg/cocos2d/h/r;->X:I

    mul-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lorg/cocos2d/h/r;->Z:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v0, 0x0

    iget v3, p2, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lorg/cocos2d/h/r;->Z:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v0, 0x1

    iget v3, p2, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lorg/cocos2d/h/r;->Z:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v0, 0x2

    iget-object v3, p1, Lorg/cocos2d/h/m;->c:Lorg/cocos2d/l/l;

    iget v3, v3, Lorg/cocos2d/l/l;->a:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lorg/cocos2d/h/r;->Z:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v0, 0x3

    iget-object v3, p1, Lorg/cocos2d/h/m;->c:Lorg/cocos2d/l/l;

    iget v3, v3, Lorg/cocos2d/l/l;->b:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lorg/cocos2d/h/r;->Z:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v0, 0x4

    iget-object v3, p1, Lorg/cocos2d/h/m;->c:Lorg/cocos2d/l/l;

    iget v3, v3, Lorg/cocos2d/l/l;->c:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lorg/cocos2d/h/r;->Z:Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, 0x5

    iget-object v2, p1, Lorg/cocos2d/h/m;->c:Lorg/cocos2d/l/l;

    iget v2, v2, Lorg/cocos2d/l/l;->d:F

    invoke-virtual {v1, v0, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/cocos2d/h/r;->aa:Ljava/nio/FloatBuffer;

    iget v1, p0, Lorg/cocos2d/h/r;->X:I

    iget v2, p1, Lorg/cocos2d/h/m;->e:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public final d()V
    .locals 1

    sget-boolean v0, Lorg/cocos2d/h/r;->ac:Z

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/cocos2d/h/l;->j(F)V

    return-void
.end method

.method public final e()V
    .locals 1

    sget-boolean v0, Lorg/cocos2d/h/r;->ac:Z

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/cocos2d/h/l;->j(F)V

    return-void
.end method

.method public finalize()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/h/r;->Z:Ljava/nio/FloatBuffer;

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/cocos2d/h/r;->ab:[I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final g(F)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/h/r;->ac:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x4280

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "PointParticleSystem only supports 0 <= size <= 64"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    invoke-super {p0, p1}, Lorg/cocos2d/h/l;->g(F)V

    return-void
.end method

.method public final i(F)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/h/r;->ac:Z

    if-nez v0, :cond_1

    const/high16 v0, -0x4080

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x4280

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "PointParticleSystem only supports 0 <= size <= 64"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    invoke-super {p0, p1}, Lorg/cocos2d/h/l;->i(F)V

    return-void
.end method

.method public final j(F)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/h/r;->ac:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "PointParticleSystem doesn\'t support spinning"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lorg/cocos2d/h/l;->j(F)V

    return-void
.end method

.method public final k(F)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/h/r;->ac:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "PointParticleSystem doesn\'t support spinning"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lorg/cocos2d/h/l;->j(F)V

    return-void
.end method
