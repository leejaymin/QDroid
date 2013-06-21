.class public Lorg/tf/gl/GLRect;
.super Ljava/lang/Object;
.source "GLRect.java"


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0, v0, v0, v0}, Lorg/tf/gl/GLRect;-><init>(FFFF)V

    .line 24
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lorg/tf/gl/GLRect;->x:F

    .line 27
    iput p2, p0, Lorg/tf/gl/GLRect;->y:F

    .line 28
    iput p3, p0, Lorg/tf/gl/GLRect;->width:F

    .line 29
    iput p4, p0, Lorg/tf/gl/GLRect;->height:F

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/tf/gl/GLRect;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget v0, p1, Lorg/tf/gl/GLRect;->x:F

    iput v0, p0, Lorg/tf/gl/GLRect;->x:F

    .line 33
    iget v0, p1, Lorg/tf/gl/GLRect;->y:F

    iput v0, p0, Lorg/tf/gl/GLRect;->y:F

    .line 34
    iget v0, p1, Lorg/tf/gl/GLRect;->width:F

    iput v0, p0, Lorg/tf/gl/GLRect;->width:F

    .line 35
    iget v0, p1, Lorg/tf/gl/GLRect;->height:F

    iput v0, p0, Lorg/tf/gl/GLRect;->height:F

    .line 36
    return-void
.end method


# virtual methods
.method public centerX()F
    .locals 3

    .prologue
    .line 39
    iget v0, p0, Lorg/tf/gl/GLRect;->x:F

    iget v1, p0, Lorg/tf/gl/GLRect;->width:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public centerY()F
    .locals 3

    .prologue
    .line 42
    iget v0, p0, Lorg/tf/gl/GLRect;->y:F

    iget v1, p0, Lorg/tf/gl/GLRect;->height:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method
