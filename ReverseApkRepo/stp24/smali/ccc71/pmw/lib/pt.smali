.class final Lccc71/pmw/lib/pt;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field a:Landroid/app/ProgressDialog;

.field final synthetic b:Lccc71/pmw/lib/pmw_voltage_table;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_voltage_table;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/pt;->b:Lccc71/pmw/lib/pmw_voltage_table;

    .line 844
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/pt;->b:Lccc71/pmw/lib/pmw_voltage_table;

    iget-object v1, p0, Lccc71/pmw/lib/pt;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;)Lccc71/pmw/a/ah;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/pt;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_voltage_table;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccc71/pmw/a/ah;->e(Landroid/content/Context;)[[I

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;[[I)V

    :goto_0
    aget-object v0, p1, v3

    return-object v0

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pt;->b:Lccc71/pmw/lib/pmw_voltage_table;

    iget-object v1, p0, Lccc71/pmw/lib/pt;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;)Lccc71/pmw/a/ah;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/pt;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_voltage_table;->e(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lccc71/pmw/a/ah;->a([[I)[[I

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;[[I)V

    goto :goto_0
.end method

.method protected final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 862
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lccc71/pmw/lib/pt;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lccc71/pmw/lib/pt;->a:Landroid/app/ProgressDialog;

    .line 863
    iget-object v0, p0, Lccc71/pmw/lib/pt;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 864
    iget-object v0, p0, Lccc71/pmw/lib/pt;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lccc71/pmw/lib/pt;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v2, Lccc71/pmw/lib/g;->ft:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_voltage_table;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v0, p0, Lccc71/pmw/lib/pt;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 866
    iget-object v0, p0, Lccc71/pmw/lib/pt;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 868
    invoke-super {p0}, Lccc71/utils/android/a;->a()V

    .line 869
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lccc71/pmw/lib/pt;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_voltage_table;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/pt;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/pt;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->b(Lccc71/pmw/lib/pmw_voltage_table;I)V

    :goto_1
    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/pt;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_voltage_table;->h(Lccc71/pmw/lib/pmw_voltage_table;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
