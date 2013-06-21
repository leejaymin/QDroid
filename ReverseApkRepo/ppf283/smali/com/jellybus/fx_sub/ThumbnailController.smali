.class public Lcom/jellybus/fx_sub/ThumbnailController;
.super Ljava/lang/Object;
.source "ThumbnailController.java"


# instance fields
.field private isViewSet:Z

.field private shownH:I

.field private shownViewRatio:F

.field private shownW:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkShownSetting()V
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/jellybus/fx_sub/ThumbnailController;->shownW:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jellybus/fx_sub/ThumbnailController;->shownH:I

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jellybus/fx_sub/ThumbnailController;->isViewSet:Z

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public getShownHeight()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/jellybus/fx_sub/ThumbnailController;->shownH:I

    return v0
.end method

.method public getShownRatio()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/jellybus/fx_sub/ThumbnailController;->shownViewRatio:F

    return v0
.end method

.method public getShownWidth()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/jellybus/fx_sub/ThumbnailController;->shownW:I

    return v0
.end method

.method public isViewSet()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/ThumbnailController;->isViewSet:Z

    return v0
.end method

.method public setScaleShownSize(IIII)V
    .locals 5
    .parameter "thumbW"
    .parameter "thumbH"
    .parameter "view_width"
    .parameter "view_height"

    .prologue
    .line 19
    if-gt p1, p3, :cond_0

    if-le p2, p4, :cond_2

    .line 21
    :cond_0
    int-to-float v3, p3

    int-to-float v4, p1

    div-float v2, v3, v4

    .line 22
    .local v2, ratio_w:F
    int-to-float v3, p4

    int-to-float v4, p2

    div-float v1, v3, v4

    .line 23
    .local v1, ratio_h:F
    cmpg-float v3, v2, v1

    if-gez v3, :cond_1

    .line 24
    int-to-float v3, p3

    int-to-float v4, p1

    div-float v0, v3, v4

    .line 28
    .local v0, ratio:F
    :goto_0
    int-to-float v3, p1

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/jellybus/fx_sub/ThumbnailController;->shownW:I

    .line 29
    int-to-float v3, p2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/jellybus/fx_sub/ThumbnailController;->shownH:I

    .line 30
    iput v0, p0, Lcom/jellybus/fx_sub/ThumbnailController;->shownViewRatio:F

    .line 49
    .end local v0           #ratio:F
    .end local v1           #ratio_h:F
    .end local v2           #ratio_w:F
    :goto_1
    invoke-direct {p0}, Lcom/jellybus/fx_sub/ThumbnailController;->checkShownSetting()V

    .line 50
    return-void

    .line 26
    .restart local v1       #ratio_h:F
    .restart local v2       #ratio_w:F
    :cond_1
    int-to-float v3, p4

    int-to-float v4, p2

    div-float v0, v3, v4

    .restart local v0       #ratio:F
    goto :goto_0

    .line 31
    .end local v0           #ratio:F
    .end local v1           #ratio_h:F
    .end local v2           #ratio_w:F
    :cond_2
    if-eq p1, p3, :cond_3

    if-ne p2, p4, :cond_4

    .line 32
    :cond_3
    iput p1, p0, Lcom/jellybus/fx_sub/ThumbnailController;->shownW:I

    .line 33
    iput p2, p0, Lcom/jellybus/fx_sub/ThumbnailController;->shownH:I

    .line 34
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/jellybus/fx_sub/ThumbnailController;->shownViewRatio:F

    goto :goto_1

    .line 38
    :cond_4
    int-to-float v3, p3

    int-to-float v4, p1

    div-float v2, v3, v4

    .line 39
    .restart local v2       #ratio_w:F
    int-to-float v3, p4

    int-to-float v4, p2

    div-float v1, v3, v4

    .line 40
    .restart local v1       #ratio_h:F
    cmpg-float v3, v2, v1

    if-gez v3, :cond_5

    .line 41
    int-to-float v3, p3

    int-to-float v4, p1

    div-float v0, v3, v4

    .line 45
    .restart local v0       #ratio:F
    :goto_2
    int-to-float v3, p1

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/jellybus/fx_sub/ThumbnailController;->shownW:I

    .line 46
    int-to-float v3, p2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/jellybus/fx_sub/ThumbnailController;->shownH:I

    .line 47
    iput v0, p0, Lcom/jellybus/fx_sub/ThumbnailController;->shownViewRatio:F

    goto :goto_1

    .line 43
    .end local v0           #ratio:F
    :cond_5
    int-to-float v3, p4

    int-to-float v4, p2

    div-float v0, v3, v4

    .restart local v0       #ratio:F
    goto :goto_2
.end method
