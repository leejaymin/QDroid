.class final enum Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;
.super Ljava/lang/Enum;
.source "RecorderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LightMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTO:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;

.field public static final enum DARK:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;

.field private static final synthetic ENUM$VALUES:[Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;

.field public static final enum NIGHT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    new-instance v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;->AUTO:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;

    new-instance v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;

    const-string v1, "DARK"

    invoke-direct {v0, v1, v3}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;->DARK:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;

    new-instance v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;

    const-string v1, "NIGHT"

    invoke-direct {v0, v1, v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;->NIGHT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;

    .line 132
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;->AUTO:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;->DARK:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;->NIGHT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;->ENUM$VALUES:[Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;

    return-object v0
.end method

.method public static values()[Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;->ENUM$VALUES:[Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
