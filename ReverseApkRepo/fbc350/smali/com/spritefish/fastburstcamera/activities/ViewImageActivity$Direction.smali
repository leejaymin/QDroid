.class final enum Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;
.super Ljava/lang/Enum;
.source "ViewImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

.field public static final enum NEXT:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

.field public static final enum NONE:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

.field public static final enum PREV:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    const-string v1, "NEXT"

    invoke-direct {v0, v1, v2}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;->NEXT:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    new-instance v0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    const-string v1, "PREV"

    invoke-direct {v0, v1, v3}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;->PREV:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    new-instance v0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;->NONE:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;->NEXT:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;->PREV:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;->NONE:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;->ENUM$VALUES:[Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    return-object v0
.end method

.method public static values()[Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;->ENUM$VALUES:[Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    array-length v1, v0

    new-array v2, v1, [Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
