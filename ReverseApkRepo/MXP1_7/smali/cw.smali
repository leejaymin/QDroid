.class public final enum Lcw;
.super Ljava/lang/Enum;


# static fields
.field public static final enum ㅼ꽑嫄:Lcw;

.field public static final enum 弱밧:Lcw;

.field public static final enum 癤욱븳援:Lcw;

.field public static final enum 궗:Lcw;

.field private static final synthetic 대쫫:[Lcw;

.field public static final enum 먯꽌:Lcw;


# instance fields
.field public final 쇰뒗:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    new-instance v0, Lcw;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v6, v3}, Lcw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcw;->癤욱븳援:Lcw;

    new-instance v0, Lcw;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v7, v4}, Lcw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcw;->궗:Lcw;

    new-instance v0, Lcw;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3, v5}, Lcw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcw;->먯꽌:Lcw;

    new-instance v0, Lcw;

    const-string v1, "WARN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcw;->ㅼ꽑嫄:Lcw;

    new-instance v0, Lcw;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lcw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcw;->弱밧:Lcw;

    const/4 v0, 0x5

    new-array v0, v0, [Lcw;

    sget-object v1, Lcw;->癤욱븳援:Lcw;

    aput-object v1, v0, v6

    sget-object v1, Lcw;->궗:Lcw;

    aput-object v1, v0, v7

    sget-object v1, Lcw;->먯꽌:Lcw;

    aput-object v1, v0, v3

    sget-object v1, Lcw;->ㅼ꽑嫄:Lcw;

    aput-object v1, v0, v4

    sget-object v1, Lcw;->弱밧:Lcw;

    aput-object v1, v0, v5

    sput-object v0, Lcw;->대쫫:[Lcw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcw;->쇰뒗:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcw;
    .locals 1

    const-class v0, Lcw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcw;

    return-object v0
.end method

.method public static values()[Lcw;
    .locals 1

    sget-object v0, Lcw;->대쫫:[Lcw;

    invoke-virtual {v0}, [Lcw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcw;

    return-object v0
.end method
