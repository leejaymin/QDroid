.class public enum Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/utils/HardwareUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "ScreenOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

.field public static final enum LandscapeLeft:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

.field public static final enum LandscapeRight:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

.field public static final enum Portrait:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

.field public static final enum PortraitUpsideDown:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation$1;

    const-string v1, "Portrait"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->Portrait:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    new-instance v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation$2;

    const-string v1, "LandscapeLeft"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->LandscapeLeft:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    new-instance v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation$3;

    const-string v1, "PortraitUpsideDown"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->PortraitUpsideDown:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    new-instance v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation$4;

    const-string v1, "LandscapeRight"

    invoke-direct {v0, v1, v5}, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->LandscapeRight:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    sget-object v1, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->Portrait:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->LandscapeLeft:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->PortraitUpsideDown:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->LandscapeRight:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->$VALUES:[Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/chillingo/crystal/utils/HardwareUtils$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->$VALUES:[Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    return-object v0
.end method
