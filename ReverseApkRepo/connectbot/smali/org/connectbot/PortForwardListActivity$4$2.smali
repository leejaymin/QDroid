.class Lorg/connectbot/PortForwardListActivity$4$2;
.super Ljava/lang/Object;
.source "PortForwardListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/PortForwardListActivity$4;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/connectbot/PortForwardListActivity$4;

.field private final synthetic val$destEdit:Landroid/widget/EditText;

.field private final synthetic val$portForwardView:Landroid/view/View;

.field private final synthetic val$typeSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lorg/connectbot/PortForwardListActivity$4;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PortForwardListActivity$4$2;->this$1:Lorg/connectbot/PortForwardListActivity$4;

    iput-object p2, p0, Lorg/connectbot/PortForwardListActivity$4$2;->val$portForwardView:Landroid/view/View;

    iput-object p3, p0, Lorg/connectbot/PortForwardListActivity$4$2;->val$typeSpinner:Landroid/widget/Spinner;

    iput-object p4, p0, Lorg/connectbot/PortForwardListActivity$4$2;->val$destEdit:Landroid/widget/EditText;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$4$2;->val$portForwardView:Landroid/view/View;

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 197
    .local v8, nicknameEdit:Landroid/widget/EditText;
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$4$2;->val$portForwardView:Landroid/view/View;

    const v2, 0x7f0b0026

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 199
    .local v9, sourcePortEdit:Landroid/widget/EditText;
    const-string v4, "local"

    .line 200
    .local v4, type:Ljava/lang/String;
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$4$2;->val$typeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 212
    :goto_0
    new-instance v0, Lorg/connectbot/bean/PortForwardBean;

    .line 213
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$4$2;->this$1:Lorg/connectbot/PortForwardListActivity$4;

    #getter for: Lorg/connectbot/PortForwardListActivity$4;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity$4;->access$0(Lorg/connectbot/PortForwardListActivity$4;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v1

    #getter for: Lorg/connectbot/PortForwardListActivity;->host:Lorg/connectbot/bean/HostBean;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity;->access$0(Lorg/connectbot/PortForwardListActivity;)Lorg/connectbot/bean/HostBean;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$4$2;->this$1:Lorg/connectbot/PortForwardListActivity$4;

    #getter for: Lorg/connectbot/PortForwardListActivity$4;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity$4;->access$0(Lorg/connectbot/PortForwardListActivity$4;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v1

    #getter for: Lorg/connectbot/PortForwardListActivity;->host:Lorg/connectbot/bean/HostBean;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity;->access$0(Lorg/connectbot/PortForwardListActivity;)Lorg/connectbot/bean/HostBean;

    move-result-object v1

    invoke-virtual {v1}, Lorg/connectbot/bean/HostBean;->getId()J

    move-result-wide v1

    .line 214
    :goto_1
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 216
    iget-object v6, p0, Lorg/connectbot/PortForwardListActivity$4$2;->val$destEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 212
    invoke-direct/range {v0 .. v6}, Lorg/connectbot/bean/PortForwardBean;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .local v0, pfb:Lorg/connectbot/bean/PortForwardBean;
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$4$2;->this$1:Lorg/connectbot/PortForwardListActivity$4;

    #getter for: Lorg/connectbot/PortForwardListActivity$4;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity$4;->access$0(Lorg/connectbot/PortForwardListActivity$4;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/connectbot/PortForwardListActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$4$2;->this$1:Lorg/connectbot/PortForwardListActivity$4;

    #getter for: Lorg/connectbot/PortForwardListActivity$4;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity$4;->access$0(Lorg/connectbot/PortForwardListActivity$4;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/connectbot/PortForwardListActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v1, v0}, Lorg/connectbot/service/TerminalBridge;->addPortForward(Lorg/connectbot/bean/PortForwardBean;)Z

    .line 220
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$4$2;->this$1:Lorg/connectbot/PortForwardListActivity$4;

    #getter for: Lorg/connectbot/PortForwardListActivity$4;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity$4;->access$0(Lorg/connectbot/PortForwardListActivity$4;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/connectbot/PortForwardListActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v1, v0}, Lorg/connectbot/service/TerminalBridge;->enablePortForward(Lorg/connectbot/bean/PortForwardBean;)Z

    .line 223
    :cond_0
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$4$2;->this$1:Lorg/connectbot/PortForwardListActivity$4;

    #getter for: Lorg/connectbot/PortForwardListActivity$4;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity$4;->access$0(Lorg/connectbot/PortForwardListActivity$4;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v1

    #getter for: Lorg/connectbot/PortForwardListActivity;->host:Lorg/connectbot/bean/HostBean;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity;->access$0(Lorg/connectbot/PortForwardListActivity;)Lorg/connectbot/bean/HostBean;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$4$2;->this$1:Lorg/connectbot/PortForwardListActivity$4;

    #getter for: Lorg/connectbot/PortForwardListActivity$4;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity$4;->access$0(Lorg/connectbot/PortForwardListActivity$4;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/connectbot/PortForwardListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    invoke-virtual {v1, v0}, Lorg/connectbot/util/HostDatabase;->savePortForward(Lorg/connectbot/bean/PortForwardBean;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 224
    new-instance v1, Landroid/database/SQLException;

    const-string v2, "Could not save port forward"

    invoke-direct {v1, v2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v0           #pfb:Lorg/connectbot/bean/PortForwardBean;
    .end local v4           #type:Ljava/lang/String;
    .end local v8           #nicknameEdit:Landroid/widget/EditText;
    .end local v9           #sourcePortEdit:Landroid/widget/EditText;
    :catch_0
    move-exception v7

    .line 228
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "ConnectBot.PortForwardListActivity"

    const-string v2, "Could not update port forward"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v7           #e:Ljava/lang/Exception;
    :goto_2
    return-void

    .line 202
    .restart local v4       #type:Ljava/lang/String;
    .restart local v8       #nicknameEdit:Landroid/widget/EditText;
    .restart local v9       #sourcePortEdit:Landroid/widget/EditText;
    :pswitch_0
    :try_start_1
    const-string v4, "local"

    .line 203
    goto/16 :goto_0

    .line 205
    :pswitch_1
    const-string v4, "remote"

    .line 206
    goto/16 :goto_0

    .line 208
    :pswitch_2
    const-string v4, "dynamic5"

    goto/16 :goto_0

    .line 213
    :cond_1
    const-wide/16 v1, -0x1

    goto :goto_1

    .line 226
    .restart local v0       #pfb:Lorg/connectbot/bean/PortForwardBean;
    :cond_2
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$4$2;->this$1:Lorg/connectbot/PortForwardListActivity$4;

    #getter for: Lorg/connectbot/PortForwardListActivity$4;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity$4;->access$0(Lorg/connectbot/PortForwardListActivity$4;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/connectbot/PortForwardListActivity;->updateHandler:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
