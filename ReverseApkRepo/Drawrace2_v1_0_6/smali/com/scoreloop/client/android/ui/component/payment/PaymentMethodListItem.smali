.class public Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;
.super Lcom/scoreloop/client/android/ui/component/base/StandardListItem;
.source "PaymentMethodListItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/StandardListItem",
        "<",
        "Lcom/scoreloop/client/android/core/model/PaymentMethod;",
        ">;"
    }
.end annotation


# instance fields
.field private _isEnabled:Z

.field private _paymentProviderController:Lcom/scoreloop/client/android/core/controller/PaymentProviderController;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/PaymentMethod;Ljava/lang/String;)V
    .locals 6
    .parameter "activity"
    .parameter "target"
    .parameter "priceInfo"

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/PaymentMethod;->getPaymentProvider()Lcom/scoreloop/client/android/core/model/PaymentProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/PaymentMethod;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/PaymentMethod;->getPaymentProvider()Lcom/scoreloop/client/android/core/model/PaymentProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentProviderController()Lcom/scoreloop/client/android/core/controller/PaymentProviderController;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;->_paymentProviderController:Lcom/scoreloop/client/android/core/controller/PaymentProviderController;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;->_isEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;->_isEnabled:Z

    .line 56
    return-void
.end method

.method public setPaymentProviderController(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;->_paymentProviderController:Lcom/scoreloop/client/android/core/controller/PaymentProviderController;

    .line 60
    return-void
.end method
