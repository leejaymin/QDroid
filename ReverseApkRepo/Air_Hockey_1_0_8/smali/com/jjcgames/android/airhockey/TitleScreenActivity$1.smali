.class Lcom/jjcgames/android/airhockey/TitleScreenActivity$1;
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
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity$1;->this$0:Lcom/jjcgames/android/airhockey/TitleScreenActivity;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 88
    iget-object v1, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity$1;->this$0:Lcom/jjcgames/android/airhockey/TitleScreenActivity;

    #setter for: Lcom/jjcgames/android/airhockey/TitleScreenActivity;->movingOn:Z
    invoke-static {v1, v3}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->access$0(Lcom/jjcgames/android/airhockey/TitleScreenActivity;Z)V

    .line 89
    new-instance v0, Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity$1;->this$0:Lcom/jjcgames/android/airhockey/TitleScreenActivity;

    .line 91
    const-class v2, Lcom/jjcgames/android/airhockey/GameActivity;

    .line 89
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, in:Landroid/content/Intent;
    const-string v1, "player_id"

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    const-string v1, "match_games"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const-string v1, "cpu_level"

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string v2, "sound"

    .line 97
    iget-object v1, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity$1;->this$0:Lcom/jjcgames/android/airhockey/TitleScreenActivity;

    const v3, 0x7f080004

    invoke-virtual {v1, v3}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 96
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity$1;->this$0:Lcom/jjcgames/android/airhockey/TitleScreenActivity;

    invoke-virtual {v1, v0}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method
