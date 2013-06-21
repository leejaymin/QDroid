.class final Lcom/scoreloop/client/android/core/controller/ChallengeController$b;
.super Lcom/scoreloop/client/android/core/controller/ChallengeController$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/ChallengeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/Challenge;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/scoreloop/client/android/core/controller/ChallengeController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/Challenge;)V

    .line 139
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    const-string v0, "/service/games/%s/challenges/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/ChallengeController$b;->b:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/ChallengeController$b;->a:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Challenge;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->PUT:Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method
