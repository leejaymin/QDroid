.class public final enum Lcom/mosaicture/view/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/mosaicture/view/b;

.field public static final enum b:Lcom/mosaicture/view/b;

.field public static final enum c:Lcom/mosaicture/view/b;

.field private static final synthetic d:[Lcom/mosaicture/view/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mosaicture/view/b;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v2}, Lcom/mosaicture/view/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mosaicture/view/b;->a:Lcom/mosaicture/view/b;

    new-instance v0, Lcom/mosaicture/view/b;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/mosaicture/view/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mosaicture/view/b;->b:Lcom/mosaicture/view/b;

    new-instance v0, Lcom/mosaicture/view/b;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v4}, Lcom/mosaicture/view/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mosaicture/view/b;->c:Lcom/mosaicture/view/b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mosaicture/view/b;

    sget-object v1, Lcom/mosaicture/view/b;->a:Lcom/mosaicture/view/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mosaicture/view/b;->b:Lcom/mosaicture/view/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mosaicture/view/b;->c:Lcom/mosaicture/view/b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mosaicture/view/b;->d:[Lcom/mosaicture/view/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mosaicture/view/b;
    .locals 1

    const-class v0, Lcom/mosaicture/view/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/view/b;

    return-object v0
.end method

.method public static values()[Lcom/mosaicture/view/b;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/mosaicture/view/b;->d:[Lcom/mosaicture/view/b;

    array-length v1, v0

    new-array v2, v1, [Lcom/mosaicture/view/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
