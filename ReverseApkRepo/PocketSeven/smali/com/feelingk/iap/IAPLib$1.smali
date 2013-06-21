.class Lcom/feelingk/iap/IAPLib$1;
.super Landroid/os/Handler;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/IAPLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 423
    const-string v9, "IAPLib"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[NET-Handler] Network Message Receive Msg.what = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 692
    :pswitch_0
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 694
    const/4 v7, 0x0

    .line 695
    .local v7, msgUI:Landroid/os/Message;
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v9, :cond_0

    .line 696
    const-string v9, "\uc815\uc758\ub418\uc9c0 \uc54a\ub294  \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    iput-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 700
    :cond_0
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x7d3

    if-ne v9, v10, :cond_1

    iget v9, p1, Landroid/os/Message;->arg1:I

    const/16 v10, 0xf

    if-ne v9, v10, :cond_1

    .line 703
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->updateEncJuminNumber(Ljava/lang/String;)V

    .line 706
    :cond_1
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 707
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 708
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 710
    :cond_2
    sget-object v9, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    if-eqz v9, :cond_3

    .line 711
    sget-object v9, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    iget v10, p1, Landroid/os/Message;->what:I

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v9, v10, v11}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onError(II)V

    .line 715
    .end local v7           #msgUI:Landroid/os/Message;
    :cond_3
    :goto_0
    return-void

    .line 430
    :pswitch_1
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const/4 v9, 0x1

    :goto_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sput-object v9, Lcom/feelingk/iap/IAPLib;->mUseTCash:Ljava/lang/Boolean;

    .line 431
    iget v9, p1, Landroid/os/Message;->arg2:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    const/4 v9, 0x1

    :goto_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sput-object v9, Lcom/feelingk/iap/IAPLib;->mUseBPProtol:Ljava/lang/Boolean;

    .line 432
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->sendItemQuery()V

    goto :goto_0

    .line 430
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 431
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 439
    :pswitch_2
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->sendItemQuery()V

    goto :goto_0

    .line 444
    :pswitch_3
    sget-object v9, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    if-eqz v9, :cond_3

    .line 446
    const/4 v0, 0x0

    .line 449
    .local v0, bFlag:Z
    :try_start_0
    sget-object v9, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    invoke-interface {v9}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onItemQueryComplete()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 451
    if-eqz v0, :cond_7

    .line 452
    const-string v9, "IAPLib"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "onItemQueryComplete bFlag: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    sget v9, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 455
    sget-object v9, Lcom/feelingk/iap/IAPLib;->mUseTCash:Ljava/lang/Boolean;

    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->sendItemPurchse(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v2

    .line 472
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "IAPLib"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[Exception] "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 474
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x7d3

    const-string v11, "[\uacfc\uae08 \uc624\ub958]\n\ucf5c\ubc31 \ub9ac\uc2a4\ub108 onItemQueryComplete()\uc758 \ub9ac\ud134\uac12\uc774 false\uc774\uac70\ub098 null\uc785\ub2c8\ub2e4. true\ub85c \ub9ac\ud134\ub418\uc5b4\uc57c \ud569\ub2c8\ub2e4."

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 475
    .local v6, messageUI:Landroid/os/Message;
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 476
    const-string v9, "IAPLib"

    const-string v10, "[Exception] mClientListener.onItemQueryComplete() is null!!"

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 457
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #messageUI:Landroid/os/Message;
    :cond_6
    :try_start_1
    sget-object v9, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    sget v10, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v11, Lcom/feelingk/iap/IAPLib;->mUseTCash:Ljava/lang/Boolean;

    sget-object v12, Lcom/feelingk/iap/IAPLib;->mEncJuminNumber:Ljava/lang/String;

    invoke-static {v9, v10, v11, v12}, Lcom/feelingk/iap/IAPLib;->sendItemPurchseByDanal(Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    :cond_7
    const-string v9, "IAPLib"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "onItemQueryComplete bFlag: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 464
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x7d3

    const-string v11, "[\uacfc\uae08 \uc624\ub958]\n\ucf5c\ubc31 \ub9ac\uc2a4\ub108 onItemQueryComplete()\uc758 \ub9ac\ud134\uac12\uc774 false\uc774\uac70\ub098 null\uc785\ub2c8\ub2e4. true\ub85c \ub9ac\ud134\ub418\uc5b4\uc57c \ud569\ub2c8\ub2e4."

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 465
    .restart local v6       #messageUI:Landroid/os/Message;
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 466
    const-string v9, "IAPLib"

    const-string v10, "mClientListener.onItemQueryComplete() is false!!"

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 485
    .end local v0           #bFlag:Z
    .end local v6           #messageUI:Landroid/os/Message;
    :pswitch_4
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 492
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 493
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_3

    .line 494
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x452

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 495
    .restart local v7       #msgUI:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 507
    .end local v7           #msgUI:Landroid/os/Message;
    :pswitch_5
    sget-object v9, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    if-eqz v9, :cond_3

    .line 509
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setIsOTPAuth(Z)V

    .line 510
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setOTPAgree(Z)V

    .line 511
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setOTPPurchaseSuccess(Z)V

    .line 512
    sget-object v9, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    invoke-interface {v9}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onItemPurchaseComplete()V

    goto/16 :goto_0

    .line 519
    :pswitch_6
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/feelingk/iap/IAPLib;->mEncJuminNumber:Ljava/lang/String;

    .line 520
    sget-object v9, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget-object v10, Lcom/feelingk/iap/IAPLib;->mEncJuminNumber:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/feelingk/iap/net/IAPBase;->setBaseEncodeJuminNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 525
    :pswitch_7
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 527
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 528
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x450

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 529
    .restart local v7       #msgUI:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 535
    .end local v7           #msgUI:Landroid/os/Message;
    :pswitch_8
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    goto/16 :goto_0

    .line 541
    :pswitch_9
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 543
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 544
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x45f

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 545
    .restart local v7       #msgUI:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 551
    .end local v7           #msgUI:Landroid/os/Message;
    :pswitch_a
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 553
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 554
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x465

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 555
    .restart local v7       #msgUI:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 560
    .end local v7           #msgUI:Landroid/os/Message;
    :pswitch_b
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 562
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 563
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x46b

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 564
    .restart local v7       #msgUI:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 580
    .end local v7           #msgUI:Landroid/os/Message;
    :pswitch_c
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 582
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 583
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x466

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 584
    .restart local v7       #msgUI:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 590
    .end local v7           #msgUI:Landroid/os/Message;
    :pswitch_d
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 592
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 593
    sget-object v9, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v9}, Lcom/feelingk/iap/net/IAPBase;->getLGUSmsAuthNumberConfirmMessage()Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    move-result-object v1

    .line 595
    .local v1, confirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;
    invoke-virtual {v1}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->getAuthKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->access$1(Ljava/lang/String;)V

    .line 597
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x468

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 598
    .restart local v7       #msgUI:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 604
    .end local v1           #confirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;
    .end local v7           #msgUI:Landroid/os/Message;
    :cond_8
    :pswitch_e
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 606
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 607
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x45d

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 608
    .restart local v7       #msgUI:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 614
    .end local v7           #msgUI:Landroid/os/Message;
    :pswitch_f
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 616
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 617
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x463

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 618
    .restart local v7       #msgUI:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 624
    .end local v7           #msgUI:Landroid/os/Message;
    :pswitch_10
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 626
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 627
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x461

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 628
    .restart local v7       #msgUI:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 634
    .end local v7           #msgUI:Landroid/os/Message;
    :pswitch_11
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 637
    sget-object v9, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v9}, Lcom/feelingk/iap/net/IAPBase;->getItemWholeAuthConfirmMessage()Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

    move-result-object v8

    .line 639
    .local v8, whole:Lcom/feelingk/iap/net/ItemWholeAuthConfirm;
    sget-object v9, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    if-eqz v9, :cond_3

    .line 640
    sget-object v9, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    invoke-virtual {v8}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;->getItems()[Lcom/feelingk/iap/net/ItemAuth;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onWholeQuery([Lcom/feelingk/iap/net/ItemAuth;)V

    goto/16 :goto_0

    .line 646
    .end local v8           #whole:Lcom/feelingk/iap/net/ItemWholeAuthConfirm;
    :pswitch_12
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 649
    sget-object v9, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v9}, Lcom/feelingk/iap/net/IAPBase;->getItemUseConfirmMessage()Lcom/feelingk/iap/net/ItemUseConfirm;

    move-result-object v5

    .line 650
    .local v5, itemUse:Lcom/feelingk/iap/net/ItemUseConfirm;
    new-instance v4, Lcom/feelingk/iap/net/ItemUse;

    invoke-direct {v4}, Lcom/feelingk/iap/net/ItemUse;-><init>()V

    .line 652
    .local v4, item:Lcom/feelingk/iap/net/ItemUse;
    invoke-virtual {v5}, Lcom/feelingk/iap/net/ItemUseConfirm;->getItemID()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/feelingk/iap/net/ItemUse;->pId:Ljava/lang/String;

    .line 653
    invoke-virtual {v5}, Lcom/feelingk/iap/net/ItemUseConfirm;->getItemName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/feelingk/iap/net/ItemUse;->pName:Ljava/lang/String;

    .line 654
    invoke-virtual {v5}, Lcom/feelingk/iap/net/ItemUseConfirm;->getCount()I

    move-result v9

    iput v9, v4, Lcom/feelingk/iap/net/ItemUse;->pCount:I

    .line 656
    sget-object v9, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    if-eqz v9, :cond_3

    .line 657
    sget-object v9, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    invoke-interface {v9, v4}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onItemUseQuery(Lcom/feelingk/iap/net/ItemUse;)V

    goto/16 :goto_0

    .line 663
    .end local v4           #item:Lcom/feelingk/iap/net/ItemUse;
    .end local v5           #itemUse:Lcom/feelingk/iap/net/ItemUseConfirm;
    :pswitch_13
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 666
    sget-object v9, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v9}, Lcom/feelingk/iap/net/IAPBase;->getInitConfirmMessage()Lcom/feelingk/iap/net/InitConfirm;

    move-result-object v3

    .line 668
    .local v3, init:Lcom/feelingk/iap/net/InitConfirm;
    new-instance v4, Lcom/feelingk/iap/net/ItemAuthInfo;

    invoke-direct {v4}, Lcom/feelingk/iap/net/ItemAuthInfo;-><init>()V

    .line 670
    .local v4, item:Lcom/feelingk/iap/net/ItemAuthInfo;
    invoke-virtual {v3}, Lcom/feelingk/iap/net/InitConfirm;->getCount()I

    move-result v9

    iput v9, v4, Lcom/feelingk/iap/net/ItemAuthInfo;->pCount:I

    .line 671
    invoke-virtual {v3}, Lcom/feelingk/iap/net/InitConfirm;->getExpireDate()[B

    move-result-object v9

    iput-object v9, v4, Lcom/feelingk/iap/net/ItemAuthInfo;->pExpireDate:[B

    .line 672
    invoke-virtual {v3}, Lcom/feelingk/iap/net/InitConfirm;->getToken()[B

    move-result-object v9

    iput-object v9, v4, Lcom/feelingk/iap/net/ItemAuthInfo;->pToken:[B

    .line 674
    sget-object v9, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    if-eqz v9, :cond_3

    .line 675
    sget-object v9, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    invoke-interface {v9, v4}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onItemAuthInfo(Lcom/feelingk/iap/net/ItemAuthInfo;)V

    goto/16 :goto_0

    .line 682
    .end local v3           #init:Lcom/feelingk/iap/net/InitConfirm;
    .end local v4           #item:Lcom/feelingk/iap/net/ItemAuthInfo;
    :pswitch_14
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 684
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 685
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x460

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 686
    .restart local v7       #msgUI:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_9
        :pswitch_14
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method
