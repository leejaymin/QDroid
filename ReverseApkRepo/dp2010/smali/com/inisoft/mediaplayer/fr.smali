.class final enum Lcom/inisoft/mediaplayer/fr;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/inisoft/mediaplayer/fr;

.field public static final enum b:Lcom/inisoft/mediaplayer/fr;

.field public static final enum c:Lcom/inisoft/mediaplayer/fr;

.field public static final enum d:Lcom/inisoft/mediaplayer/fr;

.field public static final enum e:Lcom/inisoft/mediaplayer/fr;

.field private static final synthetic f:[Lcom/inisoft/mediaplayer/fr;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/inisoft/mediaplayer/fr;

    const-string v1, "UNLOCK_SHOW"

    invoke-direct {v0, v1, v2}, Lcom/inisoft/mediaplayer/fr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/fr;->a:Lcom/inisoft/mediaplayer/fr;

    new-instance v0, Lcom/inisoft/mediaplayer/fr;

    const-string v1, "LOCK_SHOW"

    invoke-direct {v0, v1, v3}, Lcom/inisoft/mediaplayer/fr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/fr;->b:Lcom/inisoft/mediaplayer/fr;

    new-instance v0, Lcom/inisoft/mediaplayer/fr;

    const-string v1, "HIDE"

    invoke-direct {v0, v1, v4}, Lcom/inisoft/mediaplayer/fr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/fr;->c:Lcom/inisoft/mediaplayer/fr;

    new-instance v0, Lcom/inisoft/mediaplayer/fr;

    const-string v1, "HIDE_WITHOUT_SYSTEMUI"

    invoke-direct {v0, v1, v5}, Lcom/inisoft/mediaplayer/fr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/fr;->d:Lcom/inisoft/mediaplayer/fr;

    new-instance v0, Lcom/inisoft/mediaplayer/fr;

    const-string v1, "SHOW_CENTER"

    invoke-direct {v0, v1, v6}, Lcom/inisoft/mediaplayer/fr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/fr;->e:Lcom/inisoft/mediaplayer/fr;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/inisoft/mediaplayer/fr;

    sget-object v1, Lcom/inisoft/mediaplayer/fr;->a:Lcom/inisoft/mediaplayer/fr;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inisoft/mediaplayer/fr;->b:Lcom/inisoft/mediaplayer/fr;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inisoft/mediaplayer/fr;->c:Lcom/inisoft/mediaplayer/fr;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inisoft/mediaplayer/fr;->d:Lcom/inisoft/mediaplayer/fr;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inisoft/mediaplayer/fr;->e:Lcom/inisoft/mediaplayer/fr;

    aput-object v1, v0, v6

    sput-object v0, Lcom/inisoft/mediaplayer/fr;->f:[Lcom/inisoft/mediaplayer/fr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inisoft/mediaplayer/fr;
    .locals 1

    const-class v0, Lcom/inisoft/mediaplayer/fr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/fr;

    return-object v0
.end method

.method public static values()[Lcom/inisoft/mediaplayer/fr;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/inisoft/mediaplayer/fr;->f:[Lcom/inisoft/mediaplayer/fr;

    array-length v1, v0

    new-array v2, v1, [Lcom/inisoft/mediaplayer/fr;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
