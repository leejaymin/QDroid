.class public Lcom/scoreloop/client/android/core/model/Money;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/util/JSONSerializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/scoreloop/client/android/core/util/JSONSerializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/scoreloop/client/android/core/model/Money;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/math/BigDecimal;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Money;->d:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/scoreloop/client/android/core/model/Money;->c:Ljava/math/BigDecimal;

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Money;->c:Ljava/math/BigDecimal;

    .line 71
    invoke-static {}, Lcom/scoreloop/client/android/core/model/Money;->getApplicationCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Money;->d:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/model/Money;->a(Lorg/json/JSONObject;)V

    .line 76
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    sput-object p0, Lcom/scoreloop/client/android/core/model/Money;->b:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    sput-object p0, Lcom/scoreloop/client/android/core/model/Money;->a:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static getApplicationCurrencyCode()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_3_0;
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lcom/scoreloop/client/android/core/model/Money;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/scoreloop/client/android/core/model/Money;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "SLD"

    goto :goto_0
.end method

.method public static getApplicationCurrencySymbol()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/scoreloop/client/android/core/model/Money;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getPreferred(Ljava/util/List;Ljava/util/Locale;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Money;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/scoreloop/client/android/core/model/Money;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 232
    if-nez p0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "moneyList must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 238
    const/4 v0, 0x0

    .line 266
    :goto_0
    return-object v0

    .line 242
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 243
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Money;

    goto :goto_0

    .line 247
    :cond_2
    if-eqz p1, :cond_4

    .line 248
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Money;

    .line 250
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Money;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 257
    :cond_4
    if-eqz p2, :cond_6

    .line 258
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Money;

    .line 259
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Money;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 266
    :cond_6
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Money;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v1, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    .line 208
    const-string v0, "currency"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Money;->d:Ljava/lang/String;

    .line 211
    :cond_0
    const-string v0, "amount"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/scoreloop/client/android/core/model/Money;->c:Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_1
    return-void

    .line 215
    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Invalid format of money amount"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Lcom/scoreloop/client/android/core/model/Money;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lcom/scoreloop/client/android/core/model/Money;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Money;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Money;->c:Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public final b_()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 190
    const-string v1, "amount"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Money;->c:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v1, "currency"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Money;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Money;->b()Lcom/scoreloop/client/android/core/model/Money;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/scoreloop/client/android/core/model/Money;)I
    .locals 3
    .parameter

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Money;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/scoreloop/client/android/core/model/Money;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Money;->getCurrency()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Money;->getCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tried to compare Money objects of different currencies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Money;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Money;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Money;->c:Ljava/math/BigDecimal;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/scoreloop/client/android/core/model/Money;->c:Ljava/math/BigDecimal;

    if-nez v0, :cond_4

    .line 98
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tried to compare Money objects which do not have ammounts set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/scoreloop/client/android/core/model/Money;

    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/model/Money;->compareTo(Lcom/scoreloop/client/android/core/model/Money;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    if-ne p0, p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 110
    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 113
    goto :goto_0

    .line 115
    :cond_3
    check-cast p1, Lcom/scoreloop/client/android/core/model/Money;

    .line 116
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Money;->c:Ljava/math/BigDecimal;

    if-nez v2, :cond_4

    .line 117
    iget-object v2, p1, Lcom/scoreloop/client/android/core/model/Money;->c:Ljava/math/BigDecimal;

    if-eqz v2, :cond_5

    move v0, v1

    .line 118
    goto :goto_0

    .line 120
    :cond_4
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Money;->c:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/scoreloop/client/android/core/model/Money;->c:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 121
    goto :goto_0

    .line 123
    :cond_5
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Money;->d:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 124
    iget-object v2, p1, Lcom/scoreloop/client/android/core/model/Money;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 125
    goto :goto_0

    .line 127
    :cond_6
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Money;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/scoreloop/client/android/core/model/Money;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 128
    goto :goto_0
.end method

.method public getAmount()Ljava/math/BigDecimal;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Money;->c:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getAmountInUnits()Ljava/math/BigDecimal;
    .locals 3
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Money;->c:Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Money;->c:Ljava/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_3_0;
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Money;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hasAmount()Z
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Money;->c:Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Money;->c:Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Money;->c:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 182
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Money;->d:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 183
    return v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Money;->c:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->hashCode()I

    move-result v0

    goto :goto_0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Money;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Money;->c:Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Money;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 199
    :cond_0
    const-string v0, ""

    .line 202
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/scoreloop/client/android/core/model/MoneyFormatter;->getDefaultMoneyFormatter()Lcom/scoreloop/client/android/core/model/MoneyFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/core/model/MoneyFormatter;->formatMoney(Lcom/scoreloop/client/android/core/model/Money;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
