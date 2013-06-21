.class Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$1;
.super Ljava/lang/Object;
.source "ProfileSettingsPictureListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;

    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$1;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$1;->val$data:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 83
    .local v0, localImageUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;

    #calls: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->startSubmitPicture(Landroid/net/Uri;)V
    invoke-static {v1, v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->access$400(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;Landroid/net/Uri;)V

    .line 84
    return-void
.end method
