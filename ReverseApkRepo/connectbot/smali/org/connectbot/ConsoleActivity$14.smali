.class Lorg/connectbot/ConsoleActivity$14;
.super Ljava/lang/Object;
.source "ConsoleActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/ConsoleActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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
    iput-object p1, p0, Lorg/connectbot/ConsoleActivity$14;->this$0:Lorg/connectbot/ConsoleActivity;

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 684
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity$14;->this$0:Lorg/connectbot/ConsoleActivity;

    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Lorg/connectbot/ConsoleActivity;->findCurrentView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/connectbot/TerminalView;

    .line 685
    .local v2, terminalView:Lorg/connectbot/TerminalView;
    iget-object v0, v2, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    .line 688
    .local v0, bridge:Lorg/connectbot/service/TerminalBridge;
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity$14;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v3, v3, Lorg/connectbot/ConsoleActivity;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v3}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, clip:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalBridge;->injectString(Ljava/lang/String;)V

    .line 691
    const/4 v3, 0x1

    return v3
.end method
