.class public final enum Lcom/chillingo/crystal/CrystalLeaderboardType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/CrystalLeaderboardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/CrystalLeaderboardType;

.field public static final enum Global:Lcom/chillingo/crystal/CrystalLeaderboardType;

.field public static final enum LastHour_TEST:Lcom/chillingo/crystal/CrystalLeaderboardType;

.field public static final enum LastMonth:Lcom/chillingo/crystal/CrystalLeaderboardType;

.field public static final enum LastWeek:Lcom/chillingo/crystal/CrystalLeaderboardType;

.field public static final enum Local:Lcom/chillingo/crystal/CrystalLeaderboardType;

.field public static final enum National:Lcom/chillingo/crystal/CrystalLeaderboardType;

.field public static final enum ThisHour_TEST:Lcom/chillingo/crystal/CrystalLeaderboardType;

.field public static final enum ThisMonth:Lcom/chillingo/crystal/CrystalLeaderboardType;

.field public static final enum ThisWeek:Lcom/chillingo/crystal/CrystalLeaderboardType;

.field public static final enum Today:Lcom/chillingo/crystal/CrystalLeaderboardType;

.field public static final enum Yesterday:Lcom/chillingo/crystal/CrystalLeaderboardType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/chillingo/crystal/CrystalLeaderboardType;

    const-string v1, "Global"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/crystal/CrystalLeaderboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->Global:Lcom/chillingo/crystal/CrystalLeaderboardType;

    new-instance v0, Lcom/chillingo/crystal/CrystalLeaderboardType;

    const-string v1, "National"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/crystal/CrystalLeaderboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->National:Lcom/chillingo/crystal/CrystalLeaderboardType;

    new-instance v0, Lcom/chillingo/crystal/CrystalLeaderboardType;

    const-string v1, "Local"

    invoke-direct {v0, v1, v5}, Lcom/chillingo/crystal/CrystalLeaderboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->Local:Lcom/chillingo/crystal/CrystalLeaderboardType;

    new-instance v0, Lcom/chillingo/crystal/CrystalLeaderboardType;

    const-string v1, "ThisMonth"

    invoke-direct {v0, v1, v6}, Lcom/chillingo/crystal/CrystalLeaderboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->ThisMonth:Lcom/chillingo/crystal/CrystalLeaderboardType;

    new-instance v0, Lcom/chillingo/crystal/CrystalLeaderboardType;

    const-string v1, "LastMonth"

    invoke-direct {v0, v1, v7}, Lcom/chillingo/crystal/CrystalLeaderboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->LastMonth:Lcom/chillingo/crystal/CrystalLeaderboardType;

    new-instance v0, Lcom/chillingo/crystal/CrystalLeaderboardType;

    const-string v1, "ThisWeek"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/CrystalLeaderboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->ThisWeek:Lcom/chillingo/crystal/CrystalLeaderboardType;

    new-instance v0, Lcom/chillingo/crystal/CrystalLeaderboardType;

    const-string v1, "LastWeek"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/CrystalLeaderboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->LastWeek:Lcom/chillingo/crystal/CrystalLeaderboardType;

    new-instance v0, Lcom/chillingo/crystal/CrystalLeaderboardType;

    const-string v1, "Today"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/CrystalLeaderboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->Today:Lcom/chillingo/crystal/CrystalLeaderboardType;

    new-instance v0, Lcom/chillingo/crystal/CrystalLeaderboardType;

    const-string v1, "Yesterday"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/CrystalLeaderboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->Yesterday:Lcom/chillingo/crystal/CrystalLeaderboardType;

    new-instance v0, Lcom/chillingo/crystal/CrystalLeaderboardType;

    const-string v1, "ThisHour_TEST"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/CrystalLeaderboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->ThisHour_TEST:Lcom/chillingo/crystal/CrystalLeaderboardType;

    new-instance v0, Lcom/chillingo/crystal/CrystalLeaderboardType;

    const-string v1, "LastHour_TEST"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/CrystalLeaderboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->LastHour_TEST:Lcom/chillingo/crystal/CrystalLeaderboardType;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/chillingo/crystal/CrystalLeaderboardType;

    sget-object v1, Lcom/chillingo/crystal/CrystalLeaderboardType;->Global:Lcom/chillingo/crystal/CrystalLeaderboardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/crystal/CrystalLeaderboardType;->National:Lcom/chillingo/crystal/CrystalLeaderboardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chillingo/crystal/CrystalLeaderboardType;->Local:Lcom/chillingo/crystal/CrystalLeaderboardType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chillingo/crystal/CrystalLeaderboardType;->ThisMonth:Lcom/chillingo/crystal/CrystalLeaderboardType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chillingo/crystal/CrystalLeaderboardType;->LastMonth:Lcom/chillingo/crystal/CrystalLeaderboardType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/chillingo/crystal/CrystalLeaderboardType;->ThisWeek:Lcom/chillingo/crystal/CrystalLeaderboardType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/chillingo/crystal/CrystalLeaderboardType;->LastWeek:Lcom/chillingo/crystal/CrystalLeaderboardType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/chillingo/crystal/CrystalLeaderboardType;->Today:Lcom/chillingo/crystal/CrystalLeaderboardType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/chillingo/crystal/CrystalLeaderboardType;->Yesterday:Lcom/chillingo/crystal/CrystalLeaderboardType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/chillingo/crystal/CrystalLeaderboardType;->ThisHour_TEST:Lcom/chillingo/crystal/CrystalLeaderboardType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/chillingo/crystal/CrystalLeaderboardType;->LastHour_TEST:Lcom/chillingo/crystal/CrystalLeaderboardType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->$VALUES:[Lcom/chillingo/crystal/CrystalLeaderboardType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/CrystalLeaderboardType;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/CrystalLeaderboardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/CrystalLeaderboardType;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/CrystalLeaderboardType;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->$VALUES:[Lcom/chillingo/crystal/CrystalLeaderboardType;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/CrystalLeaderboardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/CrystalLeaderboardType;

    return-object v0
.end method
