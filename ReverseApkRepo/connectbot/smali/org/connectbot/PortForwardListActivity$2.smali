.class Lorg/connectbot/PortForwardListActivity$2;
.super Ljava/lang/Object;
.source "PortForwardListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/PortForwardListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/PortForwardListActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/PortForwardListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PortForwardListActivity$2;->this$0:Lorg/connectbot/PortForwardListActivity;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 133
    check-cast p2, Lorg/connectbot/service/TerminalManager$TerminalBinder;

    .end local p2
    invoke-virtual {p2}, Lorg/connectbot/service/TerminalManager$TerminalBinder;->getService()Lorg/connectbot/service/TerminalManager;

    move-result-object v0

    .line 135
    .local v0, bound:Lorg/connectbot/service/TerminalManager;
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$2;->this$0:Lorg/connectbot/PortForwardListActivity;

    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$2;->this$0:Lorg/connectbot/PortForwardListActivity;

    #getter for: Lorg/connectbot/PortForwardListActivity;->host:Lorg/connectbot/bean/HostBean;
    invoke-static {v2}, Lorg/connectbot/PortForwardListActivity;->access$0(Lorg/connectbot/PortForwardListActivity;)Lorg/connectbot/bean/HostBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/connectbot/service/TerminalManager;->getConnectedBridge(Lorg/connectbot/bean/HostBean;)Lorg/connectbot/service/TerminalBridge;

    move-result-object v2

    iput-object v2, v1, Lorg/connectbot/PortForwardListActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    .line 136
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$2;->this$0:Lorg/connectbot/PortForwardListActivity;

    iget-object v1, v1, Lorg/connectbot/PortForwardListActivity;->updateHandler:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 137
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 140
    iget-object v0, p0, Lorg/connectbot/PortForwardListActivity$2;->this$0:Lorg/connectbot/PortForwardListActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/connectbot/PortForwardListActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    .line 141
    return-void
.end method
