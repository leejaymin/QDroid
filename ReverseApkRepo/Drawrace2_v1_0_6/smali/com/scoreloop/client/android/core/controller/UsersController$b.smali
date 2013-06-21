.class final Lcom/scoreloop/client/android/core/controller/UsersController$b;
.super Lcom/scoreloop/client/android/core/controller/UsersController$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/UsersController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;ZILcom/scoreloop/client/android/core/model/User;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 698
    const-string v5, "#recommended_buddies"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/scoreloop/client/android/core/controller/UsersController$d;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;ZILjava/lang/String;Lcom/scoreloop/client/android/core/controller/SearchSpec;)V

    .line 699
    invoke-virtual {p0, p5}, Lcom/scoreloop/client/android/core/controller/UsersController$b;->a(Lcom/scoreloop/client/android/core/model/User;)V

    .line 700
    return-void
.end method


# virtual methods
.method public final b()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 704
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 705
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 707
    :try_start_0
    const-string v2, "user_id"

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/UsersController$b;->b:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 708
    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 709
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/UsersController$b;->c:Lcom/scoreloop/client/android/core/controller/UsersController$c;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/UsersController$c;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 710
    const-string v2, "per_page"

    iget v3, p0, Lcom/scoreloop/client/android/core/controller/UsersController$b;->a:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 711
    const-string v2, "search_list"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    return-object v0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
