.class public abstract Lcom/scoreloop/client/android/core/model/BaseEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Entity;
.implements Lcom/scoreloop/client/android/core/util/JSONSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/model/BaseEntity$a;
    }
.end annotation


# instance fields
.field protected b:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/model/BaseEntity;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/BaseEntity;->b:Ljava/lang/String;

    .line 42
    return-void
.end method

.method protected static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    check-cast p0, Ljava/util/List;

    .line 47
    new-instance v1, Lcom/scoreloop/client/android/core/model/BaseEntity$a;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, p1, v0}, Lcom/scoreloop/client/android/core/model/BaseEntity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void

    .line 47
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    const-string v0, "id"

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/BaseEntity;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/scoreloop/client/android/core/model/BaseEntity;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    .line 137
    const-string v1, "id"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v0, p1, v1, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/model/BaseEntity;->b(Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "identifier must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/BaseEntity;->b:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b_()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/BaseEntity;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/BaseEntity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    if-ne p0, p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 63
    goto :goto_0

    .line 65
    :cond_3
    check-cast p1, Lcom/scoreloop/client/android/core/model/BaseEntity;

    .line 66
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/BaseEntity;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 67
    iget-object v2, p1, Lcom/scoreloop/client/android/core/model/BaseEntity;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 68
    goto :goto_0

    .line 70
    :cond_4
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/BaseEntity;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/scoreloop/client/android/core/model/BaseEntity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 71
    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/BaseEntity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/BaseEntity;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 90
    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/BaseEntity;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v0, " ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/core/model/BaseEntity;->a(Ljava/lang/Object;)V

    .line 121
    const/4 v0, 0x1

    .line 122
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/BaseEntity$a;

    .line 123
    if-nez v1, :cond_0

    .line 124
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_0
    iget-object v1, v0, Lcom/scoreloop/client/android/core/model/BaseEntity$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/scoreloop/client/android/core/model/BaseEntity$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 129
    :cond_1
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
