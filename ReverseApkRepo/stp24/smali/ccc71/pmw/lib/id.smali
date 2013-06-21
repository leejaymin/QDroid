.class final Lccc71/pmw/lib/id;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_memory;

.field private final synthetic b:Lccc71/pmw/b/k;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_memory;Lccc71/pmw/b/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    iput-object p2, p0, Lccc71/pmw/lib/id;->b:Lccc71/pmw/b/k;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 442
    iget-object v0, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_memory;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_memory;->e(Lccc71/pmw/lib/pmw_memory;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lccc71/pmw/lib/id;->b:Lccc71/pmw/b/k;

    invoke-virtual {v2}, Lccc71/pmw/b/k;->a()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    iget-object v0, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_memory;->e(Lccc71/pmw/lib/pmw_memory;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/id;->b:Lccc71/pmw/b/k;

    iget v1, v1, Lccc71/pmw/b/k;->a:I

    iget-object v2, p0, Lccc71/pmw/lib/id;->b:Lccc71/pmw/b/k;

    iget v2, v2, Lccc71/pmw/b/k;->b:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v0, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_memory;->f(Lccc71/pmw/lib/pmw_memory;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lccc71/pmw/lib/id;->b:Lccc71/pmw/b/k;

    invoke-virtual {v2}, Lccc71/pmw/b/k;->a()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    iget-object v0, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_memory;->f(Lccc71/pmw/lib/pmw_memory;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/id;->b:Lccc71/pmw/b/k;

    iget v1, v1, Lccc71/pmw/b/k;->b:I

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v0, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_memory;->g(Lccc71/pmw/lib/pmw_memory;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_memory;->a(Lccc71/pmw/lib/pmw_memory;)Lccc71/pmw/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lccc71/pmw/b/u;->d()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    iget-object v0, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_memory;->g(Lccc71/pmw/lib/pmw_memory;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_memory;->a(Lccc71/pmw/lib/pmw_memory;)Lccc71/pmw/b/u;

    move-result-object v1

    iget-wide v1, v1, Lccc71/pmw/b/u;->b:J

    iget-object v3, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_memory;->a(Lccc71/pmw/lib/pmw_memory;)Lccc71/pmw/b/u;

    move-result-object v3

    iget-wide v3, v3, Lccc71/pmw/b/u;->a:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_memory;->h(Lccc71/pmw/lib/pmw_memory;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_memory;->a(Lccc71/pmw/lib/pmw_memory;)Lccc71/pmw/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lccc71/pmw/b/u;->d()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    iget-object v0, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_memory;->h(Lccc71/pmw/lib/pmw_memory;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_memory;->a(Lccc71/pmw/lib/pmw_memory;)Lccc71/pmw/b/u;

    move-result-object v1

    iget-wide v1, v1, Lccc71/pmw/b/u;->a:J

    long-to-int v1, v1

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_memory;->i(Lccc71/pmw/lib/pmw_memory;)Lccc71/utils/ccc71_piechartview;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    iget-object v1, v1, Lccc71/pmw/lib/pmw_memory;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccc71/utils/ccc71_piechartview;->setData(Ljava/util/List;Z)V

    .line 459
    iget-object v0, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    sget v1, Lccc71/pmw/lib/d;->dM:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    iget-object v1, v1, Lccc71/pmw/lib/pmw_memory;->e:Lccc71/utils/aa;

    iget-wide v1, v1, Lccc71/utils/aa;->b:J

    long-to-int v1, v1

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    sget v1, Lccc71/pmw/lib/d;->dI:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    iget-object v1, v1, Lccc71/pmw/lib/pmw_memory;->b:Lccc71/utils/aa;

    iget-wide v1, v1, Lccc71/utils/aa;->b:J

    long-to-int v1, v1

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    sget v1, Lccc71/pmw/lib/d;->dO:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    iget-object v1, v1, Lccc71/pmw/lib/pmw_memory;->d:Lccc71/utils/aa;

    iget-wide v1, v1, Lccc71/utils/aa;->b:J

    long-to-int v1, v1

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v0, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    sget v1, Lccc71/pmw/lib/d;->dJ:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    iget-object v1, v1, Lccc71/pmw/lib/pmw_memory;->c:Lccc71/utils/aa;

    iget-wide v1, v1, Lccc71/utils/aa;->b:J

    long-to-int v1, v1

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    sget v1, Lccc71/pmw/lib/d;->dK:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/id;->a:Lccc71/pmw/lib/pmw_memory;

    iget-object v1, v1, Lccc71/pmw/lib/pmw_memory;->f:Lccc71/utils/aa;

    iget-wide v1, v1, Lccc71/utils/aa;->b:J

    long-to-int v1, v1

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
