.class final enum Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;
.super Ljava/lang/Enum;
.source "RecorderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Shootmode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

.field private static final synthetic ENUM$VALUES:[Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

.field public static final enum MOTION:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

.field public static final enum PRESHOT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

.field public static final enum SHOT1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

.field public static final enum SHOT3:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

.field public static final enum SHOT5:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    new-instance v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    const-string v1, "CONT"

    invoke-direct {v0, v1, v3}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->CONT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    new-instance v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    const-string v1, "SHOT1"

    invoke-direct {v0, v1, v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->SHOT1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    new-instance v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    const-string v1, "SHOT3"

    invoke-direct {v0, v1, v5}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->SHOT3:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    new-instance v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    const-string v1, "SHOT5"

    invoke-direct {v0, v1, v6}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->SHOT5:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    new-instance v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    const-string v1, "PRESHOT"

    invoke-direct {v0, v1, v7}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->PRESHOT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    new-instance v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    const-string v1, "MOTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->MOTION:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    .line 128
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->CONT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->SHOT1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->SHOT3:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->SHOT5:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->PRESHOT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->MOTION:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->ENUM$VALUES:[Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    return-object v0
.end method

.method public static values()[Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->ENUM$VALUES:[Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    array-length v1, v0

    new-array v2, v1, [Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
