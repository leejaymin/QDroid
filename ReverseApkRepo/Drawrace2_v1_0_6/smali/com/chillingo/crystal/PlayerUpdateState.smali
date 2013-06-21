.class public final enum Lcom/chillingo/crystal/PlayerUpdateState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/PlayerUpdateState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/PlayerUpdateState;

.field public static final enum OutOfDate:Lcom/chillingo/crystal/PlayerUpdateState;

.field public static final enum Unavailable:Lcom/chillingo/crystal/PlayerUpdateState;

.field public static final enum Undefined:Lcom/chillingo/crystal/PlayerUpdateState;

.field public static final enum Updated:Lcom/chillingo/crystal/PlayerUpdateState;

.field public static final enum Updating:Lcom/chillingo/crystal/PlayerUpdateState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/chillingo/crystal/PlayerUpdateState;

    const-string v1, "Undefined"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/PlayerUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/PlayerUpdateState;->Undefined:Lcom/chillingo/crystal/PlayerUpdateState;

    new-instance v0, Lcom/chillingo/crystal/PlayerUpdateState;

    const-string v1, "Unavailable"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/crystal/PlayerUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/PlayerUpdateState;->Unavailable:Lcom/chillingo/crystal/PlayerUpdateState;

    new-instance v0, Lcom/chillingo/crystal/PlayerUpdateState;

    const-string v1, "Updating"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/crystal/PlayerUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/PlayerUpdateState;->Updating:Lcom/chillingo/crystal/PlayerUpdateState;

    new-instance v0, Lcom/chillingo/crystal/PlayerUpdateState;

    const-string v1, "Updated"

    invoke-direct {v0, v1, v5}, Lcom/chillingo/crystal/PlayerUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/PlayerUpdateState;->Updated:Lcom/chillingo/crystal/PlayerUpdateState;

    new-instance v0, Lcom/chillingo/crystal/PlayerUpdateState;

    const-string v1, "OutOfDate"

    invoke-direct {v0, v1, v6}, Lcom/chillingo/crystal/PlayerUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/PlayerUpdateState;->OutOfDate:Lcom/chillingo/crystal/PlayerUpdateState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/chillingo/crystal/PlayerUpdateState;

    sget-object v1, Lcom/chillingo/crystal/PlayerUpdateState;->Undefined:Lcom/chillingo/crystal/PlayerUpdateState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/crystal/PlayerUpdateState;->Unavailable:Lcom/chillingo/crystal/PlayerUpdateState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/crystal/PlayerUpdateState;->Updating:Lcom/chillingo/crystal/PlayerUpdateState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chillingo/crystal/PlayerUpdateState;->Updated:Lcom/chillingo/crystal/PlayerUpdateState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chillingo/crystal/PlayerUpdateState;->OutOfDate:Lcom/chillingo/crystal/PlayerUpdateState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/chillingo/crystal/PlayerUpdateState;->$VALUES:[Lcom/chillingo/crystal/PlayerUpdateState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/PlayerUpdateState;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/PlayerUpdateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/PlayerUpdateState;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/PlayerUpdateState;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/PlayerUpdateState;->$VALUES:[Lcom/chillingo/crystal/PlayerUpdateState;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/PlayerUpdateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/PlayerUpdateState;

    return-object v0
.end method
