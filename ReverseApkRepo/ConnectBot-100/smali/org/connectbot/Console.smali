.class public Lorg/connectbot/Console;
.super Landroid/app/Activity;
.source "Console.java"


# instance fields
.field public bound:Lorg/connectbot/service/TerminalManager;

.field public clipboard:Landroid/text/ClipboardManager;

.field private connection:Landroid/content/ServiceConnection;

.field public copy:Landroid/view/MenuItem;

.field public fade_out:Landroid/view/animation/Animation;

.field public flip:Landroid/widget/ViewFlipper;

.field public inflater:Landroid/view/LayoutInflater;

.field public paste:Landroid/view/MenuItem;

.field public requested:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-object v1, p0, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    .line 46
    iput-object v1, p0, Lorg/connectbot/Console;->bound:Lorg/connectbot/service/TerminalManager;

    .line 47
    iput-object v1, p0, Lorg/connectbot/Console;->inflater:Landroid/view/LayoutInflater;

    .line 49
    new-instance v0, Lorg/connectbot/Console$1;

    invoke-direct {v0, p0}, Lorg/connectbot/Console$1;-><init>(Lorg/connectbot/Console;)V

    iput-object v0, p0, Lorg/connectbot/Console;->connection:Landroid/content/ServiceConnection;

    .line 115
    iput-object v1, p0, Lorg/connectbot/Console;->fade_out:Landroid/view/animation/Animation;

    .line 43
    return-void
.end method


# virtual methods
.method protected findCurrentView(I)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 145
    iget-object v1, p0, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 147
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0, v8}, Lorg/connectbot/Console;->requestWindowFeature(I)Z

    .line 157
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lorg/connectbot/Console;->setContentView(I)V

    .line 159
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lorg/connectbot/Console;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lorg/connectbot/Console;->clipboard:Landroid/text/ClipboardManager;

    .line 165
    invoke-virtual {p0}, Lorg/connectbot/Console;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/Console;->requested:Landroid/net/Uri;

    .line 167
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lorg/connectbot/Console;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lorg/connectbot/Console;->inflater:Landroid/view/LayoutInflater;

    .line 168
    const v0, 0x7f090002

    invoke-virtual {p0, v0}, Lorg/connectbot/Console;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    .line 170
    const/high16 v0, 0x7f04

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/Console;->fade_out:Landroid/view/animation/Animation;

    .line 174
    const v0, 0x7f040002

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 175
    .local v5, slide_left_in:Landroid/view/animation/Animation;
    const v0, 0x7f040003

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 176
    .local v6, slide_left_out:Landroid/view/animation/Animation;
    const v0, 0x7f040004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 177
    .local v3, slide_right_in:Landroid/view/animation/Animation;
    const v0, 0x7f040005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 178
    .local v4, slide_right_out:Landroid/view/animation/Animation;
    const v0, 0x7f040001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 181
    .local v2, fade_stay_hidden:Landroid/view/animation/Animation;
    new-instance v7, Landroid/view/GestureDetector;

    new-instance v0, Lorg/connectbot/Console$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/connectbot/Console$2;-><init>(Lorg/connectbot/Console;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    invoke-direct {v7, v0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 292
    .local v7, detect:Landroid/view/GestureDetector;
    iget-object v0, p0, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v8}, Landroid/widget/ViewFlipper;->setLongClickable(Z)V

    .line 293
    iget-object v0, p0, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    new-instance v1, Lorg/connectbot/Console$3;

    invoke-direct {v1, p0, v7}, Lorg/connectbot/Console$3;-><init>(Lorg/connectbot/Console;Landroid/view/GestureDetector;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 305
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 311
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 313
    const-string v1, "Disconnect"

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 314
    .local v0, add:Landroid/view/MenuItem;
    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 315
    new-instance v1, Lorg/connectbot/Console$4;

    invoke-direct {v1, p0}, Lorg/connectbot/Console$4;-><init>(Lorg/connectbot/Console;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 327
    const-string v1, "Copy"

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/Console;->copy:Landroid/view/MenuItem;

    .line 328
    iget-object v1, p0, Lorg/connectbot/Console;->copy:Landroid/view/MenuItem;

    const v2, 0x1080051

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 329
    iget-object v1, p0, Lorg/connectbot/Console;->copy:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 332
    const-string v1, "Paste"

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/Console;->paste:Landroid/view/MenuItem;

    .line 333
    iget-object v1, p0, Lorg/connectbot/Console;->paste:Landroid/view/MenuItem;

    const v2, 0x108003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 334
    iget-object v1, p0, Lorg/connectbot/Console;->paste:Landroid/view/MenuItem;

    iget-object v2, p0, Lorg/connectbot/Console;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v2}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 335
    iget-object v1, p0, Lorg/connectbot/Console;->paste:Landroid/view/MenuItem;

    new-instance v2, Lorg/connectbot/Console$5;

    invoke-direct {v2, p0}, Lorg/connectbot/Console$5;-><init>(Lorg/connectbot/Console;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 353
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 359
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 361
    iget-object v0, p0, Lorg/connectbot/Console;->paste:Landroid/view/MenuItem;

    iget-object v1, p0, Lorg/connectbot/Console;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v1}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/connectbot/service/TerminalManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/connectbot/Console;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/connectbot/Console;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 135
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 140
    iget-object v0, p0, Lorg/connectbot/Console;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/connectbot/Console;->unbindService(Landroid/content/ServiceConnection;)V

    .line 142
    return-void
.end method

.method public updateDefault()V
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/connectbot/TerminalView;

    .line 121
    .local v0, terminal:Lorg/connectbot/TerminalView;
    iget-object v1, p0, Lorg/connectbot/Console;->bound:Lorg/connectbot/service/TerminalManager;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v1, p0, Lorg/connectbot/Console;->bound:Lorg/connectbot/service/TerminalManager;

    iget-object v2, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iput-object v2, v1, Lorg/connectbot/service/TerminalManager;->defaultBridge:Lorg/connectbot/service/TerminalBridge;

    goto :goto_0
.end method
