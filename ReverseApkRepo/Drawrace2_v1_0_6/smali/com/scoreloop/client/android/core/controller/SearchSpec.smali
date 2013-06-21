.class public Lcom/scoreloop/client/android/core/controller/SearchSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/controller/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/scoreloop/client/android/core/controller/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/SearchSpec;-><init>(Lcom/scoreloop/client/android/core/controller/e;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/e;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/SearchSpec;->a:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/SearchSpec;->b:Lcom/scoreloop/client/android/core/controller/e;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SearchSpec;->b:Lcom/scoreloop/client/android/core/controller/e;

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "order_by"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/SearchSpec;->b:Lcom/scoreloop/client/android/core/controller/e;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/controller/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v0, "order_as"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/SearchSpec;->b:Lcom/scoreloop/client/android/core/controller/e;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/controller/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SearchSpec;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SearchSpec;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 45
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 47
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SearchSpec;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/c;

    .line 48
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/c;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 50
    :cond_1
    const-string v0, "conditions"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 54
    const-string v2, "search"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    return-object v0
.end method

.method public final a(Lcom/scoreloop/client/android/core/controller/c;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SearchSpec;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method
