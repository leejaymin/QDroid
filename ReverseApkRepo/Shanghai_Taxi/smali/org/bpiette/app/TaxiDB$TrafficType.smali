.class public final enum Lorg/bpiette/app/TaxiDB$TrafficType;
.super Ljava/lang/Enum;
.source "TaxiDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bpiette/app/TaxiDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrafficType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/bpiette/app/TaxiDB$TrafficType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/bpiette/app/TaxiDB$TrafficType;

.field public static final enum HIGH_TRAFFIC:Lorg/bpiette/app/TaxiDB$TrafficType;

.field public static final enum LOW_TRAFFIC:Lorg/bpiette/app/TaxiDB$TrafficType;

.field public static final enum NORMAL_TRAFFIC:Lorg/bpiette/app/TaxiDB$TrafficType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lorg/bpiette/app/TaxiDB$TrafficType;

    const-string v1, "LOW_TRAFFIC"

    invoke-direct {v0, v1, v2}, Lorg/bpiette/app/TaxiDB$TrafficType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bpiette/app/TaxiDB$TrafficType;->LOW_TRAFFIC:Lorg/bpiette/app/TaxiDB$TrafficType;

    .line 24
    new-instance v0, Lorg/bpiette/app/TaxiDB$TrafficType;

    const-string v1, "NORMAL_TRAFFIC"

    invoke-direct {v0, v1, v3}, Lorg/bpiette/app/TaxiDB$TrafficType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bpiette/app/TaxiDB$TrafficType;->NORMAL_TRAFFIC:Lorg/bpiette/app/TaxiDB$TrafficType;

    .line 25
    new-instance v0, Lorg/bpiette/app/TaxiDB$TrafficType;

    const-string v1, "HIGH_TRAFFIC"

    invoke-direct {v0, v1, v4}, Lorg/bpiette/app/TaxiDB$TrafficType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bpiette/app/TaxiDB$TrafficType;->HIGH_TRAFFIC:Lorg/bpiette/app/TaxiDB$TrafficType;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/bpiette/app/TaxiDB$TrafficType;

    sget-object v1, Lorg/bpiette/app/TaxiDB$TrafficType;->LOW_TRAFFIC:Lorg/bpiette/app/TaxiDB$TrafficType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/bpiette/app/TaxiDB$TrafficType;->NORMAL_TRAFFIC:Lorg/bpiette/app/TaxiDB$TrafficType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/bpiette/app/TaxiDB$TrafficType;->HIGH_TRAFFIC:Lorg/bpiette/app/TaxiDB$TrafficType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/bpiette/app/TaxiDB$TrafficType;->ENUM$VALUES:[Lorg/bpiette/app/TaxiDB$TrafficType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bpiette/app/TaxiDB$TrafficType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/bpiette/app/TaxiDB$TrafficType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bpiette/app/TaxiDB$TrafficType;

    return-object p0
.end method

.method public static values()[Lorg/bpiette/app/TaxiDB$TrafficType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/bpiette/app/TaxiDB$TrafficType;->ENUM$VALUES:[Lorg/bpiette/app/TaxiDB$TrafficType;

    array-length v1, v0

    new-array v2, v1, [Lorg/bpiette/app/TaxiDB$TrafficType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
