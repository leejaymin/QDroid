.class Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$1;
.super Ljava/lang/Object;
.source "UserAddBuddyListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
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
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public withValue(Ljava/lang/Integer;Ljava/lang/Exception;)V
    .locals 4
    .parameter "addedBuddies"
    .parameter "error"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;

    #calls: Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->hideSpinner()V
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->access$100(Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;)V

    .line 172
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;

    #calls: Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->isPaused()Z
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->access$200(Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08029f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->showToast(Ljava/lang/String;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :pswitch_1
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$1;->withValue(Ljava/lang/Integer;Ljava/lang/Exception;)V

    return-void
.end method
