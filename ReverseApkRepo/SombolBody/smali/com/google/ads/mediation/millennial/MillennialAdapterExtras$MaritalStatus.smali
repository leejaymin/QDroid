.class public final enum Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;
.super Ljava/lang/Enum;
.source "MillennialAdapterExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MaritalStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

.field public static final enum DIVORCED:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

.field public static final enum ENGAGED:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

.field public static final enum RELATIONSHIP:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

.field public static final enum SINGLE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

.field public static final enum SWINGER:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    const-string v1, "SINGLE"

    const-string v2, "single"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;->SINGLE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    .line 127
    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    const-string v1, "DIVORCED"

    const-string v2, "divorced"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;->DIVORCED:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    .line 128
    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    const-string v1, "ENGAGED"

    const-string v2, "engaged"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;->ENGAGED:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    .line 129
    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    const-string v1, "RELATIONSHIP"

    const-string v2, "relationship"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;->RELATIONSHIP:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    .line 130
    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    const-string v1, "SWINGER"

    const-string v2, "swinger"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;->SWINGER:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    .line 125
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;->SINGLE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;->DIVORCED:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;->ENGAGED:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;->RELATIONSHIP:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;->SWINGER:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;->$VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "description"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput-object p3, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;->description:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 125
    const-class v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;->$VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    invoke-virtual {v0}, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;->description:Ljava/lang/String;

    return-object v0
.end method
