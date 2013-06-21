.class public Lorg/apache/james/mime4j/util/StringArrayMap;
.super Ljava/lang/Object;
.source "StringArrayMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x50f329210bb1d21bL


# instance fields
.field private final map:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap;->map:Ljava/util/Map;

    return-void
.end method

.method public static asMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .parameter "pMap"

    .prologue
    .line 143
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 145
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/james/mime4j/util/StringArrayMap;->asStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, value:[Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 148
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v2           #value:[Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    return-object v3
.end method

.method public static asString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "pValue"

    .prologue
    const/4 v1, 0x0

    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 59
    .end local p0
    :goto_0
    return-object v0

    .line 52
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 53
    check-cast p0, Ljava/lang/String;

    .end local p0
    move-object v0, p0

    goto :goto_0

    .line 55
    .restart local p0
    :cond_1
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 56
    check-cast p0, [Ljava/lang/String;

    .end local p0
    check-cast p0, [Ljava/lang/String;

    aget-object v0, p0, v1

    goto :goto_0

    .line 58
    .restart local p0
    :cond_2
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 59
    check-cast p0, Ljava/util/List;

    .end local p0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    .line 61
    .restart local p0
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asStringArray(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 5
    .parameter "pValue"

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v2, 0x0

    .line 84
    .end local p0
    :goto_0
    return-object v2

    .line 76
    .restart local p0
    :cond_0
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 77
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    check-cast p0, Ljava/lang/String;

    .end local p0
    aput-object p0, v2, v3

    goto :goto_0

    .line 79
    .restart local p0
    :cond_1
    instance-of v2, p0, [Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 80
    check-cast p0, [Ljava/lang/String;

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v2, p0

    goto :goto_0

    .line 82
    .restart local p0
    :cond_2
    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 83
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 84
    .local v1, l:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    move-object v2, p0

    goto :goto_0

    .line 86
    .end local v1           #l:Ljava/util/List;
    .restart local p0
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameter class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static asStringEnum(Ljava/lang/Object;)Ljava/util/Enumeration;
    .locals 5
    .parameter "pValue"

    .prologue
    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 v2, 0x0

    .line 133
    .end local p0
    :goto_0
    return-object v2

    .line 101
    .restart local p0
    :cond_0
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 102
    new-instance v2, Lorg/apache/james/mime4j/util/StringArrayMap$1;

    invoke-direct {v2, p0}, Lorg/apache/james/mime4j/util/StringArrayMap$1;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    :cond_1
    instance-of v2, p0, [Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 118
    check-cast p0, [Ljava/lang/String;

    .end local p0
    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 119
    .local v1, values:[Ljava/lang/String;
    new-instance v2, Lorg/apache/james/mime4j/util/StringArrayMap$2;

    invoke-direct {v2, v1}, Lorg/apache/james/mime4j/util/StringArrayMap$2;-><init>([Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v1           #values:[Ljava/lang/String;
    .restart local p0
    :cond_2
    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 133
    check-cast p0, Ljava/util/List;

    .end local p0
    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v2

    goto :goto_0

    .line 135
    .restart local p0
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameter class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected addMapValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "pMap"
    .parameter "pName"
    .parameter "pValue"

    .prologue
    .line 155
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 156
    .local v4, o:Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 157
    move-object v4, p3

    .line 176
    .end local v4           #o:Ljava/lang/Object;
    :goto_0
    invoke-interface {p1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-void

    .line 158
    .restart local v4       #o:Ljava/lang/Object;
    :cond_0
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v3, list:Ljava/util/List;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    move-object v4, v3

    .line 163
    .local v4, o:Ljava/util/List;
    goto :goto_0

    .end local v3           #list:Ljava/util/List;
    .local v4, o:Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_2

    .line 164
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_2
    instance-of v5, v4, [Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .restart local v3       #list:Ljava/util/List;
    check-cast v4, [Ljava/lang/String;

    .end local v4           #o:Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 168
    .local v1, arr:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 169
    aget-object v5, v1, v2

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 171
    :cond_3
    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    move-object v4, v3

    .line 173
    .local v4, o:Ljava/util/List;
    goto :goto_0

    .line 174
    .end local v1           #arr:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .local v4, o:Ljava/lang/Object;
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid object type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public addValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pName"
    .parameter "pValue"

    .prologue
    .line 228
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap;->map:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/util/StringArrayMap;->convertName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/james/mime4j/util/StringArrayMap;->addMapValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method protected convertName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "pName"

    .prologue
    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap;->map:Ljava/util/Map;

    invoke-static {v0}, Lorg/apache/james/mime4j/util/StringArrayMap;->asMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getNameArray()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    iget-object v1, p0, Lorg/apache/james/mime4j/util/StringArrayMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 237
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pName"

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap;->map:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/util/StringArrayMap;->convertName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/StringArrayMap;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueEnum(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .parameter "pName"

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap;->map:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/util/StringArrayMap;->convertName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/StringArrayMap;->asStringEnum(Ljava/lang/Object;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "pName"

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap;->map:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/util/StringArrayMap;->convertName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/StringArrayMap;->asStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
