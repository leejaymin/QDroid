.class public final enum Lcom/urbanairship/iap/Inventory$Status;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/iap/Inventory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/urbanairship/iap/Inventory$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/urbanairship/iap/Inventory$Status;

.field public static final enum DOWNLOADING:Lcom/urbanairship/iap/Inventory$Status;

.field public static final enum EMPTY:Lcom/urbanairship/iap/Inventory$Status;

.field public static final enum FAILED:Lcom/urbanairship/iap/Inventory$Status;

.field public static final enum INITIALIZED:Lcom/urbanairship/iap/Inventory$Status;

.field public static final enum LOADED:Lcom/urbanairship/iap/Inventory$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/urbanairship/iap/Inventory$Status;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/iap/Inventory$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/Inventory$Status;->INITIALIZED:Lcom/urbanairship/iap/Inventory$Status;

    new-instance v0, Lcom/urbanairship/iap/Inventory$Status;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v3}, Lcom/urbanairship/iap/Inventory$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/Inventory$Status;->DOWNLOADING:Lcom/urbanairship/iap/Inventory$Status;

    new-instance v0, Lcom/urbanairship/iap/Inventory$Status;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v4}, Lcom/urbanairship/iap/Inventory$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/Inventory$Status;->LOADED:Lcom/urbanairship/iap/Inventory$Status;

    new-instance v0, Lcom/urbanairship/iap/Inventory$Status;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/urbanairship/iap/Inventory$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/Inventory$Status;->FAILED:Lcom/urbanairship/iap/Inventory$Status;

    new-instance v0, Lcom/urbanairship/iap/Inventory$Status;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v6}, Lcom/urbanairship/iap/Inventory$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/Inventory$Status;->EMPTY:Lcom/urbanairship/iap/Inventory$Status;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/urbanairship/iap/Inventory$Status;

    sget-object v1, Lcom/urbanairship/iap/Inventory$Status;->INITIALIZED:Lcom/urbanairship/iap/Inventory$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/urbanairship/iap/Inventory$Status;->DOWNLOADING:Lcom/urbanairship/iap/Inventory$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/urbanairship/iap/Inventory$Status;->LOADED:Lcom/urbanairship/iap/Inventory$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/urbanairship/iap/Inventory$Status;->FAILED:Lcom/urbanairship/iap/Inventory$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/urbanairship/iap/Inventory$Status;->EMPTY:Lcom/urbanairship/iap/Inventory$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/urbanairship/iap/Inventory$Status;->$VALUES:[Lcom/urbanairship/iap/Inventory$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/urbanairship/iap/Inventory$Status;
    .locals 1

    const-class v0, Lcom/urbanairship/iap/Inventory$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/iap/Inventory$Status;

    return-object v0
.end method

.method public static values()[Lcom/urbanairship/iap/Inventory$Status;
    .locals 1

    sget-object v0, Lcom/urbanairship/iap/Inventory$Status;->$VALUES:[Lcom/urbanairship/iap/Inventory$Status;

    invoke-virtual {v0}, [Lcom/urbanairship/iap/Inventory$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/urbanairship/iap/Inventory$Status;

    return-object v0
.end method
