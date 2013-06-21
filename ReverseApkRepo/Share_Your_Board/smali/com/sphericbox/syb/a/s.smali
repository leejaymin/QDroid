.class Lcom/sphericbox/syb/a/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field aX:[I

.field height:I

.field width:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    mul-int v0, p1, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sphericbox/syb/a/s;->aX:[I

    .line 265
    iput p1, p0, Lcom/sphericbox/syb/a/s;->width:I

    .line 266
    iput p2, p0, Lcom/sphericbox/syb/a/s;->height:I

    .line 267
    return-void
.end method


# virtual methods
.method public f(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 270
    iget v0, p0, Lcom/sphericbox/syb/a/s;->width:I

    sub-int/2addr v0, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 271
    iget v1, p0, Lcom/sphericbox/syb/a/s;->height:I

    sub-int/2addr v1, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 272
    iget-object v2, p0, Lcom/sphericbox/syb/a/s;->aX:[I

    iget v3, p0, Lcom/sphericbox/syb/a/s;->width:I

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    aget v0, v2, v0

    return v0
.end method
