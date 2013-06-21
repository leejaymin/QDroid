.class final Lccc71/pmw/lib/ox;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field a:Landroid/app/ProgressDialog;

.field final synthetic b:Lccc71/pmw/lib/ow;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/ow;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ox;->b:Lccc71/pmw/lib/ow;

    .line 395
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/ox;->b:Lccc71/pmw/lib/ow;

    invoke-static {v0}, Lccc71/pmw/lib/ow;->a(Lccc71/pmw/lib/ow;)Lccc71/pmw/lib/pmw_sysctl;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->n(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v7, v5

    :goto_0
    if-lt v7, v9, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/ox;->b:Lccc71/pmw/lib/ow;

    invoke-static {v0}, Lccc71/pmw/lib/ow;->a(Lccc71/pmw/lib/ow;)Lccc71/pmw/lib/pmw_sysctl;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->o(Lccc71/pmw/lib/pmw_sysctl;)V

    :cond_0
    return-object v2

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/ox;->b:Lccc71/pmw/lib/ow;

    invoke-static {v0}, Lccc71/pmw/lib/ow;->a(Lccc71/pmw/lib/ow;)Lccc71/pmw/lib/pmw_sysctl;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_sysctl;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lccc71/pmw/lib/pb;

    iget-object v0, v1, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    iget-object v4, v1, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, v1, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    iput-object v0, v1, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    iget-object v0, p0, Lccc71/pmw/lib/ox;->b:Lccc71/pmw/lib/ow;

    invoke-static {v0}, Lccc71/pmw/lib/ow;->a(Lccc71/pmw/lib/ow;)Lccc71/pmw/lib/pmw_sysctl;

    move-result-object v0

    const-string v4, "sysctl"

    invoke-static {v0, v4}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lccc71/pmw/b/h;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " -w "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Lccc71/pmw/lib/pb;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    :cond_3
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0
.end method

.method protected final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 456
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lccc71/pmw/lib/ox;->b:Lccc71/pmw/lib/ow;

    invoke-static {v1}, Lccc71/pmw/lib/ow;->a(Lccc71/pmw/lib/ow;)Lccc71/pmw/lib/pmw_sysctl;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lccc71/pmw/lib/ox;->a:Landroid/app/ProgressDialog;

    .line 457
    iget-object v0, p0, Lccc71/pmw/lib/ox;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 458
    iget-object v0, p0, Lccc71/pmw/lib/ox;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lccc71/pmw/lib/ox;->b:Lccc71/pmw/lib/ow;

    invoke-static {v1}, Lccc71/pmw/lib/ow;->a(Lccc71/pmw/lib/ow;)Lccc71/pmw/lib/pmw_sysctl;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ft:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_sysctl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p0, Lccc71/pmw/lib/ox;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 460
    iget-object v0, p0, Lccc71/pmw/lib/ox;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 462
    invoke-super {p0}, Lccc71/utils/android/a;->a()V

    .line 463
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/ox;->b:Lccc71/pmw/lib/ow;

    invoke-static {v0}, Lccc71/pmw/lib/ow;->a(Lccc71/pmw/lib/ow;)Lccc71/pmw/lib/pmw_sysctl;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_sysctl;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lccc71/pmw/lib/ox;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/ox;->b:Lccc71/pmw/lib/ow;

    invoke-static {v0}, Lccc71/pmw/lib/ow;->a(Lccc71/pmw/lib/ow;)Lccc71/pmw/lib/pmw_sysctl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_sysctl;->a(Lccc71/pmw/lib/pmw_sysctl;Landroid/view/View;)V

    iget-object v0, p0, Lccc71/pmw/lib/ox;->b:Lccc71/pmw/lib/ow;

    invoke-static {v0}, Lccc71/pmw/lib/ow;->a(Lccc71/pmw/lib/ow;)Lccc71/pmw/lib/pmw_sysctl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_sysctl;->b(Lccc71/pmw/lib/pmw_sysctl;Z)V

    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/ox;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
