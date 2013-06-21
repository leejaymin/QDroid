.class Lcom/wareone/tappmt/Transaction$9;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Transaction;->_getTemplates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Transaction;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Transaction;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    .line 1379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "pos"

    .prologue
    const-string v6, "mode"

    const-string v5, "_id"

    const-string v4, " "

    .line 1384
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$6()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "mode"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/wareone/tappmt/Transaction;->access$7(I)V

    .line 1385
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$8()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1399
    :goto_0
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    #calls: Lcom/wareone/tappmt/Transaction;->_loadData()V
    invoke-static {v0}, Lcom/wareone/tappmt/Transaction;->access$11(Lcom/wareone/tappmt/Transaction;)V

    .line 1401
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "mode"

    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$8()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    const-string v1, "Transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "_getTemplate--------->"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$6()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "_id"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    .line 1405
    iget-object v1, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$6()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "_id"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    #calls: Lcom/wareone/tappmt/Transaction;->_getTemplate(J)V
    invoke-static {v1, v2, v3}, Lcom/wareone/tappmt/Transaction;->access$12(Lcom/wareone/tappmt/Transaction;J)V

    .line 1409
    :goto_1
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    #calls: Lcom/wareone/tappmt/Transaction;->_initControls()V
    invoke-static {v0}, Lcom/wareone/tappmt/Transaction;->access$14(Lcom/wareone/tappmt/Transaction;)V

    .line 1410
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1411
    return-void

    .line 1387
    :pswitch_0
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    const v1, 0x7f030040

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->setContentView(I)V

    .line 1388
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    invoke-virtual {v2}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    #getter for: Lcom/wareone/tappmt/Transaction;->m_action:I
    invoke-static {v3}, Lcom/wareone/tappmt/Transaction;->access$9(Lcom/wareone/tappmt/Transaction;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    invoke-virtual {v2}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/wareone/tappmt/Transaction;->m_title:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/wareone/tappmt/Transaction;->access$10(Lcom/wareone/tappmt/Transaction;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1391
    :pswitch_1
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    const v1, 0x7f030042

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->setContentView(I)V

    .line 1392
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    invoke-virtual {v2}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    #getter for: Lcom/wareone/tappmt/Transaction;->m_action:I
    invoke-static {v3}, Lcom/wareone/tappmt/Transaction;->access$9(Lcom/wareone/tappmt/Transaction;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    invoke-virtual {v2}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/wareone/tappmt/Transaction;->m_title:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/wareone/tappmt/Transaction;->access$10(Lcom/wareone/tappmt/Transaction;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1395
    :pswitch_2
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    const v1, 0x7f030043

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->setContentView(I)V

    .line 1396
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    invoke-virtual {v2}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    #getter for: Lcom/wareone/tappmt/Transaction;->m_action:I
    invoke-static {v3}, Lcom/wareone/tappmt/Transaction;->access$9(Lcom/wareone/tappmt/Transaction;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    invoke-virtual {v2}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/wareone/tappmt/Transaction;->m_title:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/wareone/tappmt/Transaction;->access$10(Lcom/wareone/tappmt/Transaction;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1407
    :cond_0
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$9;->this$0:Lcom/wareone/tappmt/Transaction;

    #calls: Lcom/wareone/tappmt/Transaction;->_restoreTransaction()V
    invoke-static {v0}, Lcom/wareone/tappmt/Transaction;->access$13(Lcom/wareone/tappmt/Transaction;)V

    goto/16 :goto_1

    .line 1385
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
