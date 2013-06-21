.class public Lorg/cocos2d/a/f/i;
.super Lorg/cocos2d/a/a/b;


# static fields
.field static final synthetic m:Z


# instance fields
.field private c:Z

.field protected l:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/a/f/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/a/f/i;->m:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(F)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/a/b;-><init>(F)V

    iget v0, p0, Lorg/cocos2d/a/f/i;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const v0, 0x358637bd

    iput v0, p0, Lorg/cocos2d/a/f/i;->b:F

    :cond_0
    iput v1, p0, Lorg/cocos2d/a/f/i;->l:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/a/f/i;->c:Z

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 3

    iget-boolean v0, p0, Lorg/cocos2d/a/f/i;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/a/f/i;->c:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/a/f/i;->l:F

    :goto_0
    const/high16 v0, 0x3f80

    iget v1, p0, Lorg/cocos2d/a/f/i;->l:F

    iget v2, p0, Lorg/cocos2d/a/f/i;->b:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/a/f/i;->b(F)V

    return-void

    :cond_0
    iget v0, p0, Lorg/cocos2d/a/f/i;->l:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/cocos2d/a/f/i;->l:F

    goto :goto_0
.end method

.method public a(Lorg/cocos2d/g/i;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/cocos2d/a/a/b;->a(Lorg/cocos2d/g/i;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/a/f/i;->l:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/a/f/i;->c:Z

    return-void
.end method

.method public e()Z
    .locals 2

    iget v0, p0, Lorg/cocos2d/a/f/i;->l:F

    iget v1, p0, Lorg/cocos2d/a/f/i;->b:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic h()Lorg/cocos2d/a/a/b;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lorg/cocos2d/a/a/b;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v0

    return-object v0
.end method

.method public k()Lorg/cocos2d/a/f/i;
    .locals 2

    sget-boolean v0, Lorg/cocos2d/a/f/i;->m:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Reverse action not implemented"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Lorg/cocos2d/a/f/i;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/f/i;

    iget v1, p0, Lorg/cocos2d/a/f/i;->b:F

    invoke-direct {v0, v1}, Lorg/cocos2d/a/f/i;-><init>(F)V

    return-object v0
.end method

.method public final p()F
    .locals 1

    iget v0, p0, Lorg/cocos2d/a/f/i;->l:F

    return v0
.end method
