.class final Lccc71/pmw/lib/pu;
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
    iput-object p1, p0, Lccc71/pmw/lib/pu;->a:Lccc71/pmw/lib/pmw_voltage_table;

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pu;)Lccc71/pmw/lib/pmw_voltage_table;
    .locals 1
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lccc71/pmw/lib/pu;->a:Lccc71/pmw/lib/pmw_voltage_table;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 470
    iget-object v0, p0, Lccc71/pmw/lib/pu;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;)Lccc71/pmw/a/ah;

    move-result-object v0

    .line 471
    iget-object v1, p0, Lccc71/pmw/lib/pu;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;)Lccc71/pmw/a/ah;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccc71/pmw/lib/pu;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_voltage_table;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    new-instance v5, Lccc71/pmw/lib/pv;

    invoke-direct {v5, p0, v0}, Lccc71/pmw/lib/pv;-><init>(Lccc71/pmw/lib/pu;Lccc71/pmw/a/ah;)V

    .line 518
    new-instance v0, Lccc71/utils/h;

    iget-object v1, p0, Lccc71/pmw/lib/pu;->a:Lccc71/pmw/lib/pmw_voltage_table;

    iget-object v2, p0, Lccc71/pmw/lib/pu;->a:Lccc71/pmw/lib/pmw_voltage_table;

    sget v3, Lccc71/pmw/lib/g;->fC:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_voltage_table;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/sdcard/pmw/voltages/"

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lccc71/utils/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLccc71/utils/m;)V

    .line 519
    invoke-virtual {v0}, Lccc71/utils/h;->a()V

    .line 520
    invoke-virtual {v0}, Lccc71/utils/h;->show()V

    goto :goto_0
.end method
