.class final Lorg/connectbot/Console$1;
.super Ljava/lang/Object;
.source "Console.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/Console;
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
    iput-object p1, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 13
    .parameter "className"
    .parameter "service"

    .prologue
    .line 51
    iget-object v8, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    check-cast p2, Lorg/connectbot/service/TerminalManager$TerminalBinder;

    .end local p2
    invoke-virtual {p2}, Lorg/connectbot/service/TerminalManager$TerminalBinder;->getService()Lorg/connectbot/service/TerminalManager;

    move-result-object v9

    iput-object v9, v8, Lorg/connectbot/Console;->bound:Lorg/connectbot/service/TerminalManager;

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ohhai there, i found bridges="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    iget-object v10, v10, Lorg/connectbot/Console;->bound:Lorg/connectbot/service/TerminalManager;

    iget-object v10, v10, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v8, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    iget-object v8, v8, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v8}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 57
    iget-object v8, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    iget-object v8, v8, Lorg/connectbot/Console;->requested:Landroid/net/Uri;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    iget-object v8, v8, Lorg/connectbot/Console;->requested:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 58
    .local v5, requestedNickname:Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    .line 62
    .local v4, requestedIndex:I
    const/4 v2, 0x0

    .line 63
    .local v2, found:Z
    iget-object v8, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    iget-object v8, v8, Lorg/connectbot/Console;->bound:Lorg/connectbot/service/TerminalManager;

    iget-object v8, v8, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 68
    if-nez v2, :cond_1

    .line 70
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "onServiceConnected() is openConnection() because of unknown requested uri="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    iget-object v10, v10, Lorg/connectbot/Console;->requested:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v8, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    iget-object v8, v8, Lorg/connectbot/Console;->bound:Lorg/connectbot/service/TerminalManager;

    iget-object v9, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    iget-object v9, v9, Lorg/connectbot/Console;->requested:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Lorg/connectbot/service/TerminalManager;->openConnection(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_1
    :goto_2
    iget-object v8, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    iget-object v8, v8, Lorg/connectbot/Console;->bound:Lorg/connectbot/service/TerminalManager;

    iget-object v8, v8, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 103
    iget-object v8, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    iget-object v8, v8, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v8, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 104
    iget-object v8, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    iget-object v8, v8, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v8}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f09001a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    iget-object v9, v9, Lorg/connectbot/Console;->fade_out:Landroid/view/animation/Animation;

    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 106
    return-void

    .line 57
    .end local v5           #requestedNickname:Ljava/lang/String;
    .end local v4           #requestedIndex:I
    .end local v2           #found:Z
    :cond_3
    const/4 v8, 0x0

    move-object v5, v8

    goto :goto_0

    .line 63
    .restart local v2       #found:Z
    .restart local v4       #requestedIndex:I
    .restart local v5       #requestedNickname:Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/connectbot/service/TerminalBridge;

    .line 64
    .local v0, bridge:Lorg/connectbot/service/TerminalBridge;
    iget-object v9, v0, Lorg/connectbot/service/TerminalBridge;->nickname:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 65
    const/4 v2, 0x1

    goto :goto_1

    .line 72
    .end local v0           #bridge:Lorg/connectbot/service/TerminalBridge;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 73
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 79
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/connectbot/service/TerminalBridge;

    .line 82
    .restart local v0       #bridge:Lorg/connectbot/service/TerminalBridge;
    iget-object v9, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    iget-object v9, v9, Lorg/connectbot/Console;->inflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030009

    iget-object v11, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    iget-object v11, v11, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 85
    .local v7, view:Landroid/widget/RelativeLayout;
    const v9, 0x7f09001a

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 86
    .local v3, overlay:Landroid/widget/TextView;
    iget-object v9, v0, Lorg/connectbot/service/TerminalBridge;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    new-instance v6, Lorg/connectbot/TerminalView;

    iget-object v9, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    invoke-direct {v6, v9, v0}, Lorg/connectbot/TerminalView;-><init>(Landroid/content/Context;Lorg/connectbot/service/TerminalBridge;)V

    .line 90
    .local v6, terminal:Lorg/connectbot/TerminalView;
    const v9, 0x7f090002

    invoke-virtual {v6, v9}, Lorg/connectbot/TerminalView;->setId(I)V

    .line 91
    const/4 v9, 0x0

    invoke-virtual {v7, v6, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 94
    iget-object v9, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    iget-object v9, v9, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v9, v7}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 97
    iget-object v9, v0, Lorg/connectbot/service/TerminalBridge;->nickname:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 98
    iget-object v9, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    iget-object v9, v9, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v9}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    sub-int v4, v9, v10

    goto/16 :goto_3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 110
    iget-object v0, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/connectbot/Console;->bound:Lorg/connectbot/service/TerminalManager;

    .line 111
    iget-object v0, p0, Lorg/connectbot/Console$1;->this$0:Lorg/connectbot/Console;

    iget-object v0, v0, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 112
    return-void
.end method
