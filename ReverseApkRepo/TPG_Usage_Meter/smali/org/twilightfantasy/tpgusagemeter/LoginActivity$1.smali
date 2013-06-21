.class Lorg/twilightfantasy/tpgusagemeter/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/twilightfantasy/tpgusagemeter/LoginActivity;


# direct methods
.method constructor <init>(Lorg/twilightfantasy/tpgusagemeter/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity$1;->this$0:Lorg/twilightfantasy/tpgusagemeter/LoginActivity;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const-string v5, "TPGUsageMeter_Pref"

    .line 50
    iget-object v2, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity$1;->this$0:Lorg/twilightfantasy/tpgusagemeter/LoginActivity;

    iget-object v2, v2, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mStoreCredentialsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    iget-object v2, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity$1;->this$0:Lorg/twilightfantasy/tpgusagemeter/LoginActivity;

    const-string v3, "TPGUsageMeter_Pref"

    invoke-virtual {v2, v5, v4}, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 56
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57
    .local v0, preferencesEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "username"

    iget-object v3, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity$1;->this$0:Lorg/twilightfantasy/tpgusagemeter/LoginActivity;

    iget-object v3, v3, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mUsernameEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    const-string v2, "password"

    iget-object v3, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity$1;->this$0:Lorg/twilightfantasy/tpgusagemeter/LoginActivity;

    iget-object v3, v3, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    const-string v2, "plans_to_lookup"

    iget-object v3, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity$1;->this$0:Lorg/twilightfantasy/tpgusagemeter/LoginActivity;

    iget-object v3, v3, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mPlansToLookupEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    const-string v2, "use_auto_refresh"

    iget-object v3, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity$1;->this$0:Lorg/twilightfantasy/tpgusagemeter/LoginActivity;

    iget-object v3, v3, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mUseAutoRefreshCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    :goto_0
    sget-object v2, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mMainActivityInstance:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    if-eqz v2, :cond_0

    .line 78
    sget-object v2, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mMainActivityInstance:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v3, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity$1;->this$0:Lorg/twilightfantasy/tpgusagemeter/LoginActivity;

    iget-object v3, v3, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mUsernameEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mUsername:Ljava/lang/String;

    .line 79
    sget-object v2, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mMainActivityInstance:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v3, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity$1;->this$0:Lorg/twilightfantasy/tpgusagemeter/LoginActivity;

    iget-object v3, v3, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPassword:Ljava/lang/String;

    .line 80
    sget-object v2, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mMainActivityInstance:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v3, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity$1;->this$0:Lorg/twilightfantasy/tpgusagemeter/LoginActivity;

    iget-object v3, v3, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mPlansToLookupEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlansToLookup:Ljava/lang/String;

    .line 81
    sget-object v2, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mMainActivityInstance:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v3, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity$1;->this$0:Lorg/twilightfantasy/tpgusagemeter/LoginActivity;

    iget-object v3, v3, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mUseAutoRefreshCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v2, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mUseAutoRefresh:Z

    .line 84
    :cond_0
    iget-object v2, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity$1;->this$0:Lorg/twilightfantasy/tpgusagemeter/LoginActivity;

    invoke-virtual {v2}, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->finish()V

    .line 85
    return-void

    .line 67
    .end local v0           #preferencesEditor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v2, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity$1;->this$0:Lorg/twilightfantasy/tpgusagemeter/LoginActivity;

    const-string v3, "TPGUsageMeter_Pref"

    invoke-virtual {v2, v5, v4}, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 70
    .restart local v1       #sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    .restart local v0       #preferencesEditor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
