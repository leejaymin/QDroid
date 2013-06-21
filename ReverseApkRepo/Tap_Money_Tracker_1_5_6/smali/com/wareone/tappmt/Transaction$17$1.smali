.class Lcom/wareone/tappmt/Transaction$17$1;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Transaction$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/Transaction$17;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Transaction$17;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$17$1;->this$1:Lcom/wareone/tappmt/Transaction$17;

    .line 1690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "position"

    .prologue
    const/4 v9, 0x1

    const-string v11, "_id"

    const-string v10, "TYPE"

    const-string v8, "Transaction"

    .line 1694
    const-string v6, "Transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Item Selected postion --> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    move-object v0, p1

    check-cast v0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;

    move-object v4, v0

    .line 1696
    .local v4, dlg:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;
    invoke-virtual {v4, p2}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->getData(I)Ljava/util/Map;

    move-result-object v6

    const-string v7, "_id"

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1697
    .local v1, _id:Ljava/lang/String;
    invoke-virtual {v4, p2}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->getData(I)Ljava/util/Map;

    move-result-object v6

    const-string v7, "acc_name"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1698
    .local v2, _name:Ljava/lang/String;
    const-string v6, "Transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "category id --> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    const-string v6, "Transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "category name --> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    invoke-virtual {v4}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->dismiss()V

    .line 1703
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 1704
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/wareone/tappmt/Transaction$17$1;->this$1:Lcom/wareone/tappmt/Transaction$17;

    #getter for: Lcom/wareone/tappmt/Transaction$17;->this$0:Lcom/wareone/tappmt/Transaction;
    invoke-static {v6}, Lcom/wareone/tappmt/Transaction$17;->access$0(Lcom/wareone/tappmt/Transaction$17;)Lcom/wareone/tappmt/Transaction;

    move-result-object v6

    const-class v7, Lcom/wareone/tappmt/CategoryEditor;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1705
    .local v5, it:Landroid/content/Intent;
    const-string v6, "ACTION"

    const v7, 0x7f09005b

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1706
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$8()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1714
    :goto_0
    :pswitch_0
    const-string v6, "_id"

    const/4 v6, 0x0

    invoke-virtual {v5, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1715
    iget-object v6, p0, Lcom/wareone/tappmt/Transaction$17$1;->this$1:Lcom/wareone/tappmt/Transaction$17;

    #getter for: Lcom/wareone/tappmt/Transaction$17;->this$0:Lcom/wareone/tappmt/Transaction;
    invoke-static {v6}, Lcom/wareone/tappmt/Transaction$17;->access$0(Lcom/wareone/tappmt/Transaction$17;)Lcom/wareone/tappmt/Transaction;

    move-result-object v6

    invoke-virtual {v6, v5, v9}, Lcom/wareone/tappmt/Transaction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1728
    .end local v5           #it:Landroid/content/Intent;
    :goto_1
    return-void

    .line 1708
    .restart local v5       #it:Landroid/content/Intent;
    :pswitch_1
    const-string v6, "TYPE"

    const/4 v6, -0x1

    invoke-virtual {v5, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1711
    :pswitch_2
    const-string v6, "TYPE"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1719
    .end local v5           #it:Landroid/content/Intent;
    :cond_0
    iget-object v6, p0, Lcom/wareone/tappmt/Transaction$17$1;->this$1:Lcom/wareone/tappmt/Transaction$17;

    #getter for: Lcom/wareone/tappmt/Transaction$17;->this$0:Lcom/wareone/tappmt/Transaction;
    invoke-static {v6}, Lcom/wareone/tappmt/Transaction$17;->access$0(Lcom/wareone/tappmt/Transaction$17;)Lcom/wareone/tappmt/Transaction;

    move-result-object v6

    const v7, 0x7f0c0021

    invoke-virtual {v6, v7}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1720
    .local v3, btn:Landroid/widget/Button;
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1721
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v6

    const-string v7, "category"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    iget-object v6, p0, Lcom/wareone/tappmt/Transaction$17$1;->this$1:Lcom/wareone/tappmt/Transaction$17;

    #getter for: Lcom/wareone/tappmt/Transaction$17;->this$0:Lcom/wareone/tappmt/Transaction;
    invoke-static {v6}, Lcom/wareone/tappmt/Transaction$17;->access$0(Lcom/wareone/tappmt/Transaction$17;)Lcom/wareone/tappmt/Transaction;

    move-result-object v6

    #calls: Lcom/wareone/tappmt/Transaction;->_checkBudget()Z
    invoke-static {v6}, Lcom/wareone/tappmt/Transaction;->access$20(Lcom/wareone/tappmt/Transaction;)Z

    goto :goto_1

    .line 1706
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
