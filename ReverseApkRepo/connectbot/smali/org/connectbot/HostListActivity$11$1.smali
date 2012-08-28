.class Lorg/connectbot/HostListActivity$11$1;
.super Ljava/lang/Object;
.source "HostListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/HostListActivity$11;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/connectbot/HostListActivity$11;

.field private final synthetic val$bridge:Lorg/connectbot/service/TerminalBridge;

.field private final synthetic val$host:Lorg/connectbot/bean/HostBean;


# direct methods
.method constructor <init>(Lorg/connectbot/HostListActivity$11;Lorg/connectbot/service/TerminalBridge;Lorg/connectbot/bean/HostBean;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/HostListActivity$11$1;->this$1:Lorg/connectbot/HostListActivity$11;

    iput-object p2, p0, Lorg/connectbot/HostListActivity$11$1;->val$bridge:Lorg/connectbot/service/TerminalBridge;

    iput-object p3, p0, Lorg/connectbot/HostListActivity$11$1;->val$host:Lorg/connectbot/bean/HostBean;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 365
    iget-object v0, p0, Lorg/connectbot/HostListActivity$11$1;->val$bridge:Lorg/connectbot/service/TerminalBridge;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lorg/connectbot/HostListActivity$11$1;->val$bridge:Lorg/connectbot/service/TerminalBridge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalBridge;->dispatchDisconnect(Z)V

    .line 368
    :cond_0
    iget-object v0, p0, Lorg/connectbot/HostListActivity$11$1;->this$1:Lorg/connectbot/HostListActivity$11;

    #getter for: Lorg/connectbot/HostListActivity$11;->this$0:Lorg/connectbot/HostListActivity;
    invoke-static {v0}, Lorg/connectbot/HostListActivity$11;->access$0(Lorg/connectbot/HostListActivity$11;)Lorg/connectbot/HostListActivity;

    move-result-object v0

    iget-object v0, v0, Lorg/connectbot/HostListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    iget-object v1, p0, Lorg/connectbot/HostListActivity$11$1;->val$host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v0, v1}, Lorg/connectbot/util/HostDatabase;->deleteHost(Lorg/connectbot/bean/HostBean;)V

    .line 369
    iget-object v0, p0, Lorg/connectbot/HostListActivity$11$1;->this$1:Lorg/connectbot/HostListActivity$11;

    #getter for: Lorg/connectbot/HostListActivity$11;->this$0:Lorg/connectbot/HostListActivity;
    invoke-static {v0}, Lorg/connectbot/HostListActivity$11;->access$0(Lorg/connectbot/HostListActivity$11;)Lorg/connectbot/HostListActivity;

    move-result-object v0

    iget-object v0, v0, Lorg/connectbot/HostListActivity;->updateHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 370
    return-void
.end method
