.class final Lccc71/utils/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field final synthetic a:Lccc71/utils/a/l;


# direct methods
.method constructor <init>(Lccc71/utils/a/l;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/a/m;->a:Lccc71/utils/a/l;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTabChanged(Ljava/lang/String;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v9, -0x1

    .line 116
    const/4 v0, 0x4

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lccc71/utils/a/m;->a:Lccc71/utils/a/l;

    invoke-static {v0}, Lccc71/utils/a/l;->a(Lccc71/utils/a/l;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v4

    .line 119
    iget-object v0, p0, Lccc71/utils/a/m;->a:Lccc71/utils/a/l;

    invoke-static {v0}, Lccc71/utils/a/l;->a(Lccc71/utils/a/l;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    .line 120
    invoke-static {}, Lccc71/utils/a/l;->a()Lccc71/utils/a/l;

    move-result-object v1

    .line 121
    invoke-virtual {v1, v0}, Lccc71/utils/a/l;->a(Landroid/widget/TabWidget;)I

    move-result v5

    move v2, v3

    .line 122
    :goto_0
    if-lt v2, v5, :cond_1

    .line 143
    :cond_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lccc71/utils/a/m;->a:Lccc71/utils/a/l;

    invoke-static {v0}, Lccc71/utils/a/l;->b(Lccc71/utils/a/l;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 125
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 126
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 127
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 128
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 129
    if-ne v2, v4, :cond_2

    .line 131
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x4040

    iget-object v8, p0, Lccc71/utils/a/m;->a:Lccc71/utils/a/l;

    invoke-static {v8}, Lccc71/utils/a/l;->c(Lccc71/utils/a/l;)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v1, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    const/high16 v1, -0x100

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 122
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 137
    :cond_2
    const v7, -0x333334

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f80

    iget-object v8, p0, Lccc71/utils/a/m;->a:Lccc71/utils/a/l;

    invoke-static {v8}, Lccc71/utils/a/l;->c(Lccc71/utils/a/l;)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v1, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    const v1, -0x777778

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method
