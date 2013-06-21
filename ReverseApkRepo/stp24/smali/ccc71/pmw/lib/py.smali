.class final Lccc71/pmw/lib/py;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/px;

.field private final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/px;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/py;->a:Lccc71/pmw/lib/px;

    iput-object p2, p0, Lccc71/pmw/lib/py;->b:Landroid/widget/EditText;

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/py;)Lccc71/pmw/lib/px;
    .locals 1
    .parameter

    .prologue
    .line 536
    iget-object v0, p0, Lccc71/pmw/lib/py;->a:Lccc71/pmw/lib/px;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 541
    iget-object v0, p0, Lccc71/pmw/lib/py;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lccc71/pmw/lib/py;->a:Lccc71/pmw/lib/px;

    invoke-static {v1}, Lccc71/pmw/lib/px;->a(Lccc71/pmw/lib/px;)Lccc71/pmw/lib/pmw_voltage_table;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;)Lccc71/pmw/a/ah;

    move-result-object v1

    .line 544
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/pmw/voltages/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    new-instance v2, Lccc71/pmw/lib/pz;

    invoke-direct {v2, p0, v1, v0}, Lccc71/pmw/lib/pz;-><init>(Lccc71/pmw/lib/py;Lccc71/pmw/a/ah;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 575
    invoke-virtual {v2, v0}, Lccc71/pmw/lib/pz;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 577
    :cond_0
    return-void
.end method
