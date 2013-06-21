.class Lcom/feelingk/iap/IAPActivity$24;
.super Landroid/os/Handler;
.source "IAPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/IAPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/IAPActivity;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 1613
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 1616
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v1

    .line 1618
    .local v1, dlgType:I
    const-string v9, "IAPActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[GUI-Handler] mGUIMessageHandler msg.what= "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 1832
    const-string v9, "IAPActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[GUI Handler] OnError "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    const-string v9, "IAPActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "dlgType :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V
    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$37(Lcom/feelingk/iap/IAPActivity;)V

    .line 1836
    const/16 v9, 0x64

    if-eq v1, v9, :cond_0

    .line 1837
    const/4 v9, 0x0

    sput-boolean v9, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    .line 1838
    const/16 v9, 0x64

    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1839
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V
    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$37(Lcom/feelingk/iap/IAPActivity;)V

    .line 1840
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V
    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$14(Lcom/feelingk/iap/IAPActivity;)V

    .line 1843
    :cond_0
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x7d4

    if-lt v9, v10, :cond_6

    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x7d7

    if-gt v9, v10, :cond_6

    .line 1860
    :cond_1
    :goto_0
    return-void

    .line 1625
    :sswitch_0
    const/16 v9, 0x66

    if-ne v1, v9, :cond_1

    .line 1626
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V
    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$37(Lcom/feelingk/iap/IAPActivity;)V

    .line 1627
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v10, "\uace0\uac1d\ub2d8\uc740 \ubcf8 \uc720\ub8cc \ucee8\ud150\uce20 \uc774\uc6a9 \uc2dc\nT store \ud68c\uc6d0\uac00\uc785\uc774 \ud544\uc694\ud569\ub2c8\ub2e4.\uc9c4\ud589 \ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v9, v10}, Lcom/feelingk/iap/IAPActivity;->popupYesNoDlg(Ljava/lang/String;)V

    .line 1628
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v10, "\uace0\uac1d\ub2d8\uc740 \ubcf8 \uc720\ub8cc \ucee8\ud150\uce20 \uc774\uc6a9 \uc2dc\nT store \ud68c\uc6d0\uac00\uc785\uc774 \ud544\uc694\ud569\ub2c8\ub2e4.\uc9c4\ud589 \ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    #setter for: Lcom/feelingk/iap/IAPActivity;->mYesNoMessage:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/feelingk/iap/IAPActivity;->access$45(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1635
    :sswitch_1
    const/16 v9, 0x66

    if-ne v1, v9, :cond_1

    .line 1636
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V
    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$37(Lcom/feelingk/iap/IAPActivity;)V

    .line 1637
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v9}, Lcom/feelingk/iap/IAPActivity;->showImeiAuthDlg()V

    .line 1638
    const/16 v9, 0x76

    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0

    .line 1656
    :sswitch_2
    const/16 v9, 0x66

    if-ne v1, v9, :cond_1

    .line 1657
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V
    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$37(Lcom/feelingk/iap/IAPActivity;)V

    .line 1658
    const/16 v9, 0x74

    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1659
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v10, 0x74

    const-string v11, "\ud604\uc7ac \uace0\uac1d\ub2d8\uaed8\uc11c\ub294 \ud6c4\ubd88 \uacb0\uc81c \uc774\uc6a9 \ud55c\ub3c4\uae08\uc561\uc778 20\ub9cc\uc6d0\uc774 \ucd08\uacfc\ub418\uc5c8\uc2b5\ub2c8\ub2e4.\n\uad6c\ub9e4 \uc2dc \ub2e4\ub978 \uacb0\uc81c\uc218\ub2e8\uc744 \uc120\ud0dd\ud574\uc8fc\uc138\uc694."

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V
    invoke-static {v9, v10, v11}, Lcom/feelingk/iap/IAPActivity;->access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    goto :goto_0

    .line 1666
    :sswitch_3
    iget-object v10, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    #setter for: Lcom/feelingk/iap/IAPActivity;->lguConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;
    invoke-static {v10, v9}, Lcom/feelingk/iap/IAPActivity;->access$46(Lcom/feelingk/iap/IAPActivity;Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;)V

    .line 1667
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->lguConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;
    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    move-result-object v9

    invoke-virtual {v9}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->getAuthKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$48(Ljava/lang/String;)V

    .line 1669
    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->access$22()Ljava/lang/String;

    move-result-object v9

    const-string v10, "TEST"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1670
    const/4 v8, 0x0

    .line 1671
    .local v8, randomNum:I
    const/4 v6, 0x1

    .local v6, num:I
    :goto_1
    const/16 v9, 0x14

    if-le v6, v9, :cond_2

    .line 1675
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setOTPNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 1672
    :cond_2
    const v4, 0x186a0

    .local v4, n1:I
    const v5, 0xf423f

    .line 1673
    .local v5, n2:I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const v11, 0xdbba0

    int-to-double v11, v11

    mul-double/2addr v9, v11

    int-to-double v11, v4

    add-double/2addr v9, v11

    double-to-int v8, v9

    .line 1671
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1681
    .end local v4           #n1:I
    .end local v5           #n2:I
    .end local v6           #num:I
    .end local v8           #randomNum:I
    :sswitch_4
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V
    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$37(Lcom/feelingk/iap/IAPActivity;)V

    .line 1683
    const/16 v9, 0x67

    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1684
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v9, v9, Lcom/feelingk/iap/IAPActivity;->onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    invoke-interface {v9}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onPurchaseButtonClick()V

    goto/16 :goto_0

    .line 1689
    :sswitch_5
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v10, "\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488"

    const-string v11, "<\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uc548\ub0b4>\n\n\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488\uc774\ub780,\n  \uc0c1\ud488 \uad6c\ub9e4 \uc2dc 1\ub144 \ub3d9\uc548 \ub9e4\uc6d4 \ucd08 \uc790\ub3d9 \uacb0\uc81c \ub418\uc5b4 \ud3b8\ub9ac\ud558\uac8c \uc774\uc6a9\ud558\uc2e4 \uc218 \uc788\ub294 \uc0c1\ud488\uc785\ub2c8\ub2e4.\n\n- \uc774\uc6a9\n1. \uc0c1\ud488 \uc774\uc6a9\uae30\uac04\uc740 \ub9e4\uc6d4 1\uc77c \uc624\uc804 00\uc2dc 00\ubd84\ubd80\ud130 \ub9e4\uc6d4 \ub9d0\uc77c \uc624\ud6c4 11\uc2dc 59\ubd84 \uae4c\uc9c0 \uc785\ub2c8\ub2e4.\n2. \ub9cc\ub8cc\uae30\uac04\uc740 \ucd5c\ub300 1\ub144\uc774\ubbc0\ub85c \ucd94\ud6c4 \uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uc2e4 \ubd84\uaed8\uc11c\ub294 \uc7ac \uad6c\ub9e4\ud558\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4.\n3. \ud55c \uc5b4\ud50c \ub2f9 2\uac1c \uc774\uc0c1\uc758 \uc6d4\ubcc4 \uc790\ub3d9 \uacb0\uc81c \uc0c1\ud488 \uad6c\uc785\uc740 \ubd88\uac00\ud569\ub2c8\ub2e4.\n4. \uacf5\uacf5\uae30\uad00 \ubc0f \ub2e8\uccb4, \ud2b9\uc218\uac1c\uc778, \ud2b9\uc218\uae30\uad00 \uba85\uc758\uc758 \ub2e8\ub9d0\uc740 \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uc774\uc6a9\uc774 \ubd88\uac00\ub2a5 \ud569\ub2c8\ub2e4.\r\n\n\n- \uacb0\uc81c\n1. \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uad6c\uc785 \uc2dc \uc989\uc2dc \uacb0\uc81c\ub418\uba70 \uc775\uc6d4\uc5d0 \uccad\uad6c\ub429\ub2c8\ub2e4.\n2. \uad6c\uc785 \uccab \ub2ec\uc740 \uc0c1\ud488 \uad6c\uc785 \uc2dc\uc810\ubd80\ud130 \ub2f9\uc6d4 \ub9d0 \uc77c\uae4c\uc9c0 \uc77c\ud560 \uacfc\uae08 \ubc0f \uccad\uad6c\ub418\uba70 \ub2e4\uc74c \ub2ec\ubd80\ud130\ub294 \ub9e4\uc6d4 1\uc77c\uc5d0 \uc790\ub3d9 \uc5f0\uc7a5 \ubc0f \uacb0\uc81c\uac00 \uc9c4\ud589\ub429\ub2c8\ub2e4.\n\n\n- \ud574\uc9c0\n1. \uc911\ub3c4 \ud574\uc9c0\uac00 \uac00\ub2a5\ud558\uba70 \ub2e4\uc74c \ub2ec 1\uc77c\uc774 \ub418\uae30 \uc804\uae4c\uc9c0 \ud574\uc9c0\uac00 \uac00\ub2a5\ud569\ub2c8\ub2e4.\n2. \uc911\ub3c4 \ud574\uc9c0 \uc2dc \ud574\ub2f9 \uc6d4 \ub9d0\uae4c\uc9c0 \uc774\uc6a9 \uac00\ub2a5\ud558\uba70 \ucd94\ud6c4 \uacb0\uc81c\uac00 \ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.\n3. \uc911\ub3c4\ud574\uc9c0 \ud6c4 \ub2f9\uc6d4\uc5d0 \ub3d9\uc77c \uc0c1\ud488\uc744 \uc7ac \uad6c\ub9e4 \ud560 \uacbd\uc6b0 \uac00\uc785\ub9cc \ucc98\ub9ac\ub418\uba70 \uc775\uc6d4 1\uc77c\uc5d0 \uc815\uc0c1\uacb0\uc81c \ub429\ub2c8\ub2e4. \n\n\n- \ud574\uc9c0 \uc808\ucc28\r\n\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \ud574\uc9c0\ub294 T store \ub9c8\uc774 \ud398\uc774\uc9c0\uc758 \uc0c1\ud488 \ub0b4 \uad6c\ub9e4\ub0b4\uc5ed\uc774\ub098 \ud574\ub2f9 App. \ub0b4\uc5d0\uc11c \uac00\ub2a5\ud569\ub2c8\ub2e4.\n\n- \uc8fc\uc758\uc0ac\ud56d\n1. \uc544\ub798\uc640 \uac19\uc740 \uc0c1\ud669\uc5d0\uc11c \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488\uc774 \uc790\ub3d9 \ud574\uc9c0 \ub420 \uc218 \uc788\uc73c\ub2c8 \ucc38\uace0\ud558\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4.\n- T store \ud68c\uc6d0 \ud0c8\ud1f4\n- SKT \uc774\ub3d9\ud1b5\uc2e0 \uc11c\ube44\uc2a4 \ud574\uc9c0\n- \ubc88\ud638 \uc774\ub3d9\n- \uba85\uc758 \ubcc0\uacbd\n- \uae30\uae30\ubcc0\uacbd\n-  Appl.\uc9c0\uc6d0 \ubc0f \ub3d9\uc77c\ud55c AID\uc0c1\ud488\uc77c \uacbd\uc6b0\n- \uc5b4\ud50c \uc0ad\uc81c\n\n\n\ud574\ub2f9 \uc0ac\uc720\uc5d0 \ub300\ud574\uc11c\ub294 SK\ud50c\ub798\ub2db\uc758 \ucc45\uc784\uc774 \uc5c6\uc74c\uc744 \ubbf8\ub9ac \uc54c\ub9bd\ub2c8\ub2e4.\n\n\uac10\uc0ac\ud569\ub2c8\ub2e4.\n"

    invoke-virtual {v9, v10, v11}, Lcom/feelingk/iap/IAPActivity;->popupAutoPurchaseFormDlg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    const/16 v9, 0x6c

    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto/16 :goto_0

    .line 1697
    :sswitch_6
    const/16 v9, 0x66

    if-ne v1, v9, :cond_1

    .line 1698
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V
    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$37(Lcom/feelingk/iap/IAPActivity;)V

    .line 1699
    iget-object v10, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/feelingk/iap/net/ItemInfoConfirm;

    #setter for: Lcom/feelingk/iap/IAPActivity;->iic:Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-static {v10, v9}, Lcom/feelingk/iap/IAPActivity;->access$49(Lcom/feelingk/iap/IAPActivity;Lcom/feelingk/iap/net/ItemInfoConfirm;)V

    .line 1700
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v10, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->iic:Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-static {v10}, Lcom/feelingk/iap/IAPActivity;->access$50(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v10

    #setter for: Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-static {v9, v10}, Lcom/feelingk/iap/IAPActivity;->access$51(Lcom/feelingk/iap/IAPActivity;Lcom/feelingk/iap/net/ItemInfoConfirm;)V

    .line 1701
    const/4 v9, 0x1

    sput-boolean v9, Lcom/feelingk/iap/IAPActivity;->finalVerFlag:Z

    .line 1702
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v10, "\ud604\uc7ac \uace0\uac1d\ub2d8\uc740 \ubcf8 \ucee8\ud150\uce20\uc758 \uccb4\ud5d8\ud310\uc744 \uc774\uc6a9 \uc911\uc785\ub2c8\ub2e4.\uc815\uc2dd\ud310\uc73c\ub85c \uc804\ud658 \ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v9, v10}, Lcom/feelingk/iap/IAPActivity;->popupYesNoDlg(Ljava/lang/String;)V

    .line 1703
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v10, "\ud604\uc7ac \uace0\uac1d\ub2d8\uc740 \ubcf8 \ucee8\ud150\uce20\uc758 \uccb4\ud5d8\ud310\uc744 \uc774\uc6a9 \uc911\uc785\ub2c8\ub2e4.\uc815\uc2dd\ud310\uc73c\ub85c \uc804\ud658 \ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    #setter for: Lcom/feelingk/iap/IAPActivity;->mYesNoMessage:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/feelingk/iap/IAPActivity;->access$45(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1710
    :sswitch_7
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V
    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$37(Lcom/feelingk/iap/IAPActivity;)V

    .line 1711
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/feelingk/iap/IAPActivity;->access$52(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 1712
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v10, 0x65

    iget-object v11, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {v11}, Lcom/feelingk/iap/IAPActivity;->access$53(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V
    invoke-static {v9, v10, v11}, Lcom/feelingk/iap/IAPActivity;->access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1718
    :sswitch_8
    const/16 v9, 0x66

    if-ne v1, v9, :cond_1

    .line 1719
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V
    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$37(Lcom/feelingk/iap/IAPActivity;)V

    .line 1722
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 1723
    .local v3, itemInfoConfirmObj:Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-virtual {v3}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmAutoPurchaseCheck()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1725
    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->access$29()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 1727
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowPurchaseDialog(Ljava/lang/Object;)V
    invoke-static {v9, v10}, Lcom/feelingk/iap/IAPActivity;->access$11(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V

    .line 1728
    const/16 v9, 0x67

    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto/16 :goto_0

    .line 1732
    :cond_3
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v10, 0x65

    const-string v11, "\ubcf8 \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c\uc0c1\ud488\uc740 SKT \uc790\uc0ac \uace0\uac1d\ub2d8\ub9cc \uc774\uc6a9 \uac00\ub2a5\ud55c\uc0c1\ud488\uc785\ub2c8\ub2e4."

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V
    invoke-static {v9, v10, v11}, Lcom/feelingk/iap/IAPActivity;->access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 1733
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v10, "\ubcf8 \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c\uc0c1\ud488\uc740 SKT \uc790\uc0ac \uace0\uac1d\ub2d8\ub9cc \uc774\uc6a9 \uac00\ub2a5\ud55c\uc0c1\ud488\uc785\ub2c8\ub2e4."

    #setter for: Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/feelingk/iap/IAPActivity;->access$52(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 1734
    const/16 v9, 0x65

    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto/16 :goto_0

    .line 1739
    :cond_4
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowPurchaseDialog(Ljava/lang/Object;)V
    invoke-static {v9, v10}, Lcom/feelingk/iap/IAPActivity;->access$11(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V

    .line 1740
    const/16 v9, 0x67

    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto/16 :goto_0

    .line 1750
    .end local v3           #itemInfoConfirmObj:Lcom/feelingk/iap/net/ItemInfoConfirm;
    :sswitch_9
    const/16 v9, 0x67

    if-ne v1, v9, :cond_1

    .line 1751
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V
    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$14(Lcom/feelingk/iap/IAPActivity;)V

    .line 1753
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowLoadingProgress()V
    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)V

    .line 1754
    const/16 v9, 0x68

    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto/16 :goto_0

    .line 1762
    :sswitch_a
    const/16 v9, 0x68

    if-ne v1, v9, :cond_1

    .line 1763
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V
    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$37(Lcom/feelingk/iap/IAPActivity;)V

    .line 1776
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/feelingk/iap/net/MsgConfirm;

    .line 1779
    .local v0, confirm:Lcom/feelingk/iap/net/MsgConfirm;
    :try_start_0
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    new-instance v10, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/MsgConfirm;->getMsg()[B

    move-result-object v11

    const-string v12, "MS949"

    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #setter for: Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/feelingk/iap/IAPActivity;->access$54(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 1780
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;
    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$55(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\n"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/feelingk/iap/IAPActivity;->access$54(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1786
    :goto_2
    const/16 v9, 0x69

    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1787
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v10, 0x69

    iget-object v11, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;
    invoke-static {v11}, Lcom/feelingk/iap/IAPActivity;->access$55(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V
    invoke-static {v9, v10, v11}, Lcom/feelingk/iap/IAPActivity;->access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1782
    :catch_0
    move-exception v2

    .line 1783
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 1806
    .end local v0           #confirm:Lcom/feelingk/iap/net/MsgConfirm;
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :sswitch_b
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V
    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$37(Lcom/feelingk/iap/IAPActivity;)V

    .line 1808
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/feelingk/iap/net/PurchaseParam;

    .line 1810
    .local v7, pp:Lcom/feelingk/iap/net/PurchaseParam;
    invoke-virtual {v7}, Lcom/feelingk/iap/net/PurchaseParam;->getpBPInfo()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    .line 1811
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v7}, Lcom/feelingk/iap/net/PurchaseParam;->getpId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/feelingk/iap/net/PurchaseParam;->getpName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/feelingk/iap/IAPActivity;->popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1814
    :cond_5
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v7}, Lcom/feelingk/iap/net/PurchaseParam;->getpId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/feelingk/iap/net/PurchaseParam;->getpName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/feelingk/iap/net/PurchaseParam;->getpTid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/feelingk/iap/net/PurchaseParam;->getpBPInfo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/feelingk/iap/IAPActivity;->popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1824
    .end local v7           #pp:Lcom/feelingk/iap/net/PurchaseParam;
    :sswitch_c
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V
    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$37(Lcom/feelingk/iap/IAPActivity;)V

    .line 1825
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v10, 0x70

    const-string v11, "\ubcf8 \uc0c1\ud488\uc5d0 \ub300\ud55c \ud574\uc9c0\uac00\n\uc815\uc0c1\uc801\uc73c\ub85c \ucc98\ub9ac\ub418\uc5c8\uc73c\uba70\n\ub2f9\uc6d4 \ub9d0\uae4c\uc9c0 \uc774\uc6a9 \uac00\ub2a5\ud568\uc744\uc54c\ub824\ub4dc\ub9bd\ub2c8\ub2e4.\n\n\uc774\uc6a9\ud574 \uc8fc\uc154\uc11c \uac10\uc0ac\ud569\ub2c8\ub2e4."

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V
    invoke-static {v9, v10, v11}, Lcom/feelingk/iap/IAPActivity;->access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 1826
    const/16 v9, 0x70

    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1827
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v10, "\ubcf8 \uc0c1\ud488\uc5d0 \ub300\ud55c \ud574\uc9c0\uac00\n\uc815\uc0c1\uc801\uc73c\ub85c \ucc98\ub9ac\ub418\uc5c8\uc73c\uba70\n\ub2f9\uc6d4 \ub9d0\uae4c\uc9c0 \uc774\uc6a9 \uac00\ub2a5\ud568\uc744\uc54c\ub824\ub4dc\ub9bd\ub2c8\ub2e4.\n\n\uc774\uc6a9\ud574 \uc8fc\uc154\uc11c \uac10\uc0ac\ud569\ub2c8\ub2e4."

    #setter for: Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/feelingk/iap/IAPActivity;->access$52(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1847
    :cond_6
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x7dd

    if-ne v9, v10, :cond_7

    .line 1848
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissLguSMSAuthDlg()V
    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$23(Lcom/feelingk/iap/IAPActivity;)V

    .line 1851
    :cond_7
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/feelingk/iap/IAPActivity;->access$52(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 1852
    const-string v9, "IAPActivity"

    iget-object v10, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {v10}, Lcom/feelingk/iap/IAPActivity;->access$53(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    const/16 v9, 0x65

    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1854
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V
    invoke-static {v9}, Lcom/feelingk/iap/IAPActivity;->access$37(Lcom/feelingk/iap/IAPActivity;)V

    .line 1855
    iget-object v9, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v10, 0x65

    iget-object v11, p0, Lcom/feelingk/iap/IAPActivity$24;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {v11}, Lcom/feelingk/iap/IAPActivity;->access$53(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V
    invoke-static {v9, v10, v11}, Lcom/feelingk/iap/IAPActivity;->access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1619
    nop

    :sswitch_data_0
    .sparse-switch
        0x44c -> :sswitch_9
        0x450 -> :sswitch_8
        0x452 -> :sswitch_a
        0x45d -> :sswitch_6
        0x45f -> :sswitch_0
        0x460 -> :sswitch_b
        0x461 -> :sswitch_7
        0x463 -> :sswitch_c
        0x464 -> :sswitch_5
        0x465 -> :sswitch_2
        0x466 -> :sswitch_3
        0x468 -> :sswitch_4
        0x46b -> :sswitch_1
    .end sparse-switch
.end method
