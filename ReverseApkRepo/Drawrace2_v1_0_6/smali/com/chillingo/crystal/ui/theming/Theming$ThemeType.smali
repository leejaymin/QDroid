.class final enum Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/ui/theming/Theming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ThemeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;

.field public static final enum RESOURCE:Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;

.field public static final enum UNDEFINED:Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;

.field public static final enum URL:Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;->UNDEFINED:Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;

    new-instance v0, Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;

    const-string v1, "RESOURCE"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;->RESOURCE:Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;

    new-instance v0, Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;

    const-string v1, "URL"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;->URL:Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;

    sget-object v1, Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;->UNDEFINED:Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;->RESOURCE:Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;->URL:Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;->$VALUES:[Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;->$VALUES:[Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;

    return-object v0
.end method
