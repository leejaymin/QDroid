.class public abstract Lccc71/utils/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Landroid/widget/TabHost;

.field private c:F

.field private d:F

.field private e:Landroid/widget/TabHost$OnTabChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/utils/a/l;->a:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lccc71/utils/a/l;->c:F

    .line 55
    const/high16 v0, 0x3f80

    iput v0, p0, Lccc71/utils/a/l;->d:F

    .line 111
    new-instance v0, Lccc71/utils/a/m;

    invoke-direct {v0, p0}, Lccc71/utils/a/m;-><init>(Lccc71/utils/a/l;)V

    iput-object v0, p0, Lccc71/utils/a/l;->e:Landroid/widget/TabHost$OnTabChangeListener;

    .line 22
    return-void
.end method

.method static synthetic a(Lccc71/utils/a/l;)Landroid/widget/TabHost;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lccc71/utils/a/l;->b:Landroid/widget/TabHost;

    return-object v0
.end method

.method public static a()Lccc71/utils/a/l;
    .locals 2

    .prologue
    .line 30
    const/4 v0, 0x4

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lccc71/utils/a/n;

    invoke-direct {v0}, Lccc71/utils/a/n;-><init>()V

    :goto_0
    const/4 v1, 0x0

    iput v1, v0, Lccc71/utils/a/l;->c:F

    return-object v0

    :cond_0
    new-instance v0, Lccc71/utils/a/o;

    invoke-direct {v0}, Lccc71/utils/a/o;-><init>()V

    goto :goto_0
.end method

.method static synthetic b(Lccc71/utils/a/l;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lccc71/utils/a/l;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lccc71/utils/a/l;)F
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lccc71/utils/a/l;->d:F

    return v0
.end method


# virtual methods
.method public abstract a(Landroid/widget/TabWidget;)I
.end method

.method public final a(Landroid/content/Context;IIZ)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v10, 0x40a0

    const/4 v3, 0x0

    const/high16 v9, 0x4040

    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lccc71/utils/a/l;->d:F

    .line 61
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 68
    iget v2, p0, Lccc71/utils/a/l;->d:F

    mul-float/2addr v2, v10

    float-to-int v2, v2

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 70
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 73
    if-eqz p4, :cond_1

    .line 74
    const/high16 v3, -0x100

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    :goto_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    const/high16 v3, 0x4000

    iget v4, p0, Lccc71/utils/a/l;->d:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lccc71/utils/a/l;->d:F

    mul-float/2addr v4, v9

    float-to-int v4, v4

    const/high16 v5, 0x4000

    iget v6, p0, Lccc71/utils/a/l;->d:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lccc71/utils/a/l;->d:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 80
    iget-object v2, p0, Lccc71/utils/a/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 84
    if-eqz p4, :cond_2

    .line 85
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    :goto_1
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 89
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 90
    iget v3, p0, Lccc71/utils/a/l;->c:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 91
    iget v3, p0, Lccc71/utils/a/l;->c:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 92
    :cond_0
    iget v3, p0, Lccc71/utils/a/l;->d:F

    mul-float/2addr v3, v10

    float-to-int v3, v3

    iget v4, p0, Lccc71/utils/a/l;->d:F

    mul-float/2addr v4, v9

    float-to-int v4, v4

    iget v5, p0, Lccc71/utils/a/l;->d:F

    mul-float/2addr v5, v10

    float-to-int v5, v5

    iget v6, p0, Lccc71/utils/a/l;->d:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 94
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f80

    invoke-direct {v3, v8, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 99
    sget v0, Lccc71/utils/c;->a:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 100
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p4, :cond_3

    const/4 v0, 0x3

    :goto_2
    int-to-float v0, v0

    iget v4, p0, Lccc71/utils/a/l;->d:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-direct {v3, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    return-object v1

    .line 76
    :cond_1
    const v3, -0x777778

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 87
    :cond_2
    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 100
    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public abstract a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;
.end method

.method public final a(Landroid/widget/TabHost;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lccc71/utils/a/l;->b:Landroid/widget/TabHost;

    .line 108
    iget-object v0, p0, Lccc71/utils/a/l;->b:Landroid/widget/TabHost;

    iget-object v1, p0, Lccc71/utils/a/l;->e:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 109
    return-void
.end method
