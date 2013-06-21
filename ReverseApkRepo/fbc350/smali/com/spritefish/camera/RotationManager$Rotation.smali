.class public final enum Lcom/spritefish/camera/RotationManager$Rotation;
.super Ljava/lang/Enum;
.source "RotationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spritefish/camera/RotationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Rotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spritefish/camera/RotationManager$Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/spritefish/camera/RotationManager$Rotation;

.field public static final enum R_0:Lcom/spritefish/camera/RotationManager$Rotation;

.field public static final enum R_180:Lcom/spritefish/camera/RotationManager$Rotation;

.field public static final enum R_270:Lcom/spritefish/camera/RotationManager$Rotation;

.field public static final enum R_90:Lcom/spritefish/camera/RotationManager$Rotation;


# instance fields
.field val:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/spritefish/camera/RotationManager$Rotation;

    const-string v1, "R_0"

    invoke-direct {v0, v1, v2, v2}, Lcom/spritefish/camera/RotationManager$Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_0:Lcom/spritefish/camera/RotationManager$Rotation;

    new-instance v0, Lcom/spritefish/camera/RotationManager$Rotation;

    const-string v1, "R_90"

    invoke-direct {v0, v1, v3, v3}, Lcom/spritefish/camera/RotationManager$Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_90:Lcom/spritefish/camera/RotationManager$Rotation;

    new-instance v0, Lcom/spritefish/camera/RotationManager$Rotation;

    const-string v1, "R_180"

    invoke-direct {v0, v1, v4, v4}, Lcom/spritefish/camera/RotationManager$Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_180:Lcom/spritefish/camera/RotationManager$Rotation;

    new-instance v0, Lcom/spritefish/camera/RotationManager$Rotation;

    const-string v1, "R_270"

    invoke-direct {v0, v1, v5, v5}, Lcom/spritefish/camera/RotationManager$Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_270:Lcom/spritefish/camera/RotationManager$Rotation;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/spritefish/camera/RotationManager$Rotation;

    sget-object v1, Lcom/spritefish/camera/RotationManager$Rotation;->R_0:Lcom/spritefish/camera/RotationManager$Rotation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spritefish/camera/RotationManager$Rotation;->R_90:Lcom/spritefish/camera/RotationManager$Rotation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spritefish/camera/RotationManager$Rotation;->R_180:Lcom/spritefish/camera/RotationManager$Rotation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spritefish/camera/RotationManager$Rotation;->R_270:Lcom/spritefish/camera/RotationManager$Rotation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->ENUM$VALUES:[Lcom/spritefish/camera/RotationManager$Rotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter "v"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/spritefish/camera/RotationManager$Rotation;->val:I

    .line 24
    iput p3, p0, Lcom/spritefish/camera/RotationManager$Rotation;->val:I

    .line 25
    return-void
.end method

.method public static getShortest(FF)F
    .locals 6
    .parameter "newAngle"
    .parameter "oldAngle"

    .prologue
    const/high16 v4, 0x43b4

    const/high16 v3, 0x4387

    const/4 v0, 0x0

    const/high16 v2, 0x4334

    const/high16 v1, 0x42b4

    .line 50
    cmpl-float v5, p1, v0

    if-nez v5, :cond_4

    .line 52
    cmpl-float v5, p0, v0

    if-nez v5, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    cmpl-float v5, p0, v1

    if-nez v5, :cond_2

    move v0, v1

    goto :goto_0

    .line 54
    :cond_2
    cmpl-float v5, p0, v2

    if-nez v5, :cond_3

    move v0, v2

    goto :goto_0

    .line 55
    :cond_3
    cmpl-float v5, p0, v3

    if-nez v5, :cond_4

    const/high16 v0, -0x3d4c

    goto :goto_0

    .line 57
    :cond_4
    cmpl-float v5, p1, v1

    if-nez v5, :cond_7

    .line 59
    cmpl-float v5, p0, v0

    if-eqz v5, :cond_0

    .line 60
    cmpl-float v5, p0, v1

    if-nez v5, :cond_5

    move v0, v1

    goto :goto_0

    .line 61
    :cond_5
    cmpl-float v5, p0, v2

    if-nez v5, :cond_6

    move v0, v2

    goto :goto_0

    .line 62
    :cond_6
    cmpl-float v5, p0, v3

    if-nez v5, :cond_7

    move v0, v3

    goto :goto_0

    .line 64
    :cond_7
    cmpl-float v5, p1, v2

    if-nez v5, :cond_b

    .line 66
    cmpl-float v5, p0, v0

    if-nez v5, :cond_8

    move v0, v4

    goto :goto_0

    .line 67
    :cond_8
    cmpl-float v5, p0, v1

    if-nez v5, :cond_9

    move v0, v1

    goto :goto_0

    .line 68
    :cond_9
    cmpl-float v5, p0, v2

    if-nez v5, :cond_a

    move v0, v2

    goto :goto_0

    .line 69
    :cond_a
    cmpl-float v5, p0, v3

    if-nez v5, :cond_b

    move v0, v3

    goto :goto_0

    .line 71
    :cond_b
    cmpl-float v5, p1, v3

    if-nez v5, :cond_0

    .line 73
    cmpl-float v5, p0, v0

    if-nez v5, :cond_c

    move v0, v4

    goto :goto_0

    .line 74
    :cond_c
    cmpl-float v4, p0, v1

    if-nez v4, :cond_d

    move v0, v1

    goto :goto_0

    .line 75
    :cond_d
    cmpl-float v1, p0, v2

    if-nez v1, :cond_e

    move v0, v2

    goto :goto_0

    .line 76
    :cond_e
    cmpl-float v1, p0, v3

    if-nez v1, :cond_0

    move v0, v3

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spritefish/camera/RotationManager$Rotation;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/spritefish/camera/RotationManager$Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spritefish/camera/RotationManager$Rotation;

    return-object v0
.end method

.method public static values()[Lcom/spritefish/camera/RotationManager$Rotation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->ENUM$VALUES:[Lcom/spritefish/camera/RotationManager$Rotation;

    array-length v1, v0

    new-array v2, v1, [Lcom/spritefish/camera/RotationManager$Rotation;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public left()Lcom/spritefish/camera/RotationManager$Rotation;
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/spritefish/camera/RotationManager$Rotation;->val:I

    packed-switch v0, :pswitch_data_0

    .line 33
    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_0:Lcom/spritefish/camera/RotationManager$Rotation;

    :goto_0
    return-object v0

    .line 29
    :pswitch_0
    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_270:Lcom/spritefish/camera/RotationManager$Rotation;

    goto :goto_0

    .line 30
    :pswitch_1
    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_0:Lcom/spritefish/camera/RotationManager$Rotation;

    goto :goto_0

    .line 31
    :pswitch_2
    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_90:Lcom/spritefish/camera/RotationManager$Rotation;

    goto :goto_0

    .line 32
    :pswitch_3
    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_180:Lcom/spritefish/camera/RotationManager$Rotation;

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public right()Lcom/spritefish/camera/RotationManager$Rotation;
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/spritefish/camera/RotationManager$Rotation;->val:I

    packed-switch v0, :pswitch_data_0

    .line 44
    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_0:Lcom/spritefish/camera/RotationManager$Rotation;

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_90:Lcom/spritefish/camera/RotationManager$Rotation;

    goto :goto_0

    .line 41
    :pswitch_1
    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_180:Lcom/spritefish/camera/RotationManager$Rotation;

    goto :goto_0

    .line 42
    :pswitch_2
    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_270:Lcom/spritefish/camera/RotationManager$Rotation;

    goto :goto_0

    .line 43
    :pswitch_3
    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_0:Lcom/spritefish/camera/RotationManager$Rotation;

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
