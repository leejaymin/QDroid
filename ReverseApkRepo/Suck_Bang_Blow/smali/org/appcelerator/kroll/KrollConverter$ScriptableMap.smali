.class public Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "KrollConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/kroll/KrollConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScriptableMap"
.end annotation


# instance fields
.field protected map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/appcelerator/kroll/KrollConverter;


# direct methods
.method public constructor <init>(Lorg/appcelerator/kroll/KrollConverter;Lorg/appcelerator/kroll/KrollInvocation;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter "invocation"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/appcelerator/kroll/KrollInvocation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;->this$0:Lorg/appcelerator/kroll/KrollConverter;

    .line 94
    invoke-virtual {p2}, Lorg/appcelerator/kroll/KrollInvocation;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-virtual {p2}, Lorg/appcelerator/kroll/KrollInvocation;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/ScriptableObject;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    .line 95
    iput-object p3, p0, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;->map:Ljava/util/Map;

    .line 96
    return-void
.end method


# virtual methods
.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter "start"

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 4
    .parameter "name"
    .parameter "start"

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-static {p2, p0, p1, v3, v3}, Lorg/appcelerator/kroll/KrollInvocation;->createPropertyGetInvocation(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProperty;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v0

    .line 101
    .local v0, invocation:Lorg/appcelerator/kroll/KrollInvocation;
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 102
    .local v2, value:Ljava/lang/Object;
    if-nez v2, :cond_1

    const-string v3, "valueOf"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "toString"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    :cond_0
    new-instance v2, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap$1;

    .end local v2           #value:Ljava/lang/Object;
    invoke-direct {v2, p0, p1}, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap$1;-><init>(Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;Ljava/lang/String;)V

    .line 112
    :cond_1
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;->this$0:Lorg/appcelerator/kroll/KrollConverter;

    invoke-virtual {v3, v0, v2}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    .local v1, result:Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollInvocation;->recycle()V

    .line 114
    return-object v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "Object"

    return-object v0
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;->map:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/mozilla/javascript/ScriptableObject;->getIds()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 2
    .parameter "name"
    .parameter "start"

    .prologue
    .line 171
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    .line 172
    .local v0, exists:Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;->map:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 175
    :cond_0
    return v0
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "start"
    .parameter "value"

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 4
    .parameter "name"
    .parameter "start"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-static {p2, p0, p1, v1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->createPropertySetInvocation(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProperty;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v0

    .line 125
    .local v0, invocation:Lorg/appcelerator/kroll/KrollInvocation;
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;->map:Ljava/util/Map;

    iget-object v2, p0, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;->this$0:Lorg/appcelerator/kroll/KrollConverter;

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v2, v0, p3, v3}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollInvocation;->recycle()V

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const-string v8, " \'"

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v6, "{ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v6, p0, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;->map:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 144
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, ""

    .line 146
    .local v5, sep:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 147
    .local v1, key:Ljava/lang/String;
    const-string v6, " \'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v6, p0, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;->map:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 149
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 150
    const-string v6, "null"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .end local v3           #o:Ljava/lang/Object;
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v5, ","

    .line 163
    goto :goto_0

    .line 151
    .restart local v3       #o:Ljava/lang/Object;
    :cond_0
    instance-of v6, v3, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 152
    const-string v6, " \'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast v3, Ljava/lang/String;

    .end local v3           #o:Ljava/lang/Object;
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 153
    .restart local v3       #o:Ljava/lang/Object;
    :cond_1
    instance-of v6, v3, Ljava/lang/Number;

    if-eqz v6, :cond_2

    .line 154
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 155
    :cond_2
    instance-of v6, v3, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v6, :cond_3

    .line 156
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 158
    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 165
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #o:Ljava/lang/Object;
    :cond_4
    const-string v6, " }"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
