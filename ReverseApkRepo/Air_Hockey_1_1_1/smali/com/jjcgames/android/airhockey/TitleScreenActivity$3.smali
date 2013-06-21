.class Lcom/jjcgames/android/airhockey/TitleScreenActivity$3;
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
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity$3;->this$0:Lcom/jjcgames/android/airhockey/TitleScreenActivity;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity$3;->this$0:Lcom/jjcgames/android/airhockey/TitleScreenActivity;

    const/4 v1, 0x1

    #setter for: Lcom/jjcgames/android/airhockey/TitleScreenActivity;->movingOn:Z
    invoke-static {v0, v1}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->access$0(Lcom/jjcgames/android/airhockey/TitleScreenActivity;Z)V

    .line 114
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity$3;->this$0:Lcom/jjcgames/android/airhockey/TitleScreenActivity;

    new-instance v1, Landroid/content/Intent;

    .line 115
    iget-object v2, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity$3;->this$0:Lcom/jjcgames/android/airhockey/TitleScreenActivity;

    .line 116
    const-class v3, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method
