.class public final enum Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/ui/theming/PulltabFrameData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;

.field public static final enum Pad:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;

.field public static final enum Phone:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;

    const-string v1, "Phone"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;->Phone:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;

    new-instance v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;

    const-string v1, "Pad"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;->Pad:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;

    sget-object v1, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;->Phone:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;->Pad:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;->$VALUES:[Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;->$VALUES:[Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;

    return-object v0
.end method
