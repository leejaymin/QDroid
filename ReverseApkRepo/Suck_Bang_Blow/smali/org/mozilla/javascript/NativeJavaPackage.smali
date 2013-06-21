.class public Lorg/mozilla/javascript/NativeJavaPackage;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "NativeJavaPackage.java"


# static fields
.field static final serialVersionUID:J = 0x67522583d936a423L


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field private negativeCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1
    .parameter "packageName"
    .parameter "classLoader"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    .line 76
    return-void
.end method

.method constructor <init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1
    .parameter "internalUsage"
    .parameter "packageName"
    .parameter "classLoader"

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaPackage;->negativeCache:Ljava/util/Set;

    .line 66
    iput-object p2, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 201
    instance-of v2, p1, Lorg/mozilla/javascript/NativeJavaPackage;

    if-eqz v2, :cond_1

    .line 202
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeJavaPackage;

    move-object v1, v0

    .line 203
    .local v1, njp:Lorg/mozilla/javascript/NativeJavaPackage;
    iget-object v2, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, v1, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 206
    .end local v1           #njp:Lorg/mozilla/javascript/NativeJavaPackage;
    :goto_0
    return v2

    .restart local v1       #njp:Lorg/mozilla/javascript/NativeJavaPackage;
    :cond_0
    move v2, v4

    .line 203
    goto :goto_0

    .end local v1           #njp:Lorg/mozilla/javascript/NativeJavaPackage;
    :cond_1
    move v2, v4

    .line 206
    goto :goto_0
.end method

