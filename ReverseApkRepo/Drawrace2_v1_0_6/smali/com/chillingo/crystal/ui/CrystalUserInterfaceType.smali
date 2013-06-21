.class public final enum Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

.field public static final enum GlobalNavigationActivity:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

.field public static final enum None:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

.field public static final enum PadTab:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

.field public static final enum PullTab:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

.field public static final enum PullTabMultiTab:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->None:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    new-instance v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    const-string v1, "GlobalNavigationActivity"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->GlobalNavigationActivity:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    new-instance v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    const-string v1, "PullTab"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->PullTab:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    new-instance v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    const-string v1, "PullTabMultiTab"

    invoke-direct {v0, v1, v5}, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->PullTabMultiTab:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    new-instance v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    const-string v1, "PadTab"

    invoke-direct {v0, v1, v6}, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->PadTab:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    sget-object v1, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->None:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->GlobalNavigationActivity:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->PullTab:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->PullTabMultiTab:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->PadTab:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->$VALUES:[Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->$VALUES:[Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    return-object v0
.end method
