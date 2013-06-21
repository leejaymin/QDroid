.class final Lccc71/pmw/lib/qd;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/qc;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/qc;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/qd;->a:Lccc71/pmw/lib/qc;

    .line 622
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/qd;->a:Lccc71/pmw/lib/qc;

    invoke-static {v0}, Lccc71/pmw/lib/qc;->a(Lccc71/pmw/lib/qc;)Lccc71/pmw/lib/pmw_voltage_table;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/a/ah;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/qd;->a:Lccc71/pmw/lib/qc;

    invoke-static {v0}, Lccc71/pmw/lib/qc;->a(Lccc71/pmw/lib/qc;)Lccc71/pmw/lib/pmw_voltage_table;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_voltage_table;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/qd;->a:Lccc71/pmw/lib/qc;

    invoke-static {v0}, Lccc71/pmw/lib/qc;->a(Lccc71/pmw/lib/qc;)Lccc71/pmw/lib/pmw_voltage_table;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->ab:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, Lccc71/pmw/lib/g;->bF:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lccc71/pmw/lib/qd;->a:Lccc71/pmw/lib/qc;

    invoke-static {v1}, Lccc71/pmw/lib/qc;->a(Lccc71/pmw/lib/qc;)Lccc71/pmw/lib/pmw_voltage_table;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->d(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/qd;->a:Lccc71/pmw/lib/qc;

    invoke-static {v0}, Lccc71/pmw/lib/qc;->a(Lccc71/pmw/lib/qc;)Lccc71/pmw/lib/pmw_voltage_table;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_voltage_table;->c(Lccc71/pmw/lib/pmw_voltage_table;)V

    :cond_0
    return-void
.end method
