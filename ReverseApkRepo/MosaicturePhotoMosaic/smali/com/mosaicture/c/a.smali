.class public final enum Lcom/mosaicture/c/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/mosaicture/c/a;

.field public static final enum b:Lcom/mosaicture/c/a;

.field public static final enum c:Lcom/mosaicture/c/a;

.field public static final enum d:Lcom/mosaicture/c/a;

.field public static final enum e:Lcom/mosaicture/c/a;

.field public static final enum f:Lcom/mosaicture/c/a;

.field private static final synthetic h:[Lcom/mosaicture/c/a;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/mosaicture/c/a;

    const-string v1, "GET_BASE_IMAGE_FROM_DB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mosaicture/c/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mosaicture/c/a;->a:Lcom/mosaicture/c/a;

    new-instance v0, Lcom/mosaicture/c/a;

    const-string v1, "GET_BASE_IMAGE_DOMINANT_COLOR_FROM_DB"

    invoke-direct {v0, v1, v3, v4}, Lcom/mosaicture/c/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mosaicture/c/a;->b:Lcom/mosaicture/c/a;

    new-instance v0, Lcom/mosaicture/c/a;

    const-string v1, "GET_BASE_IMAGE_NEXT_ID_FROM_DB"

    invoke-direct {v0, v1, v4, v5}, Lcom/mosaicture/c/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mosaicture/c/a;->c:Lcom/mosaicture/c/a;

    new-instance v0, Lcom/mosaicture/c/a;

    const-string v1, "QUERY_BEST_BASE_IMAGE_REPLACEMENT"

    invoke-direct {v0, v1, v5, v6}, Lcom/mosaicture/c/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mosaicture/c/a;->d:Lcom/mosaicture/c/a;

    new-instance v0, Lcom/mosaicture/c/a;

    const-string v1, "QUERY_BASE_IMAGE"

    invoke-direct {v0, v1, v6, v7}, Lcom/mosaicture/c/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mosaicture/c/a;->e:Lcom/mosaicture/c/a;

    new-instance v0, Lcom/mosaicture/c/a;

    const-string v1, "QUERY_BASE_IMAGE_KDTREE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lcom/mosaicture/c/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mosaicture/c/a;->f:Lcom/mosaicture/c/a;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mosaicture/c/a;

    const/4 v1, 0x0

    sget-object v2, Lcom/mosaicture/c/a;->a:Lcom/mosaicture/c/a;

    aput-object v2, v0, v1

    sget-object v1, Lcom/mosaicture/c/a;->b:Lcom/mosaicture/c/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mosaicture/c/a;->c:Lcom/mosaicture/c/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mosaicture/c/a;->d:Lcom/mosaicture/c/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mosaicture/c/a;->e:Lcom/mosaicture/c/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mosaicture/c/a;->f:Lcom/mosaicture/c/a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/mosaicture/c/a;->h:[Lcom/mosaicture/c/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/mosaicture/c/a;->g:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mosaicture/c/a;
    .locals 1

    const-class v0, Lcom/mosaicture/c/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/c/a;

    return-object v0
.end method

.method public static values()[Lcom/mosaicture/c/a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/mosaicture/c/a;->h:[Lcom/mosaicture/c/a;

    array-length v1, v0

    new-array v2, v1, [Lcom/mosaicture/c/a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/mosaicture/c/a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
