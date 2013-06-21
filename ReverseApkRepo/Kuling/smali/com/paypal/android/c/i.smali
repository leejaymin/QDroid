.class public abstract Lcom/paypal/android/c/i;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/ScrollView;

.field private b:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/paypal/android/c/i;->setPadding(IIII)V

    const/high16 v0, 0x7f00

    invoke-virtual {p0, v0}, Lcom/paypal/android/c/i;->setBackgroundColor(I)V

    invoke-virtual {p0, p1}, Lcom/paypal/android/c/i;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected a(Landroid/content/Context;)V
    .locals 6

    const/high16 v5, 0x4120

    const/4 v4, 0x1

    const/4 v3, -0x1

    invoke-virtual {p0, v4}, Lcom/paypal/android/c/i;->setOrientation(I)V

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/c/i;->a:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/paypal/android/c/i;->a:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    iget-object v1, p0, Lcom/paypal/android/c/i;->a:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/paypal/android/c/i;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lcom/paypal/android/c/i;->a:Landroid/widget/ScrollView;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/c/i;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/paypal/android/c/i;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/paypal/android/c/i;->b:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/c/i;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/paypal/android/c/i;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/paypal/android/c/i;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-void

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xdbt 0xedt 0xf0t 0xfft
        0xdbt 0xedt 0xf0t 0xfft
        0xdbt 0xedt 0xf0t 0xfft
    .end array-data
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/c/i;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public abstract b()V
.end method
