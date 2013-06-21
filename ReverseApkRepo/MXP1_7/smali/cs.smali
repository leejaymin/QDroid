.class public final enum Lcs;
.super Ljava/lang/Enum;


# static fields
.field public static final enum ㅼ꽑嫄:Lcs;

.field public static final enum 弱밧:Lcs;

.field public static final enum 癤욱븳援:Lcs;

.field public static final enum 궗:Lcs;

.field private static final synthetic 대쫫:[Lcs;

.field public static final enum 먯꽌:Lcs;

.field public static final enum 쇰뒗:Lcs;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcs;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lcs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcs;->癤욱븳援:Lcs;

    new-instance v0, Lcs;

    const-string v1, "SPEAKER"

    invoke-direct {v0, v1, v4}, Lcs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcs;->궗:Lcs;

    new-instance v0, Lcs;

    const-string v1, "HEADPHONES"

    invoke-direct {v0, v1, v5}, Lcs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcs;->먯꽌:Lcs;

    new-instance v0, Lcs;

    const-string v1, "VIBRATE"

    invoke-direct {v0, v1, v6}, Lcs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcs;->ㅼ꽑嫄:Lcs;

    new-instance v0, Lcs;

    const-string v1, "EMULATOR"

    invoke-direct {v0, v1, v7}, Lcs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcs;->弱밧:Lcs;

    new-instance v0, Lcs;

    const-string v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcs;->쇰뒗:Lcs;

    const/4 v0, 0x6

    new-array v0, v0, [Lcs;

    sget-object v1, Lcs;->癤욱븳援:Lcs;

    aput-object v1, v0, v3

    sget-object v1, Lcs;->궗:Lcs;

    aput-object v1, v0, v4

    sget-object v1, Lcs;->먯꽌:Lcs;

    aput-object v1, v0, v5

    sget-object v1, Lcs;->ㅼ꽑嫄:Lcs;

    aput-object v1, v0, v6

    sget-object v1, Lcs;->弱밧:Lcs;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcs;->쇰뒗:Lcs;

    aput-object v2, v0, v1

    sput-object v0, Lcs;->대쫫:[Lcs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcs;
    .locals 1

    const-class v0, Lcs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcs;

    return-object v0
.end method

.method public static values()[Lcs;
    .locals 1

    sget-object v0, Lcs;->대쫫:[Lcs;

    invoke-virtual {v0}, [Lcs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcs;

    return-object v0
.end method
