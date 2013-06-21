.class public final enum Lccc71/utils/billing/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lccc71/utils/billing/e;

.field public static final enum b:Lccc71/utils/billing/e;

.field public static final enum c:Lccc71/utils/billing/e;

.field public static final enum d:Lccc71/utils/billing/e;

.field public static final enum e:Lccc71/utils/billing/e;

.field public static final enum f:Lccc71/utils/billing/e;

.field public static final enum g:Lccc71/utils/billing/e;

.field private static final synthetic h:[Lccc71/utils/billing/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lccc71/utils/billing/e;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v3}, Lccc71/utils/billing/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/utils/billing/e;->a:Lccc71/utils/billing/e;

    .line 8
    new-instance v0, Lccc71/utils/billing/e;

    const-string v1, "RESULT_USER_CANCELED"

    invoke-direct {v0, v1, v4}, Lccc71/utils/billing/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/utils/billing/e;->b:Lccc71/utils/billing/e;

    .line 9
    new-instance v0, Lccc71/utils/billing/e;

    const-string v1, "RESULT_SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lccc71/utils/billing/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/utils/billing/e;->c:Lccc71/utils/billing/e;

    .line 10
    new-instance v0, Lccc71/utils/billing/e;

    const-string v1, "RESULT_BILLING_UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Lccc71/utils/billing/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/utils/billing/e;->d:Lccc71/utils/billing/e;

    .line 11
    new-instance v0, Lccc71/utils/billing/e;

    const-string v1, "RESULT_ITEM_UNAVAILABLE"

    invoke-direct {v0, v1, v7}, Lccc71/utils/billing/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/utils/billing/e;->e:Lccc71/utils/billing/e;

    .line 12
    new-instance v0, Lccc71/utils/billing/e;

    const-string v1, "RESULT_DEVELOPER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lccc71/utils/billing/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/utils/billing/e;->f:Lccc71/utils/billing/e;

    .line 13
    new-instance v0, Lccc71/utils/billing/e;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lccc71/utils/billing/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/utils/billing/e;->g:Lccc71/utils/billing/e;

    .line 5
    const/4 v0, 0x7

    new-array v0, v0, [Lccc71/utils/billing/e;

    sget-object v1, Lccc71/utils/billing/e;->a:Lccc71/utils/billing/e;

    aput-object v1, v0, v3

    sget-object v1, Lccc71/utils/billing/e;->b:Lccc71/utils/billing/e;

    aput-object v1, v0, v4

    sget-object v1, Lccc71/utils/billing/e;->c:Lccc71/utils/billing/e;

    aput-object v1, v0, v5

    sget-object v1, Lccc71/utils/billing/e;->d:Lccc71/utils/billing/e;

    aput-object v1, v0, v6

    sget-object v1, Lccc71/utils/billing/e;->e:Lccc71/utils/billing/e;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lccc71/utils/billing/e;->f:Lccc71/utils/billing/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lccc71/utils/billing/e;->g:Lccc71/utils/billing/e;

    aput-object v2, v0, v1

    sput-object v0, Lccc71/utils/billing/e;->h:[Lccc71/utils/billing/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lccc71/utils/billing/e;
    .locals 2
    .parameter

    .prologue
    .line 17
    invoke-static {}, Lccc71/utils/billing/e;->values()[Lccc71/utils/billing/e;

    move-result-object v0

    .line 18
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 20
    :cond_0
    sget-object v0, Lccc71/utils/billing/e;->g:Lccc71/utils/billing/e;

    .line 22
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lccc71/utils/billing/e;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lccc71/utils/billing/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccc71/utils/billing/e;

    return-object v0
.end method

.method public static values()[Lccc71/utils/billing/e;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lccc71/utils/billing/e;->h:[Lccc71/utils/billing/e;

    array-length v1, v0

    new-array v2, v1, [Lccc71/utils/billing/e;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
