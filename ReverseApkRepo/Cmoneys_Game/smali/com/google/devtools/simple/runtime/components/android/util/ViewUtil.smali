.class public final Lcom/google/devtools/simple/runtime/components/android/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 186
    return-void
.end method

.method public static setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 170
    return-void
.end method

.method public static setChildHeightForHorizontalLayout(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "height"

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 54
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 55
    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v0

    .line 56
    .local v2, linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 64
    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 67
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 71
    .end local v2           #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return-void

    .line 58
    .restart local v2       #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 61
    :pswitch_1
    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 69
    .end local v2           #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const-string v3, "ViewUtil"

    const-string v4, "The view does not have linear layout parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 56
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildHeightForTableLayout(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "height"

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 145
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/widget/TableRow$LayoutParams;

    if-eqz v3, :cond_0

    .line 146
    move-object v0, v1

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    move-object v2, v0

    .line 147
    .local v2, tableLayoutParams:Landroid/widget/TableRow$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 155
    iput p1, v2, Landroid/widget/TableRow$LayoutParams;->height:I

    .line 158
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 162
    .end local v2           #tableLayoutParams:Landroid/widget/TableRow$LayoutParams;
    :goto_1
    return-void

    .line 149
    .restart local v2       #tableLayoutParams:Landroid/widget/TableRow$LayoutParams;
    :pswitch_0
    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/TableRow$LayoutParams;->height:I

    goto :goto_0

    .line 152
    :pswitch_1
    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/TableRow$LayoutParams;->height:I

    goto :goto_0

    .line 160
    .end local v2           #tableLayoutParams:Landroid/widget/TableRow$LayoutParams;
    :cond_0
    const-string v3, "ViewUtil"

    const-string v4, "The view does not have table layout parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 147
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildHeightForVerticalLayout(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 100
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 101
    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v0

    .line 102
    .local v2, linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 112
    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 113
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 116
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 120
    .end local v2           #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return-void

    .line 104
    .restart local v2       #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 105
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 108
    :pswitch_1
    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 109
    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 118
    .end local v2           #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const-string v3, "ViewUtil"

    const-string v4, "The view does not have linear layout parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 102
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildWidthForHorizontalLayout(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "width"

    .prologue
    const/4 v4, 0x0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 28
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 29
    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v0

    .line 30
    .local v2, linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 40
    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 41
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 44
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 48
    .end local v2           #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return-void

    .line 32
    .restart local v2       #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 33
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 36
    :pswitch_1
    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 37
    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 46
    .end local v2           #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const-string v3, "ViewUtil"

    const-string v4, "The view does not have linear layout parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 30
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildWidthForTableLayout(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "width"

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 124
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/widget/TableRow$LayoutParams;

    if-eqz v3, :cond_0

    .line 125
    move-object v0, v1

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    move-object v2, v0

    .line 126
    .local v2, tableLayoutParams:Landroid/widget/TableRow$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 134
    iput p1, v2, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 137
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 141
    .end local v2           #tableLayoutParams:Landroid/widget/TableRow$LayoutParams;
    :goto_1
    return-void

    .line 128
    .restart local v2       #tableLayoutParams:Landroid/widget/TableRow$LayoutParams;
    :pswitch_0
    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    .line 131
    :pswitch_1
    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    .line 139
    .end local v2           #tableLayoutParams:Landroid/widget/TableRow$LayoutParams;
    :cond_0
    const-string v3, "ViewUtil"

    const-string v4, "The view does not have table layout parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 126
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildWidthForVerticalLayout(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "width"

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 77
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 78
    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v0

    .line 79
    .local v2, linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 87
    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 90
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 94
    .end local v2           #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return-void

    .line 81
    .restart local v2       #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 84
    :pswitch_1
    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 92
    .end local v2           #linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const-string v3, "ViewUtil"

    const-string v4, "The view does not have linear layout parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 79
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    if-eqz p1, :cond_0

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 180
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 181
    return-void
.end method
