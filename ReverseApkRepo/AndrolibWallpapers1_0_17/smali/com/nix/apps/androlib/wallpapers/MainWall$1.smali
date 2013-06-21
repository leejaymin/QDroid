.class Lcom/nix/apps/androlib/wallpapers/MainWall$1;
.super Landroid/os/Handler;
.source "MainWall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    .line 1452
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1455
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1530
    .end local p0
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1463
    .restart local p0
    :sswitch_1
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    const v4, 0x7f04000d

    invoke-static {v4}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f04000e

    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    #setter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$0(Lcom/nix/apps/androlib/wallpapers/MainWall;Landroid/app/ProgressDialog;)V

    .line 1464
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$1(Lcom/nix/apps/androlib/wallpapers/MainWall;)Landroid/app/ProgressDialog;

    move-result-object v2

    const v3, 0x7f020017

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIcon(I)V

    goto :goto_0

    .line 1469
    :sswitch_2
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$1(Lcom/nix/apps/androlib/wallpapers/MainWall;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 1474
    :sswitch_3
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$1(Lcom/nix/apps/androlib/wallpapers/MainWall;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1479
    .restart local p0
    :sswitch_4
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v2, p0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1485
    .restart local p0
    :sswitch_5
    new-instance v1, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1486
    .local v1, ts:Landroid/widget/Toast;
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v2, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1487
    const/16 v2, 0x30

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1488
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1495
    .end local v1           #ts:Landroid/widget/Toast;
    .restart local p0
    :sswitch_6
    :try_start_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$2(Lcom/nix/apps/androlib/wallpapers/MainWall;)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1499
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$2(Lcom/nix/apps/androlib/wallpapers/MainWall;)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v2

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;
    invoke-static {v3}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$3(Lcom/nix/apps/androlib/wallpapers/MainWall;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->currentCategoryID:Ljava/lang/String;

    .line 1500
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$2(Lcom/nix/apps/androlib/wallpapers/MainWall;)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v2

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;
    invoke-static {v3}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$4(Lcom/nix/apps/androlib/wallpapers/MainWall;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->currentAuthorID:Ljava/lang/String;

    .line 1501
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$2(Lcom/nix/apps/androlib/wallpapers/MainWall;)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v2

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;
    invoke-static {v3}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$5(Lcom/nix/apps/androlib/wallpapers/MainWall;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->query:Ljava/lang/String;

    .line 1502
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$2(Lcom/nix/apps/androlib/wallpapers/MainWall;)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v2

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I
    invoke-static {v3}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$6(Lcom/nix/apps/androlib/wallpapers/MainWall;)I

    move-result v3

    iput v3, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->currentPageNum:I

    .line 1504
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    invoke-static {v3}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$2(Lcom/nix/apps/androlib/wallpapers/MainWall;)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nix/apps/androlib/wallpapers/MainWall;->fillList(Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1505
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1507
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1513
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_7
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->fillCategories()V

    goto/16 :goto_0

    .line 1522
    :sswitch_8
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->fillLocalFiles()V

    goto/16 :goto_0

    .line 1527
    :sswitch_9
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->bye()V

    goto/16 :goto_0

    .line 1455
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_0
        0x8 -> :sswitch_8
        0x2c -> :sswitch_5
        0xf423f -> :sswitch_9
    .end sparse-switch
.end method
