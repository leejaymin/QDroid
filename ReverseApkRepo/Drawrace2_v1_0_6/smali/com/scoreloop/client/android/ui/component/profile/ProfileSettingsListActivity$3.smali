.class Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$3;
.super Ljava/lang/Object;
.source "ProfileSettingsListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getChangeUsernameDialog()Landroid/app/Dialog;
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
    .line 210
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/scoreloop/client/android/ui/framework/BaseDialog;I)V
    .locals 4
    .parameter "dialog"
    .parameter "actionId"

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->dismiss()V

    .line 214
    if-nez p2, :cond_0

    .line 215
    check-cast p1, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;

    .end local p1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/profile/FieldEditDialog;->getEditText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, newUsername:Ljava/lang/String;
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    const/4 v2, 0x0

    sget-object v3, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->USERNAME:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    #calls: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->updateUser(Ljava/lang/String;Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;)V
    invoke-static {v1, v2, v0, v3}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->access$600(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;Ljava/lang/String;Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;)V

    .line 218
    .end local v0           #newUsername:Ljava/lang/String;
    :cond_0
    return-void
.end method
