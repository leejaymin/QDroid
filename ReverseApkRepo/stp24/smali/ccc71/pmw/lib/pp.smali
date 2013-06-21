.class final Lccc71/pmw/lib/pp;
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
    iput-object p1, p0, Lccc71/pmw/lib/pp;->a:Lccc71/pmw/lib/pmw_voltage_table;

    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 790
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 791
    iget-object v1, p0, Lccc71/pmw/lib/pp;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->e(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lccc71/pmw/lib/pp;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v2

    aget v1, v1, v2

    if-eqz v1, :cond_0

    .line 793
    iget-object v1, p0, Lccc71/pmw/lib/pp;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->e(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lccc71/pmw/lib/pp;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v2

    aget v3, v1, v2

    iget-object v4, p0, Lccc71/pmw/lib/pp;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_voltage_table;->i(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 801
    :goto_0
    iget-object v1, p0, Lccc71/pmw/lib/pp;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;I)V

    .line 802
    return-void

    .line 797
    :cond_0
    iget-object v1, p0, Lccc71/pmw/lib/pp;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->e(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lccc71/pmw/lib/pp;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_voltage_table;->g(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v2

    aget-object v2, v2, v0

    aget v2, v2, v3

    aput v2, v1, v3

    .line 798
    iget-object v1, p0, Lccc71/pmw/lib/pp;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->e(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lccc71/pmw/lib/pp;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v2

    iget-object v3, p0, Lccc71/pmw/lib/pp;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_voltage_table;->g(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v4, p0, Lccc71/pmw/lib/pp;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v4

    aget v3, v3, v4

    iget-object v4, p0, Lccc71/pmw/lib/pp;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_voltage_table;->i(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v1, v2

    goto :goto_0
.end method
