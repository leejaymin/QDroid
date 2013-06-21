.class public Lccc71/bmw/data/calculators/bmw_calc_offset;
.super Lccc71/bmw/data/calculators/bmw_calculator;
.source "SourceFile"


# instance fields
.field private c:I


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lccc71/bmw/data/calculators/bmw_calc_offset;->a:Lccc71/bmw/data/readers/a;

    invoke-virtual {v0}, Lccc71/bmw/data/readers/a;->a()V

    .line 24
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->c:Z

    if-nez v0, :cond_0

    .line 25
    sget v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    iget v1, p0, Lccc71/bmw/data/calculators/bmw_calc_offset;->c:I

    add-int/2addr v0, v1

    sput v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    .line 26
    :cond_0
    return-void
.end method
