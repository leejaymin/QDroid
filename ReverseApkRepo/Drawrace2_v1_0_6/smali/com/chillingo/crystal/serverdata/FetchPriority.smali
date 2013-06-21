.class public final enum Lcom/chillingo/crystal/serverdata/FetchPriority;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/serverdata/FetchPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/serverdata/FetchPriority;

.field public static final enum AchievementData:Lcom/chillingo/crystal/serverdata/FetchPriority;

.field public static final enum AppConfiguration:Lcom/chillingo/crystal/serverdata/FetchPriority;

.field public static final enum AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

.field public static final enum ImageData:Lcom/chillingo/crystal/serverdata/FetchPriority;

.field public static final enum LeaderboardData:Lcom/chillingo/crystal/serverdata/FetchPriority;

.field public static final enum PlayerData:Lcom/chillingo/crystal/serverdata/FetchPriority;

.field public static final enum PrefetchPageLinks:Lcom/chillingo/crystal/serverdata/FetchPriority;

.field public static final enum TabContent:Lcom/chillingo/crystal/serverdata/FetchPriority;

.field public static final enum TabData:Lcom/chillingo/crystal/serverdata/FetchPriority;

.field public static final enum Unknown:Lcom/chillingo/crystal/serverdata/FetchPriority;


# instance fields
.field public final Value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Lcom/chillingo/crystal/serverdata/FetchPriority;

    const-string v1, "AppConfiguration"

    invoke-direct {v0, v1, v5, v4}, Lcom/chillingo/crystal/serverdata/FetchPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->AppConfiguration:Lcom/chillingo/crystal/serverdata/FetchPriority;

    new-instance v0, Lcom/chillingo/crystal/serverdata/FetchPriority;

    const-string v1, "AwaitingDisplay"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v4, v2}, Lcom/chillingo/crystal/serverdata/FetchPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    new-instance v0, Lcom/chillingo/crystal/serverdata/FetchPriority;

    const-string v1, "PrefetchPageLinks"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v6, v2}, Lcom/chillingo/crystal/serverdata/FetchPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->PrefetchPageLinks:Lcom/chillingo/crystal/serverdata/FetchPriority;

    new-instance v0, Lcom/chillingo/crystal/serverdata/FetchPriority;

    const-string v1, "TabData"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v7, v2}, Lcom/chillingo/crystal/serverdata/FetchPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->TabData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    new-instance v0, Lcom/chillingo/crystal/serverdata/FetchPriority;

    const-string v1, "TabContent"

    const/16 v2, 0x12c

    invoke-direct {v0, v1, v8, v2}, Lcom/chillingo/crystal/serverdata/FetchPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->TabContent:Lcom/chillingo/crystal/serverdata/FetchPriority;

    new-instance v0, Lcom/chillingo/crystal/serverdata/FetchPriority;

    const-string v1, "ImageData"

    const/4 v2, 0x5

    const/16 v3, 0x190

    invoke-direct {v0, v1, v2, v3}, Lcom/chillingo/crystal/serverdata/FetchPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->ImageData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    new-instance v0, Lcom/chillingo/crystal/serverdata/FetchPriority;

    const-string v1, "PlayerData"

    const/4 v2, 0x6

    const/16 v3, 0x1f3

    invoke-direct {v0, v1, v2, v3}, Lcom/chillingo/crystal/serverdata/FetchPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->PlayerData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    new-instance v0, Lcom/chillingo/crystal/serverdata/FetchPriority;

    const-string v1, "LeaderboardData"

    const/4 v2, 0x7

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lcom/chillingo/crystal/serverdata/FetchPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->LeaderboardData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    new-instance v0, Lcom/chillingo/crystal/serverdata/FetchPriority;

    const-string v1, "AchievementData"

    const/16 v2, 0x8

    const/16 v3, 0x258

    invoke-direct {v0, v1, v2, v3}, Lcom/chillingo/crystal/serverdata/FetchPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->AchievementData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    new-instance v0, Lcom/chillingo/crystal/serverdata/FetchPriority;

    const-string v1, "Unknown"

    const/16 v2, 0x9

    const/16 v3, 0x2710

    invoke-direct {v0, v1, v2, v3}, Lcom/chillingo/crystal/serverdata/FetchPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->Unknown:Lcom/chillingo/crystal/serverdata/FetchPriority;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/chillingo/crystal/serverdata/FetchPriority;

    sget-object v1, Lcom/chillingo/crystal/serverdata/FetchPriority;->AppConfiguration:Lcom/chillingo/crystal/serverdata/FetchPriority;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chillingo/crystal/serverdata/FetchPriority;->PrefetchPageLinks:Lcom/chillingo/crystal/serverdata/FetchPriority;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chillingo/crystal/serverdata/FetchPriority;->TabData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    aput-object v1, v0, v7

    sget-object v1, Lcom/chillingo/crystal/serverdata/FetchPriority;->TabContent:Lcom/chillingo/crystal/serverdata/FetchPriority;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->ImageData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->PlayerData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->LeaderboardData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->AchievementData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->Unknown:Lcom/chillingo/crystal/serverdata/FetchPriority;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->$VALUES:[Lcom/chillingo/crystal/serverdata/FetchPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/chillingo/crystal/serverdata/FetchPriority;->Value:I

    return-void
.end method

.method public static fromValue(I)Lcom/chillingo/crystal/serverdata/FetchPriority;
    .locals 3

    invoke-static {}, Lcom/chillingo/crystal/serverdata/FetchPriority;->values()[Lcom/chillingo/crystal/serverdata/FetchPriority;

    move-result-object v1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, v1, v0

    iget v2, v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->Value:I

    if-le p0, v2, :cond_0

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->Unknown:Lcom/chillingo/crystal/serverdata/FetchPriority;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/FetchPriority;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/FetchPriority;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/serverdata/FetchPriority;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->$VALUES:[Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/serverdata/FetchPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/serverdata/FetchPriority;

    return-object v0
.end method
