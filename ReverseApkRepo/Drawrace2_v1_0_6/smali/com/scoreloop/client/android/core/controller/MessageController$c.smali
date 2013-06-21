.class final Lcom/scoreloop/client/android/core/controller/MessageController$c;
.super Lcom/scoreloop/client/android/core/server/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/MessageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/scoreloop/client/android/core/model/Message;

.field private final b:Lcom/scoreloop/client/android/core/model/Game;

.field private final c:Lcom/scoreloop/client/android/core/model/User;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Message;Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0, p2}, Lcom/scoreloop/client/android/core/server/Request;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;)V

    .line 119
    new-instance v1, Lcom/scoreloop/client/android/core/model/Message;

    invoke-direct {v1}, Lcom/scoreloop/client/android/core/model/Message;-><init>()V

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Message;->c()Lcom/scoreloop/client/android/core/model/MessageTargetInterface;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/Message;->a(Lcom/scoreloop/client/android/core/model/MessageTargetInterface;)V

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Message;->e()Lcom/scoreloop/client/android/core/model/Message$Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/Message;->a(Lcom/scoreloop/client/android/core/model/Message$Type;)V

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Message;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/Message;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Message;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/MessageReceiver;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/Message;->a(Lcom/scoreloop/client/android/core/model/MessageReceiver;)V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/scoreloop/client/android/core/controller/MessageController$c;->a:Lcom/scoreloop/client/android/core/model/Message;

    .line 120
    iput-object p3, p0, Lcom/scoreloop/client/android/core/controller/MessageController$c;->b:Lcom/scoreloop/client/android/core/model/Game;

    .line 121
    iput-object p4, p0, Lcom/scoreloop/client/android/core/controller/MessageController$c;->c:Lcom/scoreloop/client/android/core/model/User;

    .line 122
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/MessageController$c;->b:Lcom/scoreloop/client/android/core/model/Game;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/MessageController$c;->b:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    if-eqz v0, :cond_1

    .line 128
    const-string v1, "/service/games/%s/users/%s/message"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/MessageController$c;->c:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_1
    return-object v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_1
    const-string v0, "/service/users/%s/message"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/MessageController$c;->c:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 137
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 138
    const-string v1, "message"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/MessageController$c;->a:Lcom/scoreloop/client/android/core/model/Message;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Message;->b_()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->POST:Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method
