.class public final Lorg/cocos2d/opengl/e;
.super Ljava/lang/Object;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/cocos2d/opengl/e;->a:F

    iput v1, p0, Lorg/cocos2d/opengl/e;->b:F

    const v0, 0x358637bd

    iput v0, p0, Lorg/cocos2d/opengl/e;->c:F

    iput v1, p0, Lorg/cocos2d/opengl/e;->d:F

    iput v1, p0, Lorg/cocos2d/opengl/e;->e:F

    iput v1, p0, Lorg/cocos2d/opengl/e;->f:F

    iput v1, p0, Lorg/cocos2d/opengl/e;->g:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/cocos2d/opengl/e;->h:F

    iput v1, p0, Lorg/cocos2d/opengl/e;->i:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/opengl/e;->j:Z

    return-void
.end method


# virtual methods
.method public final a(FFF)V
    .locals 1

    iput p1, p0, Lorg/cocos2d/opengl/e;->a:F

    iput p2, p0, Lorg/cocos2d/opengl/e;->b:F

    iput p3, p0, Lorg/cocos2d/opengl/e;->c:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/opengl/e;->j:Z

    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10

    iget-boolean v0, p0, Lorg/cocos2d/opengl/e;->j:Z

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/cocos2d/opengl/e;->a:F

    iget v2, p0, Lorg/cocos2d/opengl/e;->b:F

    iget v3, p0, Lorg/cocos2d/opengl/e;->c:F

    iget v4, p0, Lorg/cocos2d/opengl/e;->d:F

    iget v5, p0, Lorg/cocos2d/opengl/e;->e:F

    iget v6, p0, Lorg/cocos2d/opengl/e;->f:F

    iget v7, p0, Lorg/cocos2d/opengl/e;->g:F

    iget v8, p0, Lorg/cocos2d/opengl/e;->h:F

    iget v9, p0, Lorg/cocos2d/opengl/e;->i:F

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    :cond_0
    return-void
.end method

.method public final a([F[F[F)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lorg/cocos2d/opengl/e;->a:F

    aput v0, p1, v1

    iget v0, p0, Lorg/cocos2d/opengl/e;->b:F

    aput v0, p2, v1

    iget v0, p0, Lorg/cocos2d/opengl/e;->c:F

    aput v0, p3, v1

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lorg/cocos2d/opengl/e;->j:Z

    return v0
.end method

.method public final b([F[F[F)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lorg/cocos2d/opengl/e;->d:F

    aput v0, p1, v1

    iget v0, p0, Lorg/cocos2d/opengl/e;->e:F

    aput v0, p2, v1

    iget v0, p0, Lorg/cocos2d/opengl/e;->f:F

    aput v0, p3, v1

    return-void
.end method

.method public final c([F[F[F)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lorg/cocos2d/opengl/e;->g:F

    aput v0, p1, v1

    iget v0, p0, Lorg/cocos2d/opengl/e;->h:F

    aput v0, p2, v1

    iget v0, p0, Lorg/cocos2d/opengl/e;->i:F

    aput v0, p3, v1

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/cocos2d/m/d;

    invoke-direct {v0}, Lorg/cocos2d/m/d;-><init>()V

    const-string v0, "<%s = %08X | center = (%.2f,%.2f,%.2f)>"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/cocos2d/opengl/e;->d:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lorg/cocos2d/opengl/e;->e:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lorg/cocos2d/opengl/e;->f:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/m/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
