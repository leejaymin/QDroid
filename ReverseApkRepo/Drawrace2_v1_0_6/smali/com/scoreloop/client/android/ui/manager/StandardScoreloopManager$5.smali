.class Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$5;
.super Ljava/lang/Object;
.source "StandardScoreloopManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->showWelcomeBackToast(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$5;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1024
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$5;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #calls: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getPersistedUserName()Ljava/lang/String;
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$800(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Ljava/lang/String;

    move-result-object v1

    .line 1025
    .local v1, userName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1026
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$5;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #calls: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$900(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0802b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$5;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #calls: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$900(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v5}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->showToast(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/widget/Toast;

    .line 1029
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    return-void
.end method
