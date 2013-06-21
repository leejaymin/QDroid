.class public Lcom/scoreloop/client/android/core/model/MoneyFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/scoreloop/client/android/core/model/MoneyFormatter;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/MoneyFormatter;->b:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/scoreloop/client/android/core/model/MoneyFormatter;->d:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/scoreloop/client/android/core/model/MoneyFormatter;->c:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static format(Lcom/scoreloop/client/android/core/model/Money;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lcom/scoreloop/client/android/core/model/MoneyFormatter;->getDefaultMoneyFormatter()Lcom/scoreloop/client/android/core/model/MoneyFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/core/model/MoneyFormatter;->formatMoney(Lcom/scoreloop/client/android/core/model/Money;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultMoneyFormatter()Lcom/scoreloop/client/android/core/model/MoneyFormatter;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 25
    sget-object v0, Lcom/scoreloop/client/android/core/model/MoneyFormatter;->a:Lcom/scoreloop/client/android/core/model/MoneyFormatter;

    return-object v0
.end method

.method public static setDefaultMoneyFormatter(Lcom/scoreloop/client/android/core/model/MoneyFormatter;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 30
    sput-object p0, Lcom/scoreloop/client/android/core/model/MoneyFormatter;->a:Lcom/scoreloop/client/android/core/model/MoneyFormatter;

    .line 31
    return-void
.end method


# virtual methods
.method public formatMoney(Lcom/scoreloop/client/android/core/model/Money;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    const-string v0, "(unknown)"

    .line 65
    :goto_0
    return-object v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Money;->getAmountInUnits()Ljava/math/BigDecimal;

    move-result-object v1

    .line 54
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Money;->getCurrency()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/scoreloop/client/android/core/model/Money;->getApplicationCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/MoneyFormatter;->c:Ljava/lang/String;

    .line 57
    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/MoneyFormatter;->d:Ljava/lang/String;

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/MoneyFormatter;->b:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Money;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 65
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNamePlural()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/MoneyFormatter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getNameSingular()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/MoneyFormatter;->d:Ljava/lang/String;

    return-object v0
.end method
