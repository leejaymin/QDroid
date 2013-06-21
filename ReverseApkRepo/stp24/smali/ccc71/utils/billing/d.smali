.class public final enum Lccc71/utils/billing/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lccc71/utils/billing/d;

.field public static final enum b:Lccc71/utils/billing/d;

.field public static final enum c:Lccc71/utils/billing/d;

.field private static final synthetic d:[Lccc71/utils/billing/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lccc71/utils/billing/d;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lccc71/utils/billing/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/utils/billing/d;->a:Lccc71/utils/billing/d;

    .line 29
    new-instance v0, Lccc71/utils/billing/d;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lccc71/utils/billing/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/utils/billing/d;->b:Lccc71/utils/billing/d;

    .line 30
    new-instance v0, Lccc71/utils/billing/d;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lccc71/utils/billing/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/utils/billing/d;->c:Lccc71/utils/billing/d;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lccc71/utils/billing/d;

    sget-object v1, Lccc71/utils/billing/d;->a:Lccc71/utils/billing/d;

    aput-object v1, v0, v2

    sget-object v1, Lccc71/utils/billing/d;->b:Lccc71/utils/billing/d;

    aput-object v1, v0, v3

    sget-object v1, Lccc71/utils/billing/d;->c:Lccc71/utils/billing/d;

    aput-object v1, v0, v4

    sput-object v0, Lccc71/utils/billing/d;->d:[Lccc71/utils/billing/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lccc71/utils/billing/d;
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-static {}, Lccc71/utils/billing/d;->values()[Lccc71/utils/billing/d;

    move-result-object v0

    .line 35
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 37
    :cond_0
    sget-object v0, Lccc71/utils/billing/d;->b:Lccc71/utils/billing/d;

    .line 39
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lccc71/utils/billing/d;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lccc71/utils/billing/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccc71/utils/billing/d;

    return-object v0
.end method

.method public static values()[Lccc71/utils/billing/d;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lccc71/utils/billing/d;->d:[Lccc71/utils/billing/d;

    array-length v1, v0

    new-array v2, v1, [Lccc71/utils/billing/d;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
