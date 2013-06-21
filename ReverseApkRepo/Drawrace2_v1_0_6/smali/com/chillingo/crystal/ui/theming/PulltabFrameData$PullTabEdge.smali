.class public enum Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/ui/theming/PulltabFrameData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "PullTabEdge"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

.field public static final enum Bottom:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

.field public static final enum Left:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

.field public static final enum Right:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

.field public static final enum Top:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge$1;

    const-string v1, "Bottom"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->Bottom:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    new-instance v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge$2;

    const-string v1, "Right"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->Right:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    new-instance v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge$3;

    const-string v1, "Top"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->Top:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    new-instance v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge$4;

    const-string v1, "Left"

    invoke-direct {v0, v1, v5}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->Left:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    sget-object v1, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->Bottom:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->Right:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->Top:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->Left:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    aput-object v1, v0, v5

    sput-object v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->$VALUES:[Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/chillingo/crystal/ui/theming/PulltabFrameData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->$VALUES:[Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    return-object v0
.end method
