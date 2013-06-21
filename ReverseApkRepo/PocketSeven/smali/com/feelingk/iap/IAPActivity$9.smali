.class Lcom/feelingk/iap/IAPActivity$9;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;


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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorPopup()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v4, 0x4

    .line 977
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mSmsAuthCheckTime:Ljava/lang/String;
    invoke-static {v2}, Lcom/feelingk/iap/IAPActivity;->access$25(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v1

    .line 979
    .local v1, time:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 980
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 981
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 982
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 983
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 984
    const/16 v3, 0xe

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 979
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, currTime:Ljava/lang/String;
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v3, 0x75

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\uc7a0\uc2dc\ub9cc \uae30\ub2e4\ub824 \uc8fc\uc138\uc694.\n\uc778\uc99d\ubc88\ud638 \uc7ac\uc804\uc1a1\uc740 \ubc1c\uc1a1 \ud6c4 3\ubd84 \ub4a4\uc5d0 \uc7ac\uc804\uc1a1 \ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.\n\n(\uc694\uccad\uc2dc\uac04 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/feelingk/iap/IAPActivity;->access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 987
    return-void
.end method

.method public onGetLguSmsAuthTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mSmsAuthCheckTime:Ljava/lang/String;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$25(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onLguSmsAuthCancer()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 953
    const-string v3, "IAPActivity"

    const-string v4, "onLguSmsAuthCancerButtonClick"

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 956
    .local v0, hnd:Landroid/os/Handler;
    const/16 v3, 0x44e

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 957
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 959
    invoke-static {v7}, Lcom/feelingk/iap/IAPLib;->setOTPNumber(Ljava/lang/String;)V

    .line 960
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissLguSMSAuthDlg()V
    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$23(Lcom/feelingk/iap/IAPActivity;)V

    .line 962
    const/16 v3, 0x64

    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 963
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    #setter for: Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;
    invoke-static {v4, v5}, Lcom/feelingk/iap/IAPActivity;->access$19(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    #setter for: Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;
    invoke-static {v3, v5}, Lcom/feelingk/iap/IAPActivity;->access$20(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    .line 964
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    #setter for: Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z
    invoke-static {v3, v6}, Lcom/feelingk/iap/IAPActivity;->access$21(Lcom/feelingk/iap/IAPActivity;Z)V

    .line 966
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    #setter for: Lcom/feelingk/iap/IAPActivity;->mSmsAuthCheckTime:Ljava/lang/String;
    invoke-static {v3, v7}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 969
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;
    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$7(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;

    move-result-object v3

    iget-object v2, v3, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 970
    .local v2, onAppCallbackFn:Lcom/feelingk/iap/IAPLib$OnClientListener;
    invoke-interface {v2}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onDlgPurchaseCancel()V

    .line 972
    return-void
.end method

.method public onLguSmsAuthNumberReq()V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$2(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->sendLguSmsAuthNumber(Ljava/lang/String;)V

    .line 930
    return-void
.end method

.method public onLguSmsAuthOK()V
    .locals 3

    .prologue
    const/16 v2, 0x65

    .line 935
    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->access$22()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissLguSMSAuthDlg()V
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$23(Lcom/feelingk/iap/IAPActivity;)V

    .line 938
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowLoadingProgress()V
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)V

    .line 939
    const/16 v0, 0x66

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 941
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$2(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->access$22()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPLib;->sendLguSmsAuth(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :goto_0
    return-void

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissLguSMSAuthDlg()V
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$23(Lcom/feelingk/iap/IAPActivity;)V

    .line 945
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V
    invoke-static {v0, v2, v1}, Lcom/feelingk/iap/IAPActivity;->access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 946
    invoke-static {v2}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0
.end method

.method public onSetLguSmsAuthTime(Z)V
    .locals 6
    .parameter "flag"

    .prologue
    .line 1001
    if-eqz p1, :cond_0

    .line 1003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1004
    .local v0, now:J
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1005
    .local v2, sdfNow:Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/feelingk/iap/IAPActivity;->mSmsAuthCheckTime:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 1006
    const-string v3, "IAPActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "smsAuthTimeCheck: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mSmsAuthCheckTime:Ljava/lang/String;
    invoke-static {v5}, Lcom/feelingk/iap/IAPActivity;->access$25(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    .end local v0           #now:J
    .end local v2           #sdfNow:Ljava/text/SimpleDateFormat;
    :cond_0
    return-void
.end method
