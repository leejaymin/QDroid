.class public final Lorg/cocos2d/d/a;
.super Ljava/lang/Object;


# instance fields
.field a:[I

.field b:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/cocos2d/d/a;->a:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/cocos2d/d/a;->b:[I

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    instance-of v0, v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lorg/cocos2d/d/a;->a:[I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenFramebuffersOES(I[II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final finalize()V
    .locals 4

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    instance-of v0, v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    const-string v1, "cocos2d: deallocing %@"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lorg/cocos2d/d/a;->a:[I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
