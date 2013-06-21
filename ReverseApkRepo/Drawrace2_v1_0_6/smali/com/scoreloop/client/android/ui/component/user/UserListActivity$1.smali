.class Lcom/scoreloop/client/android/ui/component/user/UserListActivity$1;
.super Ljava/lang/Object;
.source "UserListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/user/UserListActivity;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/user/UserListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public withValue(Ljava/lang/Integer;Ljava/lang/Exception;)V
    .locals 3
    .parameter "count"
    .parameter "error"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserListActivity;

    #calls: Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->hideSpinner()V
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->access$000(Lcom/scoreloop/client/android/ui/component/user/UserListActivity;)V

    .line 230
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserListActivity;

    sget-object v1, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;->LOAD_BUDDIES:Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$RequestType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;->SET:Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    #calls: Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->setNeedsRefresh(ILcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;)V
    invoke-static {v0, v1, v2}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->access$100(Lcom/scoreloop/client/android/ui/component/user/UserListActivity;ILcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;)V

    .line 231
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserListActivity;

    #calls: Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->isPaused()Z
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->access$200(Lcom/scoreloop/client/android/ui/component/user/UserListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserListActivity;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserListActivity;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;->showToast(Ljava/lang/String;)V

    .line 234
    :cond_0
    return-void
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/user/UserListActivity$1;->withValue(Ljava/lang/Integer;Ljava/lang/Exception;)V

    return-void
.end method
