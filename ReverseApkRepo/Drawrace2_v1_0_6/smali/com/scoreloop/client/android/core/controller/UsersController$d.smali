.class Lcom/scoreloop/client/android/core/controller/UsersController$d;
.super Lcom/scoreloop/client/android/core/server/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/UsersController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field protected final a:I

.field protected b:Lcom/scoreloop/client/android/core/model/User;

.field protected c:Lcom/scoreloop/client/android/core/controller/UsersController$c;

.field private d:Lcom/scoreloop/client/android/core/model/Game;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;ZILjava/lang/String;Lcom/scoreloop/client/android/core/controller/SearchSpec;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/server/Request;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;)V

    .line 606
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/UsersController$d;->d:Lcom/scoreloop/client/android/core/model/Game;

    .line 607
    iput-boolean p3, p0, Lcom/scoreloop/client/android/core/controller/UsersController$d;->e:Z

    .line 608
    iput p4, p0, Lcom/scoreloop/client/android/core/controller/UsersController$d;->a:I

    .line 609
    new-instance v0, Lcom/scoreloop/client/android/core/controller/UsersController$c;

    invoke-direct {v0, p5, p6}, Lcom/scoreloop/client/android/core/controller/UsersController$c;-><init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/SearchSpec;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/UsersController$d;->c:Lcom/scoreloop/client/android/core/controller/UsersController$c;

    .line 610
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/UsersController$d;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "/service/users"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/service/games/%s/users"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/UsersController$d;->d:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/UsersController$d;->b:Lcom/scoreloop/client/android/core/model/User;

    .line 614
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 623
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 625
    :try_start_0
    const-string v1, "limit"

    iget v2, p0, Lcom/scoreloop/client/android/core/controller/UsersController$d;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 626
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/UsersController$d;->b:Lcom/scoreloop/client/android/core/model/User;

    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/UsersController$d;->c:Lcom/scoreloop/client/android/core/controller/UsersController$c;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/UsersController$d;->b:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/controller/UsersController$c;->a(Ljava/lang/String;)V

    .line 629
    :cond_0
    const-string v1, "search_list"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/UsersController$d;->c:Lcom/scoreloop/client/android/core/controller/UsersController$c;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/controller/UsersController$c;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    return-object v0

    .line 630
    :catch_0
    move-exception v0

    .line 631
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 638
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->GET:Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method
