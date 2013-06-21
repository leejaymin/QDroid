.class final Lccc71/pmw/lib/pn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_voltage_table;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_voltage_table;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/pn;->a:Lccc71/pmw/lib/pmw_voltage_table;

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 747
    iget-object v0, p0, Lccc71/pmw/lib/pn;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_voltage_table;->e(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v0

    array-length v2, v0

    move v0, v1

    .line 748
    :goto_0
    if-lt v0, v2, :cond_0

    .line 761
    iget-object v0, p0, Lccc71/pmw/lib/pn;->a:Lccc71/pmw/lib/pmw_voltage_table;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;I)V

    .line 762
    return-void

    .line 750
    :cond_0
    iget-object v3, p0, Lccc71/pmw/lib/pn;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_voltage_table;->e(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v4, p0, Lccc71/pmw/lib/pn;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v4

    aget v3, v3, v4

    if-eqz v3, :cond_1

    .line 752
    iget-object v3, p0, Lccc71/pmw/lib/pn;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_voltage_table;->e(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v4, p0, Lccc71/pmw/lib/pn;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v4

    aget v5, v3, v4

    iget-object v6, p0, Lccc71/pmw/lib/pn;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v6}, Lccc71/pmw/lib/pmw_voltage_table;->i(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v3, v4

    .line 748
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    :cond_1
    iget-object v3, p0, Lccc71/pmw/lib/pn;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_voltage_table;->e(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v4, p0, Lccc71/pmw/lib/pn;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_voltage_table;->g(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v4

    aget-object v4, v4, v0

    aget v4, v4, v1

    aput v4, v3, v1

    .line 757
    iget-object v3, p0, Lccc71/pmw/lib/pn;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_voltage_table;->e(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v4, p0, Lccc71/pmw/lib/pn;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v4

    iget-object v5, p0, Lccc71/pmw/lib/pn;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_voltage_table;->g(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v5

    aget-object v5, v5, v0

    iget-object v6, p0, Lccc71/pmw/lib/pn;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v6}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v6

    aget v5, v5, v6

    iget-object v6, p0, Lccc71/pmw/lib/pn;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v6}, Lccc71/pmw/lib/pmw_voltage_table;->i(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v3, v4

    goto :goto_1
.end method
