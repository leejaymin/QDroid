.class public final enum Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HorizontalAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

.field public static final enum Centre:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

.field public static final enum Left:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

.field public static final enum Right:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    const-string v1, "Left"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;->Left:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    new-instance v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    const-string v1, "Right"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;->Right:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    new-instance v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    const-string v1, "Centre"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;->Centre:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    sget-object v1, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;->Left:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;->Right:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;->Centre:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    aput-object v1, v0, v4

    sput-object v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;->$VALUES:[Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

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

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;->$VALUES:[Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    return-object v0
.end method
