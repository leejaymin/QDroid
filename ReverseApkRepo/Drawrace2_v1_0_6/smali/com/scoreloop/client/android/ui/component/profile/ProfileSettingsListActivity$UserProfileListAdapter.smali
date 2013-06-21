.class Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$UserProfileListAdapter;
.super Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;
.source "ProfileSettingsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserProfileListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/framework/BaseListAdapter",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$UserProfileListAdapter;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    .line 64
    invoke-direct {p0, p2}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    const/4 v1, 0x0

    const v2, 0x7f080269

    invoke-virtual {p1, v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$UserProfileListAdapter;->add(Ljava/lang/Object;)V

    .line 67
    #getter for: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_changePictureItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->access$000(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$UserProfileListAdapter;->add(Ljava/lang/Object;)V

    .line 68
    #getter for: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_changeUsernameItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->access$100(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$UserProfileListAdapter;->add(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    #getter for: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_changeEmailItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->access$200(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$UserProfileListAdapter;->add(Ljava/lang/Object;)V

    .line 72
    :cond_0
    #getter for: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_mergeAccountItem:Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->access$300(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$UserProfileListAdapter;->add(Ljava/lang/Object;)V

    .line 73
    return-void
.end method
