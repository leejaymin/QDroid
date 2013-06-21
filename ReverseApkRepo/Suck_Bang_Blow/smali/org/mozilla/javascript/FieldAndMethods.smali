.class Lorg/mozilla/javascript/FieldAndMethods;
.super Lorg/mozilla/javascript/NativeJavaMethod;
.source "JavaMembers.java"


# static fields
.field static final serialVersionUID:J = -0x7ffca5a02b1fef53L


# instance fields
.field field:Ljava/lang/reflect/Field;

.field javaObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/Scriptable;[Lorg/mozilla/javascript/MemberBox;Ljava/lang/reflect/Field;)V
    .locals 1
    .parameter "scope"
    .parameter "methods"
    .parameter "field"

    .prologue
    .line 919
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/NativeJavaMethod;-><init>([Lorg/mozilla/javascript/MemberBox;)V

    .line 920
    iput-object p3, p0, Lorg/mozilla/javascript/FieldAndMethods;->field:Ljava/lang/reflect/Field;

    .line 921
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/FieldAndMethods;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 922
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/FieldAndMethods;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 923
    return-void
.end method


# virtual methods
.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
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
    .line 928
    .local p1, hint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->FunctionClass:Ljava/lang/Class;

    if-ne p1, v4, :cond_0

    move-object v4, p0

    .line 944
    :goto_0
    return-object v4

    .line 933
    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/mozilla/javascript/FieldAndMethods;->field:Ljava/lang/reflect/Field;

    iget-object v5, p0, Lorg/mozilla/javascript/FieldAndMethods;->javaObject:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 934
    .local v2, rval:Ljava/lang/Object;
    iget-object v4, p0, Lorg/mozilla/javascript/FieldAndMethods;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 939
    .local v3, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    .line 940
    .local v1, cx:Lorg/mozilla/javascript/Context;
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v4

    invoke-virtual {v4, v1, p0, v2, v3}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 941
    instance-of v4, v2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v4, :cond_1

    .line 942
    check-cast v2, Lorg/mozilla/javascript/Scriptable;

    .end local v2           #rval:Ljava/lang/Object;
    invoke-interface {v2, p1}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #rval:Ljava/lang/Object;
    :cond_1
    move-object v4, v2

    .line 944
    goto :goto_0

    .line 935
    .end local v1           #cx:Lorg/mozilla/javascript/Context;
    .end local v2           #rval:Ljava/lang/Object;
    .end local v3           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 936
    .local v0, accEx:Ljava/lang/IllegalAccessException;
    const-string v4, "msg.java.internal.private"

    iget-object v5, p0, Lorg/mozilla/javascript/FieldAndMethods;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v4

    throw v4
.end method
