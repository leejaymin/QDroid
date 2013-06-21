.class public Lgnu/kawa/reflect/SlotGet;
.super Lgnu/mapping/Procedure2;
.source "SlotGet.java"

# interfaces
.implements Lgnu/mapping/HasSetter;
.implements Lgnu/expr/CanInline;
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final field:Lgnu/kawa/reflect/SlotGet;

.field static noClasses:[Ljava/lang/Class;

.field public static final slotRef:Lgnu/kawa/reflect/SlotGet;

.field public static final staticField:Lgnu/kawa/reflect/SlotGet;


# instance fields
.field isStatic:Z

.field setter:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 11
    new-array v0, v3, [Ljava/lang/Class;

    sput-object v0, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    .line 17
    new-instance v0, Lgnu/kawa/reflect/SlotGet;

    const-string v1, "field"

    sget-object v2, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {v0, v1, v3, v2}, Lgnu/kawa/reflect/SlotGet;-><init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V

    sput-object v0, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    .line 19
    new-instance v0, Lgnu/kawa/reflect/SlotGet;

    const-string v1, "slot-ref"

    sget-object v2, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {v0, v1, v3, v2}, Lgnu/kawa/reflect/SlotGet;-><init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V

    sput-object v0, Lgnu/kawa/reflect/SlotGet;->slotRef:Lgnu/kawa/reflect/SlotGet;

    .line 21
    new-instance v0, Lgnu/kawa/reflect/SlotGet;

    const-string v1, "static-field"

    const/4 v2, 0x1

    sget-object v3, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/reflect/SlotGet;-><init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V

    sput-object v0, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "name"
    .parameter "isStatic"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure2;-><init>(Ljava/lang/String;)V

    .line 27
    iput-boolean p2, p0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V
    .locals 0
    .parameter "name"
    .parameter "isStatic"
    .parameter "setter"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure2;-><init>(Ljava/lang/String;)V

    .line 33
    iput-boolean p2, p0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    .line 34
    iput-object p3, p0, Lgnu/kawa/reflect/SlotGet;->setter:Lgnu/mapping/Procedure;

    .line 35
    return-void
.end method

.method static coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .parameter "obj"

    .prologue
    .line 182
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 183
    check-cast p0, Ljava/lang/Class;

    .end local p0
    move-object v0, p0

    .line 185
    :goto_0
    return-object v0

    .line 184
    .restart local p0
    :cond_0
    instance-of v0, p0, Lgnu/bytecode/Type;

    if-eqz v0, :cond_1

    .line 185
    check-cast p0, Lgnu/bytecode/Type;

    .end local p0
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 186
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "argument is neither Class nor Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"
    .parameter "fname"

    .prologue
    .line 39
    sget-object v0, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    invoke-virtual {v0, p0, p1}, Lgnu/kawa/reflect/SlotGet;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getSlotValue(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)Ljava/lang/Object;
    .locals 5
    .parameter "isStatic"
    .parameter "obj"
    .parameter "name"
    .parameter "fname"
    .parameter "getName"
    .parameter "isName"
    .parameter "language"

    .prologue
    .line 97
    if-eqz p0, :cond_0

    invoke-static {p1}, Lgnu/kawa/reflect/SlotGet;->coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    .local v0, clas:Ljava/lang/Class;
    :goto_0
    const-string v1, "length"

    if-ne p3, v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    .line 101
    .local p0, length:I
    invoke-virtual {p6, p0}, Lgnu/expr/Language;->coerceToObject(I)Ljava/lang/Object;

    move-result-object p0

    .line 160
    .end local p0           #length:I
    .end local p1
    .end local p2
    .end local p4
    :goto_1
    return-object p0

    .line 97
    .end local v0           #clas:Ljava/lang/Class;
    .local p0, isStatic:Z
    .restart local p1
    .restart local p2
    .restart local p4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 103
    .restart local v0       #clas:Ljava/lang/Class;
    :cond_1
    const-string v1, "class"

    if-ne p3, v1, :cond_2

    move-object p0, v0

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    const/4 v2, 0x0

    .line 106
    .local v2, illegalAccess:Z
    if-eqz p3, :cond_4

    .line 111
    :try_start_0
    invoke-virtual {v0, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 117
    .local v1, field:Ljava/lang/reflect/Field;
    :goto_2
    if-eqz v1, :cond_4

    .line 119
    if-eqz p0, :cond_3

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3

    .line 121
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0           #isStatic:Z
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot access non-static field \'"

    .end local p2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    .end local v1           #field:Ljava/lang/reflect/Field;
    .restart local p0       #isStatic:Z
    .restart local p1
    .restart local p2
    :catch_0
    move-exception v1

    .line 115
    .local v1, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    .local v1, field:Ljava/lang/reflect/Field;
    goto :goto_2

    .line 125
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #field:Ljava/lang/reflect/Field;
    invoke-virtual {p6, v3, v1}, Lgnu/expr/Language;->coerceToObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object p0

    goto :goto_1

    .line 127
    :catch_1
    move-exception v1

    .line 129
    .local v1, ex:Ljava/lang/IllegalAccessException;
    const/4 v1, 0x1

    .end local v2           #illegalAccess:Z
    .local v1, illegalAccess:Z
    move v2, v1

    .line 141
    .end local v1           #illegalAccess:Z
    .restart local v2       #illegalAccess:Z
    :cond_4
    :goto_3
    const/4 v3, 0x0

    .line 142
    .local v3, mname:Ljava/lang/String;
    const/4 v1, 0x0

    .line 145
    .local v1, getmethod:Ljava/lang/reflect/Method;
    if-eqz p4, :cond_5

    .line 147
    .end local v3           #mname:Ljava/lang/String;
    .local p4, mname:Ljava/lang/String;
    :goto_4
    :try_start_2
    sget-object v3, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual {v0, p4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object p2

    .line 154
    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p2, getmethod:Ljava/lang/reflect/Method;
    :goto_5
    if-eqz p0, :cond_7

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    .end local p0           #isStatic:Z
    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_7

    .line 156
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "cannot call non-static getter method \'"

    .end local p5
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p5, 0x27

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_9

    .line 162
    :catch_2
    move-exception p0

    move-object p1, p2

    .end local p2           #getmethod:Ljava/lang/reflect/Method;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    move-object p2, p4

    .line 164
    .end local p4           #mname:Ljava/lang/String;
    .local p0, ex:Ljava/lang/reflect/InvocationTargetException;
    .local p2, mname:Ljava/lang/String;
    :goto_6
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    .end local p0           #ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-static {p0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 131
    .local p0, isStatic:Z
    .local p1, obj:Ljava/lang/Object;
    .local p2, name:Ljava/lang/String;
    .local p4, getName:Ljava/lang/String;
    .restart local p5
    :catch_3
    move-exception v1

    .line 133
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 145
    .local v1, getmethod:Ljava/lang/reflect/Method;
    .restart local v3       #mname:Ljava/lang/String;
    :cond_5
    :try_start_4
    const-string p4, "get"

    .end local p4           #getName:Ljava/lang/String;
    invoke-static {p4, p2}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object p4

    goto :goto_4

    .line 148
    :catch_4
    move-exception p4

    .line 149
    .local p4, getEx:Ljava/lang/Exception;
    :goto_7
    if-eqz p5, :cond_6

    move-object p4, p5

    .line 151
    .end local v3           #mname:Ljava/lang/String;
    .end local p2           #name:Ljava/lang/String;
    .local p4, mname:Ljava/lang/String;
    :goto_8
    :try_start_5
    sget-object p2, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual {v0, p4, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_7

    move-result-object p2

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p2, getmethod:Ljava/lang/reflect/Method;
    goto :goto_5

    .line 149
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .restart local v3       #mname:Ljava/lang/String;
    .local p2, name:Ljava/lang/String;
    .local p4, getEx:Ljava/lang/Exception;
    :cond_6
    :try_start_6
    const-string p4, "is"

    .end local p4           #getEx:Ljava/lang/Exception;
    invoke-static {p4, p2}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_8

    move-result-object p2

    move-object p4, p2

    goto :goto_8

    .line 158
    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .end local v3           #mname:Ljava/lang/String;
    .end local p0           #isStatic:Z
    .local p2, getmethod:Ljava/lang/reflect/Method;
    .local p4, mname:Ljava/lang/String;
    :cond_7
    :try_start_7
    sget-object p0, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 159
    .local p0, result:Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .end local p1           #obj:Ljava/lang/Object;
    invoke-virtual {p6, p1, p0}, Lgnu/expr/Language;->coerceToObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_9

    move-result-object p0

    .line 160
    goto/16 :goto_1

    .line 166
    .end local p4           #mname:Ljava/lang/String;
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .restart local v3       #mname:Ljava/lang/String;
    .local p0, isStatic:Z
    .restart local p1       #obj:Ljava/lang/Object;
    .local p2, name:Ljava/lang/String;
    :catch_5
    move-exception p0

    move-object p1, v1

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    move-object p2, v3

    .line 168
    .end local v3           #mname:Ljava/lang/String;
    .end local p5
    .local p0, ex:Ljava/lang/IllegalAccessException;
    .local p2, mname:Ljava/lang/String;
    :goto_9
    const/4 p0, 0x1

    .end local v2           #illegalAccess:Z
    .local p0, illegalAccess:Z
    move-object v4, p1

    .end local p1           #getmethod:Ljava/lang/reflect/Method;
    .local v4, getmethod:Ljava/lang/reflect/Method;
    move p1, p0

    .end local p0           #illegalAccess:Z
    .local p1, illegalAccess:Z
    move-object p0, v4

    .line 173
    .end local v4           #getmethod:Ljava/lang/reflect/Method;
    .end local p2           #mname:Ljava/lang/String;
    .local p0, getmethod:Ljava/lang/reflect/Method;
    :goto_a
    if-eqz p1, :cond_8

    .line 174
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0           #getmethod:Ljava/lang/reflect/Method;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #illegalAccess:Z
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "illegal access for field "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 170
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .restart local v2       #illegalAccess:Z
    .restart local v3       #mname:Ljava/lang/String;
    .local p0, isStatic:Z
    .local p1, obj:Ljava/lang/Object;
    .local p2, name:Ljava/lang/String;
    .restart local p5
    :catch_6
    move-exception p0

    move-object p0, v1

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p0, getmethod:Ljava/lang/reflect/Method;
    move-object p1, v3

    .end local v3           #mname:Ljava/lang/String;
    .end local p2           #name:Ljava/lang/String;
    .end local p5
    .local p1, mname:Ljava/lang/String;
    :goto_b
    move p1, v2

    .end local v2           #illegalAccess:Z
    .local p1, illegalAccess:Z
    goto :goto_a

    .line 176
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0           #getmethod:Ljava/lang/reflect/Method;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #illegalAccess:Z
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no such field "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " in "

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

    .line 170
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .restart local v2       #illegalAccess:Z
    .local p0, isStatic:Z
    .local p1, obj:Ljava/lang/Object;
    .restart local p4       #mname:Ljava/lang/String;
    .restart local p5
    :catch_7
    move-exception p0

    move-object p0, v1

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p0, getmethod:Ljava/lang/reflect/Method;
    move-object p1, p4

    .end local p4           #mname:Ljava/lang/String;
    .local p1, mname:Ljava/lang/String;
    goto :goto_b

    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .restart local v3       #mname:Ljava/lang/String;
    .local p0, isStatic:Z
    .local p1, obj:Ljava/lang/Object;
    .restart local p2       #name:Ljava/lang/String;
    :catch_8
    move-exception p0

    move-object p0, v1

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p0, getmethod:Ljava/lang/reflect/Method;
    move-object p1, v3

    .end local v3           #mname:Ljava/lang/String;
    .local p1, mname:Ljava/lang/String;
    goto :goto_b

    .end local p0           #getmethod:Ljava/lang/reflect/Method;
    .end local p1           #mname:Ljava/lang/String;
    .end local p5
    .local p2, getmethod:Ljava/lang/reflect/Method;
    .restart local p4       #mname:Ljava/lang/String;
    :catch_9
    move-exception p0

    move-object p0, p2

    .end local p2           #getmethod:Ljava/lang/reflect/Method;
    .restart local p0       #getmethod:Ljava/lang/reflect/Method;
    move-object p1, p4

    .end local p4           #mname:Ljava/lang/String;
    .restart local p1       #mname:Ljava/lang/String;
    goto :goto_b

    .line 166
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .local p0, isStatic:Z
    .local p1, obj:Ljava/lang/Object;
    .restart local p4       #mname:Ljava/lang/String;
    .restart local p5
    :catch_a
    move-exception p0

    move-object p1, v1

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    move-object p2, p4

    .end local p4           #mname:Ljava/lang/String;
    .local p2, mname:Ljava/lang/String;
    goto :goto_9

    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .restart local v3       #mname:Ljava/lang/String;
    .local p1, obj:Ljava/lang/Object;
    .local p2, name:Ljava/lang/String;
    :catch_b
    move-exception p0

    move-object p1, v1

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    move-object p2, v3

    .end local v3           #mname:Ljava/lang/String;
    .local p2, mname:Ljava/lang/String;
    goto :goto_9

    .end local p0           #isStatic:Z
    .end local p1           #getmethod:Ljava/lang/reflect/Method;
    .end local p5
    .local p2, getmethod:Ljava/lang/reflect/Method;
    .restart local p4       #mname:Ljava/lang/String;
    :catch_c
    move-exception p0

    move-object p1, p2

    .end local p2           #getmethod:Ljava/lang/reflect/Method;
    .restart local p1       #getmethod:Ljava/lang/reflect/Method;
    move-object p2, p4

    .end local p4           #mname:Ljava/lang/String;
    .local p2, mname:Ljava/lang/String;
    goto :goto_9

    .line 162
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .restart local v3       #mname:Ljava/lang/String;
    .restart local p0       #isStatic:Z
    .local p1, obj:Ljava/lang/Object;
    .local p2, name:Ljava/lang/String;
    .restart local p5
    :catch_d
    move-exception p0

    move-object p1, v1

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    move-object p2, v3

    .end local v3           #mname:Ljava/lang/String;
    .local p2, mname:Ljava/lang/String;
    goto/16 :goto_6

    .end local p2           #mname:Ljava/lang/String;
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .local p1, obj:Ljava/lang/Object;
    .restart local p4       #mname:Ljava/lang/String;
    :catch_e
    move-exception p0

    move-object p1, v1

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    move-object p2, p4

    .end local p4           #mname:Ljava/lang/String;
    .restart local p2       #mname:Ljava/lang/String;
    goto/16 :goto_6

    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .restart local v3       #mname:Ljava/lang/String;
    .local p1, obj:Ljava/lang/Object;
    .local p2, name:Ljava/lang/String;
    :catch_f
    move-exception p0

    move-object p1, v1

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    move-object p2, v3

    .end local v3           #mname:Ljava/lang/String;
    .local p2, mname:Ljava/lang/String;
    goto/16 :goto_6

    .line 148
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .local p1, obj:Ljava/lang/Object;
    .local p2, name:Ljava/lang/String;
    .restart local p4       #mname:Ljava/lang/String;
    :catch_10
    move-exception v3

    move-object v4, v3

    move-object v3, p4

    .end local p4           #mname:Ljava/lang/String;
    .restart local v3       #mname:Ljava/lang/String;
    move-object p4, v4

    goto/16 :goto_7
.end method

.method public static lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;
    .locals 5
    .parameter "clas"
    .parameter "name"
    .parameter "caller"

    .prologue
    .line 209
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Lgnu/bytecode/ObjectType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object v0

    .line 211
    .local v0, field:Lgnu/bytecode/Field;
    if-eqz v0, :cond_1

    .line 213
    if-nez p2, :cond_0

    .line 214
    sget-object p2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 215
    :cond_0
    invoke-virtual {p2, v0, p0}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 225
    :goto_0
    return-object v3

    .line 220
    :cond_1
    const-string v3, "get"

    invoke-static {v3, p1}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, getname:Ljava/lang/String;
    sget-object v3, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    invoke-virtual {p0, v1, v3}, Lgnu/bytecode/ObjectType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    .line 222
    .local v2, method:Lgnu/bytecode/Method;
    if-nez v2, :cond_2

    move-object v3, v0

    .line 223
    goto :goto_0

    :cond_2
    move-object v3, v2

    .line 225
    goto :goto_0
.end method

.method public static makeGetField(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/ApplyExp;
    .locals 3
    .parameter "value"
    .parameter "fieldName"

    .prologue
    .line 471
    const/4 v1, 0x2

    new-array v0, v1, [Lgnu/expr/Expression;

    .line 472
    .local v0, args:[Lgnu/expr/Expression;
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 473
    const/4 v1, 0x1

    new-instance v2, Lgnu/expr/QuoteExp;

    invoke-direct {v2, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v2, v0, v1

    .line 474
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v2, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object v1
.end method

.method public static staticField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"
    .parameter "fname"

    .prologue
    .line 44
    sget-object v0, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    invoke-virtual {v0, p0, p1}, Lgnu/kawa/reflect/SlotGet;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 50
    const/4 v4, 0x0

    .local v4, getName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 51
    .local v5, isName:Ljava/lang/String;
    instance-of v0, p2, Lgnu/bytecode/Field;

    if-eqz v0, :cond_1

    .line 53
    check-cast p2, Lgnu/bytecode/Field;

    .end local p2
    invoke-virtual {p2}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, fname:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, name:Ljava/lang/String;
    :goto_0
    const-string v0, "class"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    const-string v3, "class"

    .line 84
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lgnu/kawa/reflect/SlotGet;->getSlotValue(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 56
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #fname:Ljava/lang/String;
    .restart local p2
    :cond_1
    instance-of v0, p2, Lgnu/bytecode/Method;

    if-eqz v0, :cond_4

    .line 58
    check-cast p2, Lgnu/bytecode/Method;

    .end local p2
    invoke-virtual {p2}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, mname:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 60
    .restart local v2       #name:Ljava/lang/String;
    const-string v0, "get"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    move-object v4, v7

    .line 64
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 65
    .restart local v3       #fname:Ljava/lang/String;
    goto :goto_0

    .line 62
    .end local v3           #fname:Ljava/lang/String;
    :cond_3
    const-string v0, "is"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    move-object v5, v7

    goto :goto_2

    .line 66
    .end local v2           #name:Ljava/lang/String;
    .end local v7           #mname:Ljava/lang/String;
    .restart local p2
    :cond_4
    instance-of v0, p2, Lgnu/mapping/SimpleSymbol;

    if-nez v0, :cond_5

    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 74
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .restart local v2       #name:Ljava/lang/String;
    invoke-static {v2}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #fname:Ljava/lang/String;
    goto :goto_0

    .line 78
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #fname:Ljava/lang/String;
    :cond_6
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x2

    const-string v6, "string"

    invoke-direct {v0, p0, v1, p2, v6}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 82
    .end local p2
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #fname:Ljava/lang/String;
    :cond_7
    const-string v0, "length"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v3, "length"

    goto :goto_1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 22
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 344
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    .line 345
    .local v5, args:[Lgnu/expr/Expression;
    const/16 v20, 0x0

    aget-object v3, v5, v20

    .line 346
    .local v3, arg0:Lgnu/expr/Expression;
    const/16 v20, 0x1

    aget-object v4, v5, v20

    .line 347
    .local v4, arg1:Lgnu/expr/Expression;
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v14

    .line 348
    .local v14, language:Lgnu/expr/Language;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    invoke-virtual {v14, v3}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v20

    move-object/from16 v19, v20

    .line 350
    .local v19, type:Lgnu/bytecode/Type;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    .line 351
    .local v6, code:Lgnu/bytecode/CodeAttr;
    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    move-object v0, v4

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 353
    move-object/from16 v0, v19

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v7, v0

    .line 354
    .local v7, ctype:Lgnu/bytecode/ClassType;
    move-object v0, v4

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v18

    .line 355
    .local v18, part:Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/bytecode/Field;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 357
    move-object/from16 v0, v18

    check-cast v0, Lgnu/bytecode/Field;

    move-object v9, v0

    .line 358
    .local v9, field:Lgnu/bytecode/Field;
    invoke-virtual {v9}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v16

    .line 359
    .local v16, modifiers:I
    and-int/lit8 v20, v16, 0x8

    if-eqz v20, :cond_3

    const/16 v20, 0x1

    move/from16 v12, v20

    .line 360
    .local v12, isStaticField:Z
    :goto_1
    const/16 v20, 0x0

    aget-object v20, v5, v20

    if-eqz v12, :cond_4

    sget-object v21, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 363
    if-eqz v12, :cond_5

    .line 365
    const/4 v11, 0x0

    .line 395
    .local v11, inlined:Z
    if-nez v11, :cond_0

    .line 396
    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 400
    .end local v11           #inlined:Z
    :cond_0
    :goto_3
    invoke-virtual {v9}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v10

    .line 401
    .local v10, ftype:Lgnu/bytecode/Type;
    invoke-virtual {v10}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v8

    .line 402
    .local v8, fclass:Ljava/lang/Class;
    if-eqz v8, :cond_1

    .line 403
    invoke-virtual {v14, v8}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v10

    .line 404
    :cond_1
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 434
    .end local v7           #ctype:Lgnu/bytecode/ClassType;
    .end local v8           #fclass:Ljava/lang/Class;
    .end local v9           #field:Lgnu/bytecode/Field;
    .end local v10           #ftype:Lgnu/bytecode/Type;
    .end local v12           #isStaticField:Z
    .end local v16           #modifiers:I
    .end local v18           #part:Ljava/lang/Object;
    :goto_4
    return-void

    .line 348
    .end local v6           #code:Lgnu/bytecode/CodeAttr;
    .end local v19           #type:Lgnu/bytecode/Type;
    :cond_2
    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v20

    move-object/from16 v19, v20

    goto :goto_0

    .line 359
    .restart local v6       #code:Lgnu/bytecode/CodeAttr;
    .restart local v7       #ctype:Lgnu/bytecode/ClassType;
    .restart local v9       #field:Lgnu/bytecode/Field;
    .restart local v16       #modifiers:I
    .restart local v18       #part:Ljava/lang/Object;
    .restart local v19       #type:Lgnu/bytecode/Type;
    :cond_3
    const/16 v20, 0x0

    move/from16 v12, v20

    goto :goto_1

    .line 360
    .restart local v12       #isStaticField:Z
    :cond_4
    invoke-static {v7}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v21

    goto :goto_2

    .line 399
    :cond_5
    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    goto :goto_3

    .line 407
    .end local v9           #field:Lgnu/bytecode/Field;
    .end local v12           #isStaticField:Z
    .end local v16           #modifiers:I
    :cond_6
    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/bytecode/Method;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 409
    move-object/from16 v0, v18

    check-cast v0, Lgnu/bytecode/Method;

    move-object v15, v0

    .line 410
    .local v15, method:Lgnu/bytecode/Method;
    invoke-virtual {v15}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v16

    .line 411
    .restart local v16       #modifiers:I
    invoke-virtual {v15}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v13

    .line 412
    .local v13, isStaticMethod:Z
    const/16 v20, 0x0

    aget-object v20, v5, v20

    if-eqz v13, :cond_7

    sget-object v21, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    :goto_5
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 415
    if-eqz v13, :cond_8

    .line 416
    invoke-virtual {v6, v15}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 421
    :goto_6
    invoke-virtual {v15}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_4

    .line 412
    :cond_7
    invoke-static {v7}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v21

    goto :goto_5

    .line 417
    :cond_8
    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 418
    invoke-virtual {v6, v15}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    goto :goto_6

    .line 420
    :cond_9
    invoke-virtual {v6, v15}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_6

    .line 425
    .end local v7           #ctype:Lgnu/bytecode/ClassType;
    .end local v13           #isStaticMethod:Z
    .end local v15           #method:Lgnu/bytecode/Method;
    .end local v16           #modifiers:I
    .end local v18           #part:Ljava/lang/Object;
    :cond_a
    invoke-static {v4}, Lgnu/kawa/reflect/ClassMethods;->checkName(Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v17

    .line 426
    .local v17, name:Ljava/lang/String;
    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    const-string v20, "length"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    move/from16 v20, v0

    if-nez v20, :cond_b

    .line 428
    const/16 v20, 0x0

    aget-object v20, v5, v20

    invoke-static/range {v19 .. v19}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 429
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 430
    sget-object v20, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/kawa/lispexpr/LangPrimType;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto/16 :goto_4

    .line 433
    :cond_b
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_4
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 7
    .parameter "args"

    .prologue
    const/4 v6, 0x1

    .line 438
    array-length v3, p1

    .line 439
    .local v3, nargs:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 441
    const/4 v5, 0x0

    aget-object v1, p1, v5

    .line 442
    .local v1, arg0:Lgnu/expr/Expression;
    aget-object v2, p1, v6

    .line 443
    .local v2, arg1:Lgnu/expr/Expression;
    instance-of v5, v2, Lgnu/expr/QuoteExp;

    if-eqz v5, :cond_2

    .line 445
    move-object v0, v2

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 446
    .local v4, part:Ljava/lang/Object;
    instance-of v5, v4, Lgnu/bytecode/Field;

    if-eqz v5, :cond_0

    .line 447
    check-cast v4, Lgnu/bytecode/Field;

    .end local v4           #part:Ljava/lang/Object;
    invoke-virtual {v4}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 455
    .end local v1           #arg0:Lgnu/expr/Expression;
    .end local v2           #arg1:Lgnu/expr/Expression;
    :goto_0
    return-object v5

    .line 448
    .restart local v1       #arg0:Lgnu/expr/Expression;
    .restart local v2       #arg1:Lgnu/expr/Expression;
    .restart local v4       #part:Ljava/lang/Object;
    :cond_0
    instance-of v5, v4, Lgnu/bytecode/Method;

    if-eqz v5, :cond_1

    .line 449
    check-cast v4, Lgnu/bytecode/Method;

    .end local v4           #part:Ljava/lang/Object;
    invoke-virtual {v4}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v5

    goto :goto_0

    .line 450
    .restart local v4       #part:Ljava/lang/Object;
    :cond_1
    iget-boolean v5, p0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    if-nez v5, :cond_2

    invoke-virtual {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    instance-of v5, v5, Lgnu/bytecode/ArrayType;

    if-eqz v5, :cond_2

    const-string v5, "length"

    invoke-static {v2, v6}, Lgnu/kawa/reflect/ClassMethods;->checkName(Lgnu/expr/Expression;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 452
    sget-object v5, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/kawa/lispexpr/LangPrimType;

    goto :goto_0

    .line 455
    .end local v1           #arg0:Lgnu/expr/Expression;
    .end local v2           #arg1:Lgnu/expr/Expression;
    .end local v4           #part:Ljava/lang/Object;
    :cond_2
    sget-object v5, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    goto :goto_0
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lgnu/kawa/reflect/SlotGet;->setter:Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    invoke-super {p0}, Lgnu/mapping/Procedure2;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/kawa/reflect/SlotGet;->setter:Lgnu/mapping/Procedure;

    goto :goto_0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 31
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    .line 231
    invoke-virtual/range {p1 .. p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v8

    .line 233
    .local v8, comp:Lgnu/expr/Compilation;
    invoke-virtual {v8}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v18

    .line 235
    .local v18, language:Lgnu/expr/Language;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    .line 236
    .local v6, args:[Lgnu/expr/Expression;
    const/16 v27, 0x0

    aget-object v4, v6, v27

    .line 237
    .local v4, arg0:Lgnu/expr/Expression;
    const/16 v27, 0x1

    aget-object v5, v6, v27

    .line 238
    .local v5, arg1:Lgnu/expr/Expression;
    const/16 v21, 0x0

    .line 239
    .local v21, name:Ljava/lang/String;
    move-object v0, v5

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v27, v0

    if-eqz v27, :cond_1

    .line 241
    move-object v0, v5

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v26

    .line 242
    .local v26, val1:Ljava/lang/Object;
    move-object/from16 v0, v26

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v27, v0

    if-nez v27, :cond_0

    move-object/from16 v0, v26

    instance-of v0, v0, Lgnu/lists/FString;

    move/from16 v27, v0

    if-nez v27, :cond_0

    move-object/from16 v0, v26

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v27, v0

    if-eqz v27, :cond_1

    .line 245
    :cond_0
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 247
    .end local v26           #val1:Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 249
    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v25

    .line 250
    .local v25, type:Lgnu/bytecode/Type;
    move-object/from16 v0, v25

    move-object v1, v8

    invoke-static {v0, v1}, Lgnu/kawa/reflect/Invoke;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v17

    .line 251
    .local v17, known:I
    if-gez v17, :cond_2

    move-object/from16 v27, p1

    .line 339
    .end local v17           #known:I
    :goto_0
    return-object v27

    .line 253
    .restart local v17       #known:I
    :cond_2
    const-string v27, "class"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 255
    if-lez v17, :cond_3

    .line 256
    invoke-virtual/range {v25 .. v25}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v27

    goto :goto_0

    .line 257
    :cond_3
    sget-object v27, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    const-string v28, "getReflectClass"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v19

    .line 259
    .local v19, method:Lgnu/bytecode/Method;
    new-instance v27, Lgnu/expr/ApplyExp;

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v4, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    goto :goto_0

    .line 261
    .end local v19           #method:Lgnu/bytecode/Method;
    :cond_4
    if-eqz v25, :cond_5

    .line 263
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v22, v0

    const/16 v27, 0x0

    new-instance v28, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v28, v22, v27

    const/16 v27, 0x1

    aput-object v5, v22, v27

    .line 265
    .local v22, nargs:[Lgnu/expr/Expression;
    new-instance v23, Lgnu/expr/ApplyExp;

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 266
    .local v23, nexp:Lgnu/expr/ApplyExp;
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 267
    move-object/from16 p1, v23

    .line 272
    .end local v17           #known:I
    .end local v22           #nargs:[Lgnu/expr/Expression;
    .end local v23           #nexp:Lgnu/expr/ApplyExp;
    :cond_5
    :goto_1
    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v27, v0

    if-eqz v27, :cond_e

    if-eqz v21, :cond_e

    .line 274
    move-object/from16 v0, v25

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v9, v0

    .line 275
    .local v9, ctype:Lgnu/bytecode/ClassType;
    move-object v0, v8

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    if-eqz v27, :cond_7

    move-object v0, v8

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    move-object/from16 v7, v27

    .line 277
    .local v7, caller:Lgnu/bytecode/ClassType;
    :goto_2
    move-object v0, v9

    move-object/from16 v1, v21

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lgnu/kawa/reflect/SlotGet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v24

    .line 278
    .local v24, part:Lgnu/bytecode/Member;
    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/bytecode/Field;

    move/from16 v27, v0

    if-eqz v27, :cond_a

    .line 280
    move-object/from16 v0, v24

    check-cast v0, Lgnu/bytecode/Field;

    move-object v11, v0

    .line 281
    .local v11, field:Lgnu/bytecode/Field;
    invoke-virtual {v11}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v20

    .line 282
    .local v20, modifiers:I
    and-int/lit8 v27, v20, 0x8

    if-eqz v27, :cond_8

    const/16 v27, 0x1

    move/from16 v15, v27

    .line 283
    .local v15, isStaticField:Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    if-nez v15, :cond_9

    .line 284
    new-instance v27, Lgnu/expr/ErrorExp;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "cannot access non-static field `"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\' using `"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/reflect/SlotGet;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x27

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    goto/16 :goto_0

    .line 271
    .end local v7           #caller:Lgnu/bytecode/ClassType;
    .end local v9           #ctype:Lgnu/bytecode/ClassType;
    .end local v11           #field:Lgnu/bytecode/Field;
    .end local v15           #isStaticField:Z
    .end local v20           #modifiers:I
    .end local v24           #part:Lgnu/bytecode/Member;
    .end local v25           #type:Lgnu/bytecode/Type;
    :cond_6
    invoke-virtual {v4}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v25

    .restart local v25       #type:Lgnu/bytecode/Type;
    goto/16 :goto_1

    .line 275
    .restart local v9       #ctype:Lgnu/bytecode/ClassType;
    :cond_7
    move-object v0, v8

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v0

    move-object/from16 v7, v27

    goto :goto_2

    .line 282
    .restart local v7       #caller:Lgnu/bytecode/ClassType;
    .restart local v11       #field:Lgnu/bytecode/Field;
    .restart local v20       #modifiers:I
    .restart local v24       #part:Lgnu/bytecode/Member;
    :cond_8
    const/16 v27, 0x0

    move/from16 v15, v27

    goto :goto_3

    .line 286
    .restart local v15       #isStaticField:Z
    :cond_9
    if-eqz v7, :cond_c

    invoke-virtual {v7, v11, v9}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result v27

    if-nez v27, :cond_c

    .line 288
    new-instance v27, Lgnu/expr/ErrorExp;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "field "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v11}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x2e

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not accessible here"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    goto/16 :goto_0

    .line 292
    .end local v11           #field:Lgnu/bytecode/Field;
    .end local v15           #isStaticField:Z
    .end local v20           #modifiers:I
    :cond_a
    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/bytecode/Method;

    move/from16 v27, v0

    if-eqz v27, :cond_c

    .line 294
    move-object/from16 v0, v24

    check-cast v0, Lgnu/bytecode/Method;

    move-object/from16 v19, v0

    .line 295
    .restart local v19       #method:Lgnu/bytecode/Method;
    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v10

    .line 296
    .local v10, dtype:Lgnu/bytecode/ClassType;
    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v20

    .line 297
    .restart local v20       #modifiers:I
    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v16

    .line 298
    .local v16, isStaticMethod:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    move/from16 v27, v0

    if-eqz v27, :cond_b

    if-nez v16, :cond_b

    .line 299
    new-instance v27, Lgnu/expr/ErrorExp;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "cannot call non-static getter method `"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\' using `"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/reflect/SlotGet;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x27

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    goto/16 :goto_0

    .line 301
    :cond_b
    if-eqz v7, :cond_c

    move-object v0, v7

    move-object v1, v10

    move-object v2, v9

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;I)Z

    move-result v27

    if-nez v27, :cond_c

    .line 302
    new-instance v27, Lgnu/expr/ErrorExp;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "method "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not accessible here"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    goto/16 :goto_0

    .line 305
    .end local v10           #dtype:Lgnu/bytecode/ClassType;
    .end local v16           #isStaticMethod:Z
    .end local v19           #method:Lgnu/bytecode/Method;
    .end local v20           #modifiers:I
    :cond_c
    if-eqz v24, :cond_d

    .line 307
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v22, v0

    const/16 v27, 0x0

    aput-object v4, v22, v27

    const/16 v27, 0x1

    new-instance v28, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v28, v22, v27

    .line 309
    .restart local v22       #nargs:[Lgnu/expr/Expression;
    new-instance v23, Lgnu/expr/ApplyExp;

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 310
    .restart local v23       #nexp:Lgnu/expr/ApplyExp;
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-object/from16 v27, v23

    .line 311
    goto/16 :goto_0

    .line 313
    .end local v22           #nargs:[Lgnu/expr/Expression;
    .end local v23           #nexp:Lgnu/expr/ApplyExp;
    :cond_d
    sget-object v27, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_e

    .line 314
    const/16 v27, 0x65

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "no slot `"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\' in "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object v0, v8

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 316
    .end local v7           #caller:Lgnu/bytecode/ClassType;
    .end local v9           #ctype:Lgnu/bytecode/ClassType;
    .end local v24           #part:Lgnu/bytecode/Member;
    :cond_e
    if-eqz v21, :cond_10

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v27, v0

    if-nez v27, :cond_10

    .line 318
    invoke-static/range {v21 .. v21}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 321
    .local v12, fname:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    .line 322
    const-string v27, "get"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 323
    .local v13, getName:Ljava/lang/String;
    const-string v27, "is"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 324
    .local v14, isName:Ljava/lang/String;
    new-instance v23, Lgnu/expr/ApplyExp;

    sget-object v27, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    const/16 v28, 0x9

    move/from16 v0, v28

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "gnu.kawa.reflect.SlotGet"

    invoke-static/range {v30 .. v30}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-string v30, "getSlotValue"

    invoke-static/range {v30 .. v30}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    move/from16 v30, v0

    if-eqz v30, :cond_f

    sget-object v30, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    :goto_4
    aput-object v30, v28, v29

    const/16 v29, 0x3

    const/16 v30, 0x0

    aget-object v30, v6, v30

    aput-object v30, v28, v29

    const/16 v29, 0x4

    invoke-static/range {v21 .. v21}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x5

    invoke-static {v12}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x6

    invoke-static {v13}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x7

    invoke-static {v14}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x8

    invoke-static/range {v18 .. v18}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 336
    .restart local v23       #nexp:Lgnu/expr/ApplyExp;
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 337
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->walkApplyOnly(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_0

    .line 324
    .end local v23           #nexp:Lgnu/expr/ApplyExp;
    :cond_f
    sget-object v30, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    goto :goto_4

    .end local v12           #fname:Ljava/lang/String;
    .end local v13           #getName:Ljava/lang/String;
    .end local v14           #isName:Ljava/lang/String;
    :cond_10
    move-object/from16 v27, p1

    .line 339
    goto/16 :goto_0
.end method

.method public set2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 199
    iget-boolean v0, p0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v0, p1, p2, p3}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method public setN([Ljava/lang/Object;)V
    .locals 4
    .parameter "args"

    .prologue
    .line 191
    array-length v0, p1

    .line 192
    .local v0, nargs:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 193
    new-instance v1, Lgnu/mapping/WrongArguments;

    invoke-virtual {p0}, Lgnu/kawa/reflect/SlotGet;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v1

    .line 194
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {p0, v1, v2, v3}, Lgnu/kawa/reflect/SlotGet;->set2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    return-void
.end method
