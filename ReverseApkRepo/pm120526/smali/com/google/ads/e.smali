.class public final enum Lcom/google/ads/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/ads/e;

.field public static final enum b:Lcom/google/ads/e;

.field private static final synthetic d:[Lcom/google/ads/e;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/ads/e;

    const-string v1, "MALE"

    const-string v2, "m"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/ads/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/e;->a:Lcom/google/ads/e;

    new-instance v0, Lcom/google/ads/e;

    const-string v1, "FEMALE"

    const-string v2, "f"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/e;->b:Lcom/google/ads/e;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/ads/e;

    sget-object v1, Lcom/google/ads/e;->a:Lcom/google/ads/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/e;->b:Lcom/google/ads/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/ads/e;->d:[Lcom/google/ads/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/ads/e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/e;->c:Ljava/lang/String;

    return-object v0
.end method
