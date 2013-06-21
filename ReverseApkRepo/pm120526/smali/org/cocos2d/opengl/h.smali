.class final Lorg/cocos2d/opengl/h;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/opengl/r;


# instance fields
.field final synthetic a:Lorg/cocos2d/opengl/g;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lorg/cocos2d/opengl/g;I)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/opengl/h;->a:Lorg/cocos2d/opengl/g;

    iput p2, p0, Lorg/cocos2d/opengl/h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/cocos2d/opengl/s;)V
    .locals 3

    iget v0, p0, Lorg/cocos2d/opengl/h;->b:I

    iget v1, p0, Lorg/cocos2d/opengl/h;->b:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    check-cast p1, Lorg/cocos2d/opengl/i;

    invoke-virtual {p1, v0}, Lorg/cocos2d/opengl/i;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
