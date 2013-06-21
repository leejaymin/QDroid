.class public Lorg/cocos2d/k/aa;
.super Lorg/cocos2d/e/d;


# static fields
.field static final synthetic g:Z


# instance fields
.field protected b:Lorg/cocos2d/e/d;

.field protected c:Lorg/cocos2d/e/d;

.field protected d:F

.field protected e:Z

.field protected f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/k/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/k/aa;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final F()V
    .locals 1

    invoke-super {p0}, Lorg/cocos2d/e/d;->F()V

    iget-boolean v0, p0, Lorg/cocos2d/k/aa;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/k/aa;->c:Lorg/cocos2d/e/d;

    invoke-virtual {v0}, Lorg/cocos2d/e/d;->F()V

    :cond_0
    return-void
.end method

.method public final G()V
    .locals 0

    invoke-super {p0}, Lorg/cocos2d/e/d;->G()V

    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget-boolean v0, p0, Lorg/cocos2d/k/aa;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/k/aa;->c:Lorg/cocos2d/e/d;

    invoke-virtual {v0, p1}, Lorg/cocos2d/e/d;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lorg/cocos2d/k/aa;->b:Lorg/cocos2d/e/d;

    invoke-virtual {v0, p1}, Lorg/cocos2d/e/d;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/k/aa;->b:Lorg/cocos2d/e/d;

    invoke-virtual {v0, p1}, Lorg/cocos2d/e/d;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lorg/cocos2d/k/aa;->c:Lorg/cocos2d/e/d;

    invoke-virtual {v0, p1}, Lorg/cocos2d/e/d;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0
.end method

.method public a_()V
    .locals 1

    invoke-super {p0}, Lorg/cocos2d/e/d;->a_()V

    iget-object v0, p0, Lorg/cocos2d/k/aa;->b:Lorg/cocos2d/e/d;

    invoke-virtual {v0}, Lorg/cocos2d/e/d;->a_()V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/k/aa;->b:Lorg/cocos2d/e/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2d/e/d;->c(Z)V

    iget-object v0, p0, Lorg/cocos2d/k/aa;->c:Lorg/cocos2d/e/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/e/d;->c(Z)V

    return-void
.end method

.method public g()V
    .locals 1

    invoke-super {p0}, Lorg/cocos2d/e/d;->g()V

    iget-object v0, p0, Lorg/cocos2d/k/aa;->c:Lorg/cocos2d/e/d;

    invoke-virtual {v0}, Lorg/cocos2d/e/d;->g()V

    iget-object v0, p0, Lorg/cocos2d/k/aa;->b:Lorg/cocos2d/e/d;

    invoke-virtual {v0}, Lorg/cocos2d/e/d;->G()V

    return-void
.end method
