.class Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog$1;
.super Ljava/lang/Object;
.source "InviteMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;

.field private final synthetic val$hh:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog$1;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;

    iput-object p2, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog$1;->val$hh:Ljava/lang/String;

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 474
    iget-object v2, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog$1;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;
    invoke-static {v2}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->access$1(Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;)Lkr/co/medinbiz/widget/invite/InviteMain;

    move-result-object v2

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->http:Lkr/co/medinbiz/helper/HttpManager;
    invoke-static {v2}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$14(Lkr/co/medinbiz/widget/invite/InviteMain;)Lkr/co/medinbiz/helper/HttpManager;

    move-result-object v2

    iget-object v3, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog$1;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->phone:Ljava/lang/String;
    invoke-static {v3}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog$1;->val$hh:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lkr/co/medinbiz/helper/HttpManager;->inviteSend(Ljava/lang/String;Ljava/lang/String;)Lkr/co/medinbiz/dto/Roots;

    move-result-object v1

    .line 475
    .local v1, ll:Lkr/co/medinbiz/dto/Roots;
    if-eqz v1, :cond_6

    .line 476
    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 477
    iget-object v2, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog$1;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;
    invoke-static {v2}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->access$1(Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;)Lkr/co/medinbiz/widget/invite/InviteMain;

    move-result-object v2

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->map:Ljava/util/HashMap;
    invoke-static {v2}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$16(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog$1;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->phone:Ljava/lang/String;
    invoke-static {v3}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/Contact;

    .line 478
    .local v0, contact:Lkr/co/medinbiz/dto/Contact;
    const-string v2, "SENT"

    invoke-virtual {v0, v2}, Lkr/co/medinbiz/dto/Contact;->setStatus(Ljava/lang/String;)V

    .line 479
    iget-object v2, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog$1;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;
    invoke-static {v2}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->access$1(Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;)Lkr/co/medinbiz/widget/invite/InviteMain;

    move-result-object v2

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList1:Ljava/util/ArrayList;
    invoke-static {v2}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 480
    iget-object v2, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog$1;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;
    invoke-static {v2}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->access$1(Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;)Lkr/co/medinbiz/widget/invite/InviteMain;

    move-result-object v2

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList2:Ljava/util/ArrayList;
    invoke-static {v2}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$2(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 481
    iget-object v2, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog$1;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;
    invoke-static {v2}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->access$1(Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;)Lkr/co/medinbiz/widget/invite/InviteMain;

    move-result-object v2

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList2:Ljava/util/ArrayList;
    invoke-static {v2}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$2(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_0
    iget-object v2, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog$1;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;
    invoke-static {v2}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->access$1(Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;)Lkr/co/medinbiz/widget/invite/InviteMain;

    move-result-object v2

    iget-object v2, v2, Lkr/co/medinbiz/widget/invite/InviteMain;->sendSMSHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 502
    .end local v0           #contact:Lkr/co/medinbiz/dto/Contact;
    :cond_1
    :goto_0
    return-void

    .line 485
    :cond_2
    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v2

    .line 486
    const-string v3, "NO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 487
    iget-object v2, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog$1;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;
    invoke-static {v2}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->access$1(Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;)Lkr/co/medinbiz/widget/invite/InviteMain;

    move-result-object v2

    iget-object v2, v2, Lkr/co/medinbiz/widget/invite/InviteMain;->sendSMSHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 488
    :cond_3
    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v2

    .line 489
    const-string v3, "NO1"

    .line 488
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 490
    iget-object v2, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog$1;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;
    invoke-static {v2}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->access$1(Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;)Lkr/co/medinbiz/widget/invite/InviteMain;

    move-result-object v2

    iget-object v2, v2, Lkr/co/medinbiz/widget/invite/InviteMain;->sendSMSHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 491
    :cond_4
    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v2

    .line 492
    const-string v3, "NO2"

    .line 491
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 493
    iget-object v2, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog$1;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;
    invoke-static {v2}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->access$1(Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;)Lkr/co/medinbiz/widget/invite/InviteMain;

    move-result-object v2

    iget-object v2, v2, Lkr/co/medinbiz/widget/invite/InviteMain;->sendSMSHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 494
    :cond_5
    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v2

    .line 495
    const-string v3, "ERR"

    .line 494
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    iget-object v2, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog$1;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;
    invoke-static {v2}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->access$1(Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;)Lkr/co/medinbiz/widget/invite/InviteMain;

    move-result-object v2

    iget-object v2, v2, Lkr/co/medinbiz/widget/invite/InviteMain;->sendSMSHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 499
    :cond_6
    iget-object v2, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog$1;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;
    invoke-static {v2}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->access$1(Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;)Lkr/co/medinbiz/widget/invite/InviteMain;

    move-result-object v2

    iget-object v2, v2, Lkr/co/medinbiz/widget/invite/InviteMain;->sendSMSHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
