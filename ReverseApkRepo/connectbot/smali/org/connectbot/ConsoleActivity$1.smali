.class Lorg/connectbot/ConsoleActivity$1;
.super Ljava/lang/Object;
.source "ConsoleActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/ConsoleActivity;
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
    iput-object p1, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12
    .parameter "className"
    .parameter "service"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 136
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    check-cast p2, Lorg/connectbot/service/TerminalManager$TerminalBinder;

    .end local p2
    invoke-virtual {p2}, Lorg/connectbot/service/TerminalManager$TerminalBinder;->getService()Lorg/connectbot/service/TerminalManager;

    move-result-object v7

    iput-object v7, v6, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    .line 139
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v6, v6, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    iget-object v7, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v7, v7, Lorg/connectbot/ConsoleActivity;->disconnectHandler:Landroid/os/Handler;

    iput-object v7, v6, Lorg/connectbot/service/TerminalManager;->disconnectHandler:Landroid/os/Handler;

    .line 141
    const-string v6, "ConnectBot.ConsoleActivity"

    const-string v7, "Connected to TerminalManager and found bridges.size=%d"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v9, v9, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    iget-object v9, v9, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v6, v6, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v6, v10}, Lorg/connectbot/service/TerminalManager;->setResizeAllowed(Z)V

    .line 146
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v6, v6, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 148
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v6, v6, Lorg/connectbot/ConsoleActivity;->requested:Landroid/net/Uri;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v6, v6, Lorg/connectbot/ConsoleActivity;->requested:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, requestedNickname:Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    .line 151
    .local v4, requestedIndex:I
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v6, v6, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v6, v5}, Lorg/connectbot/service/TerminalManager;->getConnectedBridge(Ljava/lang/String;)Lorg/connectbot/service/TerminalBridge;

    move-result-object v3

    .line 154
    .local v3, requestedBridge:Lorg/connectbot/service/TerminalBridge;
    if-eqz v5, :cond_0

    if-nez v3, :cond_0

    .line 156
    :try_start_0
    const-string v6, "ConnectBot.ConsoleActivity"

    const-string v7, "We couldnt find an existing bridge with URI=%s (nickname=%s), so creating one now"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v10, v10, Lorg/connectbot/ConsoleActivity;->requested:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v6, v6, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    iget-object v7, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v7, v7, Lorg/connectbot/ConsoleActivity;->requested:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lorg/connectbot/service/TerminalManager;->openConnection(Landroid/net/Uri;)Lorg/connectbot/service/TerminalBridge;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 164
    :cond_0
    :goto_1
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v6, v6, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    iget-object v6, v6, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 173
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    #calls: Lorg/connectbot/ConsoleActivity;->setDisplayedTerminal(I)V
    invoke-static {v6, v4}, Lorg/connectbot/ConsoleActivity;->access$1(Lorg/connectbot/ConsoleActivity;I)V

    .line 174
    return-void

    .line 148
    .end local v3           #requestedBridge:Lorg/connectbot/service/TerminalBridge;
    .end local v4           #requestedIndex:I
    .end local v5           #requestedNickname:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 158
    .restart local v3       #requestedBridge:Lorg/connectbot/service/TerminalBridge;
    .restart local v4       #requestedIndex:I
    .restart local v5       #requestedNickname:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 159
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "ConnectBot.ConsoleActivity"

    const-string v7, "Problem while trying to create new requested bridge from URI"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 164
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/connectbot/service/TerminalBridge;

    .line 166
    .local v0, bridge:Lorg/connectbot/service/TerminalBridge;
    iget-object v7, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    #calls: Lorg/connectbot/ConsoleActivity;->addNewTerminalView(Lorg/connectbot/service/TerminalBridge;)I
    invoke-static {v7, v0}, Lorg/connectbot/ConsoleActivity;->access$0(Lorg/connectbot/ConsoleActivity;Lorg/connectbot/service/TerminalBridge;)I

    move-result v1

    .line 169
    .local v1, currentIndex:I
    if-ne v0, v3, :cond_1

    .line 170
    move v4, v1

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .parameter "className"

    .prologue
    const/4 v5, 0x0

    .line 178
    iget-object v1, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v1, v1, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    iget-object v2, v1, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    monitor-enter v2

    .line 179
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v1, v1, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    iget-object v1, v1, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object v1, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v1, v1, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 184
    iget-object v1, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    invoke-virtual {v1}, Lorg/connectbot/ConsoleActivity;->updateEmptyVisible()V

    .line 185
    iget-object v1, p0, Lorg/connectbot/ConsoleActivity$1;->this$0:Lorg/connectbot/ConsoleActivity;

    iput-object v5, v1, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    .line 186
    return-void

    .line 179
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/connectbot/service/TerminalBridge;

    .line 180
    .local v0, bridge:Lorg/connectbot/service/TerminalBridge;
    iget-object v3, v0, Lorg/connectbot/service/TerminalBridge;->promptHelper:Lorg/connectbot/service/PromptHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/connectbot/service/PromptHelper;->setHandler(Landroid/os/Handler;)V

    goto :goto_0

    .line 178
    .end local v0           #bridge:Lorg/connectbot/service/TerminalBridge;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
