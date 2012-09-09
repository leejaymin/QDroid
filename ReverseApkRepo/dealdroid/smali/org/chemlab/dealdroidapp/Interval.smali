.class public final enum Lorg/chemlab/dealdroidapp/Interval;
.super Ljava/lang/Enum;
.source "Interval.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/chemlab/dealdroidapp/Interval;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/chemlab/dealdroidapp/Interval;

.field public static final enum I_10_MINUTES:Lorg/chemlab/dealdroidapp/Interval;

.field public static final enum I_1_HOUR:Lorg/chemlab/dealdroidapp/Interval;

.field public static final enum I_1_MINUTE:Lorg/chemlab/dealdroidapp/Interval;

.field public static final enum I_2_MINUTES:Lorg/chemlab/dealdroidapp/Interval;

.field public static final enum I_30_MINUTES:Lorg/chemlab/dealdroidapp/Interval;

.field public static final enum I_30_SECONDS:Lorg/chemlab/dealdroidapp/Interval;

.field public static final enum I_5_MINUTES:Lorg/chemlab/dealdroidapp/Interval;


# instance fields
.field private final millis:I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8
    new-instance v0, Lorg/chemlab/dealdroidapp/Interval;

    const-string v1, "I_30_SECONDS"

    const-string v2, "30 Seconds"

    const/16 v3, 0x7530

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/chemlab/dealdroidapp/Interval;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Interval;->I_30_SECONDS:Lorg/chemlab/dealdroidapp/Interval;

    .line 9
    new-instance v0, Lorg/chemlab/dealdroidapp/Interval;

    const-string v1, "I_1_MINUTE"

    const-string v2, "1 Minute"

    const v3, 0xea60

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/chemlab/dealdroidapp/Interval;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Interval;->I_1_MINUTE:Lorg/chemlab/dealdroidapp/Interval;

    .line 10
    new-instance v0, Lorg/chemlab/dealdroidapp/Interval;

    const-string v1, "I_2_MINUTES"

    const-string v2, "2 Minutes"

    const v3, 0x1d4c0

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/chemlab/dealdroidapp/Interval;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Interval;->I_2_MINUTES:Lorg/chemlab/dealdroidapp/Interval;

    .line 11
    new-instance v0, Lorg/chemlab/dealdroidapp/Interval;

    const-string v1, "I_5_MINUTES"

    const-string v2, "5 Minutes"

    const v3, 0x493e0

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/chemlab/dealdroidapp/Interval;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Interval;->I_5_MINUTES:Lorg/chemlab/dealdroidapp/Interval;

    .line 12
    new-instance v0, Lorg/chemlab/dealdroidapp/Interval;

    const-string v1, "I_10_MINUTES"

    const-string v2, "10 Minutes"

    const v3, 0x927c0

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/chemlab/dealdroidapp/Interval;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Interval;->I_10_MINUTES:Lorg/chemlab/dealdroidapp/Interval;

    .line 13
    new-instance v0, Lorg/chemlab/dealdroidapp/Interval;

    const-string v1, "I_30_MINUTES"

    const/4 v2, 0x5

    const-string v3, "30 Minutes"

    const v4, 0x1b7740

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/chemlab/dealdroidapp/Interval;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Interval;->I_30_MINUTES:Lorg/chemlab/dealdroidapp/Interval;

    .line 14
    new-instance v0, Lorg/chemlab/dealdroidapp/Interval;

    const-string v1, "I_1_HOUR"

    const/4 v2, 0x6

    const-string v3, "1 Hour"

    const v4, 0x36ee80

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/chemlab/dealdroidapp/Interval;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Interval;->I_1_HOUR:Lorg/chemlab/dealdroidapp/Interval;

    .line 7
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/chemlab/dealdroidapp/Interval;

    sget-object v1, Lorg/chemlab/dealdroidapp/Interval;->I_30_SECONDS:Lorg/chemlab/dealdroidapp/Interval;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chemlab/dealdroidapp/Interval;->I_1_MINUTE:Lorg/chemlab/dealdroidapp/Interval;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chemlab/dealdroidapp/Interval;->I_2_MINUTES:Lorg/chemlab/dealdroidapp/Interval;

    aput-object v1, v0, v7

    sget-object v1, Lorg/chemlab/dealdroidapp/Interval;->I_5_MINUTES:Lorg/chemlab/dealdroidapp/Interval;

    aput-object v1, v0, v8

    sget-object v1, Lorg/chemlab/dealdroidapp/Interval;->I_10_MINUTES:Lorg/chemlab/dealdroidapp/Interval;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/chemlab/dealdroidapp/Interval;->I_30_MINUTES:Lorg/chemlab/dealdroidapp/Interval;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/chemlab/dealdroidapp/Interval;->I_1_HOUR:Lorg/chemlab/dealdroidapp/Interval;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chemlab/dealdroidapp/Interval;->ENUM$VALUES:[Lorg/chemlab/dealdroidapp/Interval;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .parameter "millis"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lorg/chemlab/dealdroidapp/Interval;->name:Ljava/lang/String;

    .line 22
    iput p4, p0, Lorg/chemlab/dealdroidapp/Interval;->millis:I

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chemlab/dealdroidapp/Interval;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/chemlab/dealdroidapp/Interval;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chemlab/dealdroidapp/Interval;

    return-object v0
.end method

.method public static values()[Lorg/chemlab/dealdroidapp/Interval;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/chemlab/dealdroidapp/Interval;->ENUM$VALUES:[Lorg/chemlab/dealdroidapp/Interval;

    array-length v1, v0

    new-array v2, v1, [Lorg/chemlab/dealdroidapp/Interval;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getMillis()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/chemlab/dealdroidapp/Interval;->millis:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Interval;->name:Ljava/lang/String;

    return-object v0
.end method
