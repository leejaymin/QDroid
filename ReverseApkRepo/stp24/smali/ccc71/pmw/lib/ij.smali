.class final Lccc71/pmw/lib/ij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_memory_tweak;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_memory_tweak;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ij;->a:Lccc71/pmw/lib/pmw_memory_tweak;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 406
    if-nez p3, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-static {}, Lccc71/pmw/lib/pmw_memory_tweak;->e()[[I

    move-result-object v0

    array-length v2, v0

    .line 410
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 412
    invoke-static {}, Lccc71/pmw/lib/pmw_memory_tweak;->e()[[I

    move-result-object v0

    aget-object v0, v0, v1

    aget v0, v0, v4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 416
    if-lez v1, :cond_2

    .line 418
    iget-object v0, p0, Lccc71/pmw/lib/ij;->a:Lccc71/pmw/lib/pmw_memory_tweak;

    invoke-static {}, Lccc71/pmw/lib/pmw_memory_tweak;->e()[[I

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    aget v2, v2, v4

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_memory_tweak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 419
    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 422
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 423
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 429
    :cond_2
    invoke-static {}, Lccc71/pmw/lib/pmw_memory_tweak;->e()[[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_3

    .line 431
    iget-object v0, p0, Lccc71/pmw/lib/ij;->a:Lccc71/pmw/lib/pmw_memory_tweak;

    invoke-static {}, Lccc71/pmw/lib/pmw_memory_tweak;->e()[[I

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    aget v2, v2, v4

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_memory_tweak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 432
    if-eqz v0, :cond_3

    .line 434
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 435
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 436
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 442
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/ij;->a:Lccc71/pmw/lib/pmw_memory_tweak;

    invoke-static {}, Lccc71/pmw/lib/pmw_memory_tweak;->e()[[I

    move-result-object v2

    aget-object v1, v2, v1

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_memory_tweak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 443
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 444
    if-eqz v0, :cond_0

    .line 446
    mul-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Lccc71/utils/ag;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 410
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    return-void
.end method
