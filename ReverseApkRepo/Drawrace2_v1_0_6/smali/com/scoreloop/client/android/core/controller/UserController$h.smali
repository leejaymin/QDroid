.class Lcom/scoreloop/client/android/core/controller/UserController$h;
.super Lcom/scoreloop/client/android/core/controller/UserController$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/UserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# static fields
.field public static a:Ljava/lang/Object;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/scoreloop/client/android/core/model/ImageSource;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 322
    const-class v0, Lcom/scoreloop/client/android/core/controller/UserController$h;

    sput-object v0, Lcom/scoreloop/client/android/core/controller/UserController$h;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-direct {p0, p1, p2, p3}, Lcom/scoreloop/client/android/core/controller/UserController$g;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;)V

    .line 335
    invoke-virtual {p3}, Lcom/scoreloop/client/android/core/model/User;->getLogin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/UserController$h;->g:Ljava/lang/String;

    .line 336
    invoke-virtual {p3}, Lcom/scoreloop/client/android/core/model/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/UserController$h;->b:Ljava/lang/String;

    .line 337
    invoke-virtual {p3}, Lcom/scoreloop/client/android/core/model/User;->getImageSource()Lcom/scoreloop/client/android/core/model/ImageSource;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/UserController$h;->c:Lcom/scoreloop/client/android/core/model/ImageSource;

    .line 338
    sget-object v0, Lcom/scoreloop/client/android/core/controller/UserController$h;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/UserController$h;->a(Ljava/lang/Object;)V

    .line 339
    return-void
.end method


# virtual methods
.method public final b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 343
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/UserController$h;->f:Lcom/scoreloop/client/android/core/model/User;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/UserController$h;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/model/User;->setLogin(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/UserController$h;->f:Lcom/scoreloop/client/android/core/model/User;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/UserController$h;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/model/User;->setEmailAddress(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/UserController$h;->f:Lcom/scoreloop/client/android/core/model/User;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/UserController$h;->c:Lcom/scoreloop/client/android/core/model/ImageSource;

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/model/User;->setImageSource(Lcom/scoreloop/client/android/core/model/ImageSource;)V

    .line 349
    sget-object v1, Lcom/scoreloop/client/android/core/model/User;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/UserController$h;->f:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->b_()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    return-object v0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid user data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 358
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->PUT:Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method
