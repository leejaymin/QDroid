.class final Lccc71/pmw/lib/oz;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field a:Landroid/app/ProgressDialog;

.field final synthetic b:Lccc71/pmw/lib/oy;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/oy;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/oz;->b:Lccc71/pmw/lib/oy;

    .line 473
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method

.method private varargs d()Ljava/lang/Void;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 484
    :try_start_0
    iget-object v2, p0, Lccc71/pmw/lib/oz;->b:Lccc71/pmw/lib/oy;

    invoke-static {v2}, Lccc71/pmw/lib/oy;->a(Lccc71/pmw/lib/oy;)Lccc71/pmw/lib/pmw_sysctl;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/pmw_sysctl;->n(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v9, v1

    .line 485
    :goto_0
    if-lt v9, v10, :cond_0

    .line 510
    :goto_1
    return-object v11

    .line 487
    :cond_0
    iget-object v1, p0, Lccc71/pmw/lib/oz;->b:Lccc71/pmw/lib/oy;

    invoke-static {v1}, Lccc71/pmw/lib/oy;->a(Lccc71/pmw/lib/oy;)Lccc71/pmw/lib/pmw_sysctl;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_sysctl;->n(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lccc71/pmw/lib/pb;

    move-object v8, v0

    .line 488
    if-eqz v8, :cond_2

    .line 489
    iget-object v1, v8, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v8, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    iget-object v2, v8, Lccc71/pmw/lib/pb;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 495
    :cond_1
    iget-object v1, v8, Lccc71/pmw/lib/pb;->i:Ljava/lang/String;

    iput-object v1, v8, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    .line 496
    iget-object v1, p0, Lccc71/pmw/lib/oz;->b:Lccc71/pmw/lib/oy;

    invoke-static {v1}, Lccc71/pmw/lib/oy;->a(Lccc71/pmw/lib/oy;)Lccc71/pmw/lib/pmw_sysctl;

    move-result-object v1

    const-string v2, "sysctl"

    invoke-static {v1, v2}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 497
    new-instance v1, Lccc71/pmw/b/h;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " -w "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lccc71/pmw/lib/pb;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 498
    iget-object v1, v8, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v8, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    iget-object v2, v8, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 500
    iget-object v1, p0, Lccc71/pmw/lib/oz;->b:Lccc71/pmw/lib/oy;

    invoke-static {v1}, Lccc71/pmw/lib/oy;->a(Lccc71/pmw/lib/oy;)Lccc71/pmw/lib/pmw_sysctl;

    move-result-object v1

    iget-object v2, v8, Lccc71/pmw/lib/pb;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lccc71/pmw/lib/pmw_sysctl;->a(Lccc71/pmw/lib/pmw_sysctl;Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lccc71/pmw/lib/oz;->b:Lccc71/pmw/lib/oy;

    invoke-static {v1}, Lccc71/pmw/lib/oy;->a(Lccc71/pmw/lib/oy;)Lccc71/pmw/lib/pmw_sysctl;

    move-result-object v1

    iget-object v2, v8, Lccc71/pmw/lib/pb;->a:Ljava/lang/String;

    iget-object v3, v8, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    iget-object v4, v8, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lccc71/pmw/lib/pmw_sysctl;->a(Lccc71/pmw/lib/pmw_sysctl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :cond_2
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lccc71/pmw/lib/oz;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 538
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lccc71/pmw/lib/oz;->b:Lccc71/pmw/lib/oy;

    invoke-static {v1}, Lccc71/pmw/lib/oy;->a(Lccc71/pmw/lib/oy;)Lccc71/pmw/lib/pmw_sysctl;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lccc71/pmw/lib/oz;->a:Landroid/app/ProgressDialog;

    .line 539
    iget-object v0, p0, Lccc71/pmw/lib/oz;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 540
    iget-object v0, p0, Lccc71/pmw/lib/oz;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lccc71/pmw/lib/oz;->b:Lccc71/pmw/lib/oy;

    invoke-static {v1}, Lccc71/pmw/lib/oy;->a(Lccc71/pmw/lib/oy;)Lccc71/pmw/lib/pmw_sysctl;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ft:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_sysctl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v0, p0, Lccc71/pmw/lib/oz;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 542
    iget-object v0, p0, Lccc71/pmw/lib/oz;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 544
    invoke-super {p0}, Lccc71/utils/android/a;->a()V

    .line 545
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/oz;->b:Lccc71/pmw/lib/oy;

    invoke-static {v0}, Lccc71/pmw/lib/oy;->a(Lccc71/pmw/lib/oy;)Lccc71/pmw/lib/pmw_sysctl;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_sysctl;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lccc71/pmw/lib/oz;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/oz;->b:Lccc71/pmw/lib/oy;

    invoke-static {v0}, Lccc71/pmw/lib/oy;->a(Lccc71/pmw/lib/oy;)Lccc71/pmw/lib/pmw_sysctl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_sysctl;->a(Lccc71/pmw/lib/pmw_sysctl;Landroid/view/View;)V

    iget-object v0, p0, Lccc71/pmw/lib/oz;->b:Lccc71/pmw/lib/oy;

    invoke-static {v0}, Lccc71/pmw/lib/oy;->a(Lccc71/pmw/lib/oy;)Lccc71/pmw/lib/pmw_sysctl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_sysctl;->b(Lccc71/pmw/lib/pmw_sysctl;Z)V

    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/oz;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
