.class public Lgnu/kawa/reflect/SlotSet;
.super Lgnu/mapping/Procedure3;
.source "SlotSet.java"

# interfaces
.implements Lgnu/expr/CanInline;
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

.field public static final set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

.field public static final setFieldReturnObject:Lgnu/kawa/reflect/SlotSet;


# instance fields
.field isStatic:Z

.field returnSelf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lgnu/kawa/reflect/SlotSet;

    const-string v1, "set-field!"

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/SlotSet;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .line 17
    new-instance v0, Lgnu/kawa/reflect/SlotSet;

    const-string v1, "set-static-field!"

    invoke-direct {v0, v1, v3}, Lgnu/kawa/reflect/SlotSet;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .line 19
    new-instance v0, Lgnu/kawa/reflect/SlotSet;

    const-string v1, "set-field-return-object!"

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/SlotSet;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/reflect/SlotSet;->setFieldReturnObject:Lgnu/kawa/reflect/SlotSet;

    .line 21
    sget-object v0, Lgnu/kawa/reflect/SlotSet;->setFieldReturnObject:Lgnu/kawa/reflect/SlotSet;

    iput-boolean v3, v0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "name"
    .parameter "isStatic"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure3;-><init>(Ljava/lang/String;)V

    .line 26
    iput-boolean p2, p0, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    .line 27
    return-void
.end method

