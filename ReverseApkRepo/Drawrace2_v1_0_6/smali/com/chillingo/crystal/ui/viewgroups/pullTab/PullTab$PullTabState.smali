.class public final enum Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PullTabState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

.field public static final enum Bottom:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

.field public static final enum Middle:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

.field public static final enum Offscreen:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

.field public static final enum Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    const-string v1, "Offscreen"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Offscreen:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    const-string v1, "Bottom"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Bottom:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    const-string v1, "Middle"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Middle:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    const-string v1, "Top"

    invoke-direct {v0, v1, v5}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Offscreen:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Bottom:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Middle:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->$VALUES:[Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->$VALUES:[Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    return-object v0
.end method
