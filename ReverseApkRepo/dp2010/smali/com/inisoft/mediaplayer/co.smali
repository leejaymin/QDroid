.class public final enum Lcom/inisoft/mediaplayer/co;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/inisoft/mediaplayer/co;

.field public static final enum b:Lcom/inisoft/mediaplayer/co;

.field public static final enum c:Lcom/inisoft/mediaplayer/co;

.field public static final enum d:Lcom/inisoft/mediaplayer/co;

.field private static final synthetic e:[Lcom/inisoft/mediaplayer/co;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/inisoft/mediaplayer/co;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/inisoft/mediaplayer/co;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/co;->a:Lcom/inisoft/mediaplayer/co;

    new-instance v0, Lcom/inisoft/mediaplayer/co;

    const-string v1, "VOLUME"

    invoke-direct {v0, v1, v3}, Lcom/inisoft/mediaplayer/co;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/co;->b:Lcom/inisoft/mediaplayer/co;

    new-instance v0, Lcom/inisoft/mediaplayer/co;

    const-string v1, "BRIGHT"

    invoke-direct {v0, v1, v4}, Lcom/inisoft/mediaplayer/co;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/co;->c:Lcom/inisoft/mediaplayer/co;

    new-instance v0, Lcom/inisoft/mediaplayer/co;

    const-string v1, "SEEK"

    invoke-direct {v0, v1, v5}, Lcom/inisoft/mediaplayer/co;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/co;->d:Lcom/inisoft/mediaplayer/co;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/inisoft/mediaplayer/co;

    sget-object v1, Lcom/inisoft/mediaplayer/co;->a:Lcom/inisoft/mediaplayer/co;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inisoft/mediaplayer/co;->b:Lcom/inisoft/mediaplayer/co;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inisoft/mediaplayer/co;->c:Lcom/inisoft/mediaplayer/co;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inisoft/mediaplayer/co;->d:Lcom/inisoft/mediaplayer/co;

    aput-object v1, v0, v5

    sput-object v0, Lcom/inisoft/mediaplayer/co;->e:[Lcom/inisoft/mediaplayer/co;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inisoft/mediaplayer/co;
    .locals 1

    const-class v0, Lcom/inisoft/mediaplayer/co;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/co;

    return-object v0
.end method

.method public static values()[Lcom/inisoft/mediaplayer/co;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/inisoft/mediaplayer/co;->e:[Lcom/inisoft/mediaplayer/co;

    array-length v1, v0

    new-array v2, v1, [Lcom/inisoft/mediaplayer/co;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
