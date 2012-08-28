.class Lorg/connectbot/ConsoleActivity$13;
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
    iput-object p1, p0, Lorg/connectbot/ConsoleActivity$13;->this$0:Lorg/connectbot/ConsoleActivity;

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 659
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity$13;->this$0:Lorg/connectbot/ConsoleActivity;

    const v3, 0x7f0b0004

    invoke-virtual {v2, v3}, Lorg/connectbot/ConsoleActivity;->findCurrentView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/connectbot/TerminalView;

    .line 660
    .local v1, terminalView:Lorg/connectbot/TerminalView;
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity$13;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v3, v1, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iput-object v3, v2, Lorg/connectbot/ConsoleActivity;->copySource:Lorg/connectbot/service/TerminalBridge;

    .line 662
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity$13;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v2, v2, Lorg/connectbot/ConsoleActivity;->copySource:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v2}, Lorg/connectbot/service/TerminalBridge;->getSelectionArea()Lorg/connectbot/bean/SelectionArea;

    move-result-object v0

    .line 663
    .local v0, area:Lorg/connectbot/bean/SelectionArea;
    invoke-virtual {v0}, Lorg/connectbot/bean/SelectionArea;->reset()V

    .line 664
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity$13;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v2, v2, Lorg/connectbot/ConsoleActivity;->copySource:Lorg/connectbot/service/TerminalBridge;

    iget-object v2, v2, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v2}, Lde/mud/terminal/VDUBuffer;->getColumns()I

    move-result v2

    iget-object v3, p0, Lorg/connectbot/ConsoleActivity$13;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v3, v3, Lorg/connectbot/ConsoleActivity;->copySource:Lorg/connectbot/service/TerminalBridge;

    iget-object v3, v3, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v3}, Lde/mud/terminal/VDUBuffer;->getRows()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/connectbot/bean/SelectionArea;->setBounds(II)V

    .line 666
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity$13;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v2, v2, Lorg/connectbot/ConsoleActivity;->copySource:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v2, v5}, Lorg/connectbot/service/TerminalBridge;->setSelectingForCopy(Z)V

    .line 669
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity$13;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v2, v2, Lorg/connectbot/ConsoleActivity;->copySource:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v2}, Lorg/connectbot/service/TerminalBridge;->redraw()V

    .line 671
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity$13;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v3, p0, Lorg/connectbot/ConsoleActivity$13;->this$0:Lorg/connectbot/ConsoleActivity;

    const v4, 0x7f080088

    invoke-virtual {v3, v4}, Lorg/connectbot/ConsoleActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 672
    return v5
.end method
