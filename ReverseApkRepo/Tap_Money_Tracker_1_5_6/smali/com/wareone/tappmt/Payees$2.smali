.class Lcom/wareone/tappmt/Payees$2;
.super Ljava/lang/Object;
.source "Payees.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
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
    iput-object p1, p0, Lcom/wareone/tappmt/Payees$2;->this$0:Lcom/wareone/tappmt/Payees;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Payees$2;)Lcom/wareone/tappmt/Payees;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/wareone/tappmt/Payees$2;->this$0:Lcom/wareone/tappmt/Payees;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move v0, p3

    .line 104
    .local v0, m_pos:I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wareone/tappmt/Payees$2;->this$0:Lcom/wareone/tappmt/Payees;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    const v2, 0x7f090083

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 106
    const v2, 0x7f09004c

    new-instance v3, Lcom/wareone/tappmt/Payees$2$1;

    invoke-direct {v3, p0, v0}, Lcom/wareone/tappmt/Payees$2$1;-><init>(Lcom/wareone/tappmt/Payees$2;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 118
    const v2, 0x7f09004b

    new-instance v3, Lcom/wareone/tappmt/Payees$2$2;

    invoke-direct {v3, p0}, Lcom/wareone/tappmt/Payees$2$2;-><init>(Lcom/wareone/tappmt/Payees$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 127
    const/4 v1, 0x0

    return v1
.end method
