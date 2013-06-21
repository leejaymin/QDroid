.class final Lorg/cocos2d/h/u;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/opengl/r;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lorg/cocos2d/h/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/cocos2d/h/u;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Lorg/cocos2d/opengl/s;)V
    .locals 6

    const/4 v2, 0x3

    const v5, 0x88e8

    const/4 v4, 0x0

    const v3, 0x8892

    iget-object v0, p0, Lorg/cocos2d/h/u;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/h/s;

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    new-array v1, v2, [I

    iput-object v1, p0, Lorg/cocos2d/h/s;->ad:[I

    iget-object v1, p0, Lorg/cocos2d/h/s;->ad:[I

    invoke-interface {v0, v2, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    iget-object v1, p0, Lorg/cocos2d/h/s;->ad:[I

    aget v1, v1, v4

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lorg/cocos2d/h/s;->Z:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/cocos2d/h/s;->Z:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lorg/cocos2d/h/s;->Z:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v1, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    iget-object v1, p0, Lorg/cocos2d/h/s;->ad:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lorg/cocos2d/h/s;->aa:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/cocos2d/h/s;->aa:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lorg/cocos2d/h/s;->aa:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v1, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    iget-object v1, p0, Lorg/cocos2d/h/s;->ad:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lorg/cocos2d/h/s;->ab:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/cocos2d/h/s;->ab:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lorg/cocos2d/h/s;->ab:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v1, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-interface {v0, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_0
.end method
