.class public final Lname/kunes/android/launcher/n;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 3

    const/high16 v0, -0x100

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lname/kunes/android/launcher/activity/bd;->a:[I

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/high16 v2, -0x100

    invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v2

    invoke-static {v1}, Lname/kunes/android/launcher/n;->a(Landroid/content/res/TypedArray;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/res/TypedArray;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lname/kunes/android/launcher/activity/bd;->a:[I

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lname/kunes/android/launcher/n;->a(Landroid/content/res/TypedArray;)V

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method
