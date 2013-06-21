.class Lorg/mozilla/javascript/ScriptableObject$EntrySet$1$1;
.super Ljava/lang/Object;
.source "ScriptableObject.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;

.field final synthetic val$ekey:Ljava/lang/Object;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3052
    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1$1;->this$2:Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;

    iput-object p2, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1$1;->val$ekey:Ljava/lang/Object;

    iput-object p3, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v4, 0x0

    .line 3066
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_0

    move v2, v4

    .line 3070
    :goto_0
    return v2

    .line 3069
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 3070
    .local v1, e:Ljava/util/Map$Entry;
    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1$1;->val$ekey:Ljava/lang/Object;

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1$1;->val$value:Ljava/lang/Object;

    if-nez v2, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1$1;->val$ekey:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1$1;->val$value:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3054
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1$1;->val$ekey:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3058
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1$1;->val$value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3075
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1$1;->val$ekey:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1$1;->val$value:Ljava/lang/Object;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1$1;->val$ekey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1$1;->val$value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 3062
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1$1;->val$ekey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1$1;->val$value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
