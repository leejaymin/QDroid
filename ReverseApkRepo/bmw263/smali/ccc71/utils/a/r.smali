.class public Lccc71/utils/a/r;
.super Lccc71/utils/a/p;
.source "SourceFile"


# instance fields
.field b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lccc71/utils/a/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)F
    .locals 1
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/view/MotionEvent;)I
    .locals 2
    .parameter

    .prologue
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lccc71/utils/a/r;->b:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lccc71/utils/a/r;->b:I

    .line 14
    return v0
.end method

.method public final c(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lccc71/utils/a/r;->b:I

    .line 27
    return-void
.end method

.method public d(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    return-void
.end method
