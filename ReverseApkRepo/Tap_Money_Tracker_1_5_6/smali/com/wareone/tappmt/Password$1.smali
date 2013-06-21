.class Lcom/wareone/tappmt/Password$1;
.super Ljava/lang/Object;
.source "Password.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Password;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Password;

.field private final synthetic val$extra:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Password;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Password$1;->this$0:Lcom/wareone/tappmt/Password;

    iput-object p2, p0, Lcom/wareone/tappmt/Password$1;->val$extra:Landroid/os/Bundle;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const-string v11, "SOURCE_ID"

    const-string v10, "AMOUNT"

    const-string v9, "SOURCE"

    const-string v8, "REMINDER_ID"

    .line 110
    iget-object v5, p0, Lcom/wareone/tappmt/Password$1;->this$0:Lcom/wareone/tappmt/Password;

    const-string v6, "TapPMTPrefs"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/wareone/tappmt/Password;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 111
    .local v4, settings:Landroid/content/SharedPreferences;
    const-string v5, "PASSWD"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, md5:Ljava/lang/String;
    iget-object v5, p0, Lcom/wareone/tappmt/Password$1;->this$0:Lcom/wareone/tappmt/Password;

    const v6, 0x7f0c0046

    invoke-virtual {v5, v6}, Lcom/wareone/tappmt/Password;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 113
    .local v0, edtPasswd:Landroid/widget/EditText;
    iget-object v5, p0, Lcom/wareone/tappmt/Password$1;->this$0:Lcom/wareone/tappmt/Password;

    #getter for: Lcom/wareone/tappmt/Password;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v5}, Lcom/wareone/tappmt/Password;->access$0(Lcom/wareone/tappmt/Password;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v5

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, pass:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 116
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/wareone/tappmt/Password$1;->this$0:Lcom/wareone/tappmt/Password;

    const-class v6, Lcom/wareone/tappmt/Security;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v1, it:Landroid/content/Intent;
    iget-object v5, p0, Lcom/wareone/tappmt/Password$1;->this$0:Lcom/wareone/tappmt/Password;

    invoke-virtual {v5, v1}, Lcom/wareone/tappmt/Password;->startActivity(Landroid/content/Intent;)V

    .line 119
    iget-object v5, p0, Lcom/wareone/tappmt/Password$1;->this$0:Lcom/wareone/tappmt/Password;

    invoke-virtual {v5}, Lcom/wareone/tappmt/Password;->finish()V

    .line 156
    .end local v1           #it:Landroid/content/Intent;
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    .line 122
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/wareone/tappmt/Password$1;->this$0:Lcom/wareone/tappmt/Password;

    const-class v6, Lcom/wareone/tappmt/TapPMT;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .restart local v1       #it:Landroid/content/Intent;
    iget-object v5, p0, Lcom/wareone/tappmt/Password$1;->val$extra:Landroid/os/Bundle;

    if-eqz v5, :cond_4

    .line 124
    iget-object v5, p0, Lcom/wareone/tappmt/Password$1;->val$extra:Landroid/os/Bundle;

    const-string v6, "SOURCE"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    const-string v5, "SOURCE"

    iget-object v5, p0, Lcom/wareone/tappmt/Password$1;->val$extra:Landroid/os/Bundle;

    const-string v6, "SOURCE"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v5, "SOURCE_ID"

    iget-object v5, p0, Lcom/wareone/tappmt/Password$1;->val$extra:Landroid/os/Bundle;

    const-string v6, "SOURCE_ID"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v11, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 127
    const-string v5, "AMOUNT"

    iget-object v5, p0, Lcom/wareone/tappmt/Password$1;->val$extra:Landroid/os/Bundle;

    const-string v6, "AMOUNT"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v1, v10, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 129
    :cond_1
    iget-object v5, p0, Lcom/wareone/tappmt/Password$1;->val$extra:Landroid/os/Bundle;

    const-string v6, "REMINDER_ID"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 130
    const-string v5, "REMINDER_ID"

    iget-object v5, p0, Lcom/wareone/tappmt/Password$1;->val$extra:Landroid/os/Bundle;

    const-string v6, "REMINDER_ID"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 132
    :cond_2
    iget-object v5, p0, Lcom/wareone/tappmt/Password$1;->val$extra:Landroid/os/Bundle;

    const-string v6, "WIDGET"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 133
    iget-object v5, p0, Lcom/wareone/tappmt/Password$1;->this$0:Lcom/wareone/tappmt/Password;

    invoke-virtual {v5, v1}, Lcom/wareone/tappmt/Password;->startActivity(Landroid/content/Intent;)V

    .line 138
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/wareone/tappmt/Password$1;->this$0:Lcom/wareone/tappmt/Password;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/wareone/tappmt/Password;->setResult(I)V

    .line 139
    iget-object v5, p0, Lcom/wareone/tappmt/Password$1;->this$0:Lcom/wareone/tappmt/Password;

    invoke-virtual {v5}, Lcom/wareone/tappmt/Password;->finish()V

    goto :goto_0

    .line 136
    :cond_4
    iget-object v5, p0, Lcom/wareone/tappmt/Password$1;->this$0:Lcom/wareone/tappmt/Password;

    invoke-virtual {v5, v1}, Lcom/wareone/tappmt/Password;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 141
    .end local v1           #it:Landroid/content/Intent;
    :cond_5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/wareone/tappmt/Password$1;->this$0:Lcom/wareone/tappmt/Password;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    const v6, 0x7f090092

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 143
    const v6, 0x7f09004c

    new-instance v7, Lcom/wareone/tappmt/Password$1$1;

    invoke-direct {v7, p0}, Lcom/wareone/tappmt/Password$1$1;-><init>(Lcom/wareone/tappmt/Password$1;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 153
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method
