.class Lcom/scoreloop/client/android/core/controller/UserController$g;
.super Lcom/scoreloop/client/android/core/server/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/UserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# static fields
.field public static d:Ljava/lang/Object;


# instance fields
.field protected e:Lcom/scoreloop/client/android/core/model/Game;

.field protected f:Lcom/scoreloop/client/android/core/model/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    const-class v0, Lcom/scoreloop/client/android/core/controller/UserController$g;

    sput-object v0, Lcom/scoreloop/client/android/core/controller/UserController$g;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/server/Request;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;)V

    .line 295
    iput-object p3, p0, Lcom/scoreloop/client/android/core/controller/UserController$g;->f:Lcom/scoreloop/client/android/core/model/User;

    .line 296
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/UserController$g;->e:Lcom/scoreloop/client/android/core/model/Game;

    .line 297
    sget-object v0, Lcom/scoreloop/client/android/core/controller/UserController$g;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/UserController$g;->a(Ljava/lang/Object;)V

    .line 298
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 302
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/UserController$g;->e:Lcom/scoreloop/client/android/core/model/Game;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/UserController$g;->e:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    const-string v0, "/service/games/%s/users/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/UserController$g;->e:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/UserController$g;->f:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/service/users/%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/UserController$g;->f:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 316
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->GET:Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method
