.class final Lorg/cocos2d/tests/n;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/opengl/r;


# instance fields
.field final synthetic a:Lorg/cocos2d/tests/m;

.field private final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lorg/cocos2d/tests/m;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/tests/n;->a:Lorg/cocos2d/tests/m;

    iput-object p2, p0, Lorg/cocos2d/tests/n;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/cocos2d/opengl/s;)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2d/tests/n;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/cocos2d/tests/n;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    check-cast p1, Lorg/cocos2d/opengl/i;

    invoke-virtual {p1, v0}, Lorg/cocos2d/opengl/i;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
