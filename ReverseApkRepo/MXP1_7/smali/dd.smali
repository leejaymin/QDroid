.class public final Ldd;
.super Ljava/lang/Object;


# direct methods
.method private static 癤욱븳援(Landroid/content/Context;FI)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    int-to-float v0, p2

    div-float/2addr v0, p1

    float-to-int p2, v0

    :cond_0
    return p2
.end method

.method public static 癤욱븳援(Landroid/content/Context;Landroid/util/DisplayMetrics;)I
    .locals 2

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0, v0, v1}, Ldd;->癤욱븳援(Landroid/content/Context;FI)I

    move-result v0

    return v0
.end method

.method public static 궗(Landroid/content/Context;Landroid/util/DisplayMetrics;)I
    .locals 2

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0, v0, v1}, Ldd;->癤욱븳援(Landroid/content/Context;FI)I

    move-result v0

    return v0
.end method