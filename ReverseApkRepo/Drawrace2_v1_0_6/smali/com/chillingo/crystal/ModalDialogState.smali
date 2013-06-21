.class final enum Lcom/chillingo/crystal/ModalDialogState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/ModalDialogState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/ModalDialogState;

.field public static final enum FullScreenSplashDialog:Lcom/chillingo/crystal/ModalDialogState;

.field public static final enum Idle:Lcom/chillingo/crystal/ModalDialogState;

.field public static final enum IncomingChallenge:Lcom/chillingo/crystal/ModalDialogState;

.field public static final enum PostChallengeResults:Lcom/chillingo/crystal/ModalDialogState;

.field public static final enum PostChallengeResultsUnreachable:Lcom/chillingo/crystal/ModalDialogState;

.field public static final enum SplashDialog:Lcom/chillingo/crystal/ModalDialogState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/chillingo/crystal/ModalDialogState;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/crystal/ModalDialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ModalDialogState;->Idle:Lcom/chillingo/crystal/ModalDialogState;

    new-instance v0, Lcom/chillingo/crystal/ModalDialogState;

    const-string v1, "SplashDialog"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/crystal/ModalDialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ModalDialogState;->SplashDialog:Lcom/chillingo/crystal/ModalDialogState;

    new-instance v0, Lcom/chillingo/crystal/ModalDialogState;

    const-string v1, "FullScreenSplashDialog"

    invoke-direct {v0, v1, v5}, Lcom/chillingo/crystal/ModalDialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ModalDialogState;->FullScreenSplashDialog:Lcom/chillingo/crystal/ModalDialogState;

    new-instance v0, Lcom/chillingo/crystal/ModalDialogState;

    const-string v1, "PostChallengeResults"

    invoke-direct {v0, v1, v6}, Lcom/chillingo/crystal/ModalDialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ModalDialogState;->PostChallengeResults:Lcom/chillingo/crystal/ModalDialogState;

    new-instance v0, Lcom/chillingo/crystal/ModalDialogState;

    const-string v1, "PostChallengeResultsUnreachable"

    invoke-direct {v0, v1, v7}, Lcom/chillingo/crystal/ModalDialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ModalDialogState;->PostChallengeResultsUnreachable:Lcom/chillingo/crystal/ModalDialogState;

    new-instance v0, Lcom/chillingo/crystal/ModalDialogState;

    const-string v1, "IncomingChallenge"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/ModalDialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/ModalDialogState;->IncomingChallenge:Lcom/chillingo/crystal/ModalDialogState;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/chillingo/crystal/ModalDialogState;

    sget-object v1, Lcom/chillingo/crystal/ModalDialogState;->Idle:Lcom/chillingo/crystal/ModalDialogState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/crystal/ModalDialogState;->SplashDialog:Lcom/chillingo/crystal/ModalDialogState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chillingo/crystal/ModalDialogState;->FullScreenSplashDialog:Lcom/chillingo/crystal/ModalDialogState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chillingo/crystal/ModalDialogState;->PostChallengeResults:Lcom/chillingo/crystal/ModalDialogState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chillingo/crystal/ModalDialogState;->PostChallengeResultsUnreachable:Lcom/chillingo/crystal/ModalDialogState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/chillingo/crystal/ModalDialogState;->IncomingChallenge:Lcom/chillingo/crystal/ModalDialogState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chillingo/crystal/ModalDialogState;->$VALUES:[Lcom/chillingo/crystal/ModalDialogState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/ModalDialogState;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/ModalDialogState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ModalDialogState;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/ModalDialogState;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/ModalDialogState;->$VALUES:[Lcom/chillingo/crystal/ModalDialogState;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/ModalDialogState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/ModalDialogState;

    return-object v0
.end method
