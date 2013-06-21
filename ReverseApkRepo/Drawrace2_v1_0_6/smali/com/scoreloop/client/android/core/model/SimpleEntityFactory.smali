.class public Lcom/scoreloop/client/android/core/model/SimpleEntityFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/EntityFactory;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/scoreloop/client/android/core/model/Entity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/SimpleEntityFactory;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/scoreloop/client/android/core/model/Entity;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "entity must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    invoke-interface {p1}, Lcom/scoreloop/client/android/core/model/Entity;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/SimpleEntityFactory;->a:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_1
    return-void
.end method

.method public createEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Entity;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 15
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argumentsmust not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/SimpleEntityFactory;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Entity;

    .line 21
    if-eqz v0, :cond_2

    .line 33
    :goto_0
    return-object v0

    .line 26
    :cond_2
    sget-object v0, Lcom/scoreloop/client/android/core/model/User;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    new-instance v0, Lcom/scoreloop/client/android/core/model/User;

    invoke-direct {v0, p2}, Lcom/scoreloop/client/android/core/model/User;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_3
    sget-object v0, Lcom/scoreloop/client/android/core/model/Game;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    new-instance v0, Lcom/scoreloop/client/android/core/model/Game;

    invoke-direct {v0, p2}, Lcom/scoreloop/client/android/core/model/Game;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_4
    sget-object v0, Lcom/scoreloop/client/android/core/model/GameItem;->ENTITY_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 31
    new-instance v0, Lcom/scoreloop/client/android/core/model/GameItem;

    invoke-direct {v0, p2}, Lcom/scoreloop/client/android/core/model/GameItem;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_5
    sget-object v0, Lcom/scoreloop/client/android/core/model/Payment;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33
    new-instance v0, Lcom/scoreloop/client/android/core/model/Payment;

    invoke-direct {v0, p2}, Lcom/scoreloop/client/android/core/model/Payment;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported entity named: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
