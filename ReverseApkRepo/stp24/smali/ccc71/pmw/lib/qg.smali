.class final Lccc71/pmw/lib/qg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/qf;

.field private final synthetic b:I

.field private final synthetic c:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/qf;ILandroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/qg;->a:Lccc71/pmw/lib/qf;

    iput p2, p0, Lccc71/pmw/lib/qg;->b:I

    iput-object p3, p0, Lccc71/pmw/lib/qg;->c:Landroid/widget/EditText;

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 689
    iget-object v0, p0, Lccc71/pmw/lib/qg;->a:Lccc71/pmw/lib/qf;

    invoke-static {v0}, Lccc71/pmw/lib/qf;->a(Lccc71/pmw/lib/qf;)Lccc71/pmw/lib/pmw_voltage_table;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_voltage_table;->e(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v0

    iget v1, p0, Lccc71/pmw/lib/qg;->b:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lccc71/pmw/lib/qg;->a:Lccc71/pmw/lib/qf;

    invoke-static {v1}, Lccc71/pmw/lib/qf;->a(Lccc71/pmw/lib/qf;)Lccc71/pmw/lib/pmw_voltage_table;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v1

    iget-object v2, p0, Lccc71/pmw/lib/qg;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 691
    iget-object v0, p0, Lccc71/pmw/lib/qg;->a:Lccc71/pmw/lib/qf;

    invoke-static {v0}, Lccc71/pmw/lib/qf;->a(Lccc71/pmw/lib/qf;)Lccc71/pmw/lib/pmw_voltage_table;

    move-result-object v0

    iget v1, p0, Lccc71/pmw/lib/qg;->b:I

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->b(Lccc71/pmw/lib/pmw_voltage_table;I)V

    .line 693
    return-void
.end method
