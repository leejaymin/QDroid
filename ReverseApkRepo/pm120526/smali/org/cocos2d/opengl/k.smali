.class final Lorg/cocos2d/opengl/k;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/opengl/q;


# instance fields
.field final synthetic a:Lorg/cocos2d/opengl/i;


# direct methods
.method constructor <init>(Lorg/cocos2d/opengl/i;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/opengl/k;->a:Lorg/cocos2d/opengl/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/k;->a:Lorg/cocos2d/opengl/i;

    invoke-virtual {v0, p1}, Lorg/cocos2d/opengl/i;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method
