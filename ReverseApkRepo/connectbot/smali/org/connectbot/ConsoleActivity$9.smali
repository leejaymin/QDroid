.class Lorg/connectbot/ConsoleActivity$9;
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

.field private final synthetic val$keyboardGroup:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lorg/connectbot/ConsoleActivity;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/ConsoleActivity$9;->this$0:Lorg/connectbot/ConsoleActivity;

    iput-object p2, p0, Lorg/connectbot/ConsoleActivity$9;->val$keyboardGroup:Landroid/widget/RelativeLayout;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 389
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity$9;->this$0:Lorg/connectbot/ConsoleActivity;

    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Lorg/connectbot/ConsoleActivity;->findCurrentView(I)Landroid/view/View;

    move-result-object v0

    .line 390
    .local v0, flip:Landroid/view/View;
    if-nez v0, :cond_0

    .line 397
    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    .line 391
    check-cast v2, Lorg/connectbot/TerminalView;

    .line 393
    .local v2, terminal:Lorg/connectbot/TerminalView;
    iget-object v3, v2, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v3}, Lorg/connectbot/service/TerminalBridge;->getKeyHandler()Lorg/connectbot/service/TerminalKeyListener;

    move-result-object v1

    .line 394
    .local v1, handler:Lorg/connectbot/service/TerminalKeyListener;
    invoke-virtual {v1}, Lorg/connectbot/service/TerminalKeyListener;->sendEscape()V

    .line 396
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity$9;->val$keyboardGroup:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
