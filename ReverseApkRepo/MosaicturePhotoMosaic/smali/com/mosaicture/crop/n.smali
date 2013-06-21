.class final enum Lcom/mosaicture/crop/n;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/mosaicture/crop/n;

.field public static final enum b:Lcom/mosaicture/crop/n;

.field public static final enum c:Lcom/mosaicture/crop/n;

.field private static final synthetic d:[Lcom/mosaicture/crop/n;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mosaicture/crop/n;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/mosaicture/crop/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mosaicture/crop/n;->a:Lcom/mosaicture/crop/n;

    new-instance v0, Lcom/mosaicture/crop/n;

    const-string v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/mosaicture/crop/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mosaicture/crop/n;->b:Lcom/mosaicture/crop/n;

    new-instance v0, Lcom/mosaicture/crop/n;

    const-string v1, "Grow"

    invoke-direct {v0, v1, v4}, Lcom/mosaicture/crop/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mosaicture/crop/n;->c:Lcom/mosaicture/crop/n;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mosaicture/crop/n;

    sget-object v1, Lcom/mosaicture/crop/n;->a:Lcom/mosaicture/crop/n;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mosaicture/crop/n;->b:Lcom/mosaicture/crop/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mosaicture/crop/n;->c:Lcom/mosaicture/crop/n;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mosaicture/crop/n;->d:[Lcom/mosaicture/crop/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mosaicture/crop/n;
    .locals 1

    const-class v0, Lcom/mosaicture/crop/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/crop/n;

    return-object v0
.end method

.method public static values()[Lcom/mosaicture/crop/n;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/mosaicture/crop/n;->d:[Lcom/mosaicture/crop/n;

    array-length v1, v0

    new-array v2, v1, [Lcom/mosaicture/crop/n;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
