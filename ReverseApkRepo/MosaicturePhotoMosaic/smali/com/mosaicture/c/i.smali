.class public final enum Lcom/mosaicture/c/i;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/mosaicture/c/i;

.field public static final enum b:Lcom/mosaicture/c/i;

.field public static final enum c:Lcom/mosaicture/c/i;

.field private static final synthetic e:[Lcom/mosaicture/c/i;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/mosaicture/c/i;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4, v2}, Lcom/mosaicture/c/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mosaicture/c/i;->a:Lcom/mosaicture/c/i;

    new-instance v0, Lcom/mosaicture/c/i;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v2, v3}, Lcom/mosaicture/c/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mosaicture/c/i;->b:Lcom/mosaicture/c/i;

    new-instance v0, Lcom/mosaicture/c/i;

    const-string v1, "NO_DATA"

    invoke-direct {v0, v1, v3, v5}, Lcom/mosaicture/c/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mosaicture/c/i;->c:Lcom/mosaicture/c/i;

    new-array v0, v5, [Lcom/mosaicture/c/i;

    sget-object v1, Lcom/mosaicture/c/i;->a:Lcom/mosaicture/c/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mosaicture/c/i;->b:Lcom/mosaicture/c/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mosaicture/c/i;->c:Lcom/mosaicture/c/i;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mosaicture/c/i;->e:[Lcom/mosaicture/c/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/mosaicture/c/i;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mosaicture/c/i;
    .locals 1

    const-class v0, Lcom/mosaicture/c/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/c/i;

    return-object v0
.end method

.method public static values()[Lcom/mosaicture/c/i;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/mosaicture/c/i;->e:[Lcom/mosaicture/c/i;

    array-length v1, v0

    new-array v2, v1, [Lcom/mosaicture/c/i;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/mosaicture/c/i;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
