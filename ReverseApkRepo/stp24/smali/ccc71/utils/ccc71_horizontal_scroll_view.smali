.class public Lccc71/utils/ccc71_horizontal_scroll_view;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 11
    iput v0, p0, Lccc71/utils/ccc71_horizontal_scroll_view;->a:I

    .line 12
    iput v0, p0, Lccc71/utils/ccc71_horizontal_scroll_view;->b:I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    iput v0, p0, Lccc71/utils/ccc71_horizontal_scroll_view;->a:I

    .line 12
    iput v0, p0, Lccc71/utils/ccc71_horizontal_scroll_view;->b:I

    .line 22
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
    const/4 v1, 0x0

    .line 27
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 29
    invoke-virtual {p0}, Lccc71/utils/ccc71_horizontal_scroll_view;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Lccc71/utils/ccc71_horizontal_scroll_view;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    iget v3, p0, Lccc71/utils/ccc71_horizontal_scroll_view;->a:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lccc71/utils/ccc71_horizontal_scroll_view;->b:I

    invoke-virtual {p0}, Lccc71/utils/ccc71_horizontal_scroll_view;->getWidth()I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    iput v3, p0, Lccc71/utils/ccc71_horizontal_scroll_view;->a:I

    invoke-virtual {p0}, Lccc71/utils/ccc71_horizontal_scroll_view;->getWidth()I

    move-result v3

    iput v3, p0, Lccc71/utils/ccc71_horizontal_scroll_view;->b:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lccc71/utils/ccc71_horizontal_scroll_view;->getWidth()I

    move-result v4

    if-gt v3, v4, :cond_5

    invoke-virtual {p0}, Lccc71/utils/ccc71_horizontal_scroll_view;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    :goto_0
    if-lt v1, v2, :cond_2

    :goto_1
    new-instance v0, Lccc71/utils/y;

    invoke-direct {v0, p0}, Lccc71/utils/y;-><init>(Lccc71/utils/ccc71_horizontal_scroll_view;)V

    invoke-virtual {p0, v0}, Lccc71/utils/ccc71_horizontal_scroll_view;->post(Ljava/lang/Runnable;)Z

    .line 30
    :cond_1
    return-void

    .line 29
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    if-ltz v5, :cond_3

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v6, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v6}, Landroid/widget/LinearLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    :cond_5
    if-lt v1, v2, :cond_4

    goto :goto_1
.end method
