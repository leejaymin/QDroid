.class public final enum Lcom/mosaicture/zoom/j;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/mosaicture/zoom/j;

.field public static final enum b:Lcom/mosaicture/zoom/j;

.field public static final enum c:Lcom/mosaicture/zoom/j;

.field public static final enum d:Lcom/mosaicture/zoom/j;

.field public static final enum e:Lcom/mosaicture/zoom/j;

.field private static final synthetic f:[Lcom/mosaicture/zoom/j;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mosaicture/zoom/j;

    const-string v1, "Center"

    invoke-direct {v0, v1, v2}, Lcom/mosaicture/zoom/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mosaicture/zoom/j;->a:Lcom/mosaicture/zoom/j;

    new-instance v0, Lcom/mosaicture/zoom/j;

    const-string v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/mosaicture/zoom/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mosaicture/zoom/j;->b:Lcom/mosaicture/zoom/j;

    new-instance v0, Lcom/mosaicture/zoom/j;

    const-string v1, "Zoom"

    invoke-direct {v0, v1, v4}, Lcom/mosaicture/zoom/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mosaicture/zoom/j;->c:Lcom/mosaicture/zoom/j;

    new-instance v0, Lcom/mosaicture/zoom/j;

    const-string v1, "Layout"

    invoke-direct {v0, v1, v5}, Lcom/mosaicture/zoom/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mosaicture/zoom/j;->d:Lcom/mosaicture/zoom/j;

    new-instance v0, Lcom/mosaicture/zoom/j;

    const-string v1, "Reset"

    invoke-direct {v0, v1, v6}, Lcom/mosaicture/zoom/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mosaicture/zoom/j;->e:Lcom/mosaicture/zoom/j;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mosaicture/zoom/j;

    sget-object v1, Lcom/mosaicture/zoom/j;->a:Lcom/mosaicture/zoom/j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mosaicture/zoom/j;->b:Lcom/mosaicture/zoom/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mosaicture/zoom/j;->c:Lcom/mosaicture/zoom/j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mosaicture/zoom/j;->d:Lcom/mosaicture/zoom/j;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mosaicture/zoom/j;->e:Lcom/mosaicture/zoom/j;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mosaicture/zoom/j;->f:[Lcom/mosaicture/zoom/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mosaicture/zoom/j;
    .locals 1

    const-class v0, Lcom/mosaicture/zoom/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/zoom/j;

    return-object v0
.end method

.method public static values()[Lcom/mosaicture/zoom/j;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/mosaicture/zoom/j;->f:[Lcom/mosaicture/zoom/j;

    array-length v1, v0

    new-array v2, v1, [Lcom/mosaicture/zoom/j;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
