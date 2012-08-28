.class final Lorg/connectbot/Console$5;
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
    iput-object p1, p0, Lorg/connectbot/Console$5;->this$0:Lorg/connectbot/Console;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    .line 338
    iget-object v6, p0, Lorg/connectbot/Console$5;->this$0:Lorg/connectbot/Console;

    const v7, 0x7f090002

    invoke-virtual {v6, v7}, Lorg/connectbot/Console;->findCurrentView(I)Landroid/view/View;

    move-result-object v5

    .line 339
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_0

    move v6, v8

    .line 349
    :goto_0
    return v6

    .line 340
    :cond_0
    move-object v0, v5

    check-cast v0, Lorg/connectbot/TerminalView;

    move-object v4, v0

    .line 343
    .local v4, terminal:Lorg/connectbot/TerminalView;
    iget-object v6, p0, Lorg/connectbot/Console$5;->this$0:Lorg/connectbot/Console;

    iget-object v6, v6, Lorg/connectbot/Console;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v6}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, clip:Ljava/lang/String;
    iget-object v6, v4, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v6, v6, Lorg/connectbot/service/TerminalBridge;->keymap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .line 345
    .local v3, events:[Landroid/view/KeyEvent;
    array-length v6, v3

    move v7, v8

    :goto_1
    if-lt v7, v6, :cond_1

    .line 349
    const/4 v6, 0x1

    goto :goto_0

    .line 345
    :cond_1
    aget-object v2, v3, v7

    .line 346
    .local v2, event:Landroid/view/KeyEvent;
    iget-object v8, v4, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    invoke-virtual {v8, v4, v9, v2}, Lorg/connectbot/service/TerminalBridge;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 345
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method
