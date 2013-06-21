.class final Lcom/flurry/android/ag;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Lcom/flurry/android/am;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method private static b()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private declared-synchronized c()Lcom/flurry/android/aq;
    .locals 7

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ag;->a:Lcom/flurry/android/am;

    iget-object v1, p0, Lcom/flurry/android/ag;->b:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/flurry/android/ag;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/flurry/android/ag;->d:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/am;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/Long;IZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/aq;

    iget-object v1, p0, Lcom/flurry/android/ag;->a:Lcom/flurry/android/am;

    invoke-virtual {v0, v1}, Lcom/flurry/android/aq;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 6

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/flurry/android/ag;->e:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/flurry/android/ag;->c()Lcom/flurry/android/aq;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/flurry/android/ag;->removeAllViews()V

    invoke-static {}, Lcom/flurry/android/ag;->b()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/ag;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/flurry/android/aq;->a()Lcom/flurry/android/ah;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/x;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/flurry/android/ag;->a:Lcom/flurry/android/am;

    invoke-virtual {v3}, Lcom/flurry/android/am;->j()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/android/x;-><init>(BJ)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/ah;->a(Lcom/flurry/android/x;)V

    iput-boolean v5, p0, Lcom/flurry/android/ag;->e:Z

    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/flurry/android/ag;->f:Z

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/flurry/android/ag;->f:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flurry/android/ag;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/flurry/android/am;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lcom/flurry/android/ag;->b()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/ag;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
