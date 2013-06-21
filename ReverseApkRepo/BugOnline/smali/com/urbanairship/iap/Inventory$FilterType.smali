.class public final enum Lcom/urbanairship/iap/Inventory$FilterType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/iap/Inventory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/urbanairship/iap/Inventory$FilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/urbanairship/iap/Inventory$FilterType;

.field public static final enum ALL:Lcom/urbanairship/iap/Inventory$FilterType;

.field public static final enum INSTALLED:Lcom/urbanairship/iap/Inventory$FilterType;

.field public static final enum UPDATED:Lcom/urbanairship/iap/Inventory$FilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/urbanairship/iap/Inventory$FilterType;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/iap/Inventory$FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/Inventory$FilterType;->ALL:Lcom/urbanairship/iap/Inventory$FilterType;

    new-instance v0, Lcom/urbanairship/iap/Inventory$FilterType;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v3}, Lcom/urbanairship/iap/Inventory$FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/Inventory$FilterType;->INSTALLED:Lcom/urbanairship/iap/Inventory$FilterType;

    new-instance v0, Lcom/urbanairship/iap/Inventory$FilterType;

    const-string v1, "UPDATED"

    invoke-direct {v0, v1, v4}, Lcom/urbanairship/iap/Inventory$FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/Inventory$FilterType;->UPDATED:Lcom/urbanairship/iap/Inventory$FilterType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/urbanairship/iap/Inventory$FilterType;

    sget-object v1, Lcom/urbanairship/iap/Inventory$FilterType;->ALL:Lcom/urbanairship/iap/Inventory$FilterType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/urbanairship/iap/Inventory$FilterType;->INSTALLED:Lcom/urbanairship/iap/Inventory$FilterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/urbanairship/iap/Inventory$FilterType;->UPDATED:Lcom/urbanairship/iap/Inventory$FilterType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/urbanairship/iap/Inventory$FilterType;->$VALUES:[Lcom/urbanairship/iap/Inventory$FilterType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/urbanairship/iap/Inventory$FilterType;
    .locals 1

    const-class v0, Lcom/urbanairship/iap/Inventory$FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/iap/Inventory$FilterType;

    return-object v0
.end method

.method public static values()[Lcom/urbanairship/iap/Inventory$FilterType;
    .locals 1

    sget-object v0, Lcom/urbanairship/iap/Inventory$FilterType;->$VALUES:[Lcom/urbanairship/iap/Inventory$FilterType;

    invoke-virtual {v0}, [Lcom/urbanairship/iap/Inventory$FilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/urbanairship/iap/Inventory$FilterType;

    return-object v0
.end method
