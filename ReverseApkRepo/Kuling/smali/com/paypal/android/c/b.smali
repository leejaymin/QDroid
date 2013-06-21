.class public Lcom/paypal/android/c/b;
.super Lcom/paypal/android/c/f;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/paypal/android/c/c$a;


# instance fields
.field protected a:Landroid/widget/LinearLayout;

.field protected b:Landroid/widget/LinearLayout;

.field protected c:Lcom/paypal/android/c/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, -0x2

    const/4 v2, 0x5

    invoke-direct {p0, p1}, Lcom/paypal/android/c/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Lcom/paypal/android/c/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/paypal/android/c/b;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/c/b;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/paypal/android/c/b;->a:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/c/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/paypal/android/c/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/paypal/android/c/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/c/b;->b:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/paypal/android/c/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/c/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v4, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/paypal/android/c/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/paypal/android/c/b;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/c/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/paypal/android/c/b;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/c/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Lcom/paypal/android/c/c;

    invoke-direct {v0, p1}, Lcom/paypal/android/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/c/b;->c:Lcom/paypal/android/c/c;

    iget-object v0, p0, Lcom/paypal/android/c/b;->c:Lcom/paypal/android/c/c;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/c/b;->c:Lcom/paypal/android/c/c;

    invoke-virtual {v0, p0}, Lcom/paypal/android/c/c;->a(Lcom/paypal/android/c/c$a;)V

    iget-object v0, p0, Lcom/paypal/android/c/b;->c:Lcom/paypal/android/c/c;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/c;->setGravity(I)V

    iget-object v0, p0, Lcom/paypal/android/c/b;->c:Lcom/paypal/android/c/c;

    invoke-virtual {v0, v6}, Lcom/paypal/android/c/c;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/c/b;->c:Lcom/paypal/android/c/c;

    invoke-virtual {v0, v4}, Lcom/paypal/android/c/c;->setClickable(Z)V

    iget-object v0, p0, Lcom/paypal/android/c/b;->c:Lcom/paypal/android/c/c;

    invoke-virtual {v0, v4}, Lcom/paypal/android/c/c;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/paypal/android/c/b;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/paypal/android/c/b;->a(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/paypal/android/c/f;->a(I)V

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/paypal/android/c/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/c/b;->c:Lcom/paypal/android/c/c;

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/c;->setState(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/c/b;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/c/b;->c:Lcom/paypal/android/c/c;

    invoke-virtual {v0, v2}, Lcom/paypal/android/c/c;->setState(I)V

    goto :goto_0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, Lcom/paypal/android/c/b;->c:Lcom/paypal/android/c/c;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    iget-object v2, p0, Lcom/paypal/android/c/b;->c:Lcom/paypal/android/c/c;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Lcom/paypal/android/c/c;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/paypal/android/c/b;->c:Lcom/paypal/android/c/c;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/paypal/android/c/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/c/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/paypal/android/c/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    const/16 v1, 0x8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/paypal/android/c/b;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/c/b;->setFocusable(Z)V

    iget-object v0, p0, Lcom/paypal/android/c/b;->c:Lcom/paypal/android/c/c;

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/c;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/c/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, Lcom/paypal/android/c/b;->c:Lcom/paypal/android/c/c;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/c/b;->c:Lcom/paypal/android/c/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/paypal/android/c/c;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    iget-object v2, p0, Lcom/paypal/android/c/b;->c:Lcom/paypal/android/c/c;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/paypal/android/c/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/c/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/paypal/android/c/b;->c:Lcom/paypal/android/c/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/c;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/c/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/c/b;->c:Lcom/paypal/android/c/c;

    iget-object v1, p0, Lcom/paypal/android/c/b;->c:Lcom/paypal/android/c/c;

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/c;->onClick(Landroid/view/View;)V

    return-void
.end method
