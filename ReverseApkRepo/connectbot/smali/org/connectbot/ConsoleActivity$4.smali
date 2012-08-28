.class Lorg/connectbot/ConsoleActivity$4;
.super Ljava/lang/Object;
.source "ConsoleActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/ConsoleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/ConsoleActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/ConsoleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/ConsoleActivity$4;->this$0:Lorg/connectbot/ConsoleActivity;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 302
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v2

    .line 303
    :cond_1
    const/16 v4, 0x42

    if-ne p2, v4, :cond_0

    .line 306
    iget-object v4, p0, Lorg/connectbot/ConsoleActivity$4;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v4, v4, Lorg/connectbot/ConsoleActivity;->stringPrompt:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, value:Ljava/lang/String;
    iget-object v4, p0, Lorg/connectbot/ConsoleActivity$4;->this$0:Lorg/connectbot/ConsoleActivity;

    invoke-virtual {v4}, Lorg/connectbot/ConsoleActivity;->getCurrentPromptHelper()Lorg/connectbot/service/PromptHelper;

    move-result-object v0

    .line 309
    .local v0, helper:Lorg/connectbot/service/PromptHelper;
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0, v1}, Lorg/connectbot/service/PromptHelper;->setResponse(Ljava/lang/Object;)V

    .line 313
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity$4;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v2, v2, Lorg/connectbot/ConsoleActivity;->stringPrompt:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity$4;->this$0:Lorg/connectbot/ConsoleActivity;

    invoke-virtual {v2}, Lorg/connectbot/ConsoleActivity;->updatePromptVisible()V

    move v2, v3

    .line 316
    goto :goto_0
.end method
