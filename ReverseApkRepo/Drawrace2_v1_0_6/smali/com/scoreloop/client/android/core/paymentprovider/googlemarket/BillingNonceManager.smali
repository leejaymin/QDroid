.class public Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingNonceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/security/SecureRandom;

.field private static b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingNonceManager;->a:Ljava/security/SecureRandom;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingNonceManager;->b:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 31
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingNonceManager;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 32
    sget-object v2, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingNonceManager;->b:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    return-wide v0
.end method

.method public static a(J)V
    .locals 2
    .parameter

    .prologue
    .line 59
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingNonceManager;->b:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 37
    invoke-static {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingNonceManager;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 38
    sget-object v2, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingNonceManager;->b:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingNonceManager;->a(J)V

    .line 42
    :cond_0
    return v2
.end method

.method private static b(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 47
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    const-string v1, "nonce"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 50
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method
