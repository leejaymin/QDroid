.class public final enum Lccc71/bmw/lib/ak;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lccc71/bmw/lib/ak;

.field public static final enum b:Lccc71/bmw/lib/ak;

.field public static final enum c:Lccc71/bmw/lib/ak;

.field public static final enum d:Lccc71/bmw/lib/ak;

.field public static final enum e:Lccc71/bmw/lib/ak;

.field public static final enum f:Lccc71/bmw/lib/ak;

.field private static final synthetic g:[Lccc71/bmw/lib/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lccc71/bmw/lib/ak;

    const-string v1, "Level"

    invoke-direct {v0, v1, v3}, Lccc71/bmw/lib/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/bmw/lib/ak;->a:Lccc71/bmw/lib/ak;

    .line 26
    new-instance v0, Lccc71/bmw/lib/ak;

    const-string v1, "Consumption"

    invoke-direct {v0, v1, v4}, Lccc71/bmw/lib/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/bmw/lib/ak;->b:Lccc71/bmw/lib/ak;

    .line 27
    new-instance v0, Lccc71/bmw/lib/ak;

    const-string v1, "Temperature"

    invoke-direct {v0, v1, v5}, Lccc71/bmw/lib/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/bmw/lib/ak;->c:Lccc71/bmw/lib/ak;

    .line 28
    new-instance v0, Lccc71/bmw/lib/ak;

    const-string v1, "Voltage"

    invoke-direct {v0, v1, v6}, Lccc71/bmw/lib/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/bmw/lib/ak;->d:Lccc71/bmw/lib/ak;

    .line 29
    new-instance v0, Lccc71/bmw/lib/ak;

    const-string v1, "ConsumptionW"

    invoke-direct {v0, v1, v7}, Lccc71/bmw/lib/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/bmw/lib/ak;->e:Lccc71/bmw/lib/ak;

    .line 30
    new-instance v0, Lccc71/bmw/lib/ak;

    const-string v1, "PercentHour"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lccc71/bmw/lib/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/bmw/lib/ak;->f:Lccc71/bmw/lib/ak;

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Lccc71/bmw/lib/ak;

    sget-object v1, Lccc71/bmw/lib/ak;->a:Lccc71/bmw/lib/ak;

    aput-object v1, v0, v3

    sget-object v1, Lccc71/bmw/lib/ak;->b:Lccc71/bmw/lib/ak;

    aput-object v1, v0, v4

    sget-object v1, Lccc71/bmw/lib/ak;->c:Lccc71/bmw/lib/ak;

    aput-object v1, v0, v5

    sget-object v1, Lccc71/bmw/lib/ak;->d:Lccc71/bmw/lib/ak;

    aput-object v1, v0, v6

    sget-object v1, Lccc71/bmw/lib/ak;->e:Lccc71/bmw/lib/ak;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lccc71/bmw/lib/ak;->f:Lccc71/bmw/lib/ak;

    aput-object v2, v0, v1

    sput-object v0, Lccc71/bmw/lib/ak;->g:[Lccc71/bmw/lib/ak;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccc71/bmw/lib/ak;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lccc71/bmw/lib/ak;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccc71/bmw/lib/ak;

    return-object v0
.end method

.method public static values()[Lccc71/bmw/lib/ak;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lccc71/bmw/lib/ak;->g:[Lccc71/bmw/lib/ak;

    array-length v1, v0

    new-array v2, v1, [Lccc71/bmw/lib/ak;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
