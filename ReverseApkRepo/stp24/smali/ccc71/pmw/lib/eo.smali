.class final Lccc71/pmw/lib/eo;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field a:I

.field final synthetic b:Lccc71/pmw/lib/en;

.field private final synthetic c:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/en;Landroid/widget/SeekBar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/eo;->b:Lccc71/pmw/lib/en;

    iput-object p2, p0, Lccc71/pmw/lib/eo;->c:Landroid/widget/SeekBar;

    .line 671
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/eo;->b:Lccc71/pmw/lib/en;

    invoke-static {v0}, Lccc71/pmw/lib/en;->a(Lccc71/pmw/lib/en;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ah;

    iget-object v0, p0, Lccc71/pmw/lib/eo;->b:Lccc71/pmw/lib/en;

    iget v0, v0, Lccc71/pmw/lib/en;->a:I

    invoke-static {v0}, Lccc71/pmw/a/ah;->b(I)V

    iget-object v0, p0, Lccc71/pmw/lib/eo;->b:Lccc71/pmw/lib/en;

    invoke-static {v0}, Lccc71/pmw/lib/en;->a(Lccc71/pmw/lib/en;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/a/ah;->h()I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/eo;->a:I

    iget v0, p0, Lccc71/pmw/lib/eo;->a:I

    iget-object v1, p0, Lccc71/pmw/lib/eo;->b:Lccc71/pmw/lib/en;

    iget v1, v1, Lccc71/pmw/lib/en;->a:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/eo;->d([Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/eo;->b:Lccc71/pmw/lib/en;

    invoke-static {v0}, Lccc71/pmw/lib/en;->a(Lccc71/pmw/lib/en;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    iget v1, p0, Lccc71/pmw/lib/eo;->a:I

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/eo;->b:Lccc71/pmw/lib/en;

    invoke-static {v0}, Lccc71/pmw/lib/en;->a(Lccc71/pmw/lib/en;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->c(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ac;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccc71/pmw/lib/eo;->b:Lccc71/pmw/lib/en;

    invoke-static {v0}, Lccc71/pmw/lib/en;->a(Lccc71/pmw/lib/en;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->c(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ac;

    move-result-object v0

    iget v0, v0, Lccc71/pmw/a/ac;->c:I

    iget v1, p0, Lccc71/pmw/lib/eo;->a:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lccc71/pmw/lib/eo;->b:Lccc71/pmw/lib/en;

    invoke-static {v0}, Lccc71/pmw/lib/en;->a(Lccc71/pmw/lib/en;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->c(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ac;

    move-result-object v0

    iget v1, p0, Lccc71/pmw/lib/eo;->a:I

    iput v1, v0, Lccc71/pmw/a/ac;->c:I

    sget-boolean v0, Lccc71/pmw/a/ah;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/eo;->b:Lccc71/pmw/lib/en;

    invoke-static {v0}, Lccc71/pmw/lib/en;->a(Lccc71/pmw/lib/en;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->b(Lccc71/pmw/lib/pmw_cpu;)V

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/eo;->b:Lccc71/pmw/lib/en;

    invoke-static {v0}, Lccc71/pmw/lib/en;->a(Lccc71/pmw/lib/en;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->d(Lccc71/pmw/lib/pmw_cpu;)[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/eo;->c:Landroid/widget/SeekBar;

    iget v1, p0, Lccc71/pmw/lib/eo;->a:I

    iget-object v2, p0, Lccc71/pmw/lib/eo;->b:Lccc71/pmw/lib/en;

    invoke-static {v2}, Lccc71/pmw/lib/en;->a(Lccc71/pmw/lib/en;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/pmw_cpu;->d(Lccc71/pmw/lib/pmw_cpu;)[I

    move-result-object v2

    aget v2, v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/eo;->b:Lccc71/pmw/lib/en;

    invoke-static {v0}, Lccc71/pmw/lib/en;->a(Lccc71/pmw/lib/en;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->iS:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/eo;->a:I

    invoke-static {v1}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/eo;->b:Lccc71/pmw/lib/en;

    invoke-static {v0}, Lccc71/pmw/lib/en;->a(Lccc71/pmw/lib/en;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0, v3}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;Z)V

    return-void
.end method

.method protected final varargs synthetic b([Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/eo;->b:Lccc71/pmw/lib/en;

    invoke-static {v0}, Lccc71/pmw/lib/en;->a(Lccc71/pmw/lib/en;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->dx:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
