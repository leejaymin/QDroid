.class public Lcom/kms/gui/TwoColumnInfoPanel;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/kms/gui/TwoColumnInfoPanel;->getChildCount()I

    move-result v3

    .line 89
    invoke-virtual {p0}, Lcom/kms/gui/TwoColumnInfoPanel;->getPaddingTop()I

    move-result v0

    add-int v1, p3, v0

    .line 91
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 93
    rem-int/lit8 v4, v2, 0x2

    .line 94
    invoke-virtual {p0}, Lcom/kms/gui/TwoColumnInfoPanel;->getPaddingLeft()I

    move-result v0

    iget v5, p0, Lcom/kms/gui/TwoColumnInfoPanel;->a:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v0

    .line 95
    if-nez v4, :cond_0

    iget v0, p0, Lcom/kms/gui/TwoColumnInfoPanel;->a:I

    add-int/2addr v0, v5

    .line 96
    :goto_1
    invoke-virtual {p0, v2}, Lcom/kms/gui/TwoColumnInfoPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 97
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v6, v5, v1, v0, v7}, Landroid/view/View;->layout(IIII)V

    .line 98
    const/4 v0, 0x1

    if-ne v4, v0, :cond_2

    .line 100
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Lcom/kms/gui/TwoColumnInfoPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v1

    .line 91
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, p4

    .line 95
    goto :goto_1

    .line 103
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/kms/gui/TwoColumnInfoPanel;->getChildCount()I

    move-result v5

    .line 35
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/kms/gui/TwoColumnInfoPanel;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/kms/gui/TwoColumnInfoPanel;->getPaddingRight()I

    move-result v1

    sub-int v6, v0, v1

    .line 36
    div-int/lit8 v2, v6, 0x2

    move v3, v4

    move v1, v4

    .line 41
    :goto_0
    if-ge v3, v5, :cond_1

    .line 44
    invoke-virtual {p0, v3}, Lcom/kms/gui/TwoColumnInfoPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 45
    instance-of v7, v0, Landroid/widget/TextView;

    if-nez v7, :cond_0

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only TextView childs are allowed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    check-cast v0, Landroid/widget/TextView;

    .line 50
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 52
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v7

    .line 53
    if-le v0, v1, :cond_6

    .line 41
    :goto_1
    add-int/lit8 v1, v3, 0x2

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 60
    :cond_1
    if-le v1, v2, :cond_2

    move v1, v2

    .line 64
    :cond_2
    iput v1, p0, Lcom/kms/gui/TwoColumnInfoPanel;->a:I

    move v3, v4

    move v2, v4

    .line 67
    :goto_2
    if-ge v3, v5, :cond_4

    .line 69
    invoke-virtual {p0, v3}, Lcom/kms/gui/TwoColumnInfoPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 70
    rem-int/lit8 v0, v3, 0x2

    if-nez v0, :cond_3

    move v0, v1

    .line 71
    :goto_3
    const/high16 v8, 0x4000

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 72
    const/4 v9, -0x2

    invoke-static {v9, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 73
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 74
    invoke-virtual {p0, v7, v8, v9}, Lcom/kms/gui/TwoColumnInfoPanel;->measureChild(Landroid/view/View;II)V

    .line 75
    rem-int/lit8 v0, v3, 0x2

    const/4 v7, 0x1

    if-ne v0, v7, :cond_5

    .line 77
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Lcom/kms/gui/TwoColumnInfoPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v3}, Lcom/kms/gui/TwoColumnInfoPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v2

    .line 67
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_2

    .line 70
    :cond_3
    sub-int v0, v6, v1

    goto :goto_3

    .line 80
    :cond_4
    invoke-virtual {p0}, Lcom/kms/gui/TwoColumnInfoPanel;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/kms/gui/TwoColumnInfoPanel;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 81
    invoke-static {v0, p2}, Lcom/kms/gui/TwoColumnInfoPanel;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/kms/gui/TwoColumnInfoPanel;->setMeasuredDimension(II)V

    .line 82
    return-void

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_1
.end method
