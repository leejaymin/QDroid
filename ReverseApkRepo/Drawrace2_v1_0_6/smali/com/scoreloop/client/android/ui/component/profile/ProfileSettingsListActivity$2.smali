.class Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$2;
.super Ljava/lang/Object;
.source "ProfileSettingsListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getMergeAccountDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$2;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/scoreloop/client/android/ui/framework/BaseDialog;I)V
    .locals 5
    .parameter "dialog"
    .parameter "actionId"

    .prologue
    .line 184
    if-nez p2, :cond_2

    move-object v0, p1

    .line 185
    check-cast v0, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;

    .line 186
    .local v0, dlg:Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->getEditText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, newEmail:Ljava/lang/String;
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$2;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    #calls: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->isValidEmailFormat(Ljava/lang/String;)Z
    invoke-static {v2, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->access$400(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$2;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$2;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    const v4, 0x7f0802f7

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_hint:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->access$502(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$2;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_hint:Ljava/lang/String;
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->access$500(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->setHint(Ljava/lang/String;)V

    .line 201
    .end local v0           #dlg:Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;
    .end local v1           #newEmail:Ljava/lang/String;
    :goto_0
    return-void

    .line 191
    .restart local v0       #dlg:Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;
    .restart local v1       #newEmail:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$2;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$2;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$2;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$2;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    const v4, 0x7f0802da

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_hint:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->access$502(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$2;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_hint:Ljava/lang/String;
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->access$500(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->setHint(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$2;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    const/4 v3, 0x0

    sget-object v4, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->MERGE_ACCOUNTS:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    #calls: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->updateUser(Ljava/lang/String;Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;)V
    invoke-static {v2, v1, v3, v4}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->access$600(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;Ljava/lang/String;Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;)V

    .line 200
    .end local v0           #dlg:Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;
    .end local v1           #newEmail:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->dismiss()V

    goto :goto_0
.end method
