.class Lcom/scoreloop/client/android/core/controller/UsersController$a;
.super Lcom/scoreloop/client/android/core/server/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/UsersController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Ljava/lang/Object;


# instance fields
.field private final b:Lcom/scoreloop/client/android/core/model/User;

.field private final c:Lcom/scoreloop/client/android/core/model/Game;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 644
    const-class v0, Lcom/scoreloop/client/android/core/controller/UsersController$a;

    sput-object v0, Lcom/scoreloop/client/android/core/controller/UsersController$a;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 651
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/server/Request;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;)V

    .line 652
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/UsersController$a;->b:Lcom/scoreloop/client/android/core/model/User;

    .line 653
    iput-object p3, p0, Lcom/scoreloop/client/android/core/controller/UsersController$a;->c:Lcom/scoreloop/client/android/core/model/Game;

    .line 654
    sget-object v0, Lcom/scoreloop/client/android/core/controller/UsersController$a;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/UsersController$a;->a(Ljava/lang/Object;)V

    .line 655
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 659
    const-string v0, "/service/users/%s/games/%s/buddies"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/UsersController$a;->b:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/UsersController$a;->c:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 664
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 667
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 668
    new-instance v2, Lcom/scoreloop/client/android/core/controller/SearchSpec;

    new-instance v3, Lcom/scoreloop/client/android/core/controller/e;

    const-string v4, "login"

    sget-object v5, Lcom/scoreloop/client/android/core/controller/e$a;->ASCENDING:Lcom/scoreloop/client/android/core/controller/e$a;

    invoke-direct {v3, v4, v5}, Lcom/scoreloop/client/android/core/controller/e;-><init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/e$a;)V

    invoke-direct {v2, v3}, Lcom/scoreloop/client/android/core/controller/SearchSpec;-><init>(Lcom/scoreloop/client/android/core/controller/e;)V

    .line 670
    const-string v3, "name"

    const-string v4, "UserGameBuddiesSearch"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    const-string v3, "definition"

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/controller/SearchSpec;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 673
    const-string v2, "search_list"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    return-object v0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 683
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->GET:Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method
