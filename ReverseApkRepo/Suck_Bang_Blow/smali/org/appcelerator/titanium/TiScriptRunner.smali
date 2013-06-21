.class public Lorg/appcelerator/titanium/TiScriptRunner;
.super Ljava/lang/Object;
.source "TiScriptRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/TiScriptRunner$TiScript;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiScriptRunner"

.field private static _instance:Lorg/appcelerator/titanium/TiScriptRunner;


# instance fields
.field protected appPackageName:Ljava/lang/String;

.field protected scripts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/appcelerator/titanium/TiScriptRunner$TiScript;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiScriptRunner;->scripts:Ljava/util/HashMap;

    .line 47
    return-void
.end method

.method public static getInstance()Lorg/appcelerator/titanium/TiScriptRunner;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lorg/appcelerator/titanium/TiScriptRunner;->_instance:Lorg/appcelerator/titanium/TiScriptRunner;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lorg/appcelerator/titanium/TiScriptRunner;

    invoke-direct {v0}, Lorg/appcelerator/titanium/TiScriptRunner;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/TiScriptRunner;->_instance:Lorg/appcelerator/titanium/TiScriptRunner;

    .line 24
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/TiScriptRunner;->_instance:Lorg/appcelerator/titanium/TiScriptRunner;

    return-object v0
.end method

.method public static main(Lorg/mozilla/javascript/Script;[Ljava/lang/String;)V
    .locals 4
    .parameter "script"
    .parameter "args"

    .prologue
    .line 29
    invoke-static {}, Lorg/appcelerator/titanium/TiScriptRunner;->getInstance()Lorg/appcelerator/titanium/TiScriptRunner;

    move-result-object v0

    .line 30
    .local v0, runner:Lorg/appcelerator/titanium/TiScriptRunner;
    const/4 v3, 0x0

    aget-object v1, p1, v3

    .line 32
    .local v1, scriptClassName:Ljava/lang/String;
    iget-object v3, v0, Lorg/appcelerator/titanium/TiScriptRunner;->scripts:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;

    .line 33
    .local v2, tiScript:Lorg/appcelerator/titanium/TiScriptRunner$TiScript;
    iput-object p0, v2, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;->script:Lorg/mozilla/javascript/Script;

    .line 34
    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/TiScriptRunner;->executeScript(Lorg/appcelerator/titanium/TiScriptRunner$TiScript;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;->returnValue:Ljava/lang/Object;

    .line 35
    return-void
.end method


# virtual methods
.method protected executeScript(Lorg/appcelerator/titanium/TiScriptRunner$TiScript;)Ljava/lang/Object;
    .locals 8
    .parameter "script"

    .prologue
    const/4 v7, 0x0

    const-string v5, "TiScriptRunner"

    .line 50
    const-string v2, "TiScriptRunner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing script: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    .line 53
    .local v1, returnValue:Ljava/lang/Object;
    :try_start_0
    iget-object v2, p1, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;->script:Lorg/mozilla/javascript/Script;

    iget-object v3, p1, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;->context:Lorg/mozilla/javascript/Context;

    iget-object v4, p1, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v2, v3, v4}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 59
    :goto_0
    iput-object v7, p1, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;->context:Lorg/mozilla/javascript/Context;

    .line 60
    iput-object v7, p1, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 62
    return-object v1

    .line 54
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 55
    .local v0, e:Lorg/mozilla/javascript/RhinoException;
    const-string v2, "TiScriptRunner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Javascript Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/mozilla/javascript/RhinoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    invoke-virtual {v0}, Lorg/mozilla/javascript/RhinoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/mozilla/javascript/RhinoException;->sourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result v4

    invoke-virtual {v0}, Lorg/mozilla/javascript/RhinoException;->lineSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/mozilla/javascript/RhinoException;->columnNumber()I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    goto :goto_0
.end method

.method protected getScriptClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "relativePath"

    .prologue
    const-string v4, "_"

    .line 66
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, scriptClassName:Ljava/lang/String;
    const-string v1, ".js"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    const-string v3, "_"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\"

    const-string v3, "_"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    const-string v3, "_"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/appcelerator/titanium/TiScriptRunner;->appPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".js."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public runScript(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .parameter "context"
    .parameter "scope"
    .parameter "relativePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0, p3}, Lorg/appcelerator/titanium/TiScriptRunner;->getScriptClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, scriptClassName:Ljava/lang/String;
    iget-object v6, p0, Lorg/appcelerator/titanium/TiScriptRunner;->scripts:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 80
    iget-object v6, p0, Lorg/appcelerator/titanium/TiScriptRunner;->scripts:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;

    .line 81
    .local v3, script:Lorg/appcelerator/titanium/TiScriptRunner$TiScript;
    iput-object p1, v3, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;->context:Lorg/mozilla/javascript/Context;

    .line 82
    iput-object p2, v3, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 83
    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/TiScriptRunner;->executeScript(Lorg/appcelerator/titanium/TiScriptRunner$TiScript;)Ljava/lang/Object;

    move-result-object v6

    .line 118
    :goto_0
    return-object v6

    .line 86
    .end local v3           #script:Lorg/appcelerator/titanium/TiScriptRunner$TiScript;
    :cond_0
    new-instance v3, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;

    invoke-direct {v3, p0}, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;-><init>(Lorg/appcelerator/titanium/TiScriptRunner;)V

    .line 87
    .restart local v3       #script:Lorg/appcelerator/titanium/TiScriptRunner$TiScript;
    iput-object p1, v3, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;->context:Lorg/mozilla/javascript/Context;

    .line 88
    iput-object p2, v3, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 89
    iput-object v5, v3, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;->name:Ljava/lang/String;

    .line 91
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 93
    .local v4, scriptClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v6, "main"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, [Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 94
    .local v1, mainMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 96
    iget-object v6, p0, Lorg/appcelerator/titanium/TiScriptRunner;->scripts:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v2, v3, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;->returnValue:Ljava/lang/Object;

    .line 99
    .local v2, returnValue:Ljava/lang/Object;
    const/4 v6, 0x0

    iput-object v6, v3, Lorg/appcelerator/titanium/TiScriptRunner$TiScript;->returnValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v6, v2

    .line 100
    goto :goto_0

    .line 102
    .end local v1           #mainMethod:Ljava/lang/reflect/Method;
    .end local v2           #returnValue:Ljava/lang/Object;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 104
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 118
    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_1
    :goto_1
    sget-object v6, Lorg/mozilla/javascript/ScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    goto :goto_0

    .line 105
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 107
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 108
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    move-object v0, v6

    .line 110
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 111
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v6

    move-object v0, v6

    .line 113
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 114
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v6

    move-object v0, v6

    .line 116
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 74
    iput-object p1, p0, Lorg/appcelerator/titanium/TiScriptRunner;->appPackageName:Ljava/lang/String;

    .line 75
    return-void
.end method
