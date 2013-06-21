.class public final enum Lcom/inisoft/mediaplayer/bs;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/inisoft/mediaplayer/bs;

.field public static final enum b:Lcom/inisoft/mediaplayer/bs;

.field public static final enum c:Lcom/inisoft/mediaplayer/bs;

.field public static final enum d:Lcom/inisoft/mediaplayer/bs;

.field public static final enum e:Lcom/inisoft/mediaplayer/bs;

.field public static final enum f:Lcom/inisoft/mediaplayer/bs;

.field public static final enum g:Lcom/inisoft/mediaplayer/bs;

.field public static final enum h:Lcom/inisoft/mediaplayer/bs;

.field private static final synthetic j:[Lcom/inisoft/mediaplayer/bs;


# instance fields
.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/inisoft/mediaplayer/bs;

    const-string v1, "UnKnown"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/inisoft/mediaplayer/bs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inisoft/mediaplayer/bs;->a:Lcom/inisoft/mediaplayer/bs;

    new-instance v0, Lcom/inisoft/mediaplayer/bs;

    const-string v1, "Local"

    invoke-direct {v0, v1, v5, v4}, Lcom/inisoft/mediaplayer/bs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inisoft/mediaplayer/bs;->b:Lcom/inisoft/mediaplayer/bs;

    new-instance v0, Lcom/inisoft/mediaplayer/bs;

    const-string v1, "Samba"

    invoke-direct {v0, v1, v6, v5}, Lcom/inisoft/mediaplayer/bs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inisoft/mediaplayer/bs;->c:Lcom/inisoft/mediaplayer/bs;

    new-instance v0, Lcom/inisoft/mediaplayer/bs;

    const-string v1, "Http"

    invoke-direct {v0, v1, v7, v6}, Lcom/inisoft/mediaplayer/bs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inisoft/mediaplayer/bs;->d:Lcom/inisoft/mediaplayer/bs;

    new-instance v0, Lcom/inisoft/mediaplayer/bs;

    const-string v1, "NetWork"

    invoke-direct {v0, v1, v8, v7}, Lcom/inisoft/mediaplayer/bs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inisoft/mediaplayer/bs;->e:Lcom/inisoft/mediaplayer/bs;

    new-instance v0, Lcom/inisoft/mediaplayer/bs;

    const-string v1, "LocalHome"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcom/inisoft/mediaplayer/bs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inisoft/mediaplayer/bs;->f:Lcom/inisoft/mediaplayer/bs;

    new-instance v0, Lcom/inisoft/mediaplayer/bs;

    const-string v1, "Ftp"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/inisoft/mediaplayer/bs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inisoft/mediaplayer/bs;->g:Lcom/inisoft/mediaplayer/bs;

    new-instance v0, Lcom/inisoft/mediaplayer/bs;

    const-string v1, "MediaStore"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/inisoft/mediaplayer/bs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inisoft/mediaplayer/bs;->h:Lcom/inisoft/mediaplayer/bs;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/inisoft/mediaplayer/bs;

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->a:Lcom/inisoft/mediaplayer/bs;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->b:Lcom/inisoft/mediaplayer/bs;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->c:Lcom/inisoft/mediaplayer/bs;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->d:Lcom/inisoft/mediaplayer/bs;

    aput-object v1, v0, v7

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->e:Lcom/inisoft/mediaplayer/bs;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/inisoft/mediaplayer/bs;->f:Lcom/inisoft/mediaplayer/bs;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inisoft/mediaplayer/bs;->g:Lcom/inisoft/mediaplayer/bs;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/inisoft/mediaplayer/bs;->h:Lcom/inisoft/mediaplayer/bs;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inisoft/mediaplayer/bs;->j:[Lcom/inisoft/mediaplayer/bs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/inisoft/mediaplayer/bs;->i:I

    return-void
.end method

.method public static a(I)Lcom/inisoft/mediaplayer/bs;
    .locals 5

    invoke-static {}, Lcom/inisoft/mediaplayer/bs;->values()[Lcom/inisoft/mediaplayer/bs;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, v2, v1

    iget v4, v0, Lcom/inisoft/mediaplayer/bs;->i:I

    if-eq v4, p0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inisoft/mediaplayer/bs;
    .locals 1

    const-class v0, Lcom/inisoft/mediaplayer/bs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/bs;

    return-object v0
.end method

.method public static values()[Lcom/inisoft/mediaplayer/bs;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/inisoft/mediaplayer/bs;->j:[Lcom/inisoft/mediaplayer/bs;

    array-length v1, v0

    new-array v2, v1, [Lcom/inisoft/mediaplayer/bs;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/bs;->i:I

    return v0
.end method
