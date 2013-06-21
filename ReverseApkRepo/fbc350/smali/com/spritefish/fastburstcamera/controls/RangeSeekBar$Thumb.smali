.class final enum Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;
.super Ljava/lang/Enum;
.source "RangeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Thumb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

.field public static final enum MAX:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

.field public static final enum MIN:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 402
    new-instance v0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    const-string v1, "MIN"

    invoke-direct {v0, v1, v2}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;->MIN:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    new-instance v0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    const-string v1, "MAX"

    invoke-direct {v0, v1, v3}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;->MAX:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    .line 401
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    sget-object v1, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;->MIN:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;->MAX:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    aput-object v1, v0, v3

    sput-object v0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;->ENUM$VALUES:[Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    return-object v0
.end method

.method public static values()[Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;->ENUM$VALUES:[Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    array-length v1, v0

    new-array v2, v1, [Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
