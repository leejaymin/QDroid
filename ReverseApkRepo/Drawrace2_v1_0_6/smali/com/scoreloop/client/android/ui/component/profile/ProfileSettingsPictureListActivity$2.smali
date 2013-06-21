.class Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$2;
.super Ljava/lang/Object;
.source "ProfileSettingsPictureListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;

.field final synthetic val$socialProviderIdentifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$2;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;

    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$2;->val$socialProviderIdentifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$2;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$2;->val$socialProviderIdentifier:Ljava/lang/String;

    #calls: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->pickSocialPicture(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->access$500(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;Ljava/lang/String;)V

    .line 119
    return-void
.end method
