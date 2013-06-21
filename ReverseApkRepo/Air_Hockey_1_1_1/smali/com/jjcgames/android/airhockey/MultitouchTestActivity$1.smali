.class Lcom/jjcgames/android/airhockey/MultitouchTestActivity$1;
.super Ljava/lang/Object;
.source "MultitouchTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jjcgames/android/airhockey/MultitouchTestActivity;


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/MultitouchTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/MultitouchTestActivity$1;->this$0:Lcom/jjcgames/android/airhockey/MultitouchTestActivity;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const-string v5, "multitouch"

    .line 29
    iget-object v2, p0, Lcom/jjcgames/android/airhockey/MultitouchTestActivity$1;->this$0:Lcom/jjcgames/android/airhockey/MultitouchTestActivity;

    #getter for: Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->multitouch:Z
    invoke-static {v2}, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->access$0(Lcom/jjcgames/android/airhockey/MultitouchTestActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    iget-object v2, p0, Lcom/jjcgames/android/airhockey/MultitouchTestActivity$1;->this$0:Lcom/jjcgames/android/airhockey/MultitouchTestActivity;

    const-string v3, "prefs"

    invoke-virtual {v2, v3, v4}, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 31
    const-string v3, "multitouch"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/jjcgames/android/airhockey/MultitouchTestActivity$1;->this$0:Lcom/jjcgames/android/airhockey/MultitouchTestActivity;

    invoke-virtual {v2}, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 35
    .local v0, in:Landroid/content/Intent;
    const-string v2, "players"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jjcgames/android/airhockey/MultitouchTestActivity$1;->this$0:Lcom/jjcgames/android/airhockey/MultitouchTestActivity;

    .line 37
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/MultitouchTestActivity$1;->this$0:Lcom/jjcgames/android/airhockey/MultitouchTestActivity;

    #getter for: Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->multitouch:Z
    invoke-static {v3}, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->access$0(Lcom/jjcgames/android/airhockey/MultitouchTestActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 38
    const-class v3, Lcom/jjcgames/android/airhockey/GameActivity;

    .line 36
    :goto_0
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v1, out:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 41
    const-string v2, "multitouch"

    iget-object v2, p0, Lcom/jjcgames/android/airhockey/MultitouchTestActivity$1;->this$0:Lcom/jjcgames/android/airhockey/MultitouchTestActivity;

    #getter for: Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->multitouch:Z
    invoke-static {v2}, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->access$0(Lcom/jjcgames/android/airhockey/MultitouchTestActivity;)Z

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    iget-object v2, p0, Lcom/jjcgames/android/airhockey/MultitouchTestActivity$1;->this$0:Lcom/jjcgames/android/airhockey/MultitouchTestActivity;

    invoke-virtual {v2, v1}, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->startActivity(Landroid/content/Intent;)V

    .line 44
    .end local v1           #out:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/jjcgames/android/airhockey/MultitouchTestActivity$1;->this$0:Lcom/jjcgames/android/airhockey/MultitouchTestActivity;

    invoke-virtual {v2}, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->finish()V

    .line 45
    return-void

    .line 39
    :cond_2
    const-class v3, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;

    goto :goto_0
.end method
