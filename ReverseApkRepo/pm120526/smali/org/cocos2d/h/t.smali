.class final Lorg/cocos2d/h/t;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/opengl/q;


# instance fields
.field final synthetic a:Lorg/cocos2d/h/s;


# direct methods
.method constructor <init>(Lorg/cocos2d/h/s;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/h/t;->a:Lorg/cocos2d/h/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    const/4 v0, 0x3

    iget-object v1, p0, Lorg/cocos2d/h/t;->a:Lorg/cocos2d/h/s;

    iget-object v1, v1, Lorg/cocos2d/h/s;->ad:[I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    return-void
.end method
