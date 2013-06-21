.class public final enum Lcom/inisoft/mediaplayer/ck;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/inisoft/mediaplayer/ck;

.field public static final enum b:Lcom/inisoft/mediaplayer/ck;

.field public static final enum c:Lcom/inisoft/mediaplayer/ck;

.field public static final enum d:Lcom/inisoft/mediaplayer/ck;

.field public static final enum e:Lcom/inisoft/mediaplayer/ck;

.field public static final enum f:Lcom/inisoft/mediaplayer/ck;

.field public static final enum g:Lcom/inisoft/mediaplayer/ck;

.field private static final synthetic h:[Lcom/inisoft/mediaplayer/ck;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/inisoft/mediaplayer/ck;

    const-string v1, "FILE"

    invoke-direct {v0, v1, v3}, Lcom/inisoft/mediaplayer/ck;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/ck;->a:Lcom/inisoft/mediaplayer/ck;

    new-instance v0, Lcom/inisoft/mediaplayer/ck;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v4}, Lcom/inisoft/mediaplayer/ck;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/ck;->b:Lcom/inisoft/mediaplayer/ck;

    new-instance v0, Lcom/inisoft/mediaplayer/ck;

    const-string v1, "Samba"

    invoke-direct {v0, v1, v5}, Lcom/inisoft/mediaplayer/ck;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/ck;->c:Lcom/inisoft/mediaplayer/ck;

    new-instance v0, Lcom/inisoft/mediaplayer/ck;

    const-string v1, "FTP"

    invoke-direct {v0, v1, v6}, Lcom/inisoft/mediaplayer/ck;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/ck;->d:Lcom/inisoft/mediaplayer/ck;

    new-instance v0, Lcom/inisoft/mediaplayer/ck;

    const-string v1, "Custom"

    invoke-direct {v0, v1, v7}, Lcom/inisoft/mediaplayer/ck;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/ck;->e:Lcom/inisoft/mediaplayer/ck;

    new-instance v0, Lcom/inisoft/mediaplayer/ck;

    const-string v1, "DummyFolder"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inisoft/mediaplayer/ck;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/ck;->f:Lcom/inisoft/mediaplayer/ck;

    new-instance v0, Lcom/inisoft/mediaplayer/ck;

    const-string v1, "Unknown"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/inisoft/mediaplayer/ck;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/ck;->g:Lcom/inisoft/mediaplayer/ck;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/inisoft/mediaplayer/ck;

    sget-object v1, Lcom/inisoft/mediaplayer/ck;->a:Lcom/inisoft/mediaplayer/ck;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inisoft/mediaplayer/ck;->b:Lcom/inisoft/mediaplayer/ck;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inisoft/mediaplayer/ck;->c:Lcom/inisoft/mediaplayer/ck;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inisoft/mediaplayer/ck;->d:Lcom/inisoft/mediaplayer/ck;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inisoft/mediaplayer/ck;->e:Lcom/inisoft/mediaplayer/ck;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/inisoft/mediaplayer/ck;->f:Lcom/inisoft/mediaplayer/ck;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inisoft/mediaplayer/ck;->g:Lcom/inisoft/mediaplayer/ck;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inisoft/mediaplayer/ck;->h:[Lcom/inisoft/mediaplayer/ck;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inisoft/mediaplayer/ck;
    .locals 1

    const-class v0, Lcom/inisoft/mediaplayer/ck;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/ck;

    return-object v0
.end method

.method public static values()[Lcom/inisoft/mediaplayer/ck;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/inisoft/mediaplayer/ck;->h:[Lcom/inisoft/mediaplayer/ck;

    array-length v1, v0

    new-array v2, v1, [Lcom/inisoft/mediaplayer/ck;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
