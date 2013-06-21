.class public Lcom/paypal/android/c/k;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/paypal/android/c/k$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:[Landroid/graphics/drawable/Drawable;

.field private c:[Lcom/paypal/android/c/k$a;

.field private d:[Landroid/widget/LinearLayout;

.field private e:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/paypal/android/c/k;->a:Landroid/content/Context;

    invoke-direct {p0, p1, p3}, Lcom/paypal/android/c/k;->a(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/paypal/android/c/k;->b:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not within the range 0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/c/k;->b:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/c/k;->c:[Lcom/paypal/android/c/k$a;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/paypal/android/c/k$a;->getState()I

    move-result v0

    if-ne v0, v3, :cond_2

    :goto_0
    return-void

    :cond_2
    move v0, v4

    :goto_1
    iget-object v1, p0, Lcom/paypal/android/c/k;->c:[Lcom/paypal/android/c/k$a;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    if-ne v0, p1, :cond_4

    move v1, v3

    :goto_2
    iget-object v2, p0, Lcom/paypal/android/c/k;->c:[Lcom/paypal/android/c/k$a;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/paypal/android/c/k$a;->setState(I)V

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/paypal/android/c/k;->d:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v1, v4

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/paypal/android/c/k;->d:[Landroid/widget/LinearLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput p1, p0, Lcom/paypal/android/c/k;->e:I

    goto :goto_0
.end method

.method private a(ILandroid/graphics/drawable/Drawable;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x5

    const/4 v4, 0x0

    invoke-virtual {p0, v8}, Lcom/paypal/android/c/k;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/c/k;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Lcom/paypal/android/c/k;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of tabs must be greater than or equal to 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/paypal/android/c/k;->b:[Landroid/graphics/drawable/Drawable;

    new-array v0, p1, [Lcom/paypal/android/c/k$a;

    iput-object v0, p0, Lcom/paypal/android/c/k;->c:[Lcom/paypal/android/c/k$a;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/c/k;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    if-le p1, v8, :cond_1

    move v1, v4

    :goto_0
    if-ge v1, p1, :cond_1

    new-instance v2, Lcom/paypal/android/c/k$a;

    iget-object v3, p0, Lcom/paypal/android/c/k;->a:Landroid/content/Context;

    invoke-direct {v2, p0, p0, v1, v3}, Lcom/paypal/android/c/k$a;-><init>(Lcom/paypal/android/c/k;Lcom/paypal/android/c/k;ILandroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/paypal/android/c/k$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v5, v5, v5, v5}, Lcom/paypal/android/c/k$a;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/paypal/android/c/k;->c:[Lcom/paypal/android/c/k$a;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/paypal/android/c/k;->addView(Landroid/view/View;)V

    new-array v0, p1, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/paypal/android/c/k;->d:[Landroid/widget/LinearLayout;

    move v0, v4

    :goto_1
    if-ge v0, p1, :cond_2

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/paypal/android/c/k;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v5, v4, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/paypal/android/c/k;->d:[Landroid/widget/LinearLayout;

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/paypal/android/c/k;->d:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/paypal/android/c/k;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-le p1, v8, :cond_3

    invoke-direct {p0, v4}, Lcom/paypal/android/c/k;->a(I)V

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/paypal/android/c/k;->d:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/paypal/android/c/k;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/paypal/android/c/k;->a(I)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/c/k;->d:[Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must specify the number of tabs first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/c/k;->d:[Landroid/widget/LinearLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/paypal/android/c/k;->d:[Landroid/widget/LinearLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/c/k;->c:[Lcom/paypal/android/c/k$a;

    aget-object v0, v0, p2

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/paypal/android/c/k$a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/c/k;->c:[Lcom/paypal/android/c/k$a;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/paypal/android/c/k$a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/c/k;->e:I

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/c/k;->e:I

    return v0
.end method
