.class Lcom/scoreloop/client/android/core/controller/UserController$f;
.super Lcom/scoreloop/client/android/core/controller/UserController$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/UserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# static fields
.field public static b:Ljava/lang/Object;


# instance fields
.field protected c:Lcom/scoreloop/client/android/core/model/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 251
    const-class v0, Lcom/scoreloop/client/android/core/controller/UserController$f;

    sput-object v0, Lcom/scoreloop/client/android/core/controller/UserController$f;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/User;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-direct {p0, p1, p2, p3}, Lcom/scoreloop/client/android/core/controller/UserController$g;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;)V

    .line 257
    iput-object p4, p0, Lcom/scoreloop/client/android/core/controller/UserController$f;->c:Lcom/scoreloop/client/android/core/model/User;

    .line 258
    sget-object v0, Lcom/scoreloop/client/android/core/controller/UserController$f;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/UserController$f;->a(Ljava/lang/Object;)V

    .line 259
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 263
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/UserController$f;->e:Lcom/scoreloop/client/android/core/model/Game;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/UserController$f;->e:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    const-string v0, "/service/games/%s/users/%s/detail"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/UserController$f;->e:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/UserController$f;->f:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/service/users/%s/detail"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/UserController$f;->f:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 273
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/UserController$f;->c:Lcom/scoreloop/client/android/core/model/User;

    if-eqz v1, :cond_0

    .line 277
    const-string v1, "reference_user_id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/UserController$f;->c:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_0
    return-object v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid user data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
