.class public final Lcom/sphericbox/syb/a/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final aq:I

.field static final ar:I

.field static final as:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 8
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    sput v0, Lcom/sphericbox/syb/a/m;->aq:I

    .line 9
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    sput v0, Lcom/sphericbox/syb/a/m;->ar:I

    .line 10
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    sput v0, Lcom/sphericbox/syb/a/m;->as:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static a(D)I
    .locals 2
    .parameter

    .prologue
    .line 36
    const-wide/high16 v0, 0x3fe0

    add-double/2addr v0, p0

    double-to-int v0, v0

    return v0
.end method

.method public static a(F)I
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-static {p0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static abs(I)I
    .locals 1
    .parameter

    .prologue
    .line 16
    if-lez p0, :cond_0

    move v0, p0

    :goto_0
    return v0

    :cond_0
    neg-int v0, p0

    goto :goto_0
.end method

.method public static max(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    if-le p0, p1, :cond_0

    move v0, p0

    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public static round(F)I
    .locals 1
    .parameter

    .prologue
    .line 24
    const/high16 v0, 0x3f00

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method
