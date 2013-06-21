.class public abstract Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;
.source "AbstractCheckoutListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
        ">;",
        "Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;"
    }
.end annotation


# instance fields
.field private _doesCheckout:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;-><init>()V

    return-void
.end method

.method public static showGameItemToast(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/GameItem;ILjava/lang/Exception;)V
    .locals 11
    .parameter "context"
    .parameter "gameItem"
    .parameter "resultCode"
    .parameter "error"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 52
    const/4 v3, 0x0

    .line 53
    .local v3, message:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/GameItem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, itemName:Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, errorMessage:Ljava/lang/String;
    :goto_1
    packed-switch p2, :pswitch_data_0

    .line 83
    :goto_2
    if-nez v3, :cond_3

    .line 97
    :goto_3
    return-void

    .line 53
    .end local v0           #errorMessage:Ljava/lang/String;
    .end local v1           #itemName:Ljava/lang/String;
    :cond_0
    const v6, 0x7f080319

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 54
    .restart local v1       #itemName:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 57
    .restart local v0       #errorMessage:Ljava/lang/String;
    :pswitch_0
    const v6, 0x7f0802b3

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 58
    goto :goto_2

    .line 60
    :pswitch_1
    const v6, 0x7f0802b8

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    :pswitch_2
    const v6, 0x7f0802ba

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    :pswitch_3
    const v6, 0x7f0802b9

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    :pswitch_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 70
    const v6, 0x7f0802b4

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 72
    :cond_2
    const v6, 0x7f0802b5

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v9

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 74
    goto :goto_2

    .line 76
    :pswitch_5
    const v6, 0x7f0802b6

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 77
    goto :goto_2

    .line 79
    :pswitch_6
    const v6, 0x7f0802b7

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 88
    :cond_3
    invoke-static {p0, v3, v10, v8}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->showToast(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/widget/Toast;

    move-result-object v4

    .line 89
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0c000c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 90
    .local v5, toastIcon:Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/GameItem;->isCoinPack()Z

    move-result v6

    if-nez v6, :cond_4

    .line 91
    invoke-virtual {v4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020055

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 92
    .local v2, loading:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/GameItem;->getDefaultImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2, v5, v10}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->downloadImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 95
    .end local v2           #loading:Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {v5}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02004f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 55
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method protected finishWithResult(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->finishWithResult(ILjava/lang/Exception;)V

    .line 140
    return-void
.end method

.method protected finishWithResult(ILjava/lang/Exception;)V
    .locals 6
    .parameter "code"
    .parameter "error"

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v4

    const-string v5, "viewFlags"

    invoke-virtual {v4, v5}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 103
    .local v3, viewFlagsObj:Ljava/lang/Integer;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 104
    .local v2, viewFlags:I
    :goto_0
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 106
    .local v1, showToast:Z
    :cond_0
    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_4

    .line 107
    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->getGameItem()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v4

    invoke-static {p0, v4, p1, p2}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->showGameItemToast(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/GameItem;ILjava/lang/Exception;)V

    .line 112
    :cond_1
    if-eqz p1, :cond_2

    .line 113
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->finishDisplayWithResult(I)V

    .line 136
    :cond_2
    :goto_1
    return-void

    .end local v1           #showToast:Z
    .end local v2           #viewFlags:I
    :cond_3
    move v2, v1

    .line 103
    goto :goto_0

    .line 115
    .restart local v1       #showToast:Z
    .restart local v2       #viewFlags:I
    :cond_4
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_6

    .line 116
    if-eqz v1, :cond_5

    .line 117
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->getGameItem()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v4

    invoke-static {p0, v4, p1, p2}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->showGameItemToast(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/GameItem;ILjava/lang/Exception;)V

    .line 119
    :cond_5
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->stepOut()V

    goto :goto_1

    .line 122
    :cond_6
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->getManager()Lcom/scoreloop/client/android/ui/component/base/Manager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->getGameItem()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Lcom/scoreloop/client/android/ui/component/base/Manager;->paymentFinished(Lcom/scoreloop/client/android/core/model/GameItem;I)I

    move-result v0

    .line 125
    .local v0, flags:I
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_7

    .line 126
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->getGameItem()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v4

    invoke-static {p0, v4, p1, p2}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->showGameItemToast(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/GameItem;ILjava/lang/Exception;)V

    .line 130
    :cond_7
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_8

    .line 131
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->finishDisplay()V

    goto :goto_1

    .line 133
    :cond_8
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->stepOut()V

    goto :goto_1
.end method

.method protected getGameItem()Lcom/scoreloop/client/android/core/model/GameItem;
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "gameItem"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/GameItem;

    return-object v0
.end method

.method protected isNavigationAllowed(Lcom/scoreloop/client/android/ui/framework/NavigationIntent;)Z
    .locals 1
    .parameter "navigationIntent"

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->_doesCheckout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 154
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public paymentControllerDidCancel(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V
    .locals 2
    .parameter "paymentProviderController"

    .prologue
    .line 163
    const-string v0, "ScoreloopUI"

    const-string v1, "AbstractCheckoutListActivity.paymentControllerDidCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->stopCheckout()V

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->finishWithResult(I)V

    .line 166
    return-void
.end method

.method public paymentControllerDidFail(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;Ljava/lang/Exception;)V
    .locals 2
    .parameter "paymentProviderController"
    .parameter "error"

    .prologue
    .line 170
    const-string v0, "ScoreloopUI"

    const-string v1, "AbstractCheckoutListActivity.paymentControllerDidFail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->stopCheckout()V

    .line 173
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->finishWithResult(ILjava/lang/Exception;)V

    .line 174
    return-void
.end method

.method public paymentControllerDidFinishWithPendingPayment(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V
    .locals 2
    .parameter "paymentProviderController"

    .prologue
    .line 178
    const-string v0, "ScoreloopUI"

    const-string v1, "AbstractCheckoutListActivity.paymentControllerDidFinishWithPendingPayment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->stopCheckout()V

    .line 180
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->finishWithResult(I)V

    .line 181
    return-void
.end method

.method public paymentControllerDidSucceed(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V
    .locals 2
    .parameter "paymentProviderController"

    .prologue
    .line 185
    const-string v0, "ScoreloopUI"

    const-string v1, "AbstractCheckoutListActivity.paymentControllerDidSucceed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->stopCheckout()V

    .line 187
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->finishWithResult(I)V

    .line 188
    return-void
.end method

.method protected startCheckout()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->_doesCheckout:Z

    .line 192
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->showSpinner()V

    .line 193
    return-void
.end method

.method protected abstract stepOut()V
.end method

.method protected stopCheckout()V
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->_doesCheckout:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->hideSpinner()V

    .line 201
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->_doesCheckout:Z

    .line 202
    return-void
.end method
