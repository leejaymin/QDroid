.class final Lccc71/pmw/lib/pq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_voltage_table;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_voltage_table;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/pq;->a:Lccc71/pmw/lib/pmw_voltage_table;

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 810
    iget-object v0, p0, Lccc71/pmw/lib/pq;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_voltage_table;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    if-eqz p3, :cond_0

    .line 815
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    .line 817
    iget-object v1, p0, Lccc71/pmw/lib/pq;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1, p2}, Lccc71/pmw/lib/pmw_voltage_table;->d(Lccc71/pmw/lib/pmw_voltage_table;I)I

    move-result v1

    .line 819
    iget-object v2, p0, Lccc71/pmw/lib/pq;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_voltage_table;->e(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lccc71/pmw/lib/pq;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_voltage_table;->g(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    aget v3, v3, v4

    aput v3, v2, v4

    .line 820
    iget-object v2, p0, Lccc71/pmw/lib/pq;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_voltage_table;->e(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lccc71/pmw/lib/pq;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v3

    aput v1, v2, v3

    .line 822
    iget-object v1, p0, Lccc71/pmw/lib/pq;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_voltage_table;->b(Lccc71/pmw/lib/pmw_voltage_table;I)V

    goto :goto_0
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 829
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter

    .prologue
    .line 836
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    .line 837
    iget-object v1, p0, Lccc71/pmw/lib/pq;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;I)V

    .line 838
    return-void
.end method
