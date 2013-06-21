.class Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$1;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/util/List;I)V
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
.field final synthetic this$1:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$1;->this$1:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "pos"
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
    .line 194
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 195
    .local v0, tv_categroy_name:Landroid/widget/CheckedTextView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 197
    iget-object v1, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$1;->this$1:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;

    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$1;->this$1:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;

    #getter for: Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_child:Ljava/util/List;
    invoke-static {v2}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->access$0(Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_data:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->access$1(Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;Ljava/util/List;)V

    .line 198
    iget-object v1, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$1;->this$1:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;

    #calls: Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->_ItemClick(I)V
    invoke-static {v1, p3}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->access$2(Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;I)V

    .line 199
    return-void
.end method
