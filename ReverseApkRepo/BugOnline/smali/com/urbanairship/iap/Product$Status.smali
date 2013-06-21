.class public final enum Lcom/urbanairship/iap/Product$Status;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/iap/Product;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/urbanairship/iap/Product$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/urbanairship/iap/Product$Status;

.field public static final enum DOWNLOADING:Lcom/urbanairship/iap/Product$Status;

.field public static final enum INSTALLED:Lcom/urbanairship/iap/Product$Status;

.field public static final enum PURCHASED:Lcom/urbanairship/iap/Product$Status;

.field public static final enum UNPURCHASED:Lcom/urbanairship/iap/Product$Status;

.field public static final enum UPDATE:Lcom/urbanairship/iap/Product$Status;

.field public static final enum WAITING:Lcom/urbanairship/iap/Product$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/urbanairship/iap/Product$Status;

    const-string v1, "UNPURCHASED"

    invoke-direct {v0, v1, v3}, Lcom/urbanairship/iap/Product$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/Product$Status;->UNPURCHASED:Lcom/urbanairship/iap/Product$Status;

    new-instance v0, Lcom/urbanairship/iap/Product$Status;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v4}, Lcom/urbanairship/iap/Product$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/Product$Status;->PURCHASED:Lcom/urbanairship/iap/Product$Status;

    new-instance v0, Lcom/urbanairship/iap/Product$Status;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v5}, Lcom/urbanairship/iap/Product$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/Product$Status;->WAITING:Lcom/urbanairship/iap/Product$Status;

    new-instance v0, Lcom/urbanairship/iap/Product$Status;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v6}, Lcom/urbanairship/iap/Product$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/Product$Status;->DOWNLOADING:Lcom/urbanairship/iap/Product$Status;

    new-instance v0, Lcom/urbanairship/iap/Product$Status;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v7}, Lcom/urbanairship/iap/Product$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/Product$Status;->UPDATE:Lcom/urbanairship/iap/Product$Status;

    new-instance v0, Lcom/urbanairship/iap/Product$Status;

    const-string v1, "INSTALLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/iap/Product$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/Product$Status;->INSTALLED:Lcom/urbanairship/iap/Product$Status;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/urbanairship/iap/Product$Status;

    sget-object v1, Lcom/urbanairship/iap/Product$Status;->UNPURCHASED:Lcom/urbanairship/iap/Product$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/urbanairship/iap/Product$Status;->PURCHASED:Lcom/urbanairship/iap/Product$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/urbanairship/iap/Product$Status;->WAITING:Lcom/urbanairship/iap/Product$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/urbanairship/iap/Product$Status;->DOWNLOADING:Lcom/urbanairship/iap/Product$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/urbanairship/iap/Product$Status;->UPDATE:Lcom/urbanairship/iap/Product$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/urbanairship/iap/Product$Status;->INSTALLED:Lcom/urbanairship/iap/Product$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/urbanairship/iap/Product$Status;->$VALUES:[Lcom/urbanairship/iap/Product$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/urbanairship/iap/Product$Status;
    .locals 1

    const-class v0, Lcom/urbanairship/iap/Product$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/iap/Product$Status;

    return-object v0
.end method

.method public static values()[Lcom/urbanairship/iap/Product$Status;
    .locals 1

    sget-object v0, Lcom/urbanairship/iap/Product$Status;->$VALUES:[Lcom/urbanairship/iap/Product$Status;

    invoke-virtual {v0}, [Lcom/urbanairship/iap/Product$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/urbanairship/iap/Product$Status;

    return-object v0
.end method
