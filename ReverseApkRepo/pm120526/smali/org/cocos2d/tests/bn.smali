.class public Lorg/cocos2d/tests/bn;
.super Lorg/cocos2d/tests/bo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/bo;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14

    const/high16 v13, 0x4270

    const/high16 v6, 0x4248

    const/high16 v12, 0x4000

    const/4 v3, 0x0

    const/high16 v11, 0x3f80

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v10

    const/16 v0, 0xb20

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    invoke-static {v3, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iget v1, v10, Lorg/cocos2d/l/g;->a:F

    iget v2, v10, Lorg/cocos2d/l/g;->b:F

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/cocos2d/opengl/f;->a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V

    const/16 v0, 0xb20

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/high16 v0, 0x40a0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    invoke-interface {p1, v11, v3, v3, v11}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    iget v0, v10, Lorg/cocos2d/l/g;->b:F

    invoke-static {v3, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iget v1, v10, Lorg/cocos2d/l/g;->a:F

    invoke-static {v1, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/cocos2d/opengl/f;->a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V

    const/high16 v0, 0x4280

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    const/high16 v0, 0x3f00

    invoke-interface {p1, v3, v3, v11, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    iget v0, v10, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v0, v12

    iget v1, v10, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v1, v12

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/cocos2d/opengl/f;->a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/l/e;)V

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/cocos2d/l/e;

    const/4 v1, 0x0

    invoke-static {v13, v13}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x428c

    const/high16 v4, 0x428c

    invoke-static {v2, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0x428c

    invoke-static {v13, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, 0x428c

    invoke-static {v2, v13}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/high16 v1, 0x4080

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    invoke-interface {p1, v3, v11, v11, v11}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    invoke-static {p1, v0}, Lorg/cocos2d/opengl/f;->a(Ljavax/microedition/khronos/opengles/GL10;[Lorg/cocos2d/l/e;)V

    const/high16 v0, 0x4180

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    invoke-interface {p1, v3, v11, v3, v11}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    iget v0, v10, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v0, v12

    iget v1, v10, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v1, v12

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    const/high16 v2, 0x42c8

    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/cocos2d/opengl/f;->a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/l/e;FFIZ)V

    invoke-interface {p1, v12}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    invoke-interface {p1, v3, v11, v11, v11}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    iget v0, v10, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v0, v12

    iget v1, v10, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v1, v12

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v5

    const v7, 0x3fc90fdb

    const/16 v8, 0x32

    const/4 v9, 0x1

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lorg/cocos2d/opengl/f;->a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/l/e;FFIZ)V

    invoke-interface {p1, v11, v11, v3, v11}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    const/high16 v0, 0x4120

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/cocos2d/l/e;

    const/4 v1, 0x0

    invoke-static {v3, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v6, v6}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0x42c8

    invoke-static {v2, v6}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, 0x42c8

    const/high16 v4, 0x42c8

    invoke-static {v2, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/high16 v2, 0x42c8

    invoke-static {v6, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/cocos2d/opengl/f;->a(Ljavax/microedition/khronos/opengles/GL10;[Lorg/cocos2d/l/e;IZ)V

    invoke-interface {p1, v11, v3, v11, v11}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    invoke-interface {p1, v12}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/cocos2d/l/e;

    const/4 v1, 0x0

    const/high16 v2, 0x41f0

    const/high16 v4, 0x4302

    invoke-static {v2, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x41f0

    const/high16 v4, 0x4366

    invoke-static {v2, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0x4348

    invoke-static {v6, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lorg/cocos2d/opengl/f;->a(Ljavax/microedition/khronos/opengles/GL10;[Lorg/cocos2d/l/e;IZ)V

    iget v0, v10, Lorg/cocos2d/l/g;->b:F

    invoke-static {v3, v0}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iget v1, v10, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v12

    iget v2, v10, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v2, v12

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    iget v2, v10, Lorg/cocos2d/l/g;->a:F

    iget v3, v10, Lorg/cocos2d/l/g;->b:F

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lorg/cocos2d/opengl/f;->a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V

    iget v0, v10, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v0, v12

    iget v1, v10, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v1, v12

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iget v1, v10, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v12

    const/high16 v2, 0x41f0

    add-float/2addr v1, v2

    iget v2, v10, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v2, v12

    add-float/2addr v2, v6

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    iget v2, v10, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v12

    add-float/2addr v2, v13

    iget v3, v10, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v12

    sub-float/2addr v3, v6

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    iget v3, v10, Lorg/cocos2d/l/g;->a:F

    iget v4, v10, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v4, v12

    invoke-static {v3, v4}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lorg/cocos2d/opengl/f;->a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V

    invoke-interface {p1, v11}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    invoke-interface {p1, v11, v11, v11, v11}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    invoke-interface {p1, v11}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    return-void
.end method
