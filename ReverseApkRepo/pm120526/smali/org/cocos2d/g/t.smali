.class final Lorg/cocos2d/g/t;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/opengl/r;


# instance fields
.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/g/t;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/cocos2d/opengl/s;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lorg/cocos2d/m/e;->a()Lorg/cocos2d/m/e;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/g/t;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/cocos2d/m/e;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v0, p1

    check-cast v0, Lorg/cocos2d/opengl/i;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/cocos2d/opengl/i;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    iput-object v1, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    check-cast p1, Lorg/cocos2d/opengl/i;

    invoke-virtual {p1, v1}, Lorg/cocos2d/opengl/i;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
