.class public final enum Lcom/tequnique/camerax/ch;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/tequnique/camerax/ch;

.field public static final enum b:Lcom/tequnique/camerax/ch;

.field public static final enum c:Lcom/tequnique/camerax/ch;

.field public static final enum d:Lcom/tequnique/camerax/ch;

.field private static final synthetic e:[Lcom/tequnique/camerax/ch;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tequnique/camerax/ch;

    const-string v1, "Facebook"

    invoke-direct {v0, v1, v2}, Lcom/tequnique/camerax/ch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tequnique/camerax/ch;->a:Lcom/tequnique/camerax/ch;

    new-instance v0, Lcom/tequnique/camerax/ch;

    const-string v1, "Flickr"

    invoke-direct {v0, v1, v3}, Lcom/tequnique/camerax/ch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tequnique/camerax/ch;->b:Lcom/tequnique/camerax/ch;

    new-instance v0, Lcom/tequnique/camerax/ch;

    const-string v1, "Picasa"

    invoke-direct {v0, v1, v4}, Lcom/tequnique/camerax/ch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tequnique/camerax/ch;->c:Lcom/tequnique/camerax/ch;

    new-instance v0, Lcom/tequnique/camerax/ch;

    const-string v1, "Twitter"

    invoke-direct {v0, v1, v5}, Lcom/tequnique/camerax/ch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tequnique/camerax/ch;->d:Lcom/tequnique/camerax/ch;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tequnique/camerax/ch;

    sget-object v1, Lcom/tequnique/camerax/ch;->a:Lcom/tequnique/camerax/ch;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tequnique/camerax/ch;->b:Lcom/tequnique/camerax/ch;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tequnique/camerax/ch;->c:Lcom/tequnique/camerax/ch;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tequnique/camerax/ch;->d:Lcom/tequnique/camerax/ch;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tequnique/camerax/ch;->e:[Lcom/tequnique/camerax/ch;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tequnique/camerax/ch;
    .locals 1

    const-class v0, Lcom/tequnique/camerax/ch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tequnique/camerax/ch;

    return-object v0
.end method

.method public static values()[Lcom/tequnique/camerax/ch;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tequnique/camerax/ch;->e:[Lcom/tequnique/camerax/ch;

    array-length v1, v0

    new-array v2, v1, [Lcom/tequnique/camerax/ch;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
