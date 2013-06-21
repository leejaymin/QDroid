.class public final enum Lcom/spritefish/fastburstcamera/activities/RecordMode;
.super Ljava/lang/Enum;
.source "RecordMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spritefish/fastburstcamera/activities/RecordMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/spritefish/fastburstcamera/activities/RecordMode;

.field public static final enum MOTION:Lcom/spritefish/fastburstcamera/activities/RecordMode;

.field public static final enum NONE:Lcom/spritefish/fastburstcamera/activities/RecordMode;

.field public static final enum NORMAL:Lcom/spritefish/fastburstcamera/activities/RecordMode;

.field public static final enum PRESHOT:Lcom/spritefish/fastburstcamera/activities/RecordMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/spritefish/fastburstcamera/activities/RecordMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/spritefish/fastburstcamera/activities/RecordMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecordMode;->NONE:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    new-instance v0, Lcom/spritefish/fastburstcamera/activities/RecordMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/spritefish/fastburstcamera/activities/RecordMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecordMode;->NORMAL:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    new-instance v0, Lcom/spritefish/fastburstcamera/activities/RecordMode;

    const-string v1, "PRESHOT"

    invoke-direct {v0, v1, v4}, Lcom/spritefish/fastburstcamera/activities/RecordMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecordMode;->PRESHOT:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    new-instance v0, Lcom/spritefish/fastburstcamera/activities/RecordMode;

    const-string v1, "MOTION"

    invoke-direct {v0, v1, v5}, Lcom/spritefish/fastburstcamera/activities/RecordMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecordMode;->MOTION:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/spritefish/fastburstcamera/activities/RecordMode;

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecordMode;->NONE:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecordMode;->NORMAL:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecordMode;->PRESHOT:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecordMode;->MOTION:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecordMode;->ENUM$VALUES:[Lcom/spritefish/fastburstcamera/activities/RecordMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spritefish/fastburstcamera/activities/RecordMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/spritefish/fastburstcamera/activities/RecordMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spritefish/fastburstcamera/activities/RecordMode;

    return-object v0
.end method

.method public static values()[Lcom/spritefish/fastburstcamera/activities/RecordMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/spritefish/fastburstcamera/activities/RecordMode;->ENUM$VALUES:[Lcom/spritefish/fastburstcamera/activities/RecordMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/spritefish/fastburstcamera/activities/RecordMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
