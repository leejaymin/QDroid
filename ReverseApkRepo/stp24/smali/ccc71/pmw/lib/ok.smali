.class final Lccc71/pmw/lib/ok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_sysctl;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_sysctl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ok;->a:Lccc71/pmw/lib/pmw_sysctl;

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 621
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 622
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    .line 623
    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Lccc71/pmw/lib/pb;

    .line 624
    iget v2, v0, Lccc71/pmw/lib/pb;->h:I

    mul-int/2addr v2, p2

    iget v3, v0, Lccc71/pmw/lib/pb;->f:I

    add-int/2addr v2, v3

    .line 626
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 627
    iget-object v3, p0, Lccc71/pmw/lib/ok;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v1, v0, v2}, Lccc71/pmw/lib/pmw_sysctl;->a(Landroid/widget/TextView;Lccc71/pmw/lib/pb;I)V

    .line 628
    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter

    .prologue
    .line 638
    iget-object v0, p0, Lccc71/pmw/lib/ok;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_sysctl;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 642
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    .line 643
    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Lccc71/pmw/lib/pb;

    .line 644
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, v0, Lccc71/pmw/lib/pb;->h:I

    mul-int/2addr v2, v3

    iget v3, v0, Lccc71/pmw/lib/pb;->f:I

    add-int/2addr v2, v3

    .line 646
    if-eqz v0, :cond_0

    .line 648
    if-eqz v1, :cond_2

    .line 650
    iget-object v3, p0, Lccc71/pmw/lib/ok;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v1, v0, v2}, Lccc71/pmw/lib/pmw_sysctl;->a(Landroid/widget/TextView;Lccc71/pmw/lib/pb;I)V

    .line 652
    :cond_2
    if-eqz p1, :cond_0

    .line 654
    iget-object v1, p0, Lccc71/pmw/lib/ok;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v0, v2}, Lccc71/pmw/lib/pmw_sysctl;->a(Lccc71/pmw/lib/pmw_sysctl;Landroid/view/View;Lccc71/pmw/lib/pb;Ljava/lang/String;)V

    goto :goto_0
.end method
