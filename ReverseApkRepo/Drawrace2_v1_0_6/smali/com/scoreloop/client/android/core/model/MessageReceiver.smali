.class public Lcom/scoreloop/client/android/core/model/MessageReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/util/JSONSerializable;


# instance fields
.field private final a:Lcom/scoreloop/client/android/core/model/MessageReceiverInterface;

.field private final b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/model/MessageReceiverInterface;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/MessageReceiver;->a:Lcom/scoreloop/client/android/core/model/MessageReceiverInterface;

    .line 21
    iput-object p2, p0, Lcom/scoreloop/client/android/core/model/MessageReceiver;->b:[Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 64
    return-void
.end method

.method public final b()Lcom/scoreloop/client/android/core/model/MessageReceiverInterface;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/MessageReceiver;->a:Lcom/scoreloop/client/android/core/model/MessageReceiverInterface;

    return-object v0
.end method

.method public final b_()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    const-string v1, "receiver_type"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/MessageReceiver;->a:Lcom/scoreloop/client/android/core/model/MessageReceiverInterface;

    invoke-interface {v2}, Lcom/scoreloop/client/android/core/model/MessageReceiverInterface;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/MessageReceiver;->b:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 57
    const-string v1, "users"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/MessageReceiver;->b:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    .line 30
    :cond_0
    instance-of v0, p1, Lcom/scoreloop/client/android/core/model/MessageReceiver;

    if-nez v0, :cond_1

    .line 31
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 34
    :cond_1
    check-cast p1, Lcom/scoreloop/client/android/core/model/MessageReceiver;

    .line 36
    if-ne p1, p0, :cond_2

    .line 37
    const/4 v0, 0x1

    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/MessageReceiver;->a:Lcom/scoreloop/client/android/core/model/MessageReceiverInterface;

    iget-object v1, p1, Lcom/scoreloop/client/android/core/model/MessageReceiver;->a:Lcom/scoreloop/client/android/core/model/MessageReceiverInterface;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/MessageReceiver;->a:Lcom/scoreloop/client/android/core/model/MessageReceiverInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
