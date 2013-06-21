.class public final enum Lrs;
.super Ljava/lang/Enum;


# static fields
.field public static final enum ㅼ꽑嫄:Lrs;

.field public static final enum 弱밧:Lrs;

.field public static final enum 癤욱븳援:Lrs;

.field public static final enum 궗:Lrs;

.field private static final 대쫫:Ljava/util/Map;

.field public static final enum 먯꽌:Lrs;

.field private static final synthetic 몃Ъ:[Lrs;

.field public static final enum 쇰뒗:Lrs;


# instance fields
.field private final 洹:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v1, Lrs;

    const-string v2, "WEB"

    invoke-direct {v1, v2, v0, v5}, Lrs;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lrs;->癤욱븳援:Lrs;

    new-instance v1, Lrs;

    const-string v2, "CALL"

    invoke-direct {v1, v2, v5, v6}, Lrs;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lrs;->궗:Lrs;

    new-instance v1, Lrs;

    const-string v2, "DOWNLOAD_IOS_APP"

    invoke-direct {v1, v2, v6, v7}, Lrs;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lrs;->먯꽌:Lrs;

    new-instance v1, Lrs;

    const-string v2, "LAUNCH_IOS_APP"

    invoke-direct {v1, v2, v7, v8}, Lrs;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lrs;->ㅼ꽑嫄:Lrs;

    new-instance v1, Lrs;

    const-string v2, "DOWNLOAD_ANDROID_APP"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v8, v3}, Lrs;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lrs;->弱밧:Lrs;

    new-instance v1, Lrs;

    const-string v2, "LAUNCH_ANDROID_APP"

    const/4 v3, 0x5

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lrs;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lrs;->쇰뒗:Lrs;

    const/4 v1, 0x6

    new-array v1, v1, [Lrs;

    sget-object v2, Lrs;->癤욱븳援:Lrs;

    aput-object v2, v1, v0

    sget-object v2, Lrs;->궗:Lrs;

    aput-object v2, v1, v5

    sget-object v2, Lrs;->먯꽌:Lrs;

    aput-object v2, v1, v6

    sget-object v2, Lrs;->ㅼ꽑嫄:Lrs;

    aput-object v2, v1, v7

    sget-object v2, Lrs;->弱밧:Lrs;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lrs;->쇰뒗:Lrs;

    aput-object v3, v1, v2

    sput-object v1, Lrs;->몃Ъ:[Lrs;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lrs;->대쫫:Ljava/util/Map;

    invoke-static {}, Lrs;->values()[Lrs;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v3, v1, v0

    sget-object v4, Lrs;->대쫫:Ljava/util/Map;

    invoke-virtual {v3}, Lrs;->癤욱븳援()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lrs;->洹:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrs;
    .locals 1

    const-class v0, Lrs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrs;

    return-object v0
.end method

.method public static values()[Lrs;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lrs;->몃Ъ:[Lrs;

    array-length v1, v0

    new-array v2, v1, [Lrs;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static 癤욱븳援(Ljava/lang/Integer;)Lrs;
    .locals 3

    sget-object v0, Lrs;->대쫫:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrs;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CLICK_TYPE id is not valid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public 癤욱븳援()I
    .locals 1

    iget v0, p0, Lrs;->洹:I

    return v0
.end method
