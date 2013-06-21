.class Lcom/scoreloop/client/android/core/controller/UserController$e;
.super Lcom/scoreloop/client/android/core/controller/UserController$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/UserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# static fields
.field public static a:Ljava/lang/Object;


# instance fields
.field private final b:Lcom/scoreloop/client/android/core/model/Game;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    const-class v0, Lcom/scoreloop/client/android/core/controller/UserController$e;

    sput-object v0, Lcom/scoreloop/client/android/core/controller/UserController$e;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-direct {p0, p1, p3, p2}, Lcom/scoreloop/client/android/core/controller/UserController$g;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;)V

    .line 218
    iput-object p3, p0, Lcom/scoreloop/client/android/core/controller/UserController$e;->b:Lcom/scoreloop/client/android/core/model/Game;

    .line 219
    sget-object v0, Lcom/scoreloop/client/android/core/controller/UserController$e;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/UserController$e;->a(Ljava/lang/Object;)V

    .line 220
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 224
    const-string v0, "/service/games/%s/users/%s/context"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/UserController$e;->b:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/UserController$e;->f:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 230
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/UserController$e;->f:Lcom/scoreloop/client/android/core/model/User;

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "context"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/UserController$e;->f:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getContext()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/scoreloop/client/android/core/util/JSONUtils;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v1, "version"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/UserController$e;->f:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_0
    return-object v0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid user data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->POST:Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method
