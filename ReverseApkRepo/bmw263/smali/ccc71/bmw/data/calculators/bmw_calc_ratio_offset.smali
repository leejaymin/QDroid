.class public Lccc71/bmw/data/calculators/bmw_calc_ratio_offset;
.super Lccc71/bmw/data/calculators/bmw_calculator;
.source "SourceFile"


# instance fields
.field private c:F

.field private d:I


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lccc71/bmw/data/calculators/bmw_calc_ratio_offset;->a:Lccc71/bmw/data/readers/a;

    invoke-virtual {v0}, Lccc71/bmw/data/readers/a;->a()V

    .line 26
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->c:Z

    if-nez v0, :cond_0

    .line 28
    sget v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    int-to-float v0, v0

    iget v1, p0, Lccc71/bmw/data/calculators/bmw_calc_ratio_offset;->c:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 29
    sput v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    iget v1, p0, Lccc71/bmw/data/calculators/bmw_calc_ratio_offset;->d:I

    add-int/2addr v0, v1

    sput v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    .line 31
    :cond_0
    return-void
.end method
