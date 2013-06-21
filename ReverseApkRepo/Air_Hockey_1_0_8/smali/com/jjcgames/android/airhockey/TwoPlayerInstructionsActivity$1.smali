.class Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity$1;
.super Ljava/lang/Object;
.source "TwoPlayerInstructionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private onePlayerAcknowledged:Z

.field final synthetic this$0:Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity$1;->this$0:Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity$1;->onePlayerAcknowledged:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 73
    iget-boolean v1, p0, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity$1;->onePlayerAcknowledged:Z

    if-nez v1, :cond_0

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity$1;->onePlayerAcknowledged:Z

    .line 75
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity$1;->this$0:Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;

    const-class v2, Lcom/jjcgames/android/airhockey/GameActivity;

    .line 78
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, in:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity$1;->this$0:Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;

    invoke-virtual {v1}, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity$1;->this$0:Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;

    invoke-virtual {v1, v0}, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
