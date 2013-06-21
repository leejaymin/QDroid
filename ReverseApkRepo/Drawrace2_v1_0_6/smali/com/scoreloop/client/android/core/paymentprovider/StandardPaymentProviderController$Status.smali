.class public final enum Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELED:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

.field public static final enum FAILED:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

.field public static final enum OK:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

.field public static final enum PAYMENT_BOOKED:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

.field public static final enum PENDING:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

.field private static final synthetic a:[Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->CANCELED:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->FAILED:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    const-string v1, "OK"

    invoke-direct {v0, v1, v4}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->OK:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    const-string v1, "PAYMENT_BOOKED"

    invoke-direct {v0, v1, v5}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->PAYMENT_BOOKED:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v6}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->PENDING:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->CANCELED:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->FAILED:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->OK:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->PAYMENT_BOOKED:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->PENDING:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->a:[Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;
    .locals 1
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->a:[Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    return-object v0
.end method
