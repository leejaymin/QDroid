.class final Lccc71/pmw/lib/ec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_cpu;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_cpu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 402
    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_cpu;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_cpu;->f()V

    .line 407
    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->e(Lccc71/pmw/lib/pmw_cpu;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->f(Lccc71/pmw/lib/pmw_cpu;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->f(Lccc71/pmw/lib/pmw_cpu;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    .line 409
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    iget-object v1, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ah;

    move-result-object v1

    invoke-virtual {v1}, Lccc71/pmw/a/ah;->e()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;[Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->f(Lccc71/pmw/lib/pmw_cpu;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->f(Lccc71/pmw/lib/pmw_cpu;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    sget v1, Lccc71/pmw/lib/d;->n:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 417
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->g(Lccc71/pmw/lib/pmw_cpu;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->d(Lccc71/pmw/lib/pmw_cpu;)[I

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->d(Lccc71/pmw/lib/pmw_cpu;)[I

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_5

    .line 419
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    iget-object v1, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ah;

    move-result-object v1

    invoke-virtual {v1}, Lccc71/pmw/a/ah;->f()[I

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;[I)V

    .line 420
    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->d(Lccc71/pmw/lib/pmw_cpu;)[I

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->d(Lccc71/pmw/lib/pmw_cpu;)[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_4

    .line 422
    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->h(Lccc71/pmw/lib/pmw_cpu;)V

    .line 423
    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    sget v1, Lccc71/pmw/lib/d;->n:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 431
    :cond_4
    :goto_1
    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->i(Lccc71/pmw/lib/pmw_cpu;)V

    goto/16 :goto_0

    .line 428
    :cond_5
    iget-object v0, p0, Lccc71/pmw/lib/ec;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->h(Lccc71/pmw/lib/pmw_cpu;)V

    goto :goto_1
.end method
