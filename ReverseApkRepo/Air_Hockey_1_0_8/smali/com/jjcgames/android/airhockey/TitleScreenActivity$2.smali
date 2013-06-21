.class Lcom/jjcgames/android/airhockey/TitleScreenActivity$2;
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
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity$2;->this$0:Lcom/jjcgames/android/airhockey/TitleScreenActivity;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity$2;->this$0:Lcom/jjcgames/android/airhockey/TitleScreenActivity;

    const/4 v1, 0x1

    #setter for: Lcom/jjcgames/android/airhockey/TitleScreenActivity;->movingOn:Z
    invoke-static {v0, v1}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->access$0(Lcom/jjcgames/android/airhockey/TitleScreenActivity;Z)V

    .line 108
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity$2;->this$0:Lcom/jjcgames/android/airhockey/TitleScreenActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 109
    const-string v3, "market://search?q=pname:com.jjcgames.android.airhockey"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method
