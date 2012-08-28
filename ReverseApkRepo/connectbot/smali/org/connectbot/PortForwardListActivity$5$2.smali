.class Lorg/connectbot/PortForwardListActivity$5$2;
.super Ljava/lang/Object;
.source "PortForwardListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/PortForwardListActivity$5;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/connectbot/PortForwardListActivity$5;

.field private final synthetic val$destEdit:Landroid/widget/EditText;

.field private final synthetic val$nicknameEdit:Landroid/widget/EditText;

.field private final synthetic val$pfb:Lorg/connectbot/bean/PortForwardBean;

.field private final synthetic val$sourcePortEdit:Landroid/widget/EditText;

.field private final synthetic val$typeSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lorg/connectbot/PortForwardListActivity$5;Lorg/connectbot/bean/PortForwardBean;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PortForwardListActivity$5$2;->this$1:Lorg/connectbot/PortForwardListActivity$5;

    iput-object p2, p0, Lorg/connectbot/PortForwardListActivity$5$2;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    iput-object p3, p0, Lorg/connectbot/PortForwardListActivity$5$2;->val$nicknameEdit:Landroid/widget/EditText;

    iput-object p4, p0, Lorg/connectbot/PortForwardListActivity$5$2;->val$typeSpinner:Landroid/widget/Spinner;

    iput-object p5, p0, Lorg/connectbot/PortForwardListActivity$5$2;->val$sourcePortEdit:Landroid/widget/EditText;

    iput-object p6, p0, Lorg/connectbot/PortForwardListActivity$5$2;->val$destEdit:Landroid/widget/EditText;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/connectbot/PortForwardListActivity$5$2;)Lorg/connectbot/PortForwardListActivity$5;
    .locals 1
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lorg/connectbot/PortForwardListActivity$5$2;->this$1:Lorg/connectbot/PortForwardListActivity$5;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 290
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$5$2;->this$1:Lorg/connectbot/PortForwardListActivity$5;

    #getter for: Lorg/connectbot/PortForwardListActivity$5;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity$5;->access$0(Lorg/connectbot/PortForwardListActivity$5;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/connectbot/PortForwardListActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$5$2;->this$1:Lorg/connectbot/PortForwardListActivity$5;

    #getter for: Lorg/connectbot/PortForwardListActivity$5;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity$5;->access$0(Lorg/connectbot/PortForwardListActivity$5;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/connectbot/PortForwardListActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$5$2;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    invoke-virtual {v1, v2}, Lorg/connectbot/service/TerminalBridge;->disablePortForward(Lorg/connectbot/bean/PortForwardBean;)Z

    .line 293
    :cond_0
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$5$2;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$5$2;->val$nicknameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/connectbot/bean/PortForwardBean;->setNickname(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$5$2;->val$typeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 307
    :goto_0
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$5$2;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$5$2;->val$sourcePortEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/connectbot/bean/PortForwardBean;->setSourcePort(I)V

    .line 308
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$5$2;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$5$2;->val$destEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/connectbot/bean/PortForwardBean;->setDest(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$5$2;->this$1:Lorg/connectbot/PortForwardListActivity$5;

    #getter for: Lorg/connectbot/PortForwardListActivity$5;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity$5;->access$0(Lorg/connectbot/PortForwardListActivity$5;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/connectbot/PortForwardListActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$5$2;->this$1:Lorg/connectbot/PortForwardListActivity$5;

    #getter for: Lorg/connectbot/PortForwardListActivity$5;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity$5;->access$0(Lorg/connectbot/PortForwardListActivity$5;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/connectbot/PortForwardListActivity;->updateHandler:Landroid/os/Handler;

    new-instance v2, Lorg/connectbot/PortForwardListActivity$5$2$1;

    iget-object v3, p0, Lorg/connectbot/PortForwardListActivity$5$2;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    invoke-direct {v2, p0, v3}, Lorg/connectbot/PortForwardListActivity$5$2$1;-><init>(Lorg/connectbot/PortForwardListActivity$5$2;Lorg/connectbot/bean/PortForwardBean;)V

    .line 317
    const-wide/16 v3, 0x1f4

    .line 312
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    :cond_1
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$5$2;->this$1:Lorg/connectbot/PortForwardListActivity$5;

    #getter for: Lorg/connectbot/PortForwardListActivity$5;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity$5;->access$0(Lorg/connectbot/PortForwardListActivity$5;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/connectbot/PortForwardListActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$5$2;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    invoke-virtual {v1, v2}, Lorg/connectbot/util/HostDatabase;->savePortForward(Lorg/connectbot/bean/PortForwardBean;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 321
    new-instance v1, Landroid/database/SQLException;

    const-string v2, "Could not save port forward"

    invoke-direct {v1, v2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ConnectBot.PortForwardListActivity"

    const-string v2, "Could not update port forward"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 297
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$5$2;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    const-string v2, "local"

    invoke-virtual {v1, v2}, Lorg/connectbot/bean/PortForwardBean;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :pswitch_1
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$5$2;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    const-string v2, "remote"

    invoke-virtual {v1, v2}, Lorg/connectbot/bean/PortForwardBean;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :pswitch_2
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$5$2;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    const-string v2, "dynamic5"

    invoke-virtual {v1, v2}, Lorg/connectbot/bean/PortForwardBean;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_2
    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$5$2;->this$1:Lorg/connectbot/PortForwardListActivity$5;

    #getter for: Lorg/connectbot/PortForwardListActivity$5;->this$0:Lorg/connectbot/PortForwardListActivity;
    invoke-static {v1}, Lorg/connectbot/PortForwardListActivity$5;->access$0(Lorg/connectbot/PortForwardListActivity$5;)Lorg/connectbot/PortForwardListActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/connectbot/PortForwardListActivity;->updateHandler:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
