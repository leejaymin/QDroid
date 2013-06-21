.class Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$6;
.super Ljava/lang/Object;
.source "ProfileSettingsListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->updateUser(Ljava/lang/String;Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

.field final synthetic val$user:Lcom/scoreloop/client/android/core/model/User;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;Lcom/scoreloop/client/android/core/model/User;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$6;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$6;->val$user:Lcom/scoreloop/client/android/core/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$6;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$6;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;
    invoke-static {v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->access$700(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)Lcom/scoreloop/client/android/core/controller/UserController;

    move-result-object v1

    #calls: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->showSpinnerFor(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->access$800(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;Ljava/lang/Object;)V

    .line 468
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$6;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->access$700(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)Lcom/scoreloop/client/android/core/controller/UserController;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$6;->val$user:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/UserController;->setUser(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 469
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$6;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->access$700(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)Lcom/scoreloop/client/android/core/controller/UserController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/UserController;->submitUser()V

    .line 470
    return-void
.end method
