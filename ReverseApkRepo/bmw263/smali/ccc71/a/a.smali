.class public final Lccc71/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 26
    sget v0, Lccc71/a/d;->a:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    .line 27
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/google/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 33
    :try_start_0
    invoke-virtual {v0}, Lcom/google/ads/AdView;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 43
    :try_start_1
    invoke-virtual {v0}, Lcom/google/ads/AdView;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 52
    :cond_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, -0x1

    .line 56
    sget v0, Lccc71/a/d;->a:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    .line 57
    if-nez v0, :cond_1

    .line 59
    invoke-static {p0}, Lccc71/a/e;->b(Landroid/content/Context;)Z

    move-result v2

    .line 60
    new-instance v3, Lcom/google/ads/AdView;

    if-eqz v2, :cond_2

    sget-object v0, Lcom/google/ads/g;->e:Lcom/google/ads/g;

    :goto_0
    invoke-direct {v3, p0, v0, p1}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V

    .line 62
    sget v0, Lccc71/a/d;->a:I

    invoke-virtual {v3, v0}, Lcom/google/ads/AdView;->setId(I)V

    .line 63
    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Lcom/google/ads/AdView;->setGravity(I)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 66
    const/4 v4, 0x1

    if-eqz v2, :cond_3

    const/16 v0, 0x5a

    :goto_1
    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v4, v0

    .line 68
    sget v0, Lccc71/a/d;->c:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 69
    sget v1, Lccc71/a/d;->b:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 70
    if-nez v1, :cond_0

    .line 72
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    sget v5, Lccc71/a/d;->b:I

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 75
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76
    if-eqz p5, :cond_5

    .line 78
    if-eqz v2, :cond_4

    :goto_2
    invoke-virtual {v5, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    new-instance v2, Lccc71/a/b;

    invoke-direct {v2, p4, p0, p5}, Lccc71/a/b;-><init>(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 117
    :goto_3
    :try_start_0
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v2, v6, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_4
    if-eqz v0, :cond_0

    .line 124
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v7, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v0, Lcom/google/ads/d;

    invoke-direct {v0}, Lcom/google/ads/d;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/ads/AdView;->a(Lcom/google/ads/d;)V

    .line 130
    :cond_1
    return-void

    .line 60
    :cond_2
    sget-object v0, Lcom/google/ads/g;->b:Lcom/google/ads/g;

    goto :goto_0

    .line 66
    :cond_3
    const/16 v0, 0x32

    goto :goto_1

    :cond_4
    move p3, p2

    .line 78
    goto :goto_2

    .line 112
    :cond_5
    const v2, 0x108006d

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_4
.end method
