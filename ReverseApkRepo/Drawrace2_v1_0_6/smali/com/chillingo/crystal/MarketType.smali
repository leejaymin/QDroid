.class public enum Lcom/chillingo/crystal/MarketType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/MarketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/MarketType;

.field public static final enum AndroidMarket:Lcom/chillingo/crystal/MarketType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/chillingo/crystal/MarketType$1;

    const-string v1, "AndroidMarket"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/MarketType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/MarketType;->AndroidMarket:Lcom/chillingo/crystal/MarketType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/chillingo/crystal/MarketType;

    sget-object v1, Lcom/chillingo/crystal/MarketType;->AndroidMarket:Lcom/chillingo/crystal/MarketType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/chillingo/crystal/MarketType;->$VALUES:[Lcom/chillingo/crystal/MarketType;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/chillingo/crystal/MarketType$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/chillingo/crystal/MarketType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/MarketType;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/MarketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/MarketType;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/MarketType;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/MarketType;->$VALUES:[Lcom/chillingo/crystal/MarketType;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/MarketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/MarketType;

    return-object v0
.end method
