.class final Lorg/cocos2d/opengl/o;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/opengl/q;


# instance fields
.field final synthetic a:Lorg/cocos2d/opengl/n;

.field private final synthetic b:Lorg/cocos2d/opengl/r;

.field private final synthetic c:Lorg/cocos2d/opengl/s;


# direct methods
.method constructor <init>(Lorg/cocos2d/opengl/n;Lorg/cocos2d/opengl/r;Lorg/cocos2d/opengl/s;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/opengl/o;->a:Lorg/cocos2d/opengl/n;

    iput-object p2, p0, Lorg/cocos2d/opengl/o;->b:Lorg/cocos2d/opengl/r;

    iput-object p3, p0, Lorg/cocos2d/opengl/o;->c:Lorg/cocos2d/opengl/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2d/opengl/o;->b:Lorg/cocos2d/opengl/r;

    iget-object v1, p0, Lorg/cocos2d/opengl/o;->c:Lorg/cocos2d/opengl/s;

    invoke-interface {v0, v1}, Lorg/cocos2d/opengl/r;->a(Lorg/cocos2d/opengl/s;)V

    iget-object v0, p0, Lorg/cocos2d/opengl/o;->a:Lorg/cocos2d/opengl/n;

    invoke-static {v0}, Lorg/cocos2d/opengl/n;->a(Lorg/cocos2d/opengl/n;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/opengl/o;->c:Lorg/cocos2d/opengl/s;

    iget-object v2, p0, Lorg/cocos2d/opengl/o;->b:Lorg/cocos2d/opengl/r;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
