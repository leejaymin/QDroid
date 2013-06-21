.class public final enum Lcom/chillingo/crystal/serverdata/AbstractServerDataType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/serverdata/AbstractServerDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

.field public static final enum Achievement:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

.field public static final enum Affiliate:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

.field public static final enum AnalyticData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

.field public static final enum DeviceToken:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

.field public static final enum ImageData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

.field public static final enum Leaderboard:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

.field public static final enum NullPost:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

.field public static final enum PlayerData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

.field public static final enum PurchaseNonce:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

.field public static final enum Sms:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

.field public static final enum UIDescription:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

.field public static final enum Unknown:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Unknown:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    new-instance v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    const-string v1, "AnalyticData"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->AnalyticData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    new-instance v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    const-string v1, "UIDescription"

    invoke-direct {v0, v1, v5}, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->UIDescription:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    new-instance v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    const-string v1, "ImageData"

    invoke-direct {v0, v1, v6}, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->ImageData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    new-instance v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    const-string v1, "DeviceToken"

    invoke-direct {v0, v1, v7}, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->DeviceToken:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    new-instance v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    const-string v1, "NullPost"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->NullPost:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    new-instance v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    const-string v1, "Leaderboard"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Leaderboard:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    new-instance v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    const-string v1, "PlayerData"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->PlayerData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    new-instance v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    const-string v1, "Achievement"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Achievement:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    new-instance v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    const-string v1, "Affiliate"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Affiliate:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    new-instance v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    const-string v1, "PurchaseNonce"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->PurchaseNonce:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    new-instance v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    const-string v1, "Sms"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Sms:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    sget-object v1, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Unknown:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->AnalyticData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->UIDescription:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->ImageData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->DeviceToken:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->NullPost:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Leaderboard:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->PlayerData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Achievement:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Affiliate:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->PurchaseNonce:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Sms:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->$VALUES:[Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerDataType;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/serverdata/AbstractServerDataType;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->$VALUES:[Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    return-object v0
.end method
