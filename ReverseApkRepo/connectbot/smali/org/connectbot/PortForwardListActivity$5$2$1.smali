.class Lorg/connectbot/PortForwardListActivity$5$2$1;
.super Ljava/lang/Object;
.source "PortForwardListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/PortForwardListActivity$5$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/connectbot/PortForwardListActivity$5$2;

.field private final synthetic val$pfb:Lorg/connectbot/bean/PortForwardBean;


# direct methods
.method constructor <init>(Lorg/connectbot/PortForwardListActivity$5$2;Lorg/connectbot/bean/PortForwardBean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PortForwardListActivity$5$2$1;->this$2:Lorg/connectbot/PortForwardListActivity$5$2;

    iput-object p2, p0, Lorg/connectbot/PortForwardListActivity$5$2$1;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lorg/connectbot/PortForwardListActivity$5$2$1;->this$2:Lorg/connectbot/PortForwardListActivity$5$2;

    #getter for: Lorg/connectbot/PortForwardListActivity$5$2;->this$1:Lorg/connectbot/PortForwardListActivity$5;
    invoke-static {v0}, Lorg/connectbot/PortForwardListActivity$5$2;->access$0(Lorg/connectbot/PortForwardListActivity$5$2;)Lorg/connectbot/PortForwardListActivity$5;

    move-result-object v0

    #getter for: Lorg/connectbot/PortForwardListActivity$5;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v0}, Lorg/connectbot/PortForwardListActivity$5;->access$0(Lorg/connectbot/PortForwardListActivity$5;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v0

    iget-object v0, v0, Lorg/connectbot/PortForwardListActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$5$2$1;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalBridge;->enablePortForward(Lorg/connectbot/bean/PortForwardBean;)Z

    .line 315
    iget-object v0, p0, Lorg/connectbot/PortForwardListActivity$5$2$1;->this$2:Lorg/connectbot/PortForwardListActivity$5$2;

    #getter for: Lorg/connectbot/PortForwardListActivity$5$2;->this$1:Lorg/connectbot/PortForwardListActivity$5;
    invoke-static {v0}, Lorg/connectbot/PortForwardListActivity$5$2;->access$0(Lorg/connectbot/PortForwardListActivity$5$2;)Lorg/connectbot/PortForwardListActivity$5;

    move-result-object v0

    #getter for: Lorg/connectbot/PortForwardListActivity$5;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v0}, Lorg/connectbot/PortForwardListActivity$5;->access$0(Lorg/connectbot/PortForwardListActivity$5;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v0

    iget-object v0, v0, Lorg/connectbot/PortForwardListActivity;->updateHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 316
    return-void
.end method
