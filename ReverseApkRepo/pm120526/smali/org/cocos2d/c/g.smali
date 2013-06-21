.class final Lorg/cocos2d/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/opengl/q;


# instance fields
.field final synthetic a:Lorg/cocos2d/c/d;


# direct methods
.method constructor <init>(Lorg/cocos2d/c/d;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/c/g;->a:Lorg/cocos2d/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/c/g;->a:Lorg/cocos2d/c/d;

    invoke-static {v0}, Lorg/cocos2d/c/d;->a(Lorg/cocos2d/c/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/cocos2d/c/g;->a:Lorg/cocos2d/c/d;

    invoke-static {v0}, Lorg/cocos2d/c/d;->b(Lorg/cocos2d/c/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
