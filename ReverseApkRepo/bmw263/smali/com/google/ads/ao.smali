.class public final Lcom/google/ads/ao;
.super Lcom/google/ads/util/z;
.source "SourceFile"


# static fields
.field private static final b:Lcom/google/ads/ao;


# instance fields
.field public final a:Lcom/google/ads/util/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/google/ads/ao;

    invoke-direct {v0}, Lcom/google/ads/ao;-><init>()V

    sput-object v0, Lcom/google/ads/ao;->b:Lcom/google/ads/ao;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/ads/util/z;-><init>()V

    .line 83
    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "constants"

    new-instance v2, Lcom/google/ads/ap;

    invoke-direct {v2}, Lcom/google/ads/ap;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ao;->a:Lcom/google/ads/util/ab;

    .line 91
    return-void
.end method

.method public static a()Lcom/google/ads/ao;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/google/ads/ao;->b:Lcom/google/ads/ao;

    return-object v0
.end method
