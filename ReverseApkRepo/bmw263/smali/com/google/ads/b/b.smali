.class public final enum Lcom/google/ads/b/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/ads/b/b;

.field public static final enum b:Lcom/google/ads/b/b;

.field public static final enum c:Lcom/google/ads/b/b;

.field public static final enum d:Lcom/google/ads/b/b;

.field private static final synthetic f:[Lcom/google/ads/b/b;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/google/ads/b/b;

    const-string v1, "NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/ads/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/b/b;->a:Lcom/google/ads/b/b;

    .line 32
    new-instance v0, Lcom/google/ads/b/b;

    const-string v1, "DASHED"

    const-string v2, "dashed"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/b/b;->b:Lcom/google/ads/b/b;

    .line 37
    new-instance v0, Lcom/google/ads/b/b;

    const-string v1, "DOTTED"

    const-string v2, "dotted"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/ads/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/b/b;->c:Lcom/google/ads/b/b;

    .line 42
    new-instance v0, Lcom/google/ads/b/b;

    const-string v1, "SOLID"

    const-string v2, "solid"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/ads/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/b/b;->d:Lcom/google/ads/b/b;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/ads/b/b;

    sget-object v1, Lcom/google/ads/b/b;->a:Lcom/google/ads/b/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/b/b;->b:Lcom/google/ads/b/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/b/b;->c:Lcom/google/ads/b/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ads/b/b;->d:Lcom/google/ads/b/b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/ads/b/b;->f:[Lcom/google/ads/b/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/google/ads/b/b;->e:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/b/b;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/google/ads/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/b;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/b/b;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/ads/b/b;->f:[Lcom/google/ads/b/b;

    invoke-virtual {v0}, [Lcom/google/ads/b/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/b/b;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/ads/b/b;->e:Ljava/lang/String;

    return-object v0
.end method
