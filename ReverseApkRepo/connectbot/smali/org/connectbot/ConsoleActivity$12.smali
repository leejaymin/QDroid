.class Lorg/connectbot/ConsoleActivity$12;
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
    iput-object p1, p0, Lorg/connectbot/ConsoleActivity$12;->this$0:Lorg/connectbot/ConsoleActivity;

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 643
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity$12;->this$0:Lorg/connectbot/ConsoleActivity;

    const v3, 0x7f0b0004

    invoke-virtual {v2, v3}, Lorg/connectbot/ConsoleActivity;->findCurrentView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/connectbot/TerminalView;

    .line 644
    .local v1, terminalView:Lorg/connectbot/TerminalView;
    iget-object v0, v1, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    .line 646
    .local v0, bridge:Lorg/connectbot/service/TerminalBridge;
    invoke-virtual {v0, v4}, Lorg/connectbot/service/TerminalBridge;->dispatchDisconnect(Z)V

    .line 647
    return v4
.end method
