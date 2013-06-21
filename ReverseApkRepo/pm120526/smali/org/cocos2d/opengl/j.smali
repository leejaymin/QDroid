.class final Lorg/cocos2d/opengl/j;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/opengl/q;


# instance fields
.field final synthetic a:Lorg/cocos2d/opengl/i;


# direct methods
.method constructor <init>(Lorg/cocos2d/opengl/i;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/opengl/j;->a:Lorg/cocos2d/opengl/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/cocos2d/opengl/j;->a:Lorg/cocos2d/opengl/i;

    invoke-static {v0}, Lorg/cocos2d/opengl/i;->a(Lorg/cocos2d/opengl/i;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-static {v3}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/cocos2d/opengl/j;->a:Lorg/cocos2d/opengl/i;

    invoke-static {v2}, Lorg/cocos2d/opengl/i;->b(Lorg/cocos2d/opengl/i;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    invoke-interface {p1, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    :cond_0
    return-void
.end method
