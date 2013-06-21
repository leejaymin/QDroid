.class final Lorg/connectbot/HostList$3;
.super Ljava/lang/Object;
.source "HostList.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/HostList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/HostList;


# direct methods
.method constructor <init>(Lorg/connectbot/HostList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/HostList$3;->this$0:Lorg/connectbot/HostList;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 104
    iget-object v0, p0, Lorg/connectbot/HostList$3;->this$0:Lorg/connectbot/HostList;

    check-cast p2, Lorg/connectbot/service/TerminalManager$TerminalBinder;

    .end local p2
    invoke-virtual {p2}, Lorg/connectbot/service/TerminalManager$TerminalBinder;->getService()Lorg/connectbot/service/TerminalManager;

    move-result-object v1

    iput-object v1, v0, Lorg/connectbot/HostList;->bound:Lorg/connectbot/service/TerminalManager;

    .line 107
    iget-object v0, p0, Lorg/connectbot/HostList$3;->this$0:Lorg/connectbot/HostList;

    invoke-virtual {v0}, Lorg/connectbot/HostList;->updateCursor()V

    .line 108
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 111
    iget-object v0, p0, Lorg/connectbot/HostList$3;->this$0:Lorg/connectbot/HostList;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/connectbot/HostList;->bound:Lorg/connectbot/service/TerminalManager;

    .line 112
    iget-object v0, p0, Lorg/connectbot/HostList$3;->this$0:Lorg/connectbot/HostList;

    invoke-virtual {v0}, Lorg/connectbot/HostList;->updateCursor()V

    .line 113
    return-void
.end method