.method forcePackage(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeJavaPackage;
    .locals 5
    .parameter "name"
    .parameter "scope"

    .prologue
    .line 126
    invoke-super {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    .local v0, cached:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lorg/mozilla/javascript/NativeJavaPackage;

    if-eqz v3, :cond_0

    .line 128
    check-cast v0, Lorg/mozilla/javascript/NativeJavaPackage;

    .end local v0           #cached:Ljava/lang/Object;
    move-object v3, v0

    .line 136
    :goto_0
    return-object v3

    .line 130
    .restart local v0       #cached:Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    move-object v1, p1

    .line 133
    .local v1, newPackage:Ljava/lang/String;
    :goto_1
    new-instance v2, Lorg/mozilla/javascript/NativeJavaPackage;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {v2, v3, v1, v4}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    .line 134
    .local v2, pkg:Lorg/mozilla/javascript/NativeJavaPackage;
    invoke-static {v2, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    .line 135
    invoke-super {p0, p1, p0, v2}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    move-object v3, v2

    .line 136
    goto :goto_0

    .line 130
    .end local v1           #newPackage:Ljava/lang/String;
    .end local v2           #pkg:Lorg/mozilla/javascript/NativeJavaPackage;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_1
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .parameter "start"

    .prologue
    .line 119
    sget-object v0, Lorg/mozilla/javascript/NativeJavaPackage;->NOT_FOUND:Ljava/lang/Object;

    return-object v0
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1
    .parameter "id"
    .parameter "start"

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/javascript/NativeJavaPackage;->getPkgProperty(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "JavaPackage"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, ignored:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaPackage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getPkgProperty(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;
    .locals 9
    .parameter "name"
    .parameter "start"
    .parameter "createPkg"

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    .local v0, cached:Ljava/lang/Object;
    sget-object v7, Lorg/mozilla/javascript/NativeJavaPackage;->NOT_FOUND:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v7, :cond_0

    move-object v7, v0

    .line 186
    :goto_0
    monitor-exit p0

    return-object v7

    .line 146
    :cond_0
    :try_start_1
    iget-object v7, p0, Lorg/mozilla/javascript/NativeJavaPackage;->negativeCache:Ljava/util/Set;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/mozilla/javascript/NativeJavaPackage;->negativeCache:Ljava/util/Set;

    invoke-interface {v7, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 148
    const/4 v7, 0x0

    goto :goto_0

    .line 151
    :cond_1
    iget-object v7, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    move-object v2, p1

    .line 153
    .local v2, className:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v3

    .line 154
    .local v3, cx:Lorg/mozilla/javascript/Context;
    invoke-virtual {v3}, Lorg/mozilla/javascript/Context;->getClassShutter()Lorg/mozilla/javascript/ClassShutter;

    move-result-object v6

    .line 155
    .local v6, shutter:Lorg/mozilla/javascript/ClassShutter;
    const/4 v4, 0x0

    .line 156
    .local v4, newValue:Lorg/mozilla/javascript/Scriptable;
    if-eqz v6, :cond_2

    invoke-interface {v6, v2}, Lorg/mozilla/javascript/ClassShutter;->visibleToScripts(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 157
    :cond_2
    const/4 v1, 0x0

    .line 158
    .local v1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v7, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v7, :cond_7

    .line 159
    iget-object v7, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v7, v2}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 163
    :goto_2
    if-eqz v1, :cond_3

    .line 164
    new-instance v4, Lorg/mozilla/javascript/NativeJavaClass;

    .end local v4           #newValue:Lorg/mozilla/javascript/Scriptable;
    invoke-static {p0}, Lorg/mozilla/javascript/NativeJavaPackage;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    invoke-direct {v4, v7, v1}, Lorg/mozilla/javascript/NativeJavaClass;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    .line 165
    .restart local v4       #newValue:Lorg/mozilla/javascript/Scriptable;
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaPackage;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 168
    .end local v1           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    if-nez v4, :cond_4

    .line 169
    if-eqz p3, :cond_8

    .line 171
    new-instance v5, Lorg/mozilla/javascript/NativeJavaPackage;

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {v5, v7, v2, v8}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    .line 172
    .local v5, pkg:Lorg/mozilla/javascript/NativeJavaPackage;
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaPackage;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    invoke-static {v5, v7}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    .line 173
    move-object v4, v5

    .line 181
    .end local v5           #pkg:Lorg/mozilla/javascript/NativeJavaPackage;
    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 184
    invoke-super {p0, p1, p2, v4}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_5
    move-object v7, v4

    .line 186
    goto :goto_0

    .line 151
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #cx:Lorg/mozilla/javascript/Context;
    .end local v4           #newValue:Lorg/mozilla/javascript/Scriptable;
    .end local v6           #shutter:Lorg/mozilla/javascript/ClassShutter;
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    goto :goto_1

    .line 161
    .restart local v1       #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v2       #className:Ljava/lang/String;
    .restart local v3       #cx:Lorg/mozilla/javascript/Context;
    .restart local v4       #newValue:Lorg/mozilla/javascript/Scriptable;
    .restart local v6       #shutter:Lorg/mozilla/javascript/ClassShutter;
    :cond_7
    invoke-static {v2}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    .line 176
    .end local v1           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_8
    iget-object v7, p0, Lorg/mozilla/javascript/NativeJavaPackage;->negativeCache:Ljava/util/Set;

    if-nez v7, :cond_9

    .line 177
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lorg/mozilla/javascript/NativeJavaPackage;->negativeCache:Ljava/util/Set;

    .line 178
    :cond_9
    iget-object v7, p0, Lorg/mozilla/javascript/NativeJavaPackage;->negativeCache:Ljava/util/Set;

    invoke-interface {v7, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 143
    .end local v0           #cached:Ljava/lang/Object;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #cx:Lorg/mozilla/javascript/Context;
    .end local v4           #newValue:Lorg/mozilla/javascript/Scriptable;
    .end local v6           #shutter:Lorg/mozilla/javascript/ClassShutter;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 1
    .parameter "index"
    .parameter "start"

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1
    .parameter "id"
    .parameter "start"

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter "start"
    .parameter "value"

    .prologue
    .line 109
    const-string v0, "msg.pkg.int"

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 0
    .parameter "id"
    .parameter "start"
    .parameter "value"

    .prologue
    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JavaPackage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
