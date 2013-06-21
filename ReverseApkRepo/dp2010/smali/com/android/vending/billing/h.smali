.class public final enum Lcom/android/vending/billing/h;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/android/vending/billing/h;

.field public static final enum b:Lcom/android/vending/billing/h;

.field public static final enum c:Lcom/android/vending/billing/h;

.field public static final enum d:Lcom/android/vending/billing/h;

.field public static final enum e:Lcom/android/vending/billing/h;

.field public static final enum f:Lcom/android/vending/billing/h;

.field public static final enum g:Lcom/android/vending/billing/h;

.field private static final synthetic h:[Lcom/android/vending/billing/h;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/vending/billing/h;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/billing/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/h;->a:Lcom/android/vending/billing/h;

    new-instance v0, Lcom/android/vending/billing/h;

    const-string v1, "RESULT_USER_CANCELED"

    invoke-direct {v0, v1, v4}, Lcom/android/vending/billing/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/h;->b:Lcom/android/vending/billing/h;

    new-instance v0, Lcom/android/vending/billing/h;

    const-string v1, "RESULT_SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/android/vending/billing/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/h;->c:Lcom/android/vending/billing/h;

    new-instance v0, Lcom/android/vending/billing/h;

    const-string v1, "RESULT_BILLING_UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/android/vending/billing/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/h;->d:Lcom/android/vending/billing/h;

    new-instance v0, Lcom/android/vending/billing/h;

    const-string v1, "RESULT_ITEM_UNAVAILABLE"

    invoke-direct {v0, v1, v7}, Lcom/android/vending/billing/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/h;->e:Lcom/android/vending/billing/h;

    new-instance v0, Lcom/android/vending/billing/h;

    const-string v1, "RESULT_DEVELOPER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/vending/billing/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/h;->f:Lcom/android/vending/billing/h;

    new-instance v0, Lcom/android/vending/billing/h;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/billing/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/h;->g:Lcom/android/vending/billing/h;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/vending/billing/h;

    sget-object v1, Lcom/android/vending/billing/h;->a:Lcom/android/vending/billing/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/billing/h;->b:Lcom/android/vending/billing/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/billing/h;->c:Lcom/android/vending/billing/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vending/billing/h;->d:Lcom/android/vending/billing/h;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/vending/billing/h;->e:Lcom/android/vending/billing/h;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/vending/billing/h;->f:Lcom/android/vending/billing/h;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/vending/billing/h;->g:Lcom/android/vending/billing/h;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/billing/h;->h:[Lcom/android/vending/billing/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/android/vending/billing/h;
    .locals 2

    invoke-static {}, Lcom/android/vending/billing/h;->values()[Lcom/android/vending/billing/h;

    move-result-object v0

    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/android/vending/billing/h;->g:Lcom/android/vending/billing/h;

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/billing/h;
    .locals 1

    const-class v0, Lcom/android/vending/billing/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/vending/billing/h;

    return-object v0
.end method

.method public static values()[Lcom/android/vending/billing/h;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/vending/billing/h;->h:[Lcom/android/vending/billing/h;

    array-length v1, v0

    new-array v2, v1, [Lcom/android/vending/billing/h;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
