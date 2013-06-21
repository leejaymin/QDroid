.class public Lccc71/bmw/lib/bmw_batteries;
.super Lccc71/utils/ccc71_license_tabactivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TabHost;

.field private b:[Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TabHost$OnTabChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lccc71/utils/ccc71_license_tabactivity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/bmw/lib/bmw_batteries;->a:Landroid/widget/TabHost;

    .line 130
    new-instance v0, Lccc71/bmw/lib/j;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/j;-><init>(Lccc71/bmw/lib/bmw_batteries;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_batteries;->c:Landroid/widget/TabHost$OnTabChangeListener;

    .line 22
    return-void
.end method

.method private a(IIIZZ)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x3f80

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 33
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 36
    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 38
    if-eqz p5, :cond_0

    .line 39
    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 41
    :cond_0
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/high16 v6, 0x3f80

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 47
    if-eqz p5, :cond_2

    .line 48
    const/high16 v3, -0x100

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 52
    :goto_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 54
    iget-object v2, p0, Lccc71/bmw/lib/bmw_batteries;->b:[Landroid/widget/LinearLayout;

    aput-object v1, v2, p3

    .line 56
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 58
    if-eqz p5, :cond_3

    .line 59
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    :goto_1
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 63
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 64
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/high16 v6, 0x3f80

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    if-eqz p4, :cond_1

    .line 71
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 72
    sget v3, Lccc71/bmw/lib/c;->F:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 73
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 79
    sget v2, Lccc71/bmw/lib/c;->F:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 80
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    return-object v0

    .line 50
    :cond_2
    const v3, -0x777778

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 61
    :cond_3
    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_batteries;)Landroid/widget/TabHost;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lccc71/bmw/lib/bmw_batteries;->a:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic b(Lccc71/bmw/lib/bmw_batteries;)[Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lccc71/bmw/lib/bmw_batteries;->b:[Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 89
    invoke-super {p0, p1}, Lccc71/utils/ccc71_license_tabactivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    sget v0, Lccc71/bmw/lib/e;->aX:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_batteries;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_batteries;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lccc71/bmw/lib/bmw_batteries;->a:Landroid/widget/TabHost;

    .line 98
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->c(Landroid/content/Context;)I

    move-result v11

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lccc71/bmw/lib/bmw_batteries;->b:[Landroid/widget/LinearLayout;

    .line 102
    invoke-static {}, Lccc71/utils/a/l;->a()Lccc71/utils/a/l;

    move-result-object v12

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lccc71/bmw/lib/bmw_calibration;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v13

    .line 105
    iget-object v0, p0, Lccc71/bmw/lib/bmw_batteries;->a:Landroid/widget/TabHost;

    const-string v1, "calibration"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 106
    sget v1, Lccc71/bmw/lib/c;->j:I

    sget v2, Lccc71/bmw/lib/g;->bs:I

    if-nez v11, :cond_1

    move v5, v4

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lccc71/bmw/lib/bmw_batteries;->a(IIIZZ)Landroid/view/View;

    move-result-object v8

    sget v9, Lccc71/bmw/lib/g;->bs:I

    sget v10, Lccc71/bmw/lib/c;->s:I

    move-object v5, v12

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Lccc71/utils/a/l;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    .line 107
    invoke-virtual {v7, v13}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 108
    iget-object v0, p0, Lccc71/bmw/lib/bmw_batteries;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lccc71/bmw/lib/bmw_battery_compare;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v13

    .line 111
    iget-object v0, p0, Lccc71/bmw/lib/bmw_batteries;->a:Landroid/widget/TabHost;

    const-string v1, "batteries"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 112
    sget v6, Lccc71/bmw/lib/c;->c:I

    sget v7, Lccc71/bmw/lib/g;->br:I

    if-ne v11, v4, :cond_2

    move v10, v4

    :goto_1
    move-object v5, p0

    move v8, v4

    move v9, v3

    invoke-direct/range {v5 .. v10}, Lccc71/bmw/lib/bmw_batteries;->a(IIIZZ)Landroid/view/View;

    move-result-object v3

    sget v4, Lccc71/bmw/lib/g;->br:I

    sget v5, Lccc71/bmw/lib/c;->r:I

    move-object v0, v12

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/a/l;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    .line 113
    invoke-virtual {v2, v13}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 114
    iget-object v0, p0, Lccc71/bmw/lib/bmw_batteries;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 116
    iget-object v0, p0, Lccc71/bmw/lib/bmw_batteries;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, v11}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 118
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/utils/a/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lccc71/bmw/lib/bmw_batteries;->a:Landroid/widget/TabHost;

    iget-object v1, p0, Lccc71/bmw/lib/bmw_batteries;->c:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 120
    :cond_0
    return-void

    :cond_1
    move v5, v3

    .line 106
    goto :goto_0

    :cond_2
    move v10, v3

    .line 112
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lccc71/utils/ccc71_license_tabactivity;->onDestroy()V

    .line 127
    iget-object v0, p0, Lccc71/bmw/lib/bmw_batteries;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    invoke-static {p0, v0}, Lccc71/bmw/lib/bmw_settings;->c(Landroid/content/Context;I)V

    .line 128
    return-void
.end method
