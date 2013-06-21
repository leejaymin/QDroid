.class public Lcom/paypal/android/MEP/MEPAmounts;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/MEPAmounts;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentAmount()F
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/MEPAmounts;->b:F

    return v0
.end method

.method public getShipping()F
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/MEPAmounts;->d:F

    return v0
.end method

.method public getTax()F
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/MEPAmounts;->c:F

    return v0
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/MEPAmounts;->a:Ljava/lang/String;

    return-void
.end method

.method public setPaymentAmount(F)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/MEPAmounts;->b:F

    return-void
.end method

.method public setShipping(F)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/MEPAmounts;->d:F

    return-void
.end method

.method public setTax(F)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/MEPAmounts;->c:F

    return-void
.end method
