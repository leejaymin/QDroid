.class final Lccc71/bmw/lib/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/ah;

.field private final synthetic b:I

.field private final synthetic c:J

.field private final synthetic d:Z

.field private final synthetic e:J

.field private final synthetic f:I

.field private final synthetic g:I

.field private final synthetic h:I

.field private final synthetic i:I


# direct methods
.method constructor <init>(Lccc71/bmw/lib/ah;IJZJIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    iput p2, p0, Lccc71/bmw/lib/ai;->b:I

    iput-wide p3, p0, Lccc71/bmw/lib/ai;->c:J

    iput-boolean p5, p0, Lccc71/bmw/lib/ai;->d:Z

    iput-wide p6, p0, Lccc71/bmw/lib/ai;->e:J

    iput p8, p0, Lccc71/bmw/lib/ai;->f:I

    iput p9, p0, Lccc71/bmw/lib/ai;->g:I

    iput p10, p0, Lccc71/bmw/lib/ai;->h:I

    iput p11, p0, Lccc71/bmw/lib/ai;->i:I

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/high16 v10, -0x1

    const v9, -0x333334

    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 503
    iget v0, p0, Lccc71/bmw/lib/ai;->b:I

    rsub-int/lit8 v0, v0, 0x69

    .line 504
    int-to-long v0, v0

    iget-wide v5, p0, Lccc71/bmw/lib/ai;->c:J

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v0, v0

    .line 505
    if-gez v0, :cond_8

    move v2, v3

    .line 510
    :goto_0
    iget-boolean v0, p0, Lccc71/bmw/lib/ai;->d:Z

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->i(Lccc71/bmw/lib/bmw_calibration;)V

    .line 513
    :cond_0
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/d;->ci:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 514
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/d;->cj:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 516
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v0

    .line 519
    invoke-static {}, Lccc71/bmw/lib/bi;->b()I

    move-result v1

    .line 520
    const-string v5, "battery_widget_monitor"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Selected refresh rate:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v7, v0

    invoke-static {v7, v8}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", actual:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-long v6, v1

    invoke-static {v6, v7}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-wide v0, p0, Lccc71/bmw/lib/ai;->e:J

    long-to-int v1, v0

    .line 524
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v5, Lccc71/bmw/lib/d;->ck:I

    invoke-virtual {v0, v5}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 525
    if-eqz v0, :cond_1

    .line 527
    iget-wide v5, p0, Lccc71/bmw/lib/ai;->e:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_a

    .line 529
    iget v5, p0, Lccc71/bmw/lib/ai;->f:I

    if-nez v5, :cond_9

    iget-object v5, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v5}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v5

    invoke-static {v5}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v5

    const/16 v6, 0x12c

    if-ge v5, v6, :cond_9

    .line 531
    sget v5, Lccc71/bmw/lib/g;->cN:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 532
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 563
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 565
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v0

    iput v1, v0, Lccc71/bmw/data/a/a;->j:I

    .line 568
    :cond_2
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/d;->cw:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 569
    iget-object v1, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v1}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    iget v1, v1, Lccc71/bmw/data/a/a;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/d;->cZ:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 571
    iget-object v1, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v1}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    iget v1, v1, Lccc71/bmw/data/a/a;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->y:Z

    if-eqz v0, :cond_3

    .line 575
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/d;->dp:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 576
    sget v1, Lccc71/bmw/lib/g;->aY:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 579
    :cond_3
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/d;->cY:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 580
    iget-object v1, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v1}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    iget v1, v1, Lccc71/bmw/data/a/a;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/d;->cv:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 583
    iget-object v1, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v1}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    iget v1, v1, Lccc71/bmw/data/a/a;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/d;->cg:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 586
    iget-object v1, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v1}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->j(Lccc71/bmw/lib/bmw_calibration;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 588
    iget-object v1, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v1}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    iget v1, v1, Lccc71/bmw/data/a/a;->j:I

    if-nez v1, :cond_4

    .line 589
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 591
    :cond_4
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/d;->ch:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 592
    iget-object v1, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v1}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->k(Lccc71/bmw/lib/bmw_calibration;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 595
    iget-object v1, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v1}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    sget v5, Lccc71/bmw/lib/d;->dq:I

    invoke-virtual {v1, v5}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 596
    iget-object v5, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v5}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v5

    invoke-static {v5}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v5

    iget v5, v5, Lccc71/bmw/data/a/a;->i:I

    if-eqz v5, :cond_c

    iget-object v5, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v5}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v5

    invoke-static {v5}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v5

    iget v5, v5, Lccc71/bmw/data/a/a;->h:I

    if-eqz v5, :cond_c

    iget v5, p0, Lccc71/bmw/lib/ai;->g:I

    if-eqz v5, :cond_c

    iget v5, p0, Lccc71/bmw/lib/ai;->b:I

    if-eqz v5, :cond_c

    iget v5, p0, Lccc71/bmw/lib/ai;->h:I

    if-eqz v5, :cond_c

    .line 600
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v0

    iget v5, p0, Lccc71/bmw/lib/ai;->i:I

    mul-int/lit8 v5, v5, 0x64

    iget v6, p0, Lccc71/bmw/lib/ai;->g:I

    div-int/2addr v5, v6

    rsub-int/lit8 v5, v5, 0x64

    iput v5, v0, Lccc71/bmw/data/a/a;->l:I

    .line 601
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v0

    iget v0, v0, Lccc71/bmw/data/a/a;->l:I

    if-gez v0, :cond_5

    .line 602
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v0

    iput v3, v0, Lccc71/bmw/data/a/a;->l:I

    .line 603
    :cond_5
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v0

    iget v0, v0, Lccc71/bmw/data/a/a;->l:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    :goto_2
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/d;->cx:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 614
    const-string v1, "battery_widget_monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Measured charge mAh = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lccc71/bmw/lib/ai;->e:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string v1, "battery_widget_monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Average charge error = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lccc71/bmw/lib/ai;->c:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v1, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v1}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    iget v1, v1, Lccc71/bmw/data/a/a;->j:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    if-ne v2, v4, :cond_6

    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v0

    iget v0, v0, Lccc71/bmw/data/a/a;->m:I

    if-nez v0, :cond_7

    .line 620
    :cond_6
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v0

    iput v2, v0, Lccc71/bmw/data/a/a;->m:I

    .line 622
    :cond_7
    iget-object v0, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v0}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/d;->cy:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 623
    iget-object v1, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v1}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    iget v1, v1, Lccc71/bmw/data/a/a;->m:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    return-void

    .line 507
    :cond_8
    if-le v0, v4, :cond_d

    move v2, v4

    .line 508
    goto/16 :goto_0

    .line 536
    :cond_9
    sget v5, Lccc71/bmw/lib/g;->cM:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 537
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 551
    :cond_a
    const/16 v5, 0xa

    if-ge v2, v5, :cond_b

    .line 553
    sget v5, Lccc71/bmw/lib/g;->bI:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 554
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 558
    :cond_b
    sget v5, Lccc71/bmw/lib/g;->bH:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 559
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 607
    :cond_c
    const-string v5, " n/a "

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v1, p0, Lccc71/bmw/lib/ai;->a:Lccc71/bmw/lib/ah;

    invoke-static {v1}, Lccc71/bmw/lib/ah;->a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    iput v3, v1, Lccc71/bmw/data/a/a;->l:I

    .line 609
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_d
    move v2, v0

    goto/16 :goto_0
.end method
