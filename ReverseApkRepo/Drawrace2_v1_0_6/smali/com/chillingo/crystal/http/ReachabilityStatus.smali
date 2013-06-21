.class public final enum Lcom/chillingo/crystal/http/ReachabilityStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/http/ReachabilityStatus$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/http/ReachabilityStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/http/ReachabilityStatus;

.field public static final enum Mobile:Lcom/chillingo/crystal/http/ReachabilityStatus;

.field public static final enum NoConnection:Lcom/chillingo/crystal/http/ReachabilityStatus;

.field public static final enum Wifi:Lcom/chillingo/crystal/http/ReachabilityStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/chillingo/crystal/http/ReachabilityStatus;

    const-string v1, "NoConnection"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/http/ReachabilityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/http/ReachabilityStatus;->NoConnection:Lcom/chillingo/crystal/http/ReachabilityStatus;

    new-instance v0, Lcom/chillingo/crystal/http/ReachabilityStatus;

    const-string v1, "Wifi"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/crystal/http/ReachabilityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/http/ReachabilityStatus;->Wifi:Lcom/chillingo/crystal/http/ReachabilityStatus;

    new-instance v0, Lcom/chillingo/crystal/http/ReachabilityStatus;

    const-string v1, "Mobile"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/crystal/http/ReachabilityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/http/ReachabilityStatus;->Mobile:Lcom/chillingo/crystal/http/ReachabilityStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/chillingo/crystal/http/ReachabilityStatus;

    sget-object v1, Lcom/chillingo/crystal/http/ReachabilityStatus;->NoConnection:Lcom/chillingo/crystal/http/ReachabilityStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/crystal/http/ReachabilityStatus;->Wifi:Lcom/chillingo/crystal/http/ReachabilityStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/crystal/http/ReachabilityStatus;->Mobile:Lcom/chillingo/crystal/http/ReachabilityStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/chillingo/crystal/http/ReachabilityStatus;->$VALUES:[Lcom/chillingo/crystal/http/ReachabilityStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/http/ReachabilityStatus;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/http/ReachabilityStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/http/ReachabilityStatus;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/http/ReachabilityStatus;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/http/ReachabilityStatus;->$VALUES:[Lcom/chillingo/crystal/http/ReachabilityStatus;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/http/ReachabilityStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/http/ReachabilityStatus;

    return-object v0
.end method


# virtual methods
.method public connectionType()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/chillingo/crystal/http/ReachabilityStatus$1;->$SwitchMap$com$chillingo$crystal$http$ReachabilityStatus:[I

    invoke-virtual {p0}, Lcom/chillingo/crystal/http/ReachabilityStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "none"

    goto :goto_0

    :pswitch_1
    const-string v0, "wifi"

    goto :goto_0

    :pswitch_2
    const-string v0, "cell"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
