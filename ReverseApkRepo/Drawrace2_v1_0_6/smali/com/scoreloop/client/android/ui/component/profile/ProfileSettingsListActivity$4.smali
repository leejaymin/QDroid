.class Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$4;
.super Ljava/lang/Object;
.source "ProfileSettingsListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getFirstTimeDialog()Landroid/app/Dialog;
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
    .line 274
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$4;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/scoreloop/client/android/ui/framework/BaseDialog;I)V
    .locals 5
    .parameter "dialog"
    .parameter "actionId"

    .prologue
    .line 277
    move-object v0, p1

    check-cast v0, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;

    .line 278
    .local v0, dlg:Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;
    if-nez p2, :cond_1

    .line 279
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->getEmailText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, newEmail:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->getUsernameText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, newUsername:Ljava/lang/String;
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$4;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    #calls: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->isValidEmailFormat(Ljava/lang/String;)Z
    invoke-static {v3, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->access$400(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$4;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    const v4, 0x7f0802f6

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/ui/component/profile/FirstTimeDialog;->setHint(Ljava/lang/String;)V

    .line 289
    .end local v1           #newEmail:Ljava/lang/String;
    .end local v2           #newUsername:Ljava/lang/String;
    :goto_0
    return-void

    .line 285
    .restart local v1       #newEmail:Ljava/lang/String;
    .restart local v2       #newUsername:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$4;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    sget-object v4, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->USERNAME_EMAIL:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    #calls: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->updateUser(Ljava/lang/String;Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;)V
    invoke-static {v3, v1, v2, v4}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->access$600(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;Ljava/lang/String;Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;)V

    .line 288
    .end local v1           #newEmail:Ljava/lang/String;
    .end local v2           #newUsername:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->dismiss()V

    goto :goto_0
.end method
