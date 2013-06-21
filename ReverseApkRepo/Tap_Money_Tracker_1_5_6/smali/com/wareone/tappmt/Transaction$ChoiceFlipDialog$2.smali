.class Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$2;
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
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$2;->this$1:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v4, "Transaction"

    .line 215
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 218
    .local v0, tv_categroy_name:Landroid/widget/CheckedTextView;
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$2;->this$1:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;

    iget-object v3, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$2;->this$1:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;

    #getter for: Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_groupData:Ljava/util/List;
    invoke-static {v3}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->access$3(Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;)Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_data:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->access$1(Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;Ljava/util/List;)V

    .line 219
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$2;->this$1:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;

    #getter for: Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_childData:Ljava/util/List;
    invoke-static {v2}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->access$4(Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 223
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$2;->this$1:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;

    #calls: Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->_refreshChild(I)V
    invoke-static {v2, p3}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->access$5(Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;I)V

    .line 225
    const-string v2, "Transaction"

    const-string v2, "Item Selected"

    invoke-static {v4, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$2;->this$1:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;

    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    .line 227
    .local v1, vf:Landroid/widget/ViewFlipper;
    const-string v2, "Transaction"

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040004

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 229
    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showNext()V

    .line 233
    .end local v1           #vf:Landroid/widget/ViewFlipper;
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$2;->this$1:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;

    #calls: Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->_ItemClick(I)V
    invoke-static {v2, p3}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->access$2(Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;I)V

    goto :goto_0
.end method
