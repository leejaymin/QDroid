.class Lcom/wareone/tappmt/Security$2;
.super Ljava/lang/Object;
.source "Security.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Security;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Security;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Security;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Security$2;->this$0:Lcom/wareone/tappmt/Security;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const v9, 0x7f09004c

    .line 66
    iget-object v6, p0, Lcom/wareone/tappmt/Security$2;->this$0:Lcom/wareone/tappmt/Security;

    const-string v7, "TapPMTPrefs"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/wareone/tappmt/Security;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 67
    .local v5, settings:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 69
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v6, p0, Lcom/wareone/tappmt/Security$2;->this$0:Lcom/wareone/tappmt/Security;

    const v7, 0x7f0c00a5

    invoke-virtual {v6, v7}, Lcom/wareone/tappmt/Security;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 70
    .local v0, btnSecurity:Landroid/widget/ToggleButton;
    const-string v6, "SECURITY_ENABLED"

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 71
    iget-object v6, p0, Lcom/wareone/tappmt/Security$2;->this$0:Lcom/wareone/tappmt/Security;

    const v7, 0x7f0c0046

    invoke-virtual {v6, v7}, Lcom/wareone/tappmt/Security;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 72
    .local v3, edtPasswd:Landroid/widget/EditText;
    iget-object v6, p0, Lcom/wareone/tappmt/Security$2;->this$0:Lcom/wareone/tappmt/Security;

    const v7, 0x7f0c0048

    invoke-virtual {v6, v7}, Lcom/wareone/tappmt/Security;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 74
    .local v2, edtConfirm:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 75
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 76
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/wareone/tappmt/Security$2;->this$0:Lcom/wareone/tappmt/Security;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    const v7, 0x7f0900b5

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 78
    new-instance v7, Lcom/wareone/tappmt/Security$2$1;

    invoke-direct {v7, p0}, Lcom/wareone/tappmt/Security$2$1;-><init>(Lcom/wareone/tappmt/Security$2;)V

    invoke-virtual {v6, v9, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 88
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 119
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 92
    iget-object v6, p0, Lcom/wareone/tappmt/Security$2;->this$0:Lcom/wareone/tappmt/Security;

    #getter for: Lcom/wareone/tappmt/Security;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v6}, Lcom/wareone/tappmt/Security;->access$0(Lcom/wareone/tappmt/Security;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v6

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, md5:Ljava/lang/String;
    const-string v6, "PASSWD"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    iget-object v6, p0, Lcom/wareone/tappmt/Security$2;->this$0:Lcom/wareone/tappmt/Security;

    invoke-virtual {v6}, Lcom/wareone/tappmt/Security;->finish()V

    goto :goto_0

    .line 100
    .end local v4           #md5:Ljava/lang/String;
    :cond_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/wareone/tappmt/Security$2;->this$0:Lcom/wareone/tappmt/Security;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    const v7, 0x7f0900b6

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 102
    new-instance v7, Lcom/wareone/tappmt/Security$2$2;

    invoke-direct {v7, p0}, Lcom/wareone/tappmt/Security$2$2;-><init>(Lcom/wareone/tappmt/Security$2;)V

    invoke-virtual {v6, v9, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 112
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 115
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    iget-object v6, p0, Lcom/wareone/tappmt/Security$2;->this$0:Lcom/wareone/tappmt/Security;

    invoke-virtual {v6}, Lcom/wareone/tappmt/Security;->finish()V

    goto :goto_0
.end method
