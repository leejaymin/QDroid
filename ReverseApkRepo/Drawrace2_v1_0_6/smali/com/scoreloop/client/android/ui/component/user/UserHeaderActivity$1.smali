.class Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$1;
.super Ljava/lang/Object;
.source "UserHeaderActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->onClick(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;

.field final synthetic val$user:Lcom/scoreloop/client/android/core/model/User;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;Lcom/scoreloop/client/android/core/model/User;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;

    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$1;->val$user:Lcom/scoreloop/client/android/core/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public withValue(Ljava/lang/Integer;Ljava/lang/Exception;)V
    .locals 5
    .parameter "count"
    .parameter "error"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;

    #calls: Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->isPaused()Z
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->access$000(Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;

    const v2, 0x7f080299

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$1;->val$user:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v4}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->showToast(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$1;->withValue(Ljava/lang/Integer;Ljava/lang/Exception;)V

    return-void
.end method
