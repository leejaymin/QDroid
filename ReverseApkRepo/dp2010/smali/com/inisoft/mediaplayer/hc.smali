.class public final enum Lcom/inisoft/mediaplayer/hc;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/inisoft/mediaplayer/hc;

.field public static final enum b:Lcom/inisoft/mediaplayer/hc;

.field public static final enum c:Lcom/inisoft/mediaplayer/hc;

.field public static final enum d:Lcom/inisoft/mediaplayer/hc;

.field public static final enum e:Lcom/inisoft/mediaplayer/hc;

.field private static final synthetic f:[Lcom/inisoft/mediaplayer/hc;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/inisoft/mediaplayer/hc;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/inisoft/mediaplayer/hc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/hc;->a:Lcom/inisoft/mediaplayer/hc;

    new-instance v0, Lcom/inisoft/mediaplayer/hc;

    const-string v1, "SMI"

    invoke-direct {v0, v1, v3}, Lcom/inisoft/mediaplayer/hc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/hc;->b:Lcom/inisoft/mediaplayer/hc;

    new-instance v0, Lcom/inisoft/mediaplayer/hc;

    const-string v1, "SRT"

    invoke-direct {v0, v1, v4}, Lcom/inisoft/mediaplayer/hc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/hc;->c:Lcom/inisoft/mediaplayer/hc;

    new-instance v0, Lcom/inisoft/mediaplayer/hc;

    const-string v1, "ASS"

    invoke-direct {v0, v1, v5}, Lcom/inisoft/mediaplayer/hc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/hc;->d:Lcom/inisoft/mediaplayer/hc;

    new-instance v0, Lcom/inisoft/mediaplayer/hc;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v6}, Lcom/inisoft/mediaplayer/hc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/hc;->e:Lcom/inisoft/mediaplayer/hc;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/inisoft/mediaplayer/hc;

    sget-object v1, Lcom/inisoft/mediaplayer/hc;->a:Lcom/inisoft/mediaplayer/hc;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inisoft/mediaplayer/hc;->b:Lcom/inisoft/mediaplayer/hc;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inisoft/mediaplayer/hc;->c:Lcom/inisoft/mediaplayer/hc;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inisoft/mediaplayer/hc;->d:Lcom/inisoft/mediaplayer/hc;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inisoft/mediaplayer/hc;->e:Lcom/inisoft/mediaplayer/hc;

    aput-object v1, v0, v6

    sput-object v0, Lcom/inisoft/mediaplayer/hc;->f:[Lcom/inisoft/mediaplayer/hc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inisoft/mediaplayer/hc;
    .locals 1

    const-class v0, Lcom/inisoft/mediaplayer/hc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/hc;

    return-object v0
.end method

.method public static values()[Lcom/inisoft/mediaplayer/hc;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/inisoft/mediaplayer/hc;->f:[Lcom/inisoft/mediaplayer/hc;

    array-length v1, v0

    new-array v2, v1, [Lcom/inisoft/mediaplayer/hc;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
