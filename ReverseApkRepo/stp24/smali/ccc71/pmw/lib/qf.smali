.class final Lccc71/pmw/lib/qf;
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
    iput-object p1, p0, Lccc71/pmw/lib/qf;->a:Lccc71/pmw/lib/pmw_voltage_table;

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/qf;)Lccc71/pmw/lib/pmw_voltage_table;
    .locals 1
    .parameter

    .prologue
    .line 661
    iget-object v0, p0, Lccc71/pmw/lib/qf;->a:Lccc71/pmw/lib/pmw_voltage_table;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 666
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 667
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lccc71/pmw/lib/qf;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 668
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 669
    iget-object v2, p0, Lccc71/pmw/lib/qf;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_voltage_table;->e(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lccc71/pmw/lib/qf;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v3

    aget v2, v2, v3

    if-eqz v2, :cond_0

    .line 671
    iget-object v2, p0, Lccc71/pmw/lib/qf;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_voltage_table;->e(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lccc71/pmw/lib/qf;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v3

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 677
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 678
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 679
    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 681
    iget-object v2, p0, Lccc71/pmw/lib/qf;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_voltage_table;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 683
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lccc71/pmw/lib/qf;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lccc71/pmw/lib/g;->eW:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 684
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lccc71/pmw/lib/qg;

    invoke-direct {v4, p0, v0, v1}, Lccc71/pmw/lib/qg;-><init>(Lccc71/pmw/lib/qf;ILandroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 695
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 696
    return-void

    .line 675
    :cond_0
    iget-object v2, p0, Lccc71/pmw/lib/qf;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_voltage_table;->g(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lccc71/pmw/lib/qf;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v3

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
