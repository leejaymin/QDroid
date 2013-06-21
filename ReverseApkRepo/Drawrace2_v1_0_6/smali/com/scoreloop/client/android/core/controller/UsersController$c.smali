.class final Lcom/scoreloop/client/android/core/controller/UsersController$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/UsersController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/scoreloop/client/android/core/controller/SearchSpec;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/SearchSpec;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/UsersController$c;->a:Ljava/lang/String;

    .line 559
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/UsersController$c;->b:Lcom/scoreloop/client/android/core/controller/SearchSpec;

    .line 560
    return-void
.end method


# virtual methods
.method final a()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 563
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 565
    :try_start_0
    const-string v1, "name"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/UsersController$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/UsersController$c;->b:Lcom/scoreloop/client/android/core/controller/SearchSpec;

    if-eqz v1, :cond_0

    .line 567
    const-string v1, "definition"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/UsersController$c;->b:Lcom/scoreloop/client/android/core/controller/SearchSpec;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/controller/SearchSpec;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :cond_0
    return-object v0

    .line 570
    :catch_0
    move-exception v0

    .line 571
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid search spec data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method final a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 576
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/UsersController$c;->b:Lcom/scoreloop/client/android/core/controller/SearchSpec;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/UsersController$c;->b:Lcom/scoreloop/client/android/core/controller/SearchSpec;

    new-instance v1, Lcom/scoreloop/client/android/core/controller/c;

    const-string v2, "reference_user_id"

    sget-object v3, Lcom/scoreloop/client/android/core/controller/d;->EXACT:Lcom/scoreloop/client/android/core/controller/d;

    invoke-direct {v1, v2, v3, p1}, Lcom/scoreloop/client/android/core/controller/c;-><init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/SearchSpec;->a(Lcom/scoreloop/client/android/core/controller/c;)V

    .line 579
    :cond_0
    return-void
.end method
