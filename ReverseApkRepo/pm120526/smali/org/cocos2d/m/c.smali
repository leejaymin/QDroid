.class public final Lorg/cocos2d/m/c;
.super Ljava/lang/Object;


# direct methods
.method public static a([FLjava/nio/FloatBuffer;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->a([FLjava/nio/Buffer;I)V

    goto :goto_0
.end method
