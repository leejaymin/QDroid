.class public final enum Lcom/android/vending/billing/g;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/android/vending/billing/g;

.field public static final enum b:Lcom/android/vending/billing/g;

.field public static final enum c:Lcom/android/vending/billing/g;

.field private static final synthetic d:[Lcom/android/vending/billing/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/vending/billing/g;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lcom/android/vending/billing/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/g;->a:Lcom/android/vending/billing/g;

    new-instance v0, Lcom/android/vending/billing/g;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/billing/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/g;->b:Lcom/android/vending/billing/g;

    new-instance v0, Lcom/android/vending/billing/g;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lcom/android/vending/billing/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/g;->c:Lcom/android/vending/billing/g;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/vending/billing/g;

    sget-object v1, Lcom/android/vending/billing/g;->a:Lcom/android/vending/billing/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/billing/g;->b:Lcom/android/vending/billing/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/billing/g;->c:Lcom/android/vending/billing/g;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/vending/billing/g;->d:[Lcom/android/vending/billing/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/android/vending/billing/g;
    .locals 2

    invoke-static {}, Lcom/android/vending/billing/g;->values()[Lcom/android/vending/billing/g;

    move-result-object v0

    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/android/vending/billing/g;->b:Lcom/android/vending/billing/g;

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/billing/g;
    .locals 1

    const-class v0, Lcom/android/vending/billing/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/vending/billing/g;

    return-object v0
.end method

.method public static values()[Lcom/android/vending/billing/g;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/vending/billing/g;->d:[Lcom/android/vending/billing/g;

    array-length v1, v0

    new-array v2, v1, [Lcom/android/vending/billing/g;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
