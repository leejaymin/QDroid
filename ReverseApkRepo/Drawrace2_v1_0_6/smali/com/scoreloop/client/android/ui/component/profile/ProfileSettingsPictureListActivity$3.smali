.class Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$3;
.super Ljava/lang/Object;
.source "ProfileSettingsPictureListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->startSubmitPicture(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/scoreloop/client/android/core/model/Continuation",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public withValue(Ljava/lang/Boolean;Ljava/lang/Exception;)V
    .locals 2
    .parameter "result"
    .parameter "error"

    .prologue
    .line 191
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;
    invoke-static {v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->access$600(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;)Lcom/scoreloop/client/android/core/controller/UserController;

    move-result-object v1

    #calls: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->hideSpinnerFor(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->access$700(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;Ljava/lang/Object;)V

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;->access$600(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;)Lcom/scoreloop/client/android/core/controller/UserController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/UserController;->submitUser()V

    goto :goto_0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity$3;->withValue(Ljava/lang/Boolean;Ljava/lang/Exception;)V

    return-void
.end method
