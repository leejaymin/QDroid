.class Lcom/wareone/tappmt/TapPMT$29;
.super Ljava/lang/Object;
.source "TapPMT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TapPMT;->_inputPassword()V
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
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$29;->this$0:Lcom/wareone/tappmt/TapPMT;

    iput-object p2, p0, Lcom/wareone/tappmt/TapPMT$29;->val$view:Landroid/view/View;

    .line 1564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1570
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT$29;->val$view:Landroid/view/View;

    const v6, 0x7f0c0046

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1571
    .local v1, edt_password:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1572
    .local v3, password:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 1573
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/wareone/tappmt/TapPMT$29;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1574
    const v6, 0x7f0900b5

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1575
    const v6, 0x7f09004c

    new-instance v7, Lcom/wareone/tappmt/TapPMT$29$1;

    invoke-direct {v7, p0}, Lcom/wareone/tappmt/TapPMT$29$1;-><init>(Lcom/wareone/tappmt/TapPMT$29;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1585
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1611
    :goto_0
    return-void

    .line 1588
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1590
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT$29;->this$0:Lcom/wareone/tappmt/TapPMT;

    const-string v6, "TapPMTPrefs"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/wareone/tappmt/TapPMT;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1591
    .local v4, settings:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1592
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT$29;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v5}, Lcom/wareone/tappmt/TapPMT;->access$10(Lcom/wareone/tappmt/TapPMT;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1593
    .local v2, md5:Ljava/lang/String;
    const-string v5, "sync_password"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1594
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1596
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT$29;->this$0:Lcom/wareone/tappmt/TapPMT;

    #calls: Lcom/wareone/tappmt/TapPMT;->_doSync()V
    invoke-static {v5}, Lcom/wareone/tappmt/TapPMT;->access$4(Lcom/wareone/tappmt/TapPMT;)V

    goto :goto_0
.end method
