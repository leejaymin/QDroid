.class public Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PrepaidCardType"
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field final synthetic d:Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;


# direct methods
.method protected constructor <init>(Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;->d:Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProviderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTermsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setProviderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;->a:Ljava/lang/String;

    return-void
.end method

.method public setProviderType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;->b:Ljava/lang/String;

    return-void
.end method

.method public setTermsUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;->c:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;->getProviderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
