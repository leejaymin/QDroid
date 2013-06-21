.class public final enum Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchableThemeDescriptionItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

.field public static final enum Button:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

.field public static final enum NotDefined:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

.field public static final enum Switch:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

.field public static final enum Tab:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    const-string v1, "NotDefined"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->NotDefined:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    new-instance v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    const-string v1, "Button"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->Button:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    new-instance v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    const-string v1, "Tab"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->Tab:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    new-instance v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    const-string v1, "Switch"

    invoke-direct {v0, v1, v5}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->Switch:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    sget-object v1, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->NotDefined:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->Button:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->Tab:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->Switch:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->$VALUES:[Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->$VALUES:[Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    return-object v0
.end method
