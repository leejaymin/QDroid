.class public final Lcom/paypal/android/MEP/PayPalPayment;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PAYMENT_AMOUNT_CHANGED:I = 0x1

.field public static final PAYMENT_CURRENCY_CHANGED:I = 0x2

.field public static final PAYMENT_ITEM_DESC_CHANGED:I = 0x20

.field public static final PAYMENT_MERCHANT_CHANGED:I = 0x40

.field public static final PAYMENT_RECIPIENT_CHANGED:I = 0x10

.field public static final PAYMENT_SAME:I = 0x0

.field public static final PAYMENT_SHIPPING_CHANGED:I = 0x8

.field public static final PAYMENT_TAX_CHANGED:I = 0x4

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:F

.field private b:Ljava/lang/String;

.field private c:F

.field private d:F

.field private e:F

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "USD"

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    iput v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->a:F

    iput v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->d:F

    iput v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->c:F

    iput v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->e:F

    const-string v0, ""

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->g:Ljava/lang/String;

    const-string v0, "Item"

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compare(Lcom/paypal/android/MEP/PayPalPayment;)I
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Lcom/paypal/android/MEP/PayPalPayment;->a:F

    iget v2, p0, Lcom/paypal/android/MEP/PayPalPayment;->a:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p1, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    if-eq v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget v1, p1, Lcom/paypal/android/MEP/PayPalPayment;->d:F

    iget v2, p0, Lcom/paypal/android/MEP/PayPalPayment;->d:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    iget v1, p1, Lcom/paypal/android/MEP/PayPalPayment;->e:F

    iget v2, p0, Lcom/paypal/android/MEP/PayPalPayment;->e:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    iget-object v1, p1, Lcom/paypal/android/MEP/PayPalPayment;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/paypal/android/MEP/PayPalPayment;->g:Ljava/lang/String;

    if-eq v1, v2, :cond_4

    or-int/lit8 v0, v0, 0x10

    :cond_4
    iget-object v1, p1, Lcom/paypal/android/MEP/PayPalPayment;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/paypal/android/MEP/PayPalPayment;->i:Ljava/lang/String;

    if-eq v1, v2, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    return v0
.end method

.method public final getAmount()F
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->a:F

    return v0
.end method

.method public final getAmountString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->a:F

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/paypal/android/a/g;->a(FLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getFee()F
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->c:F

    return v0
.end method

.method public final getItemDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getMerchantName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecipient()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getSenderEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getShipping()F
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->e:F

    return v0
.end method

.method public final getShippingString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->e:F

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/paypal/android/a/g;->a(FLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTax()F
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->d:F

    return v0
.end method

.method public final getTaxString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->d:F

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/paypal/android/a/g;->a(FLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTotal()F
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->get_paymentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    const-string v1, "PricingDetails"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    const-string v1, "FeeBearer"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ApplyFeeToSender"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_0
    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->a:F

    iget v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->d:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->e:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->c:F

    add-float/2addr v0, v1

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->a:F

    iget v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->d:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->e:F

    add-float/2addr v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final getTotalString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->get_paymentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    const-string v1, "PricingDetails"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v4

    :goto_0
    const-string v2, "FeeBearer"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "ApplyFeeToSender"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    move v0, v4

    :goto_1
    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->a:F

    iget v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->d:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->e:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->c:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/paypal/android/a/g;->a(FLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->a:F

    iget v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->d:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->e:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/paypal/android/a/g;->a(FLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public final isButtonEnabled()Z
    .locals 1

    invoke-static {}, Lcom/paypal/android/a/a;->a()Z

    move-result v0

    return v0
.end method

.method public final isValidPayment()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->a:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->d:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->e:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/a/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/a/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setAmount(F)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->a:F

    return-void
.end method

.method public final setAmount(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->a:F

    return-void
.end method

.method public final setCurrency(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    return-void
.end method

.method public final setFee(F)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->c:F

    return-void
.end method

.method public final setFee(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->c:F

    return-void
.end method

.method public final setItemDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->h:Ljava/lang/String;

    return-void
.end method

.method public final setMerchantName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->i:Ljava/lang/String;

    return-void
.end method

.method public final setRecipient(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->i:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final setSenderEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->f:Ljava/lang/String;

    return-void
.end method

.method public final setShipping(F)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->e:F

    return-void
.end method

.method public final setShipping(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->e:F

    return-void
.end method

.method public final setTax(F)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->d:F

    return-void
.end method

.method public final setTax(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->d:F

    return-void
.end method
