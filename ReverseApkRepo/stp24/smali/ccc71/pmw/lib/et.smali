.class final Lccc71/pmw/lib/et;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field a:I

.field final synthetic b:Lccc71/pmw/lib/pmw_cpu;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_cpu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/et;->b:Lccc71/pmw/lib/pmw_cpu;

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/et;)Lccc71/pmw/lib/pmw_cpu;
    .locals 1
    .parameter

    .prologue
    .line 817
    iget-object v0, p0, Lccc71/pmw/lib/et;->b:Lccc71/pmw/lib/pmw_cpu;

    return-object v0
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 824
    iget v0, p0, Lccc71/pmw/lib/et;->a:I

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 826
    iget-object v0, p0, Lccc71/pmw/lib/et;->b:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ah;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/et;->b:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_cpu;->d(Lccc71/pmw/lib/pmw_cpu;)[I

    move-result-object v1

    aget v1, v1, v2

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lccc71/pmw/a/ah;->d(I)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/et;->a:I

    .line 828
    iget v0, p0, Lccc71/pmw/lib/et;->a:I

    iget-object v1, p0, Lccc71/pmw/lib/et;->b:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_cpu;->d(Lccc71/pmw/lib/pmw_cpu;)[I

    move-result-object v1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 829
    iget-object v0, p0, Lccc71/pmw/lib/et;->b:Lccc71/pmw/lib/pmw_cpu;

    sget v1, Lccc71/pmw/lib/d;->iT:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 830
    if-eqz v0, :cond_0

    .line 831
    iget v1, p0, Lccc71/pmw/lib/et;->a:I

    invoke-static {v1}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 833
    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter

    .prologue
    .line 838
    iget-object v0, p0, Lccc71/pmw/lib/et;->b:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ah;

    invoke-static {}, Lccc71/pmw/a/ah;->i()I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/et;->a:I

    .line 839
    iget-object v0, p0, Lccc71/pmw/lib/et;->b:Lccc71/pmw/lib/pmw_cpu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;Z)V

    .line 840
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter

    .prologue
    .line 845
    new-instance v0, Lccc71/pmw/lib/eu;

    invoke-direct {v0, p0, p1}, Lccc71/pmw/lib/eu;-><init>(Lccc71/pmw/lib/et;Landroid/widget/SeekBar;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 895
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/eu;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 896
    return-void
.end method
