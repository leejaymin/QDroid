.class Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$2;
.super Ljava/lang/Object;
.source "StandardScreenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->displayPreviousDescription(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$2;->this$0:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 156
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$2;->this$0:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;

    #calls: Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->popEntry()Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->access$400(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;)Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    move-result-object v1

    .line 157
    .local v1, previousEntry:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$2;->this$0:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;

    #getter for: Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_stack:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->access$500(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;)Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    move-result-object v0

    .line 159
    .local v0, currentEntry:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    if-eqz v1, :cond_1

    .line 160
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->getScreenActivity()Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;

    move-result-object v2

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->getScreenActivity()Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 161
    :cond_0
    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->getScreenActivity()Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;

    move-result-object v2

    invoke-interface {v2}, Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$2;->this$0:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->getScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->applyCurrentDescription(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;I)V

    goto :goto_0
.end method
