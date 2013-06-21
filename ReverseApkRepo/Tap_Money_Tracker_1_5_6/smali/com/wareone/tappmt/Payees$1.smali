.class Lcom/wareone/tappmt/Payees$1;
.super Ljava/lang/Object;
.source "Payees.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Payees;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Payees;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Payees;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Payees$1;->this$0:Lcom/wareone/tappmt/Payees;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Payees$1;)Lcom/wareone/tappmt/Payees;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wareone/tappmt/Payees$1;->this$0:Lcom/wareone/tappmt/Payees;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/16 v5, 0xa

    .line 57
    move v1, p3

    .line 58
    .local v1, m_pos:I
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, input:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/wareone/tappmt/Payees$1;->this$0:Lcom/wareone/tappmt/Payees;

    #getter for: Lcom/wareone/tappmt/Payees;->m_items:Ljava/util/List;
    invoke-static {v2}, Lcom/wareone/tappmt/Payees;->access$0(Lcom/wareone/tappmt/Payees;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 63
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/wareone/tappmt/Payees$1;->this$0:Lcom/wareone/tappmt/Payees;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    const v3, 0x7f090082

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 66
    const v3, 0x7f09004c

    new-instance v4, Lcom/wareone/tappmt/Payees$1$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/wareone/tappmt/Payees$1$1;-><init>(Lcom/wareone/tappmt/Payees$1;Landroid/widget/EditText;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 86
    const v3, 0x7f09004b

    new-instance v4, Lcom/wareone/tappmt/Payees$1$2;

    invoke-direct {v4, p0}, Lcom/wareone/tappmt/Payees$1$2;-><init>(Lcom/wareone/tappmt/Payees$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 94
    return-void
.end method
