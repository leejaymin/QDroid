.class public final enum Lutil/googleiap/Consts$PurchaseState;
.super Ljava/lang/Enum;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutil/googleiap/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurchaseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lutil/googleiap/Consts$PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lutil/googleiap/Consts$PurchaseState;

.field public static final enum CANCELED:Lutil/googleiap/Consts$PurchaseState;

.field public static final enum PURCHASED:Lutil/googleiap/Consts$PurchaseState;

.field public static final enum REFUNDED:Lutil/googleiap/Consts$PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lutil/googleiap/Consts$PurchaseState;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lutil/googleiap/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutil/googleiap/Consts$PurchaseState;->PURCHASED:Lutil/googleiap/Consts$PurchaseState;

    .line 51
    new-instance v0, Lutil/googleiap/Consts$PurchaseState;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lutil/googleiap/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutil/googleiap/Consts$PurchaseState;->CANCELED:Lutil/googleiap/Consts$PurchaseState;

    .line 52
    new-instance v0, Lutil/googleiap/Consts$PurchaseState;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lutil/googleiap/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutil/googleiap/Consts$PurchaseState;->REFUNDED:Lutil/googleiap/Consts$PurchaseState;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Lutil/googleiap/Consts$PurchaseState;

    sget-object v1, Lutil/googleiap/Consts$PurchaseState;->PURCHASED:Lutil/googleiap/Consts$PurchaseState;

    aput-object v1, v0, v2

    sget-object v1, Lutil/googleiap/Consts$PurchaseState;->CANCELED:Lutil/googleiap/Consts$PurchaseState;

    aput-object v1, v0, v3

    sget-object v1, Lutil/googleiap/Consts$PurchaseState;->REFUNDED:Lutil/googleiap/Consts$PurchaseState;

    aput-object v1, v0, v4

    sput-object v0, Lutil/googleiap/Consts$PurchaseState;->$VALUES:[Lutil/googleiap/Consts$PurchaseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lutil/googleiap/Consts$PurchaseState;
    .locals 2
    .parameter "index"

    .prologue
    .line 56
    invoke-static {}, Lutil/googleiap/Consts$PurchaseState;->values()[Lutil/googleiap/Consts$PurchaseState;

    move-result-object v0

    .line 57
    .local v0, values:[Lutil/googleiap/Consts$PurchaseState;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 58
    :cond_0
    sget-object v1, Lutil/googleiap/Consts$PurchaseState;->CANCELED:Lutil/googleiap/Consts$PurchaseState;

    .line 60
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lutil/googleiap/Consts$PurchaseState;
    .locals 1
    .parameter "name"

    .prologue
    .line 48
    const-class v0, Lutil/googleiap/Consts$PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lutil/googleiap/Consts$PurchaseState;

    return-object v0
.end method

.method public static values()[Lutil/googleiap/Consts$PurchaseState;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lutil/googleiap/Consts$PurchaseState;->$VALUES:[Lutil/googleiap/Consts$PurchaseState;

    invoke-virtual {v0}, [Lutil/googleiap/Consts$PurchaseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lutil/googleiap/Consts$PurchaseState;

    return-object v0
.end method
