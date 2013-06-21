.class Lcom/jjcgames/android/airhockey/TitleScreenActivity$4;
.super Ljava/lang/Object;
.source "TitleScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjcgames/android/airhockey/TitleScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jjcgames/android/airhockey/TitleScreenActivity;


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/TitleScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity$4;->this$0:Lcom/jjcgames/android/airhockey/TitleScreenActivity;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity$4;->this$0:Lcom/jjcgames/android/airhockey/TitleScreenActivity;

    .line 129
    const-class v2, Lcom/jjcgames/android/airhockey/TwoPlayerStagingActivity;

    .line 127
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, i:Landroid/content/Intent;
    const-string v1, "players"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity$4;->this$0:Lcom/jjcgames/android/airhockey/TitleScreenActivity;

    const/4 v2, 0x1

    #setter for: Lcom/jjcgames/android/airhockey/TitleScreenActivity;->movingOn:Z
    invoke-static {v1, v2}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->access$0(Lcom/jjcgames/android/airhockey/TitleScreenActivity;Z)V

    .line 132
    iget-object v1, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity$4;->this$0:Lcom/jjcgames/android/airhockey/TitleScreenActivity;

    invoke-virtual {v1, v0}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method
