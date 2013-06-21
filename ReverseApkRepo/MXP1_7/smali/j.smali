.class public final enum Lj;
.super Ljava/lang/Enum;


# static fields
.field public static final enum ㅼ꽑嫄:Lj;

.field public static final enum 癤욱븳援:Lj;

.field public static final enum 궗:Lj;

.field public static final enum 먯꽌:Lj;

.field private static final synthetic 쇰뒗:[Lj;


# instance fields
.field private 弱밧:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lj;

    const-string v1, "INVALID_REQUEST"

    const-string v2, "Invalid Ad request."

    invoke-direct {v0, v1, v3, v2}, Lj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj;->癤욱븳援:Lj;

    new-instance v0, Lj;

    const-string v1, "NO_FILL"

    const-string v2, "Ad request successful, but no ad returned due to lack of ad inventory."

    invoke-direct {v0, v1, v4, v2}, Lj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj;->궗:Lj;

    new-instance v0, Lj;

    const-string v1, "NETWORK_ERROR"

    const-string v2, "A network error occurred."

    invoke-direct {v0, v1, v5, v2}, Lj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj;->먯꽌:Lj;

    new-instance v0, Lj;

    const-string v1, "INTERNAL_ERROR"

    const-string v2, "There was an internal error."

    invoke-direct {v0, v1, v6, v2}, Lj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj;->ㅼ꽑嫄:Lj;

    const/4 v0, 0x4

    new-array v0, v0, [Lj;

    sget-object v1, Lj;->癤욱븳援:Lj;

    aput-object v1, v0, v3

    sget-object v1, Lj;->궗:Lj;

    aput-object v1, v0, v4

    sget-object v1, Lj;->먯꽌:Lj;

    aput-object v1, v0, v5

    sget-object v1, Lj;->ㅼ꽑嫄:Lj;

    aput-object v1, v0, v6

    sput-object v0, Lj;->쇰뒗:[Lj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lj;->弱밧:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj;
    .locals 1

    const-class v0, Lj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj;

    return-object v0
.end method

.method public static values()[Lj;
    .locals 1

    sget-object v0, Lj;->쇰뒗:[Lj;

    invoke-virtual {v0}, [Lj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj;->弱밧:Ljava/lang/String;

    return-object v0
.end method
