.class final Lccc71/bmw/lib/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_batteries;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_batteries;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/j;->a:Lccc71/bmw/lib/bmw_batteries;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTabChanged(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/high16 v7, -0x100

    .line 135
    const/4 v0, 0x4

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lccc71/bmw/lib/j;->a:Lccc71/bmw/lib/bmw_batteries;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_batteries;->a(Lccc71/bmw/lib/bmw_batteries;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v3

    .line 138
    iget-object v0, p0, Lccc71/bmw/lib/j;->a:Lccc71/bmw/lib/bmw_batteries;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_batteries;->a(Lccc71/bmw/lib/bmw_batteries;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    .line 139
    invoke-static {}, Lccc71/utils/a/l;->a()Lccc71/utils/a/l;

    move-result-object v1

    .line 140
    invoke-virtual {v1, v0}, Lccc71/utils/a/l;->a(Landroid/widget/TabWidget;)I

    move-result v4

    .line 141
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 160
    :cond_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lccc71/bmw/lib/j;->a:Lccc71/bmw/lib/bmw_batteries;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_batteries;->b(Lccc71/bmw/lib/bmw_batteries;)[Landroid/widget/LinearLayout;

    move-result-object v0

    aget-object v5, v0, v2

    .line 144
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 145
    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 146
    if-ne v2, v3, :cond_2

    .line 148
    const v6, -0xbbbbbc

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 149
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 141
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 155
    const v5, -0x333334

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    const v1, -0x777778

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method
