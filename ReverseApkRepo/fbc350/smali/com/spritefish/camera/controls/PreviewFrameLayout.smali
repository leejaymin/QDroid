.class public Lcom/spritefish/camera/controls/PreviewFrameLayout;
.super Landroid/view/ViewGroup;
.source "PreviewFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spritefish/camera/controls/PreviewFrameLayout$OnSizeChangedListener;
    }
.end annotation


# static fields
.field private static final MIN_HORIZONTAL_MARGIN:I = 0xa


# instance fields
.field private mAspectRatio:D

.field private mFrame:Landroid/widget/FrameLayout;

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private mSizeListener:Lcom/spritefish/camera/controls/PreviewFrameLayout$OnSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const-wide v0, 0x3ff5555555555555L

    iput-wide v0, p0, Lcom/spritefish/camera/controls/PreviewFrameLayout;->mAspectRatio:D

    .line 27
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/spritefish/camera/controls/PreviewFrameLayout;->mMetrics:Landroid/util/DisplayMetrics;

    .line 31
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/spritefish/camera/controls/PreviewFrameLayout;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "theframe"

    invoke-virtual {p0, v0}, Lcom/spritefish/camera/controls/PreviewFrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/spritefish/camera/controls/PreviewFrameLayout;->mFrame:Landroid/widget/FrameLayout;

    .line 42
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewFrameLayout;->mFrame:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    const-string v1, "must provide child with tag as \"frame\""

    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/spritefish/camera/controls/PreviewFrameLayout;->isInEditMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/spritefish/camera/controls/PreviewFrameLayout;->getWidth()I

    move-result v2

    .line 63
    .local v2, frameWidth:I
    invoke-virtual {p0}, Lcom/spritefish/camera/controls/PreviewFrameLayout;->getHeight()I

    move-result v1

    .line 65
    .local v1, frameHeight:I
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewFrameLayout;->mFrame:Landroid/widget/FrameLayout;

    .line 66
    .local v0, f:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v10

    add-int v4, v9, v10

    .line 67
    .local v4, horizontalPadding:I
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v10

    add-int v8, v9, v10

    .line 68
    .local v8, verticalPadding:I
    sub-int v5, v1, v8

    .line 69
    .local v5, previewHeight:I
    sub-int v6, v2, v4

    .line 72
    .local v6, previewWidth:I
    int-to-double v9, v6

    int-to-double v11, v5

    iget-wide v13, p0, Lcom/spritefish/camera/controls/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v11, v13

    cmpl-double v9, v9, v11

    if-lez v9, :cond_2

    .line 73
    int-to-double v9, v5

    iget-wide v11, p0, Lcom/spritefish/camera/controls/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x3fe0

    add-double/2addr v9, v11

    double-to-int v6, v9

    .line 77
    :goto_1
    add-int v2, v6, v4

    .line 78
    add-int v1, v5, v8

    .line 80
    const-string v9, "gylle"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "layout width = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ratio = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/spritefish/camera/controls/PreviewFrameLayout;->mAspectRatio:D

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sub-int v9, p4, p2

    sub-int/2addr v9, v2

    div-int/lit8 v3, v9, 0x2

    .line 82
    .local v3, hSpace:I
    sub-int v9, p5, p3

    sub-int/2addr v9, v1

    div-int/lit8 v7, v9, 0x2

    .line 83
    .local v7, vSpace:I
    iget-object v9, p0, Lcom/spritefish/camera/controls/PreviewFrameLayout;->mFrame:Landroid/widget/FrameLayout;

    .line 84
    const/high16 v10, 0x4000

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 85
    const/high16 v11, 0x4000

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 83
    invoke-virtual {v9, v10, v11}, Landroid/widget/FrameLayout;->measure(II)V

    .line 86
    iget-object v9, p0, Lcom/spritefish/camera/controls/PreviewFrameLayout;->mFrame:Landroid/widget/FrameLayout;

    add-int v10, p2, v3

    add-int v11, p3, v7

    sub-int v12, p4, v3

    sub-int v13, p5, v7

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 87
    iget-object v9, p0, Lcom/spritefish/camera/controls/PreviewFrameLayout;->mSizeListener:Lcom/spritefish/camera/controls/PreviewFrameLayout$OnSizeChangedListener;

    if-eqz v9, :cond_0

    .line 88
    iget-object v9, p0, Lcom/spritefish/camera/controls/PreviewFrameLayout;->mSizeListener:Lcom/spritefish/camera/controls/PreviewFrameLayout$OnSizeChangedListener;

    invoke-interface {v9}, Lcom/spritefish/camera/controls/PreviewFrameLayout$OnSizeChangedListener;->onSizeChanged()V

    goto/16 :goto_0

    .line 75
    .end local v3           #hSpace:I
    .end local v7           #vSpace:I
    :cond_2
    int-to-double v9, v6

    iget-wide v11, p0, Lcom/spritefish/camera/controls/PreviewFrameLayout;->mAspectRatio:D

    div-double/2addr v9, v11

    const-wide/high16 v11, 0x3fe0

    add-double/2addr v9, v11

    double-to-int v5, v9

    goto :goto_1
.end method

.method public setAspectRatio(D)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_0
    iget-wide v0, p0, Lcom/spritefish/camera/controls/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_1

    .line 52
    iput-wide p1, p0, Lcom/spritefish/camera/controls/PreviewFrameLayout;->mAspectRatio:D

    .line 53
    invoke-virtual {p0}, Lcom/spritefish/camera/controls/PreviewFrameLayout;->requestLayout()V

    .line 55
    :cond_1
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/spritefish/camera/controls/PreviewFrameLayout$OnSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/spritefish/camera/controls/PreviewFrameLayout;->mSizeListener:Lcom/spritefish/camera/controls/PreviewFrameLayout$OnSizeChangedListener;

    .line 37
    return-void
.end method
