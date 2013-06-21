.class final Lcom/scoreloop/client/android/core/controller/AchievementController$a;
.super Lcom/scoreloop/client/android/core/server/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/AchievementController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/scoreloop/client/android/core/model/Achievement;

.field private final b:Lcom/scoreloop/client/android/core/model/Game;

.field private final c:Lcom/scoreloop/client/android/core/model/User;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/Achievement;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/server/Request;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;)V

    .line 52
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/AchievementController$a;->c:Lcom/scoreloop/client/android/core/model/User;

    .line 53
    iput-object p3, p0, Lcom/scoreloop/client/android/core/controller/AchievementController$a;->b:Lcom/scoreloop/client/android/core/model/Game;

    .line 54
    iput-object p4, p0, Lcom/scoreloop/client/android/core/controller/AchievementController$a;->a:Lcom/scoreloop/client/android/core/model/Achievement;

    .line 55
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    const-string v0, "/service/games/%s/achievements"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/AchievementController$a;->b:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/AchievementController$a;->a:Lcom/scoreloop/client/android/core/model/Achievement;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/AchievementController$a;->c:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/model/Achievement;->a(Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/scoreloop/client/android/core/model/Achievement;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/AchievementController$a;->a:Lcom/scoreloop/client/android/core/model/Achievement;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/scoreloop/client/android/core/model/Achievement;->a(Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid achievement data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->POST:Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method
