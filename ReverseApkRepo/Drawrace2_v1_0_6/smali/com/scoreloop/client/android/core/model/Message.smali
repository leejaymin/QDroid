.class public Lcom/scoreloop/client/android/core/model/Message;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/util/JSONSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/model/Message$Type;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/MessageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/scoreloop/client/android/core/model/MessageTargetInterface;

.field private c:Ljava/lang/String;

.field private d:Lcom/scoreloop/client/android/core/model/Message$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Message;->a:Ljava/util/List;

    .line 40
    sget-object v0, Lcom/scoreloop/client/android/core/model/Message$Type;->TARGET_INFERRED:Lcom/scoreloop/client/android/core/model/Message$Type;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Message;->d:Lcom/scoreloop/client/android/core/model/Message$Type;

    return-void
.end method

.method private f()Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 64
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 65
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Message;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/MessageReceiver;

    .line 67
    :try_start_0
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/MessageReceiver;->b_()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 72
    :cond_0
    return-object v1
.end method

.method private g()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Message;->b:Lcom/scoreloop/client/android/core/model/MessageTargetInterface;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "target is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 87
    :try_start_0
    const-string v1, "id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Message;->b:Lcom/scoreloop/client/android/core/model/MessageTargetInterface;

    invoke-interface {v2}, Lcom/scoreloop/client/android/core/model/MessageTargetInterface;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v1, "target_type"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Message;->b:Lcom/scoreloop/client/android/core/model/MessageTargetInterface;

    invoke-interface {v2}, Lcom/scoreloop/client/android/core/model/MessageTargetInterface;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Lcom/scoreloop/client/android/core/model/Message$Type;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Message;->d:Lcom/scoreloop/client/android/core/model/Message$Type;

    .line 121
    return-void
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/MessageReceiver;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Message;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Message;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_0
    return-void
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/MessageTargetInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Message;->b:Lcom/scoreloop/client/android/core/model/MessageTargetInterface;

    .line 113
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Message;->c:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 145
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/MessageReceiver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Message;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b_()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 127
    const-string v1, "target"

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/Message;->g()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v1, "receivers"

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/Message;->f()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Message;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 132
    const-string v1, "text"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Message;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Message;->d:Lcom/scoreloop/client/android/core/model/Message$Type;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Message$Type;->getTypeString()Ljava/lang/String;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_1

    .line 137
    const-string v2, "message_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    :cond_1
    return-object v0
.end method

.method public final c()Lcom/scoreloop/client/android/core/model/MessageTargetInterface;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Message;->b:Lcom/scoreloop/client/android/core/model/MessageTargetInterface;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Message;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/scoreloop/client/android/core/model/Message$Type;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Message;->d:Lcom/scoreloop/client/android/core/model/Message$Type;

    return-object v0
.end method
