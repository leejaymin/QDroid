.class Lorg/connectbot/PortForwardListActivity$3;
.super Ljava/lang/Object;
.source "PortForwardListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/PortForwardListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/PortForwardListActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/PortForwardListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PortForwardListActivity$3;->this$0:Lorg/connectbot/PortForwardListActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$3;->this$0:Lorg/connectbot/PortForwardListActivity;

    invoke-virtual {v2}, Lorg/connectbot/PortForwardListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 151
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/connectbot/bean/PortForwardBean;

    .line 153
    .local v1, pfb:Lorg/connectbot/bean/PortForwardBean;
    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$3;->this$0:Lorg/connectbot/PortForwardListActivity;

    iget-object v2, v2, Lorg/connectbot/PortForwardListActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {v1}, Lorg/connectbot/bean/PortForwardBean;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$3;->this$0:Lorg/connectbot/PortForwardListActivity;

    iget-object v2, v2, Lorg/connectbot/PortForwardListActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v2, v1}, Lorg/connectbot/service/TerminalBridge;->disablePortForward(Lorg/connectbot/bean/PortForwardBean;)Z

    .line 161
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$3;->this$0:Lorg/connectbot/PortForwardListActivity;

    iget-object v2, v2, Lorg/connectbot/PortForwardListActivity;->updateHandler:Landroid/os/Handler;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 163
    :cond_1
    return-void

    .line 157
    :cond_2
    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$3;->this$0:Lorg/connectbot/PortForwardListActivity;

    iget-object v2, v2, Lorg/connectbot/PortForwardListActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v2, v1}, Lorg/connectbot/service/TerminalBridge;->enablePortForward(Lorg/connectbot/bean/PortForwardBean;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$3;->this$0:Lorg/connectbot/PortForwardListActivity;

    iget-object v3, p0, Lorg/connectbot/PortForwardListActivity$3;->this$0:Lorg/connectbot/PortForwardListActivity;

    const v4, 0x7f080096

    invoke-virtual {v3, v4}, Lorg/connectbot/PortForwardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
