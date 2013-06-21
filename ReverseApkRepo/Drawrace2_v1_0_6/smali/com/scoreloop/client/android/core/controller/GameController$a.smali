.class final Lcom/scoreloop/client/android/core/controller/GameController$a;
.super Lcom/scoreloop/client/android/core/server/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/GameController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/scoreloop/client/android/core/model/Entity;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Entity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/server/Request;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;)V

    .line 29
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/GameController$a;->a:Lcom/scoreloop/client/android/core/model/Entity;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    const-string v0, "/service/games/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/GameController$a;->a:Lcom/scoreloop/client/android/core/model/Entity;

    invoke-interface {v3}, Lcom/scoreloop/client/android/core/model/Entity;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->GET:Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method
