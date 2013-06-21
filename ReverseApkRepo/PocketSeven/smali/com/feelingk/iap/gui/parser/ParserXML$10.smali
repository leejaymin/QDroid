.class Lcom/feelingk/iap/gui/parser/ParserXML$10;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 3749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3754
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3756
    .local v0, id:Ljava/lang/String;
    const-string v1, "info_checkbox1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3757
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z
    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$11(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean p2, v1, v4

    .line 3767
    :goto_0
    const-string v1, "purchase_checkbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3768
    const-string v1, "ParserXML"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "autoPurchase flag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3770
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;
    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$12(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-result-object v1

    iget-boolean v1, v1, Lcom/feelingk/iap/gui/data/PurchaseItem;->AfterAutoPurchaseInfoAgree:Z

    if-eqz v1, :cond_7

    .line 3772
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z
    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$13(Lcom/feelingk/iap/gui/parser/ParserXML;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3773
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z
    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$8(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean v4, v1, v4

    .line 3774
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #setter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z
    invoke-static {v1, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$14(Lcom/feelingk/iap/gui/parser/ParserXML;Z)V

    .line 3789
    :cond_0
    :goto_1
    const-string v1, "auto_purchase_checkbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3790
    const-string v1, "ParserXML"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "autoPurchaseForm flag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3792
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z
    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$8(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean p2, v1, v4

    .line 3796
    :cond_1
    const-string v1, "imei_auth_checkbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3797
    const-string v1, "ParserXML"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "imei_auth_checkbox flag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3798
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEICheckList:[Z
    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$15(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean p2, v1, v4

    .line 3799
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEICheckList:[Z
    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$15(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_8

    .line 3800
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIOkBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$16(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEICheckedDrawbles:Landroid/graphics/drawable/StateListDrawable;
    invoke-static {v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$17(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3801
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIOkBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$16(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    iget-object v2, v2, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthBtn:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3810
    :cond_2
    :goto_2
    const-string v1, "otp_checkbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3811
    const-string v1, "ParserXML"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setOTPAgree flag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3812
    if-eqz p2, :cond_9

    .line 3813
    invoke-static {v5}, Lcom/feelingk/iap/IAPLib;->setOTPAgree(Z)V

    .line 3817
    :cond_3
    :goto_3
    return-void

    .line 3759
    :cond_4
    const-string v1, "info_checkbox2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3760
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z
    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$11(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean p2, v1, v5

    goto/16 :goto_0

    .line 3763
    :cond_5
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z
    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$11(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean p2, v1, v2

    goto/16 :goto_0

    .line 3777
    :cond_6
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z
    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$13(Lcom/feelingk/iap/gui/parser/ParserXML;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3778
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z
    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$8(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean v5, v1, v4

    .line 3779
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #setter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z
    invoke-static {v1, v5}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$14(Lcom/feelingk/iap/gui/parser/ParserXML;Z)V

    goto/16 :goto_1

    .line 3783
    :cond_7
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;
    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$12(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-result-object v1

    iget-boolean v1, v1, Lcom/feelingk/iap/gui/data/PurchaseItem;->AfterAutoPurchaseInfoAgree:Z

    if-nez v1, :cond_0

    .line 3784
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z
    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$8(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean p2, v1, v4

    goto/16 :goto_1

    .line 3804
    :cond_8
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIOkBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$16(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEInotCheckedDrawble:Landroid/graphics/drawable/StateListDrawable;
    invoke-static {v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$18(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3805
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIOkBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$16(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 3814
    :cond_9
    if-nez p2, :cond_3

    .line 3815
    invoke-static {v4}, Lcom/feelingk/iap/IAPLib;->setOTPAgree(Z)V

    goto :goto_3
.end method
