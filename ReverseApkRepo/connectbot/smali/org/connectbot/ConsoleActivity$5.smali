.class Lorg/connectbot/ConsoleActivity$5;
.super Ljava/lang/Object;
.source "ConsoleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lorg/connectbot/ConsoleActivity$5;->this$0:Lorg/connectbot/ConsoleActivity;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 326
    iget-object v1, p0, Lorg/connectbot/ConsoleActivity$5;->this$0:Lorg/connectbot/ConsoleActivity;

    invoke-virtual {v1}, Lorg/connectbot/ConsoleActivity;->getCurrentPromptHelper()Lorg/connectbot/service/PromptHelper;

    move-result-object v0

    .line 327
    .local v0, helper:Lorg/connectbot/service/PromptHelper;
    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/connectbot/service/PromptHelper;->setResponse(Ljava/lang/Object;)V

    .line 329
    iget-object v1, p0, Lorg/connectbot/ConsoleActivity$5;->this$0:Lorg/connectbot/ConsoleActivity;

    invoke-virtual {v1}, Lorg/connectbot/ConsoleActivity;->updatePromptVisible()V

    goto :goto_0
.end method
