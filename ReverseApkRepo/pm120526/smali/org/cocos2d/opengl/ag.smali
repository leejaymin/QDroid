.class final Lorg/cocos2d/opengl/ag;
.super Lorg/cocos2d/opengl/u;


# instance fields
.field final synthetic j:Lorg/cocos2d/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Lorg/cocos2d/opengl/GLSurfaceView;Z)V
    .locals 9

    const/4 v8, 0x5

    const/4 v2, 0x4

    const/4 v5, 0x0

    iput-object p1, p0, Lorg/cocos2d/opengl/ag;->j:Lorg/cocos2d/opengl/GLSurfaceView;

    if-eqz p2, :cond_0

    const/16 v0, 0x10

    move v6, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lorg/cocos2d/opengl/u;-><init>(Lorg/cocos2d/opengl/GLSurfaceView;IIIIII)V

    iput v8, p0, Lorg/cocos2d/opengl/ag;->c:I

    const/4 v0, 0x6

    iput v0, p0, Lorg/cocos2d/opengl/ag;->d:I

    iput v8, p0, Lorg/cocos2d/opengl/ag;->e:I

    return-void

    :cond_0
    move v6, v5

    goto :goto_0
.end method
