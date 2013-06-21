.class Lcom/wareone/tappmt/TapPMT$27;
.super Ljava/lang/Object;
.source "TapPMT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TapPMT;->_createAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/TapPMT;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TapPMT;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$27;->this$0:Lcom/wareone/tappmt/TapPMT;

    iput-object p2, p0, Lcom/wareone/tappmt/TapPMT$27;->val$view:Landroid/view/View;

    .line 1472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v10, 0x7f09004c

    const/4 v11, 0x0

    .line 1478
    iget-object v8, p0, Lcom/wareone/tappmt/TapPMT$27;->val$view:Landroid/view/View;

    const v9, 0x7f0c0046

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1479
    .local v3, edt_password:Landroid/widget/EditText;
    iget-object v8, p0, Lcom/wareone/tappmt/TapPMT$27;->val$view:Landroid/view/View;

    const v9, 0x7f0c0048

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1480
    .local v2, edt_confirm:Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1481
    .local v5, password:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1482
    .local v0, confirm:Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_0

    .line 1483
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/wareone/tappmt/TapPMT$27;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1484
    const v9, 0x7f0900b5

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1485
    new-instance v9, Lcom/wareone/tappmt/TapPMT$27$1;

    invoke-direct {v9, p0}, Lcom/wareone/tappmt/TapPMT$27$1;-><init>(Lcom/wareone/tappmt/TapPMT$27;)V

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1495
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1534
    :goto_0
    return-void

    .line 1497
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 1498
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1500
    iget-object v8, p0, Lcom/wareone/tappmt/TapPMT$27;->this$0:Lcom/wareone/tappmt/TapPMT;

    const-string v9, "TapPMTPrefs"

    invoke-virtual {v8, v9, v11}, Lcom/wareone/tappmt/TapPMT;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1501
    .local v6, settings:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1502
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v8, p0, Lcom/wareone/tappmt/TapPMT$27;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v8}, Lcom/wareone/tappmt/TapPMT;->access$10(Lcom/wareone/tappmt/TapPMT;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/wareone/tappmt/PmtDbAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1503
    .local v4, md5:Ljava/lang/String;
    const-string v8, "sync_password"

    invoke-interface {v1, v8, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1504
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1506
    invoke-static {}, Lcom/wareone/tappmt/TapPMT;->access$7()Ljava/lang/String;

    move-result-object v8

    const-string v9, "show progress"

    invoke-static {v8, v9}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    iget-object v8, p0, Lcom/wareone/tappmt/TapPMT$27;->this$0:Lcom/wareone/tappmt/TapPMT;

    new-instance v9, Landroid/app/ProgressDialog;

    iget-object v10, p0, Lcom/wareone/tappmt/TapPMT$27;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-direct {v9, v10}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;
    invoke-static {v8, v9}, Lcom/wareone/tappmt/TapPMT;->access$26(Lcom/wareone/tappmt/TapPMT;Landroid/app/ProgressDialog;)V

    .line 1508
    iget-object v8, p0, Lcom/wareone/tappmt/TapPMT$27;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/wareone/tappmt/TapPMT;->access$0(Lcom/wareone/tappmt/TapPMT;)Landroid/app/ProgressDialog;

    move-result-object v8

    iget-object v9, p0, Lcom/wareone/tappmt/TapPMT$27;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-virtual {v9}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09007c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1509
    iget-object v8, p0, Lcom/wareone/tappmt/TapPMT$27;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/wareone/tappmt/TapPMT;->access$0(Lcom/wareone/tappmt/TapPMT;)Landroid/app/ProgressDialog;

    move-result-object v8

    iget-object v9, p0, Lcom/wareone/tappmt/TapPMT$27;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-virtual {v9}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900b7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1510
    iget-object v8, p0, Lcom/wareone/tappmt/TapPMT$27;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/wareone/tappmt/TapPMT;->access$0(Lcom/wareone/tappmt/TapPMT;)Landroid/app/ProgressDialog;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1511
    iget-object v8, p0, Lcom/wareone/tappmt/TapPMT$27;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/wareone/tappmt/TapPMT;->access$0(Lcom/wareone/tappmt/TapPMT;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1512
    iget-object v8, p0, Lcom/wareone/tappmt/TapPMT$27;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/wareone/tappmt/TapPMT;->access$0(Lcom/wareone/tappmt/TapPMT;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->show()V

    .line 1514
    invoke-static {}, Lcom/wareone/tappmt/TapPMT;->access$7()Ljava/lang/String;

    move-result-object v8

    const-string v9, "doSync"

    invoke-static {v8, v9}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/wareone/tappmt/SyncRunner;

    iget-object v9, p0, Lcom/wareone/tappmt/TapPMT$27;->this$0:Lcom/wareone/tappmt/TapPMT;

    iget-object v10, p0, Lcom/wareone/tappmt/TapPMT$27;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->handler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/wareone/tappmt/TapPMT;->access$27(Lcom/wareone/tappmt/TapPMT;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x1772

    invoke-direct {v8, v9, v10, v11}, Lcom/wareone/tappmt/SyncRunner;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1516
    .local v7, thread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1520
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #md5:Ljava/lang/String;
    .end local v6           #settings:Landroid/content/SharedPreferences;
    .end local v7           #thread:Ljava/lang/Thread;
    :cond_1
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/wareone/tappmt/TapPMT$27;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1521
    const v9, 0x7f0900b6

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1522
    new-instance v9, Lcom/wareone/tappmt/TapPMT$27$2;

    invoke-direct {v9, p0}, Lcom/wareone/tappmt/TapPMT$27$2;-><init>(Lcom/wareone/tappmt/TapPMT$27;)V

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1532
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method
