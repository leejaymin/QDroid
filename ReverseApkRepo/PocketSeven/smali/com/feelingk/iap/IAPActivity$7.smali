.class Lcom/feelingk/iap/IAPActivity$7;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;


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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onJoinDialogCancelButtonClick()V
    .locals 3

    .prologue
    .line 871
    const/16 v1, 0x64

    invoke-static {v1}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 872
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissJoinDialog()V
    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$16(Lcom/feelingk/iap/IAPActivity;)V

    .line 875
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/4 v2, 0x0

    #setter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I
    invoke-static {v1, v2}, Lcom/feelingk/iap/IAPActivity;->access$6(Lcom/feelingk/iap/IAPActivity;I)V

    .line 876
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;
    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$7(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;

    move-result-object v1

    iget-object v0, v1, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 877
    .local v0, onAppCallbackFn:Lcom/feelingk/iap/IAPLib$OnClientListener;
    invoke-interface {v0}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onJoinDialogCancel()V

    .line 878
    return-void
.end method

.method public onJoinDialogOKButtonClick(Ljava/lang/String;)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 855
    const-string v0, "join"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissJoinDialog()V
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$16(Lcom/feelingk/iap/IAPActivity;)V

    .line 858
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowLoadingProgress()V
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)V

    .line 859
    const/16 v0, 0x66

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 862
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->sendDataMemebership()V

    .line 867
    :goto_0
    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v1, 0x6b

    const-string v2, "\uc774\uc6a9\uc57d\uad00 \ub3d9\uc758\uc5d0\n\uccb4\ud06c \ud574 \uc8fc\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4."

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onJoinFormDialogPopupClick(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 839
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 840
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://m.tstore.co.kr/userpoc/mobile/policy.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 841
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v1, v0}, Lcom/feelingk/iap/IAPActivity;->startActivity(Landroid/content/Intent;)V

    .line 851
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 844
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://m.tstore.co.kr/userpoc/mobile/cashInfo.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 845
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v1, v0}, Lcom/feelingk/iap/IAPActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 847
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 848
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://m.tstore.co.kr/userpoc/mobile/information.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 849
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$7;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v1, v0}, Lcom/feelingk/iap/IAPActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method