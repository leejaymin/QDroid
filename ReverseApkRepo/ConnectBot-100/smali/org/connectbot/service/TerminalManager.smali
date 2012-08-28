.class public Lorg/connectbot/service/TerminalManager;
.super Landroid/app/Service;
.source "TerminalManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/service/TerminalManager$TerminalBinder;
    }
.end annotation


# instance fields
.field private final binder:Landroid/os/IBinder;

.field public bridges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/service/TerminalBridge;",
            ">;"
        }
    .end annotation
.end field

.field public defaultBridge:Lorg/connectbot/service/TerminalBridge;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/connectbot/service/TerminalManager;->defaultBridge:Lorg/connectbot/service/TerminalBridge;

    .line 110
    new-instance v0, Lorg/connectbot/service/TerminalManager$TerminalBinder;

    invoke-direct {v0, p0}, Lorg/connectbot/service/TerminalManager$TerminalBinder;-><init>(Lorg/connectbot/service/TerminalManager;)V

    iput-object v0, p0, Lorg/connectbot/service/TerminalManager;->binder:Landroid/os/IBinder;

    .line 18
    return-void
.end method


# virtual methods
.method public disconnect(Lorg/connectbot/service/TerminalBridge;)V
    .locals 1
    .parameter "bridge"

    .prologue
    .line 98
    invoke-virtual {p1}, Lorg/connectbot/service/TerminalBridge;->dispose()V

    .line 99
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public findBridge(Ljava/lang/String;)Lorg/connectbot/service/TerminalBridge;
    .locals 3
    .parameter "nickname"

    .prologue
    .line 90
    iget-object v1, p0, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 90
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/connectbot/service/TerminalBridge;

    .line 91
    .local v0, bridge:Lorg/connectbot/service/TerminalBridge;
    iget-object v2, v0, Lorg/connectbot/service/TerminalBridge;->nickname:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 92
    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v1, p0, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    return-void

    .line 32
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/connectbot/service/TerminalBridge;

    .line 33
    .local v0, bridge:Lorg/connectbot/service/TerminalBridge;
    invoke-virtual {v0}, Lorg/connectbot/service/TerminalBridge;->dispose()V

    goto :goto_0
.end method

.method public openConnection(Landroid/net/Uri;)V
    .locals 6
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, nickname:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, username:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, hostname:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v3

    .line 74
    .local v3, port:I
    new-instance v0, Lorg/connectbot/service/TerminalBridge;

    invoke-direct {v0, v2, v4, v1, v3}, Lorg/connectbot/service/TerminalBridge;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    .local v0, bridge:Lorg/connectbot/service/TerminalBridge;
    iget-object v5, p0, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p0, v2}, Lorg/connectbot/service/TerminalManager;->touchHost(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public openConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "nickname"
    .parameter "hostname"
    .parameter "username"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lorg/connectbot/service/TerminalBridge;

    invoke-direct {v0, p1, p3, p2, p4}, Lorg/connectbot/service/TerminalBridge;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    .local v0, bridge:Lorg/connectbot/service/TerminalBridge;
    iget-object v1, p0, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p0, p1}, Lorg/connectbot/service/TerminalManager;->touchHost(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method protected touchHost(Ljava/lang/String;)V
    .locals 1
    .parameter "nickname"

    .prologue
    .line 83
    new-instance v0, Lorg/connectbot/util/HostDatabase;

    invoke-direct {v0, p0}, Lorg/connectbot/util/HostDatabase;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, hostdb:Lorg/connectbot/util/HostDatabase;
    invoke-virtual {v0, p1}, Lorg/connectbot/util/HostDatabase;->touchHost(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Lorg/connectbot/util/HostDatabase;->close()V

    .line 86
    return-void
.end method
