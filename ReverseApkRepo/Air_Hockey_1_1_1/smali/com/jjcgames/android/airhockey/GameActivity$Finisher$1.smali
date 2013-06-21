.class Lcom/jjcgames/android/airhockey/GameActivity$Finisher$1;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjcgames/android/airhockey/GameActivity$Finisher;->finish(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jjcgames/android/airhockey/GameActivity$Finisher;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/GameActivity$Finisher;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/GameActivity$Finisher$1;->this$1:Lcom/jjcgames/android/airhockey/GameActivity$Finisher;

    iput-object p2, p0, Lcom/jjcgames/android/airhockey/GameActivity$Finisher$1;->val$intent:Landroid/content/Intent;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameActivity$Finisher$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameActivity$Finisher$1;->this$1:Lcom/jjcgames/android/airhockey/GameActivity$Finisher;

    #getter for: Lcom/jjcgames/android/airhockey/GameActivity$Finisher;->this$0:Lcom/jjcgames/android/airhockey/GameActivity;
    invoke-static {v0}, Lcom/jjcgames/android/airhockey/GameActivity$Finisher;->access$0(Lcom/jjcgames/android/airhockey/GameActivity$Finisher;)Lcom/jjcgames/android/airhockey/GameActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jjcgames/android/airhockey/GameActivity$Finisher$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/GameActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameActivity$Finisher$1;->this$1:Lcom/jjcgames/android/airhockey/GameActivity$Finisher;

    #getter for: Lcom/jjcgames/android/airhockey/GameActivity$Finisher;->this$0:Lcom/jjcgames/android/airhockey/GameActivity;
    invoke-static {v0}, Lcom/jjcgames/android/airhockey/GameActivity$Finisher;->access$0(Lcom/jjcgames/android/airhockey/GameActivity$Finisher;)Lcom/jjcgames/android/airhockey/GameActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jjcgames/android/airhockey/GameActivity;->finish()V

    .line 32
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameActivity$Finisher$1;->this$1:Lcom/jjcgames/android/airhockey/GameActivity$Finisher;

    #getter for: Lcom/jjcgames/android/airhockey/GameActivity$Finisher;->this$0:Lcom/jjcgames/android/airhockey/GameActivity;
    invoke-static {v0}, Lcom/jjcgames/android/airhockey/GameActivity$Finisher;->access$0(Lcom/jjcgames/android/airhockey/GameActivity$Finisher;)Lcom/jjcgames/android/airhockey/GameActivity;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/jjcgames/android/airhockey/GameActivity$Finisher$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/jjcgames/android/airhockey/GameActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method
