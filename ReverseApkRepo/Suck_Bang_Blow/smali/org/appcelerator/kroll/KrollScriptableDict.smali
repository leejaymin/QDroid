.class public Lorg/appcelerator/kroll/KrollScriptableDict;
.super Lorg/appcelerator/kroll/KrollDict;
.source "KrollScriptableDict.java"

# interfaces
.implements Lorg/appcelerator/kroll/KrollConvertable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/kroll/KrollScriptableDict$Entry;
    }
.end annotation


# instance fields
.field protected scriptable:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0
    .parameter "scriptable"

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    .line 24
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    .line 61
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v4}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 62
    .local v2, key:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_0

    .line 63
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    check-cast v2, Ljava/lang/Number;

    .end local v2           #key:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    .line 61
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .restart local v2       #key:Ljava/lang/Object;
    :cond_0
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    goto :goto_1

    .line 68
    .end local v2           #key:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 32
    if-nez p1, :cond_0

    move v1, v4

    .line 43
    .end local p1
    :goto_0
    return v1

    .line 33
    .restart local p1
    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 34
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v1, v2, v3}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v1

    goto :goto_0

    .line 36
    .restart local p1
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v1, v2, v3}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 38
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 39
    .local v0, i:Ljava/lang/Integer;
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v1, v2, v3}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 40
    .end local v0           #i:Ljava/lang/Integer;
    :catch_0
    move-exception v1

    move v1, v4

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 7
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    .line 48
    iget-object v5, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v5}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 49
    .local v2, key:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/appcelerator/kroll/KrollScriptableDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 50
    .local v4, v:Ljava/lang/Object;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 56
    .end local v2           #key:Ljava/lang/Object;
    .end local v4           #v:Ljava/lang/Object;
    :goto_1
    return v5

    .line 52
    .restart local v2       #key:Ljava/lang/Object;
    .restart local v4       #v:Ljava/lang/Object;
    :cond_0
    if-nez v4, :cond_1

    if-nez p1, :cond_1

    move v5, v6

    .line 53
    goto :goto_1

    .line 48
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v2           #key:Ljava/lang/Object;
    .end local v4           #v:Ljava/lang/Object;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 102
    .local v1, entries:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v5, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v5}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 103
    .local v3, key:Ljava/lang/Object;
    new-instance v5, Lorg/appcelerator/kroll/KrollScriptableDict$Entry;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3}, Lorg/appcelerator/kroll/KrollScriptableDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lorg/appcelerator/kroll/KrollScriptableDict$Entry;-><init>(Lorg/appcelerator/kroll/KrollScriptableDict;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v3           #key:Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "key"

    .prologue
    const/4 v7, 0x0

    .line 110
    if-nez p1, :cond_0

    move-object v4, v7

    .line 127
    :goto_0
    return-object v4

    .line 113
    :cond_0
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v4, v5, v6}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    .line 114
    .local v3, value:Ljava/lang/Object;
    sget-object v4, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    .line 116
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 117
    .local v0, i:Ljava/lang/Integer;
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v4, v5, v6}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 119
    .end local v0           #i:Ljava/lang/Integer;
    :goto_1
    sget-object v4, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    move-object v4, v7

    .line 120
    goto :goto_0

    .line 124
    :cond_1
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    iget-object v5, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v7, v7}, Lorg/appcelerator/kroll/KrollInvocation;->createPropertyGetInvocation(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProperty;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v1

    .line 125
    .local v1, invocation:Lorg/appcelerator/kroll/KrollInvocation;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v4, v1, v3, v5}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 126
    .local v2, result:Ljava/lang/Object;
    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollInvocation;->recycle()V

    move-object v4, v2

    .line 127
    goto :goto_0

    .line 118
    .end local v1           #invocation:Lorg/appcelerator/kroll/KrollInvocation;
    .end local v2           #result:Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public getJavascriptValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollScriptableDict;->getScriptable()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0
.end method

.method public getNativeValue()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 183
    return-object p0
.end method

.method public getScriptable()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 138
    .local v3, keys:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    iget-object v5, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v5}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 139
    .local v2, key:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v2           #key:Ljava/lang/Object;
    :cond_0
    return-object v3
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollScriptableDict;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 146
    if-nez p1, :cond_0

    move-object v1, v3

    .line 152
    :goto_0
    return-object v1

    .line 148
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v2, p1, v3, v3}, Lorg/appcelerator/kroll/KrollInvocation;->createPropertySetInvocation(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProperty;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v0

    .line 149
    .local v0, invocation:Lorg/appcelerator/kroll/KrollInvocation;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 150
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v1, v2, v3, p2}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollInvocation;->recycle()V

    move-object v1, p2

    .line 152
    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 157
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 161
    :goto_0
    return-object v1

    .line 159
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/appcelerator/kroll/KrollScriptableDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, value:Ljava/lang/Object;
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    move-object v1, v0

    .line 161
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v5, p0, Lorg/appcelerator/kroll/KrollScriptableDict;->scriptable:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v5}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 173
    .local v2, key:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/appcelerator/kroll/KrollScriptableDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v2           #key:Ljava/lang/Object;
    :cond_0
    return-object v4
.end method
