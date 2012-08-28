.class Lorg/connectbot/HostListActivity$2;
.super Ljava/lang/Object;
.source "HostListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/HostListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/HostListActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/HostListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/HostListActivity$2;->this$0:Lorg/connectbot/HostListActivity;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 98
    iget-object v0, p0, Lorg/connectbot/HostListActivity$2;->this$0:Lorg/connectbot/HostListActivity;

    check-cast p2, Lorg/connectbot/service/TerminalManager$TerminalBinder;

    .end local p2
    invoke-virtual {p2}, Lorg/connectbot/service/TerminalManager$TerminalBinder;->getService()Lorg/connectbot/service/TerminalManager;

    move-result-object v1

    iput-object v1, v0, Lorg/connectbot/HostListActivity;->bound:Lorg/connectbot/service/TerminalManager;

    .line 101
    iget-object v0, p0, Lorg/connectbot/HostListActivity$2;->this$0:Lorg/connectbot/HostListActivity;

    invoke-virtual {v0}, Lorg/connectbot/HostListActivity;->updateList()V

    .line 102
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 105
    iget-object v0, p0, Lorg/connectbot/HostListActivity$2;->this$0:Lorg/connectbot/HostListActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/connectbot/HostListActivity;->bound:Lorg/connectbot/service/TerminalManager;

    .line 106
    iget-object v0, p0, Lorg/connectbot/HostListActivity$2;->this$0:Lorg/connectbot/HostListActivity;

    invoke-virtual {v0}, Lorg/connectbot/HostListActivity;->updateList()V

    .line 107
    return-void
.end method
