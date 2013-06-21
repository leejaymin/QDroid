.class public final enum Lk;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ㅼ꽑嫄:[Lk;

.field public static final enum 癤욱븳援:Lk;

.field public static final enum 궗:Lk;

.field public static final enum 먯꽌:Lk;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lk;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk;->癤욱븳援:Lk;

    new-instance v0, Lk;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v3}, Lk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk;->궗:Lk;

    new-instance v0, Lk;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v4}, Lk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk;->먯꽌:Lk;

    const/4 v0, 0x3

    new-array v0, v0, [Lk;

    sget-object v1, Lk;->癤욱븳援:Lk;

    aput-object v1, v0, v2

    sget-object v1, Lk;->궗:Lk;

    aput-object v1, v0, v3

    sget-object v1, Lk;->먯꽌:Lk;

    aput-object v1, v0, v4

    sput-object v0, Lk;->ㅼ꽑嫄:[Lk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk;
    .locals 1

    const-class v0, Lk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lk;

    return-object v0
.end method

.method public static values()[Lk;
    .locals 1

    sget-object v0, Lk;->ㅼ꽑嫄:[Lk;

    invoke-virtual {v0}, [Lk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk;

    return-object v0
.end method
