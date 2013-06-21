.class public final enum Lcom/inisoft/mediaplayer/bw;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/inisoft/mediaplayer/bw;

.field public static final enum b:Lcom/inisoft/mediaplayer/bw;

.field public static final enum c:Lcom/inisoft/mediaplayer/bw;

.field public static final enum d:Lcom/inisoft/mediaplayer/bw;

.field public static final enum e:Lcom/inisoft/mediaplayer/bw;

.field private static final synthetic g:[Lcom/inisoft/mediaplayer/bw;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/inisoft/mediaplayer/bw;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/inisoft/mediaplayer/bw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inisoft/mediaplayer/bw;->a:Lcom/inisoft/mediaplayer/bw;

    new-instance v0, Lcom/inisoft/mediaplayer/bw;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4, v3}, Lcom/inisoft/mediaplayer/bw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inisoft/mediaplayer/bw;->b:Lcom/inisoft/mediaplayer/bw;

    new-instance v0, Lcom/inisoft/mediaplayer/bw;

    const-string v1, "STOCK"

    invoke-direct {v0, v1, v5, v4}, Lcom/inisoft/mediaplayer/bw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inisoft/mediaplayer/bw;->c:Lcom/inisoft/mediaplayer/bw;

    new-instance v0, Lcom/inisoft/mediaplayer/bw;

    const-string v1, "SOFTWARE"

    invoke-direct {v0, v1, v6, v5}, Lcom/inisoft/mediaplayer/bw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inisoft/mediaplayer/bw;->d:Lcom/inisoft/mediaplayer/bw;

    new-instance v0, Lcom/inisoft/mediaplayer/bw;

    const-string v1, "STOCKMP4"

    invoke-direct {v0, v1, v7, v6}, Lcom/inisoft/mediaplayer/bw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inisoft/mediaplayer/bw;->e:Lcom/inisoft/mediaplayer/bw;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/inisoft/mediaplayer/bw;

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->a:Lcom/inisoft/mediaplayer/bw;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->b:Lcom/inisoft/mediaplayer/bw;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->c:Lcom/inisoft/mediaplayer/bw;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->d:Lcom/inisoft/mediaplayer/bw;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->e:Lcom/inisoft/mediaplayer/bw;

    aput-object v1, v0, v7

    sput-object v0, Lcom/inisoft/mediaplayer/bw;->g:[Lcom/inisoft/mediaplayer/bw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/inisoft/mediaplayer/bw;->f:I

    return-void
.end method

.method public static a(I)Lcom/inisoft/mediaplayer/bw;
    .locals 5

    invoke-static {}, Lcom/inisoft/mediaplayer/bw;->values()[Lcom/inisoft/mediaplayer/bw;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    sget-object v0, Lcom/inisoft/mediaplayer/bw;->b:Lcom/inisoft/mediaplayer/bw;

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, v2, v1

    iget v4, v0, Lcom/inisoft/mediaplayer/bw;->f:I

    if-eq v4, p0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inisoft/mediaplayer/bw;
    .locals 1

    const-class v0, Lcom/inisoft/mediaplayer/bw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/bw;

    return-object v0
.end method

.method public static values()[Lcom/inisoft/mediaplayer/bw;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/inisoft/mediaplayer/bw;->g:[Lcom/inisoft/mediaplayer/bw;

    array-length v1, v0

    new-array v2, v1, [Lcom/inisoft/mediaplayer/bw;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/bw;->f:I

    return v0
.end method