.method public static apply(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .parameter "isStatic"
    .parameter "obj"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 41
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v3

    .line 42
    .local v3, language:Lgnu/expr/Language;
    const/4 v2, 0x0

    .line 43
    .local v2, illegalAccess:Z
    invoke-static {p2}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, fname:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-static {p1}, Lgnu/kawa/reflect/SlotGet;->coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    .end local p0
    move-object v0, p0

    .line 47
    .local v0, clas:Ljava/lang/Class;
    :goto_0
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 48
    .local p0, field:Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 49
    .local v1, ftype:Ljava/lang/Class;
    invoke-virtual {v3, v1, p3}, Lgnu/expr/Language;->coerceFromObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ftype:Ljava/lang/Class;
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move p0, v2

    .line 82
    .end local v2           #illegalAccess:Z
    .end local p3
    .local p0, illegalAccess:Z
    :goto_1
    return-void

    .line 44
    .end local v0           #clas:Ljava/lang/Class;
    .local v1, fname:Ljava/lang/String;
    .restart local v2       #illegalAccess:Z
    .local p0, isStatic:Z
    .restart local p3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    .line 55
    .end local v1           #fname:Ljava/lang/String;
    .end local p0           #isStatic:Z
    .restart local v0       #clas:Ljava/lang/Class;
    :catch_0
    move-exception p0

    .line 57
    .local p0, ex:Ljava/lang/IllegalAccessException;
    const/4 p0, 0x1

    .end local v2           #illegalAccess:Z
    .local p0, illegalAccess:Z
    move v2, p0

    .line 64
    .end local p0           #illegalAccess:Z
    .restart local v2       #illegalAccess:Z
    :goto_2
    const/4 v1, 0x0

    .line 67
    .local v1, getmethod:Ljava/lang/reflect/Method;
    :try_start_1
    const-string p0, "get"

    invoke-static {p0, p2}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 68
    .local p0, getName:Ljava/lang/String;
    sget-object v4, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual {v0, p0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object p0

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p0, getmethod:Ljava/lang/reflect/Method;
    move-object v1, p0

    .line 74
    .end local p0           #getmethod:Ljava/lang/reflect/Method;
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    :goto_3
    :try_start_2
    const-string p0, "set"

    invoke-static {p0, p2}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 75
    .local p0, setName:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 76
    .local v4, setArgTypes:[Ljava/lang/Class;
    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    .line 77
    invoke-virtual {v0, p0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 79
    .local v5, setmethod:Ljava/lang/reflect/Method;
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 80
    .local p0, args:[Ljava/lang/Object;
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v4, v4, v7

    .end local v4           #setArgTypes:[Ljava/lang/Class;
    invoke-virtual {v3, v4, p3}, Lgnu/expr/Language;->coerceFromObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    aput-object p3, p0, v6

    .line 81
    invoke-virtual {v5, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move p0, v2

    .line 82
    .end local v2           #illegalAccess:Z
    .local p0, illegalAccess:Z
    goto :goto_1

    .line 69
    .end local v5           #setmethod:Ljava/lang/reflect/Method;
    .end local p0           #illegalAccess:Z
    .restart local v2       #illegalAccess:Z
    .restart local p3
    :catch_1
    move-exception p0

    .line 70
    .local p0, getEx:Ljava/lang/Exception;
    const-string p0, "is"

    .end local p0           #getEx:Ljava/lang/Exception;
    invoke-static {p0, p2}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 71
    .local p0, getName:Ljava/lang/String;
    sget-object v4, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual {v0, p0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object p0

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p0, getmethod:Ljava/lang/reflect/Method;
    move-object v1, p0

    .end local p0           #getmethod:Ljava/lang/reflect/Method;
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    goto :goto_3

    .line 84
    .end local p3
    :catch_2
    move-exception p0

    move-object p1, v1

    .line 86
    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p0, ex:Ljava/lang/reflect/InvocationTargetException;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    .end local p0           #ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-static {p0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 88
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .local p1, obj:Ljava/lang/Object;
    :catch_3
    move-exception p0

    move-object p1, v1

    .line 90
    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p0, ex:Ljava/lang/IllegalAccessException;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    const/4 p0, 0x1

    .line 96
    .end local v2           #illegalAccess:Z
    .end local p1           #getmethod:Ljava/lang/reflect/Method;
    .local p0, illegalAccess:Z
    :goto_4
    if-eqz p0, :cond_1

    .line 97
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0           #illegalAccess:Z
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "illegal access for field "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .restart local v2       #illegalAccess:Z
    .local p1, obj:Ljava/lang/Object;
    :catch_4
    move-exception p0

    move-object p0, v1

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p0, getmethod:Ljava/lang/reflect/Method;
    move p0, v2

    .end local v2           #illegalAccess:Z
    .local p0, illegalAccess:Z
    goto :goto_4

    .line 99
    .end local p1           #obj:Ljava/lang/Object;
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0           #illegalAccess:Z
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "no such field "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " in "

    .end local p2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    .restart local v2       #illegalAccess:Z
    .restart local p1       #obj:Ljava/lang/Object;
    .restart local p2
    .restart local p3
    :catch_5
    move-exception p0

    goto/16 :goto_2
.end method

.method static compileSet(Lgnu/mapping/Procedure;Lgnu/bytecode/ClassType;Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Compilation;)V
    .locals 7
    .parameter "thisProc"
    .parameter "ctype"
    .parameter "valArg"
    .parameter "part"
    .parameter "comp"

    .prologue
    .line 134
    invoke-virtual {p4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 135
    .local v1, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p4}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v4

    .line 136
    .local v4, language:Lgnu/expr/Language;
    instance-of v2, p0, Lgnu/kawa/reflect/SlotSet;

    if-eqz v2, :cond_2

    move-object v0, p0

    check-cast v0, Lgnu/kawa/reflect/SlotSet;

    move-object v2, v0

    iget-boolean v2, v2, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 138
    .local v2, isStatic:Z
    :goto_0
    instance-of v3, p3, Lgnu/bytecode/Field;

    if-eqz v3, :cond_4

    .line 140
    move-object v0, p3

    check-cast v0, Lgnu/bytecode/Field;

    move-object p1, v0

    .line 141
    .local p1, field:Lgnu/bytecode/Field;
    invoke-virtual {p1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v3

    .line 142
    .local v3, isStaticField:Z
    invoke-virtual {p1}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object p3

    .end local p3
    invoke-virtual {v4, p3}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object p3

    .line 143
    .local p3, ftype:Lgnu/bytecode/Type;
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 144
    const/16 v2, 0x65

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v2           #isStatic:Z
    .end local v4           #language:Lgnu/expr/Language;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot access non-static field `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' using `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v4, 0x27

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v2, p0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 146
    :cond_0
    invoke-static {p3}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object p0

    invoke-virtual {p2, p4, p0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 147
    if-eqz v3, :cond_3

    .line 148
    invoke-virtual {v1, p1}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 171
    .end local v3           #isStaticField:Z
    .end local p1           #field:Lgnu/bytecode/Field;
    .end local p3           #ftype:Lgnu/bytecode/Type;
    :cond_1
    :goto_1
    return-void

    .line 136
    .restart local v4       #language:Lgnu/expr/Language;
    .restart local p0
    .local p1, ctype:Lgnu/bytecode/ClassType;
    .local p3, part:Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 150
    .end local v4           #language:Lgnu/expr/Language;
    .end local p0
    .restart local v3       #isStaticField:Z
    .local p1, field:Lgnu/bytecode/Field;
    .local p3, ftype:Lgnu/bytecode/Type;
    :cond_3
    invoke-virtual {v1, p1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_1

    .line 153
    .end local v3           #isStaticField:Z
    .restart local v2       #isStatic:Z
    .restart local v4       #language:Lgnu/expr/Language;
    .restart local p0
    .local p1, ctype:Lgnu/bytecode/ClassType;
    .local p3, part:Ljava/lang/Object;
    :cond_4
    instance-of v3, p3, Lgnu/bytecode/Method;

    if-eqz v3, :cond_1

    .line 155
    move-object v0, p3

    check-cast v0, Lgnu/bytecode/Method;

    move-object v3, v0

    .line 156
    .local v3, method:Lgnu/bytecode/Method;
    invoke-virtual {v3}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result p3

    .line 157
    .local p3, isStaticMethod:Z
    if-eqz v2, :cond_5

    if-nez p3, :cond_5

    .line 158
    const/16 v2, 0x65

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v2           #isStatic:Z
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot call non-static getter method `"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' using `"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v5, 0x27

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v2, p0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 161
    :cond_5
    invoke-virtual {v3}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object p0

    .line 162
    .local p0, setArgTypes:[Lgnu/bytecode/Type;
    const/4 v2, 0x0

    aget-object p0, p0, v2

    .end local p0           #setArgTypes:[Lgnu/bytecode/Type;
    invoke-virtual {v4, p0}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object p0

    invoke-static {p0}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object p0

    invoke-virtual {p2, p4, p0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 163
    if-eqz p3, :cond_6

    .line 164
    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 165
    :cond_6
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 166
    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 168
    :cond_7
    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_1
.end method

.method public static lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;
    .locals 5
    .parameter "clas"
    .parameter "name"
    .parameter "caller"

    .prologue
    .line 113
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Lgnu/bytecode/ObjectType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object v0

    .line 115
    .local v0, field:Lgnu/bytecode/Field;
    if-eqz v0, :cond_1

    .line 117
    if-nez p2, :cond_0

    .line 118
    sget-object p2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 119
    :cond_0
    invoke-virtual {p2, v0, p0}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 128
    :goto_0
    return-object v3

    .line 123
    :cond_1
    const-string v3, "set"

    invoke-static {v3, p1}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, setName:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Lgnu/bytecode/Type;

    invoke-virtual {p0, v2, v3}, Lgnu/bytecode/ObjectType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    .line 125
    .local v1, method:Lgnu/bytecode/Method;
    if-nez v1, :cond_2

    move-object v3, v0

    .line 126
    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 128
    goto :goto_0
.end method

.method public static setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public static setStaticField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    return-void
.end method


# virtual methods
.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "obj"
    .parameter "fname"
    .parameter "value"

    .prologue
    .line 106
    iget-boolean v0, p0, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1, p3}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    iget-boolean v0, p0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 22
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 189
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    .line 190
    .local v7, args:[Lgnu/expr/Expression;
    array-length v14, v7

    .line 191
    .local v14, nargs:I
    const/16 v19, 0x3

    move v0, v14

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 193
    const/16 v19, 0x3

    move v0, v14

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    const-string v19, "too few"

    move-object/from16 v12, v19

    .line 194
    .local v12, msg:Ljava/lang/String;
    :goto_0
    const/16 v19, 0x65

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " arguments to `"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/reflect/SlotSet;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x27

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 195
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 252
    .end local v12           #msg:Ljava/lang/String;
    :goto_1
    return-void

    .line 193
    :cond_0
    const-string v19, "too many"

    move-object/from16 v12, v19

    goto :goto_0

    .line 198
    :cond_1
    const/16 v19, 0x0

    aget-object v5, v7, v19

    .line 199
    .local v5, arg0:Lgnu/expr/Expression;
    const/16 v19, 0x1

    aget-object v6, v7, v19

    .line 200
    .local v6, arg1:Lgnu/expr/Expression;
    const/16 v19, 0x2

    aget-object v18, v7, v19

    .line 201
    .local v18, value:Lgnu/expr/Expression;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    invoke-static {v5}, Lkawa/standard/Scheme;->exp2Type(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v19

    move-object/from16 v16, v19

    .line 203
    .local v16, type:Lgnu/bytecode/Type;
    :goto_2
    const/4 v15, 0x0

    .line 204
    .local v15, part:Lgnu/bytecode/Member;
    move-object/from16 v0, v16

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    move-object v0, v6

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 206
    check-cast v6, Lgnu/expr/QuoteExp;

    .end local v6           #arg1:Lgnu/expr/Expression;
    invoke-virtual {v6}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v17

    .line 207
    .local v17, val1:Ljava/lang/Object;
    move-object/from16 v0, v16

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v9, v0

    .line 209
    .local v9, ctype:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v19, v0

    move-object/from16 v8, v19

    .line 211
    .local v8, caller:Lgnu/bytecode/ClassType;
    :goto_3
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-nez v19, :cond_2

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/FString;

    move/from16 v19, v0

    if-nez v19, :cond_2

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 215
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 216
    .local v13, name:Ljava/lang/String;
    invoke-static {v9, v13, v8}, Lgnu/kawa/reflect/SlotSet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v15

    .line 217
    if-nez v15, :cond_3

    sget-object v19, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 218
    const/16 v19, 0x65

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "no slot `"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 230
    :cond_3
    :goto_4
    if-eqz v15, :cond_d

    .line 232
    invoke-interface {v15}, Lgnu/bytecode/Member;->getModifiers()I

    move-result v11

    .line 233
    .local v11, modifiers:I
    and-int/lit8 v19, v11, 0x8

    if-eqz v19, :cond_a

    const/16 v19, 0x1

    move/from16 v10, v19

    .line 234
    .local v10, isStaticField:Z
    :goto_5
    if-eqz v8, :cond_4

    invoke-virtual {v8, v15, v9}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 235
    const/16 v19, 0x65

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "slot \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v15}, Lgnu/bytecode/Member;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " not accessible here"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 238
    :cond_4
    const/16 v19, 0x0

    aget-object v19, v7, v19

    if-eqz v10, :cond_b

    sget-object v20, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    :goto_6
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 241
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 242
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v9

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 243
    :cond_5
    const/16 v19, 0x2

    aget-object v19, v7, v19

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v19

    move-object v3, v15

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lgnu/kawa/reflect/SlotSet;->compileSet(Lgnu/mapping/Procedure;Lgnu/bytecode/ClassType;Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Compilation;)V

    .line 244
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 245
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 201
    .end local v8           #caller:Lgnu/bytecode/ClassType;
    .end local v9           #ctype:Lgnu/bytecode/ClassType;
    .end local v10           #isStaticField:Z
    .end local v11           #modifiers:I
    .end local v13           #name:Ljava/lang/String;
    .end local v15           #part:Lgnu/bytecode/Member;
    .end local v16           #type:Lgnu/bytecode/Type;
    .end local v17           #val1:Ljava/lang/Object;
    .restart local v6       #arg1:Lgnu/expr/Expression;
    :cond_6
    invoke-virtual {v5}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v19

    move-object/from16 v16, v19

    goto/16 :goto_2

    .line 209
    .end local v6           #arg1:Lgnu/expr/Expression;
    .restart local v9       #ctype:Lgnu/bytecode/ClassType;
    .restart local v15       #part:Lgnu/bytecode/Member;
    .restart local v16       #type:Lgnu/bytecode/Type;
    .restart local v17       #val1:Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v19, v0

    move-object/from16 v8, v19

    goto/16 :goto_3

    .line 220
    .restart local v8       #caller:Lgnu/bytecode/ClassType;
    :cond_8
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/bytecode/Member;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 224
    move-object/from16 v0, v17

    check-cast v0, Lgnu/bytecode/Member;

    move-object v15, v0

    .line 225
    invoke-interface {v15}, Lgnu/bytecode/Member;->getName()Ljava/lang/String;

    move-result-object v13

    .restart local v13       #name:Ljava/lang/String;
    goto/16 :goto_4

    .line 228
    .end local v13           #name:Ljava/lang/String;
    :cond_9
    const/4 v13, 0x0

    .restart local v13       #name:Ljava/lang/String;
    goto/16 :goto_4

    .line 233
    .restart local v11       #modifiers:I
    :cond_a
    const/16 v19, 0x0

    move/from16 v10, v19

    goto/16 :goto_5

    .line 238
    .restart local v10       #isStaticField:Z
    :cond_b
    invoke-static {v9}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v20

    goto :goto_6

    .line 247
    :cond_c
    sget-object v19, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto/16 :goto_1

    .line 251
    .end local v8           #caller:Lgnu/bytecode/ClassType;
    .end local v9           #ctype:Lgnu/bytecode/ClassType;
    .end local v10           #isStaticField:Z
    .end local v11           #modifiers:I
    .end local v13           #name:Ljava/lang/String;
    .end local v17           #val1:Ljava/lang/Object;
    :cond_d
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_1
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 2
    .parameter "args"

    .prologue
    .line 256
    iget-boolean v0, p0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    if-eqz v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 257
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lgnu/bytecode/Type;->void_type:Lgnu/bytecode/PrimType;

    goto :goto_0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    .line 176
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 181
    iget-boolean v0, p0, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    iget-boolean v0, v0, Lgnu/expr/Compilation;->mustCompile:Z

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lgnu/kawa/reflect/Invoke;->inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method
