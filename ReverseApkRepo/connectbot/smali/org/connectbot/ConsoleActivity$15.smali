.class Lorg/connectbot/ConsoleActivity$15;
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
    iput-object p1, p0, Lorg/connectbot/ConsoleActivity$15;->this$0:Lorg/connectbot/ConsoleActivity;

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 702
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity$15;->this$0:Lorg/connectbot/ConsoleActivity;

    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Lorg/connectbot/ConsoleActivity;->findCurrentView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/connectbot/TerminalView;

    .line 703
    .local v2, terminalView:Lorg/connectbot/TerminalView;
    iget-object v0, v2, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    .line 705
    .local v0, bridge:Lorg/connectbot/service/TerminalBridge;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lorg/connectbot/ConsoleActivity$15;->this$0:Lorg/connectbot/ConsoleActivity;

    const-class v4, Lorg/connectbot/PortForwardListActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 706
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.TITLE"

    iget-object v4, v0, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v4}, Lorg/connectbot/bean/HostBean;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 707
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity$15;->this$0:Lorg/connectbot/ConsoleActivity;

    invoke-virtual {v3, v1, v6}, Lorg/connectbot/ConsoleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 708
    return v6
.end method
