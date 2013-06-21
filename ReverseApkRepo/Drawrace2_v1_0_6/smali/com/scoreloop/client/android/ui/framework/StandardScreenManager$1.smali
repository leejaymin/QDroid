.class Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$1;
.super Ljava/lang/Object;
.source "StandardScreenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;

.field final synthetic val$description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$1;->this$0:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;

    iput-object p2, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$1;->val$description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 127
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$1;->this$0:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->getCurrentDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    .line 128
    .local v0, previousDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$1;->this$0:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$1;->val$description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    #calls: Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->wantsNewScreen(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)Z
    invoke-static {v1, v2, v0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->access$000(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$1;->this$0:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$1;->val$description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    #calls: Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->storeDescription(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V
    invoke-static {v1, v2}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->access$100(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 130
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$1;->this$0:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;

    #calls: Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->startNewScreen()V
    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->access$200(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;)V

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$1;->this$0:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$1;->val$description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$1;->this$0:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->getCurrentActivity()Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;

    move-result-object v3

    #calls: Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->pushDescriptionAndActivity(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;)V
    invoke-static {v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->access$300(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;)V

    .line 133
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$1;->this$0:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->applyCurrentDescription(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;I)V

    goto :goto_0
.end method
