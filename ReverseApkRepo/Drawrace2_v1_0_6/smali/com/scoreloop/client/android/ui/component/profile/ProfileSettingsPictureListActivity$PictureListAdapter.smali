.class Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$PictureListAdapter;
.super Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;
.source "ProfileSettingsPictureListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PictureListAdapter"
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
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$PictureListAdapter;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;

    .line 55
    invoke-direct {p0, p2}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    const/4 v1, 0x0

    const v2, 0x7f08027c

    invoke-virtual {p1, v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$PictureListAdapter;->add(Ljava/lang/Object;)V

    .line 58
    #getter for: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_deviceLibraryItem:Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->access$000(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;)Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$PictureListAdapter;->add(Ljava/lang/Object;)V

    .line 59
    #getter for: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_facebookItem:Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->access$100(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;)Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$PictureListAdapter;->add(Ljava/lang/Object;)V

    .line 60
    #getter for: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_twitterItem:Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->access$200(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;)Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$PictureListAdapter;->add(Ljava/lang/Object;)V

    .line 61
    #getter for: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_setDefaultItem:Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->access$300(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;)Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$PictureListAdapter;->add(Ljava/lang/Object;)V

    .line 62
    return-void
.end method
