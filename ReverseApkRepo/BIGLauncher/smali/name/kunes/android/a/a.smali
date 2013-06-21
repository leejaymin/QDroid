.class public final Lname/kunes/android/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILandroid/content/Context;)I
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    int-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private static a(Landroid/content/Context;)I
    .locals 1

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->n()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;
    .locals 1

    new-instance v0, Lname/kunes/android/a/b;

    invoke-direct {v0, p0}, Lname/kunes/android/a/b;-><init>(Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v0}, Lname/kunes/android/a/b;->a()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lname/kunes/android/a/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x30

    invoke-static {v0, p1}, Lname/kunes/android/a/a;->b(ILandroid/content/Context;)I

    move-result v0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 2

    instance-of v0, p0, Landroid/widget/TextView;

    instance-of v1, p0, Landroid/widget/Button;

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v1, 0x44

    invoke-static {v1, v0}, Lname/kunes/android/a/a;->b(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lname/kunes/android/a/a;->b(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const/4 v1, 0x1

    invoke-static {v0}, Lname/kunes/android/a/a;->a(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/widget/ImageView;)V
    .locals 2

    const/16 v0, 0xf

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/a/a;->b(ILandroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method static varargs a([Landroid/widget/TextView;)V
    .locals 5

    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v2, p0, v0

    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lname/kunes/android/a/a;->a(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b(ILandroid/content/Context;)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    int-to-float v2, p0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static varargs b([Landroid/widget/TextView;)V
    .locals 6

    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v2, p0, v0

    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lname/kunes/android/a/a;->a(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f40

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
