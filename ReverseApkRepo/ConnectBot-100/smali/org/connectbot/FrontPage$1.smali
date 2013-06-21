.class final Lorg/connectbot/FrontPage$1;
.super Ljava/lang/Object;
.source "FrontPage.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/FrontPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/FrontPage;


# direct methods
.method constructor <init>(Lorg/connectbot/FrontPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/FrontPage$1;->this$0:Lorg/connectbot/FrontPage;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 38
    iget-object v0, p0, Lorg/connectbot/FrontPage$1;->this$0:Lorg/connectbot/FrontPage;

    check-cast p2, Lorg/connectbot/service/TerminalManager$TerminalBinder;

    .end local p2
    invoke-virtual {p2}, Lorg/connectbot/service/TerminalManager$TerminalBinder;->getService()Lorg/connectbot/service/TerminalManager;

    move-result-object v1

    iput-object v1, v0, Lorg/connectbot/FrontPage;->bound:Lorg/connectbot/service/TerminalManager;

    .line 50
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 53
    iget-object v0, p0, Lorg/connectbot/FrontPage$1;->this$0:Lorg/connectbot/FrontPage;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/connectbot/FrontPage;->bound:Lorg/connectbot/service/TerminalManager;

    .line 54
    return-void
.end method
