.class public final enum Lrr;
.super Ljava/lang/Enum;


# static fields
.field public static final enum ㅼ꽑嫄:Lrr;

.field public static final enum 弱밧:Lrr;

.field public static final enum 癤욱븳援:Lrr;

.field public static final enum 궗:Lrr;

.field public static final enum 먯꽌:Lrr;

.field private static final synthetic 쇰뒗:[Lrr;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lrr;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrr;->癤욱븳援:Lrr;

    new-instance v0, Lrr;

    const-string v1, "REQUEST"

    invoke-direct {v0, v1, v3}, Lrr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrr;->궗:Lrr;

    new-instance v0, Lrr;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lrr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrr;->먯꽌:Lrr;

    new-instance v0, Lrr;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v5}, Lrr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrr;->ㅼ꽑嫄:Lrr;

    new-instance v0, Lrr;

    const-string v1, "USERSTOP"

    invoke-direct {v0, v1, v6}, Lrr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrr;->弱밧:Lrr;

    const/4 v0, 0x5

    new-array v0, v0, [Lrr;

    sget-object v1, Lrr;->癤욱븳援:Lrr;

    aput-object v1, v0, v2

    sget-object v1, Lrr;->궗:Lrr;

    aput-object v1, v0, v3

    sget-object v1, Lrr;->먯꽌:Lrr;

    aput-object v1, v0, v4

    sget-object v1, Lrr;->ㅼ꽑嫄:Lrr;

    aput-object v1, v0, v5

    sget-object v1, Lrr;->弱밧:Lrr;

    aput-object v1, v0, v6

    sput-object v0, Lrr;->쇰뒗:[Lrr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrr;
    .locals 1

    const-class v0, Lrr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrr;

    return-object v0
.end method

.method public static values()[Lrr;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lrr;->쇰뒗:[Lrr;

    array-length v1, v0

    new-array v2, v1, [Lrr;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
