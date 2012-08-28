.class Lorg/connectbot/HostListActivity$8;
.super Ljava/lang/Object;
.source "HostListActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/HostListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/HostListActivity;

.field private final synthetic val$bridge:Lorg/connectbot/service/TerminalBridge;


# direct methods
.method constructor <init>(Lorg/connectbot/HostListActivity;Lorg/connectbot/service/TerminalBridge;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/HostListActivity$8;->this$0:Lorg/connectbot/HostListActivity;

    iput-object p2, p0, Lorg/connectbot/HostListActivity$8;->val$bridge:Lorg/connectbot/service/TerminalBridge;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 328
    iget-object v0, p0, Lorg/connectbot/HostListActivity$8;->val$bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v0, v2}, Lorg/connectbot/service/TerminalBridge;->dispatchDisconnect(Z)V

    .line 329
    iget-object v0, p0, Lorg/connectbot/HostListActivity$8;->this$0:Lorg/connectbot/HostListActivity;

    iget-object v0, v0, Lorg/connectbot/HostListActivity;->updateHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 330
    return v2
.end method
