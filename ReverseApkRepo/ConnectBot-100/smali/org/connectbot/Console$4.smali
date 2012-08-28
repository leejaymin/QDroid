.class final Lorg/connectbot/Console$4;
.super Ljava/lang/Object;
.source "Console.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/Console;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/Console;


# direct methods
.method constructor <init>(Lorg/connectbot/Console;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/Console$4;->this$0:Lorg/connectbot/Console;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 318
    iget-object v3, p0, Lorg/connectbot/Console$4;->this$0:Lorg/connectbot/Console;

    const v4, 0x7f090002

    invoke-virtual {v3, v4}, Lorg/connectbot/Console;->findCurrentView(I)Landroid/view/View;

    move-result-object v2

    .line 319
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    .line 323
    :goto_0
    return v3

    .line 320
    :cond_0
    move-object v0, v2

    check-cast v0, Lorg/connectbot/TerminalView;

    move-object v1, v0

    .line 321
    .local v1, terminal:Lorg/connectbot/TerminalView;
    iget-object v3, p0, Lorg/connectbot/Console$4;->this$0:Lorg/connectbot/Console;

    iget-object v3, v3, Lorg/connectbot/Console;->bound:Lorg/connectbot/service/TerminalManager;

    iget-object v4, v1, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v3, v4}, Lorg/connectbot/service/TerminalManager;->disconnect(Lorg/connectbot/service/TerminalBridge;)V

    .line 322
    iget-object v3, p0, Lorg/connectbot/Console$4;->this$0:Lorg/connectbot/Console;

    iget-object v3, v3, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    iget-object v4, p0, Lorg/connectbot/Console$4;->this$0:Lorg/connectbot/Console;

    iget-object v4, v4, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    .line 323
    const/4 v3, 0x1

    goto :goto_0
.end method
