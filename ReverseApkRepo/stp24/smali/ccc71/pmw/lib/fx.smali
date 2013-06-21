.class final Lccc71/pmw/lib/fx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_frequencies;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_frequencies;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/fx;->a:Lccc71/pmw/lib/pmw_frequencies;

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 489
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 490
    iget-object v2, p0, Lccc71/pmw/lib/fx;->a:Lccc71/pmw/lib/pmw_frequencies;

    invoke-static {v2, v0}, Lccc71/pmw/lib/pmw_frequencies;->a(Lccc71/pmw/lib/pmw_frequencies;I)V

    .line 492
    sget v2, Lccc71/pmw/lib/pmw_frequencies;->c:I

    if-ne v0, v2, :cond_3

    .line 496
    check-cast p1, Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 497
    iget-object v0, p0, Lccc71/pmw/lib/fx;->a:Lccc71/pmw/lib/pmw_frequencies;

    sget v2, Lccc71/pmw/lib/pmw_frequencies;->e:I

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_frequencies;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 498
    if-eqz v0, :cond_0

    .line 499
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 501
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/fx;->a:Lccc71/pmw/lib/pmw_frequencies;

    sget v2, Lccc71/pmw/lib/pmw_frequencies;->d:I

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_frequencies;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 503
    :goto_0
    if-nez v0, :cond_2

    .line 537
    :cond_1
    :goto_1
    return-void

    .line 505
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CPU"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    add-int/lit8 v1, v1, 0x1

    .line 508
    iget-object v0, p0, Lccc71/pmw/lib/fx;->a:Lccc71/pmw/lib/pmw_frequencies;

    sget v2, Lccc71/pmw/lib/pmw_frequencies;->d:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_frequencies;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    .line 511
    :cond_3
    sget v2, Lccc71/pmw/lib/pmw_frequencies;->e:I

    if-ne v0, v2, :cond_4

    .line 515
    check-cast p1, Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 516
    iget-object v0, p0, Lccc71/pmw/lib/fx;->a:Lccc71/pmw/lib/pmw_frequencies;

    sget v2, Lccc71/pmw/lib/pmw_frequencies;->c:I

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_frequencies;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 518
    iget-object v0, p0, Lccc71/pmw/lib/fx;->a:Lccc71/pmw/lib/pmw_frequencies;

    sget v2, Lccc71/pmw/lib/pmw_frequencies;->d:I

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_frequencies;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move v4, v1

    move-object v1, v0

    move v0, v4

    .line 520
    :goto_2
    if-eqz v1, :cond_1

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CPU"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    add-int/lit8 v1, v0, 0x1

    .line 525
    iget-object v0, p0, Lccc71/pmw/lib/fx;->a:Lccc71/pmw/lib/pmw_frequencies;

    sget v2, Lccc71/pmw/lib/pmw_frequencies;->d:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_frequencies;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_2

    .line 528
    :cond_4
    sget v2, Lccc71/pmw/lib/pmw_frequencies;->d:I

    if-lt v0, v2, :cond_1

    .line 532
    check-cast p1, Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 534
    iget-object v0, p0, Lccc71/pmw/lib/fx;->a:Lccc71/pmw/lib/pmw_frequencies;

    sget v2, Lccc71/pmw/lib/pmw_frequencies;->c:I

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_frequencies;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 535
    iget-object v0, p0, Lccc71/pmw/lib/fx;->a:Lccc71/pmw/lib/pmw_frequencies;

    sget v2, Lccc71/pmw/lib/pmw_frequencies;->e:I

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_frequencies;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1
.end method
