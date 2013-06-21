.class public Lorg/mozilla/javascript/NativeJavaTopPackage;
.super Lorg/mozilla/javascript/NativeJavaPackage;
.source "NativeJavaTopPackage.java"

# interfaces
.implements Lorg/mozilla/javascript/Function;
.implements Lorg/mozilla/javascript/IdFunctionCall;


# static fields
.field private static final FTAG:Ljava/lang/Object; = null

.field private static final Id_getClass:I = 0x1

.field private static final commonPackages:[[Ljava/lang/String; = null

.field static final serialVersionUID:J = -0x1433fecca5b554afL


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "java"

    .line 63
    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "java"

    aput-object v7, v1, v4

    const-string v2, "lang"

    aput-object v2, v1, v5

    const-string v2, "reflect"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "java"

    aput-object v7, v1, v4

    const-string v2, "io"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "java"

    aput-object v7, v1, v4

    const-string v2, "math"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "java"

    aput-object v7, v1, v4

    const-string v2, "net"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "java"

    aput-object v7, v2, v4

    const-string v3, "util"

    aput-object v3, v2, v5

    const-string v3, "zip"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "java"

    aput-object v7, v2, v4

    const-string v3, "text"

    aput-object v3, v2, v5

    const-string v3, "resources"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "java"

    aput-object v7, v2, v4

    const-string v3, "applet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "javax"

    aput-object v3, v2, v4

    const-string v3, "swing"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lorg/mozilla/javascript/NativeJavaTopPackage;->commonPackages:[[Ljava/lang/String;

    .line 185
    const-string v0, "JavaTopPackage"

    sput-object v0, Lorg/mozilla/javascript/NativeJavaTopPackage;->FTAG:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 2
    .parameter "loader"

    .prologue
    .line 76
    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    .line 77
    return-void
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 8
    .parameter "cx"
    .parameter "scope"
    .parameter "sealed"

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 109
    .local p0, loader:Ljava/lang/ClassLoader;
    new-instance v2, Lorg/mozilla/javascript/NativeJavaTopPackage;

    invoke-direct {v2, p0}, Lorg/mozilla/javascript/NativeJavaTopPackage;-><init>(Ljava/lang/ClassLoader;)V

    .line 110
    .local v2, top:Lorg/mozilla/javascript/NativeJavaTopPackage;
    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaTopPackage;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .end local p0           #loader:Ljava/lang/ClassLoader;
    invoke-virtual {v2, p0}, Lorg/mozilla/javascript/NativeJavaTopPackage;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 111
    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/NativeJavaTopPackage;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 113
    const/4 p0, 0x0

    .local p0, i:I
    :goto_0
    sget-object v1, Lorg/mozilla/javascript/NativeJavaTopPackage;->commonPackages:[[Ljava/lang/String;

    array-length v1, v1

    if-eq p0, v1, :cond_1

    .line 114
    move-object v3, v2

    .line 115
    .local v3, parent:Lorg/mozilla/javascript/NativeJavaPackage;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    sget-object v4, Lorg/mozilla/javascript/NativeJavaTopPackage;->commonPackages:[[Ljava/lang/String;

    aget-object v4, v4, p0

    array-length v4, v4

    if-eq v1, v4, :cond_0

    .line 116
    sget-object v4, Lorg/mozilla/javascript/NativeJavaTopPackage;->commonPackages:[[Ljava/lang/String;

    aget-object v4, v4, p0

    aget-object v4, v4, v1

    invoke-virtual {v3, v4, p1}, Lorg/mozilla/javascript/NativeJavaPackage;->forcePackage(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeJavaPackage;

    move-result-object v3

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 121
    .end local v1           #j:I
    .end local v3           #parent:Lorg/mozilla/javascript/NativeJavaPackage;
    :cond_1
    new-instance v1, Lorg/mozilla/javascript/IdFunctionObject;

    sget-object v3, Lorg/mozilla/javascript/NativeJavaTopPackage;->FTAG:Ljava/lang/Object;

    const/4 v4, 0x1

    const-string v5, "getClass"

    const/4 v6, 0x1

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    .line 127
    .local v1, getClass:Lorg/mozilla/javascript/IdFunctionObject;
    const/4 p0, 0x6

    new-array v3, p0, [Ljava/lang/String;

    .end local p0           #i:I
    const/4 p0, 0x0

    const-string v4, "java"

    aput-object v4, v3, p0

    const/4 p0, 0x1

    const-string v4, "javax"

    aput-object v4, v3, p0

    const/4 p0, 0x2

    const-string v4, "org"

    aput-object v4, v3, p0

    const/4 p0, 0x3

    const-string v4, "com"

    aput-object v4, v3, p0

    const/4 p0, 0x4

    const-string v4, "edu"

    aput-object v4, v3, p0

    const/4 p0, 0x5

    const-string v4, "net"

    aput-object v4, v3, p0

    .line 128
    .local v3, topNames:[Ljava/lang/String;
    array-length p0, v3

    new-array v4, p0, [Lorg/mozilla/javascript/NativeJavaPackage;

    .line 129
    .local v4, topPackages:[Lorg/mozilla/javascript/NativeJavaPackage;
    const/4 p0, 0x0

    .restart local p0       #i:I
    :goto_2
    array-length v5, v3

    if-ge p0, v5, :cond_2

    .line 130
    aget-object v5, v3, p0

    invoke-virtual {v2, v5, v2}, Lorg/mozilla/javascript/NativeJavaTopPackage;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/NativeJavaPackage;

    aput-object v5, v4, p0

    .line 129
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 135
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object p0, v0

    .line 137
    .local p0, global:Lorg/mozilla/javascript/ScriptableObject;
    if-eqz p2, :cond_3

    .line 138
    invoke-virtual {v1}, Lorg/mozilla/javascript/IdFunctionObject;->sealObject()V

    .line 140
    :cond_3
    invoke-virtual {v1}, Lorg/mozilla/javascript/IdFunctionObject;->exportAsScopeProperty()V

    .line 141
    const-string p1, "Packages"

    .end local p1
    const/4 p2, 0x2

    invoke-virtual {p0, p1, v2, p2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 142
    .end local p2
    const/4 p1, 0x0

    .end local v1           #getClass:Lorg/mozilla/javascript/IdFunctionObject;
    .end local v2           #top:Lorg/mozilla/javascript/NativeJavaTopPackage;
    .local p1, i:I
    :goto_3
    array-length p2, v3

    if-ge p1, p2, :cond_4

    .line 143
    aget-object p2, v3, p1

    aget-object v1, v4, p1

    const/4 v2, 0x2

    invoke-virtual {p0, p2, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 142
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 146
    :cond_4
    return-void
.end method

.method private js_getClass(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 11
    .parameter "cx"
    .parameter "scope"
    .parameter "args"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 161
    array-length v8, p3

    if-lez v8, :cond_0

    aget-object v8, p3, v10

    instance-of v8, v8, Lorg/mozilla/javascript/Wrapper;

    if-eqz v8, :cond_0

    .line 162
    move-object v7, p0

    .line 163
    .local v7, result:Lorg/mozilla/javascript/Scriptable;
    aget-object p0, p3, v10

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 166
    .local v1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 169
    .local v4, offset:I
    :goto_0
    const/16 v8, 0x2e

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 170
    .local v2, index:I
    if-ne v2, v9, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 173
    .local v6, propName:Ljava/lang/String;
    :goto_1
    invoke-interface {v7, v6, v7}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v5

    .line 174
    .local v5, prop:Ljava/lang/Object;
    instance-of v8, v5, Lorg/mozilla/javascript/Scriptable;

    if-nez v8, :cond_2

    .line 182
    .end local v1           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #index:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #offset:I
    .end local v5           #prop:Ljava/lang/Object;
    .end local v6           #propName:Ljava/lang/String;
    .end local v7           #result:Lorg/mozilla/javascript/Scriptable;
    :cond_0
    const-string v8, "msg.not.java.obj"

    invoke-static {v8}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v8

    throw v8

    .line 170
    .restart local v1       #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v2       #index:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #offset:I
    .restart local v7       #result:Lorg/mozilla/javascript/Scriptable;
    :cond_1
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    goto :goto_1

    .line 176
    .restart local v5       #prop:Ljava/lang/Object;
    .restart local v6       #propName:Ljava/lang/String;
    :cond_2
    move-object v0, v5

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    move-object v7, v0

    .line 177
    if-ne v2, v9, :cond_3

    .line 178
    return-object v7

    .line 179
    :cond_3
    add-int/lit8 v4, v2, 0x1

    .line 180
    goto :goto_0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2, p4}, Lorg/mozilla/javascript/NativeJavaTopPackage;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 6
    .parameter "cx"
    .parameter "scope"
    .parameter "args"

    .prologue
    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, loader:Ljava/lang/ClassLoader;
    array-length v4, p3

    if-eqz v4, :cond_1

    .line 89
    const/4 v4, 0x0

    aget-object v1, p3, v4

    .line 90
    .local v1, arg:Ljava/lang/Object;
    instance-of v4, v1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v4, :cond_0

    .line 91
    check-cast v1, Lorg/mozilla/javascript/Wrapper;

    .end local v1           #arg:Ljava/lang/Object;
    invoke-interface {v1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v1

    .line 93
    .restart local v1       #arg:Ljava/lang/Object;
    :cond_0
    instance-of v4, v1, Ljava/lang/ClassLoader;

    if-eqz v4, :cond_1

    .line 94
    move-object v0, v1

    check-cast v0, Ljava/lang/ClassLoader;

    move-object v2, v0

    .line 97
    .end local v1           #arg:Ljava/lang/Object;
    :cond_1
    if-nez v2, :cond_2

    .line 98
    const-string v4, "msg.not.classloader"

    invoke-static {v4}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    .line 99
    const/4 v4, 0x0

    .line 103
    :goto_0
    return-object v4

    .line 101
    :cond_2
    new-instance v3, Lorg/mozilla/javascript/NativeJavaPackage;

    const/4 v4, 0x1

    const-string v5, ""

    invoke-direct {v3, v4, v5, v2}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    .line 102
    .local v3, pkg:Lorg/mozilla/javascript/NativeJavaPackage;
    invoke-static {v3, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    move-object v4, v3

    .line 103
    goto :goto_0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "f"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 151
    sget-object v0, Lorg/mozilla/javascript/NativeJavaTopPackage;->FTAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 153
    invoke-direct {p0, p2, p3, p5}, Lorg/mozilla/javascript/NativeJavaTopPackage;->js_getClass(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    .line 156
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->unknown()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
