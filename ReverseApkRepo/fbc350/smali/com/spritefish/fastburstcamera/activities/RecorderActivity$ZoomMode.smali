.class final enum Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;
.super Ljava/lang/Enum;
.source "RecorderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ZoomMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

.field public static final enum NO_ACTION:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

.field public static final enum ZOOM_IN:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

.field public static final enum ZOOM_OUT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    new-instance v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    const-string v1, "ZOOM_IN"

    invoke-direct {v0, v1, v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;->ZOOM_IN:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    new-instance v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    const-string v1, "ZOOM_OUT"

    invoke-direct {v0, v1, v3}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;->ZOOM_OUT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    new-instance v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    const-string v1, "NO_ACTION"

    invoke-direct {v0, v1, v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;->NO_ACTION:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    .line 136
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;->ZOOM_IN:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;->ZOOM_OUT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;->NO_ACTION:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;->ENUM$VALUES:[Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    return-object v0
.end method

.method public static values()[Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;->ENUM$VALUES:[Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
