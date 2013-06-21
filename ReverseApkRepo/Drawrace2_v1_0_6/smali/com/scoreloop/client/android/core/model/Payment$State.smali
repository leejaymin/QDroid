.class public final enum Lcom/scoreloop/client/android/core/model/Payment$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/Payment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/model/Payment$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOOKED:Lcom/scoreloop/client/android/core/model/Payment$State;

.field public static final enum CANCELED:Lcom/scoreloop/client/android/core/model/Payment$State;

.field public static final enum CREATED:Lcom/scoreloop/client/android/core/model/Payment$State;

.field public static final enum FAILED:Lcom/scoreloop/client/android/core/model/Payment$State;

.field public static final enum PENDING:Lcom/scoreloop/client/android/core/model/Payment$State;

.field public static final enum REFUNDED:Lcom/scoreloop/client/android/core/model/Payment$State;

.field private static final synthetic b:[Lcom/scoreloop/client/android/core/model/Payment$State;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    new-instance v0, Lcom/scoreloop/client/android/core/model/Payment$State;

    const-string v1, "BOOKED"

    const-string v2, "booked"

    invoke-direct {v0, v1, v4, v2}, Lcom/scoreloop/client/android/core/model/Payment$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Payment$State;->BOOKED:Lcom/scoreloop/client/android/core/model/Payment$State;

    new-instance v0, Lcom/scoreloop/client/android/core/model/Payment$State;

    const-string v1, "CANCELED"

    const-string v2, "canceled"

    invoke-direct {v0, v1, v5, v2}, Lcom/scoreloop/client/android/core/model/Payment$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Payment$State;->CANCELED:Lcom/scoreloop/client/android/core/model/Payment$State;

    new-instance v0, Lcom/scoreloop/client/android/core/model/Payment$State;

    const-string v1, "CREATED"

    const-string v2, "created"

    invoke-direct {v0, v1, v6, v2}, Lcom/scoreloop/client/android/core/model/Payment$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Payment$State;->CREATED:Lcom/scoreloop/client/android/core/model/Payment$State;

    new-instance v0, Lcom/scoreloop/client/android/core/model/Payment$State;

    const-string v1, "FAILED"

    const-string v2, "failed"

    invoke-direct {v0, v1, v7, v2}, Lcom/scoreloop/client/android/core/model/Payment$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Payment$State;->FAILED:Lcom/scoreloop/client/android/core/model/Payment$State;

    new-instance v0, Lcom/scoreloop/client/android/core/model/Payment$State;

    const-string v1, "PENDING"

    const-string v2, "pending"

    invoke-direct {v0, v1, v8, v2}, Lcom/scoreloop/client/android/core/model/Payment$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Payment$State;->PENDING:Lcom/scoreloop/client/android/core/model/Payment$State;

    new-instance v0, Lcom/scoreloop/client/android/core/model/Payment$State;

    const-string v1, "REFUNDED"

    const/4 v2, 0x5

    const-string v3, "refunded"

    invoke-direct {v0, v1, v2, v3}, Lcom/scoreloop/client/android/core/model/Payment$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Payment$State;->REFUNDED:Lcom/scoreloop/client/android/core/model/Payment$State;

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/scoreloop/client/android/core/model/Payment$State;

    sget-object v1, Lcom/scoreloop/client/android/core/model/Payment$State;->BOOKED:Lcom/scoreloop/client/android/core/model/Payment$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/core/model/Payment$State;->CANCELED:Lcom/scoreloop/client/android/core/model/Payment$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/scoreloop/client/android/core/model/Payment$State;->CREATED:Lcom/scoreloop/client/android/core/model/Payment$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/scoreloop/client/android/core/model/Payment$State;->FAILED:Lcom/scoreloop/client/android/core/model/Payment$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/scoreloop/client/android/core/model/Payment$State;->PENDING:Lcom/scoreloop/client/android/core/model/Payment$State;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/scoreloop/client/android/core/model/Payment$State;->REFUNDED:Lcom/scoreloop/client/android/core/model/Payment$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/scoreloop/client/android/core/model/Payment$State;->b:[Lcom/scoreloop/client/android/core/model/Payment$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/scoreloop/client/android/core/model/Payment$State;->a:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static fromJSONString(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Payment$State;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/scoreloop/client/android/core/model/Payment$State;->values()[Lcom/scoreloop/client/android/core/model/Payment$State;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 44
    iget-object v4, v3, Lcom/scoreloop/client/android/core/model/Payment$State;->a:Ljava/lang/String;

    .line 45
    if-eqz v4, :cond_0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    return-object v3

    .line 43
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "invalid state"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Payment$State;
    .locals 1
    .parameter

    .prologue
    .line 36
    const-class v0, Lcom/scoreloop/client/android/core/model/Payment$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Payment$State;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/model/Payment$State;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/scoreloop/client/android/core/model/Payment$State;->b:[Lcom/scoreloop/client/android/core/model/Payment$State;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/model/Payment$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/model/Payment$State;

    return-object v0
.end method
