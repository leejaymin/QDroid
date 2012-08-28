.class public final enum Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;
.super Ljava/lang/Enum;
.source "InMobiAdapterExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ethnicity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

.field public static final enum ASIAN:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

.field public static final enum BLACK:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

.field public static final enum HISPANIC:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

.field public static final enum MIXED:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

.field public static final enum NATIVE_AMERICAN:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

.field public static final enum NONE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

.field public static final enum OTHER:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

.field public static final enum WHITE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;


# instance fields
.field private final description:Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 109
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    const-string v1, "ASIAN"

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;->Eth_Asian:Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;-><init>(Ljava/lang/String;ILcom/inmobi/androidsdk/IMAdRequest$EthnicityType;)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->ASIAN:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    .line 110
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    const-string v1, "BLACK"

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;->Eth_Black:Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    invoke-direct {v0, v1, v5, v2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;-><init>(Ljava/lang/String;ILcom/inmobi/androidsdk/IMAdRequest$EthnicityType;)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->BLACK:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    .line 111
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    const-string v1, "HISPANIC"

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;->Eth_Hispanic:Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    invoke-direct {v0, v1, v6, v2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;-><init>(Ljava/lang/String;ILcom/inmobi/androidsdk/IMAdRequest$EthnicityType;)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->HISPANIC:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    .line 112
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    const-string v1, "MIXED"

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;->Eth_Mixed:Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    invoke-direct {v0, v1, v7, v2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;-><init>(Ljava/lang/String;ILcom/inmobi/androidsdk/IMAdRequest$EthnicityType;)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->MIXED:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    .line 113
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    const-string v1, "NATIVE_AMERICAN"

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;->Eth_NativeAmerican:Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    invoke-direct {v0, v1, v8, v2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;-><init>(Ljava/lang/String;ILcom/inmobi/androidsdk/IMAdRequest$EthnicityType;)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->NATIVE_AMERICAN:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    .line 114
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    const-string v1, "NONE"

    const/4 v2, 0x5

    sget-object v3, Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;->Eth_None:Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;-><init>(Ljava/lang/String;ILcom/inmobi/androidsdk/IMAdRequest$EthnicityType;)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->NONE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    .line 115
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    const-string v1, "OTHER"

    const/4 v2, 0x6

    sget-object v3, Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;->Eth_Other:Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;-><init>(Ljava/lang/String;ILcom/inmobi/androidsdk/IMAdRequest$EthnicityType;)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->OTHER:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    .line 116
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    const-string v1, "WHITE"

    const/4 v2, 0x7

    sget-object v3, Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;->Eth_White:Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;-><init>(Ljava/lang/String;ILcom/inmobi/androidsdk/IMAdRequest$EthnicityType;)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->WHITE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    .line 108
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    sget-object v1, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->ASIAN:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->BLACK:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->HISPANIC:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->MIXED:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->NATIVE_AMERICAN:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->NONE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->OTHER:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->WHITE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->$VALUES:[Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/inmobi/androidsdk/IMAdRequest$EthnicityType;)V
    .locals 0
    .parameter
    .parameter
    .parameter "description"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    iput-object p3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->description:Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    .line 122
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;
    .locals 1
    .parameter "name"

    .prologue
    .line 108
    const-class v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->$VALUES:[Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    invoke-virtual {v0}, [Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    return-object v0
.end method


# virtual methods
.method public getDescription()Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->description:Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    return-object v0
.end method
