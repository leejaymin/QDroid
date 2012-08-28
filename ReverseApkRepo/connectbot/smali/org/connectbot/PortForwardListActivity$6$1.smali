.class Lorg/connectbot/PortForwardListActivity$6$1;
.super Ljava/lang/Object;
.source "PortForwardListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/PortForwardListActivity$6;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/connectbot/PortForwardListActivity$6;

.field private final synthetic val$pfb:Lorg/connectbot/bean/PortForwardBean;


# direct methods
.method constructor <init>(Lorg/connectbot/PortForwardListActivity$6;Lorg/connectbot/bean/PortForwardBean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PortForwardListActivity$6$1;->this$1:Lorg/connectbot/PortForwardListActivity$6;

    iput-object p2, p0, Lorg/connectbot/PortForwardListActivity$6$1;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 346
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$6$1;->this$1:Lorg/connectbot/PortForwardListActivity$6;

    #getter for: Lorg/connectbot/PortForwardListActivity$6;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity$6;->access$0(Lorg/connectbot/PortForwardListActivity$6;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/connectbot/PortForwardListActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$6$1;->this$1:Lorg/connectbot/PortForwardListActivity$6;

    #getter for: Lorg/connectbot/PortForwardListActivity$6;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity$6;->access$0(Lorg/connectbot/PortForwardListActivity$6;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/connectbot/PortForwardListActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$6$1;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    invoke-virtual {v1, v2}, Lorg/connectbot/service/TerminalBridge;->removePortForward(Lorg/connectbot/bean/PortForwardBean;)Z

    .line 349
    :cond_0
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$6$1;->this$1:Lorg/connectbot/PortForwardListActivity$6;

    #getter for: Lorg/connectbot/PortForwardListActivity$6;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity$6;->access$0(Lorg/connectbot/PortForwardListActivity$6;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/connectbot/PortForwardListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$6$1;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    invoke-virtual {v1, v2}, Lorg/connectbot/util/HostDatabase;->deletePortForward(Lorg/connectbot/bean/PortForwardBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$6$1;->this$1:Lorg/connectbot/PortForwardListActivity$6;

    #getter for: Lorg/connectbot/PortForwardListActivity$6;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity$6;->access$0(Lorg/connectbot/PortForwardListActivity$6;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/connectbot/PortForwardListActivity;->updateHandler:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 355
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ConnectBot.PortForwardListActivity"

    const-string v2, "Could not delete port forward"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
