.class Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
.super Lorg/appcelerator/titanium/view/TiCompositeLayout;
.source "TiUIScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TiScrollViewLayout"
.end annotation


# static fields
.field private static final AUTO:I = 0x7fffffff


# instance fields
.field protected measuredHeight:I

.field protected measuredWidth:I

.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIScrollView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "arrangement"

    .prologue
    const/4 v0, 0x0

    .line 41
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    .line 42
    invoke-direct {p0, p2, p3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    .line 39
    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredWidth:I

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredHeight:I

    .line 43
    return-void
.end method

.method private calculateAbsoluteBottom(Landroid/view/View;)I
    .locals 4
    .parameter "child"

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 101
    .local v2, p:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const-string v3, "contentHeight"

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getContentProperty(Ljava/lang/String;)I

    move-result v1

    .line 103
    .local v1, contentHeight:I
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_3

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 105
    .local v0, childMeasuredHeight:I
    iget-boolean v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoHeight:Z

    if-nez v3, :cond_0

    .line 106
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v3, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v0

    .line 108
    :cond_0
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v3, :cond_1

    .line 109
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v3, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    add-int/2addr v0, v3

    .line 111
    :cond_1
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v3, :cond_2

    .line 112
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v3, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    add-int/2addr v0, v3

    .line 115
    :cond_2
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredHeight:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredHeight:I

    .line 119
    .end local v0           #childMeasuredHeight:I
    :goto_0
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredHeight:I

    return v3

    .line 117
    :cond_3
    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredHeight:I

    goto :goto_0
.end method

.method private calculateAbsoluteRight(Landroid/view/View;)I
    .locals 4
    .parameter "child"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getParams(Landroid/view/View;)Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v2

    .line 77
    .local v2, p:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const-string v3, "contentWidth"

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getContentProperty(Ljava/lang/String;)I

    move-result v1

    .line 78
    .local v1, contentWidth:I
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_3

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 80
    .local v0, childMeasuredWidth:I
    iget-boolean v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoWidth:Z

    if-nez v3, :cond_0

    .line 81
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v3, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v0

    .line 83
    :cond_0
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v3, :cond_1

    .line 84
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v3, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    add-int/2addr v0, v3

    .line 86
    :cond_1
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v3, :cond_2

    .line 87
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v3, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    add-int/2addr v0, v3

    .line 90
    :cond_2
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredWidth:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredWidth:I

    .line 95
    .end local v0           #childMeasuredWidth:I
    :goto_0
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredWidth:I

    return v3

    .line 92
    :cond_3
    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredWidth:I

    goto :goto_0
.end method

.method private getContentProperty(Ljava/lang/String;)I
    .locals 3
    .parameter "property"

    .prologue
    const v2, 0x7fffffff

    .line 63
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    .local v0, value:Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 65
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 71
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .line 67
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 68
    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    move v1, v2

    .line 71
    goto :goto_0
.end method

.method private getParams(Landroid/view/View;)Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .locals 0
    .parameter "child"

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    return-object p0
.end method


# virtual methods
.method protected constrainChild(Landroid/view/View;IIII)V
    .locals 2
    .parameter "child"
    .parameter "width"
    .parameter "wMode"
    .parameter "height"
    .parameter "hMode"

    .prologue
    .line 126
    invoke-super/range {p0 .. p5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->constrainChild(Landroid/view/View;IIII)V

    .line 132
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->calculateAbsoluteRight(Landroid/view/View;)I

    move-result v1

    .line 133
    .local v1, absWidth:I
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->calculateAbsoluteBottom(Landroid/view/View;)I

    move-result v0

    .line 134
    .local v0, absHeight:I
    return-void
.end method

.method protected getHeightMeasureSpec(Landroid/view/View;)I
    .locals 2
    .parameter "child"

    .prologue
    .line 147
    const-string v1, "contentHeight"

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getContentProperty(Ljava/lang/String;)I

    move-result v0

    .line 148
    .local v0, contentHeight:I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 149
    const/4 v1, 0x0

    .line 150
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getHeightMeasureSpec(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method protected getMeasuredHeight(II)I
    .locals 2
    .parameter "maxHeight"
    .parameter "heightSpec"

    .prologue
    .line 163
    const-string v1, "contentHeight"

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getContentProperty(Ljava/lang/String;)I

    move-result v0

    .line 164
    .local v0, contentHeight:I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    move v1, p1

    .line 167
    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method protected getMeasuredWidth(II)I
    .locals 2
    .parameter "maxWidth"
    .parameter "widthSpec"

    .prologue
    .line 155
    const-string v1, "contentWidth"

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getContentProperty(Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, contentWidth:I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    move v1, p1

    .line 158
    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method protected getWidthMeasureSpec(Landroid/view/View;)I
    .locals 2
    .parameter "child"

    .prologue
    .line 139
    const-string v1, "contentWidth"

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getContentProperty(Ljava/lang/String;)I

    move-result v0

    .line 140
    .local v0, contentWidth:I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 141
    const/4 v1, 0x0

    .line 142
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getWidthMeasureSpec(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 51
    invoke-super/range {p0 .. p5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->onLayout(ZIIII)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredWidth:I

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredHeight:I

    .line 53
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->onMeasure(II)V

    .line 59
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredWidth:I

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredHeight:I

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->setMeasuredDimension(II)V

    .line 60
    return-void
.end method
