.class public Lgnu/kawa/functions/GetNamedPart;
.super Lgnu/mapping/Procedure2;
.source "GetNamedPart.java"

# interfaces
.implements Lgnu/mapping/HasSetter;
.implements Lgnu/expr/CanInline;


# static fields
.field public static final CAST_METHOD_NAME:Ljava/lang/String; = "@"

.field public static final CLASSTYPE_FOR:Ljava/lang/String; = "<>"

.field public static final INSTANCEOF_METHOD_NAME:Ljava/lang/String; = "instance?"

.field public static final getNamedPart:Lgnu/kawa/functions/GetNamedPart;

.field static final typeHasNamedParts:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lgnu/kawa/functions/GetNamedPart;

    invoke-direct {v0}, Lgnu/kawa/functions/GetNamedPart;-><init>()V

    sput-object v0, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    .line 224
    const-string v0, "gnu.mapping.HasNamedParts"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedPart;->typeHasNamedParts:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;
    .locals 5
    .parameter "part1"
    .parameter "part2"

    .prologue
    .line 28
    invoke-virtual {p1}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v2

    .local v2, name2:Ljava/lang/Object;
    instance-of v3, v2, Lgnu/mapping/SimpleSymbol;

    if-eqz v3, :cond_2

    instance-of v3, p0, Lgnu/expr/ReferenceExp;

    if-eqz v3, :cond_0

    move-object v0, p0

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/ReferenceExp;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .local v1, name1:Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v1           #name1:Ljava/lang/String;
    :cond_0
    instance-of v3, p0, Lgnu/kawa/functions/GetNamedExp;

    if-eqz v3, :cond_2

    check-cast p0, Lgnu/kawa/functions/GetNamedExp;

    .end local p0
    iget-object v1, p0, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    .restart local v1       #name1:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 33
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 34
    .end local v1           #name1:Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getMemberPart(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "container"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 312
    :try_start_0
    invoke-static {p0, p1}, Lgnu/kawa/reflect/SlotGet;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 322
    :goto_0
    return-object v1

    .line 314
    :catch_0
    move-exception v1

    .line 318
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;

    invoke-static {p1}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v0

    .line 321
    .local v0, methods:Lgnu/mapping/MethodProc;
    if-eqz v0, :cond_0

    .line 322
    new-instance v1, Lgnu/kawa/functions/NamedPart;

    const/16 v2, 0x4d

    invoke-direct {v1, p0, p1, v2, v0}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/String;CLgnu/mapping/MethodProc;)V

    goto :goto_0

    .line 323
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no part \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getNamedPart(Ljava/lang/Object;Lgnu/mapping/Symbol;)Ljava/lang/Object;
    .locals 5
    .parameter "container"
    .parameter "part"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, name:Ljava/lang/String;
    instance-of v3, p0, Lgnu/mapping/HasNamedParts;

    if-eqz v3, :cond_0

    .line 288
    check-cast p0, Lgnu/mapping/HasNamedParts;

    .end local p0
    invoke-interface {p0, v1}, Lgnu/mapping/HasNamedParts;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 304
    :goto_0
    return-object v3

    .line 289
    .restart local p0
    :cond_0
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 290
    check-cast p0, Ljava/lang/Class;

    .end local p0
    invoke-static {p0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p0

    check-cast p0, Lgnu/bytecode/ClassType;

    .line 291
    :cond_1
    instance-of v3, p0, Ljava/lang/Package;

    if-eqz v3, :cond_2

    .line 295
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Package;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, pname:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 298
    .end local v2           #pname:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 302
    :cond_2
    instance-of v3, p0, Lgnu/bytecode/Type;

    if-eqz v3, :cond_3

    .line 303
    check-cast p0, Lgnu/bytecode/Type;

    invoke-static {p0, v1}, Lgnu/kawa/functions/GetNamedPart;->getTypePart(Lgnu/bytecode/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 304
    :cond_3
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lgnu/kawa/functions/GetNamedPart;->getMemberPart(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public static getTypePart(Lgnu/bytecode/Type;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "type"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 251
    const-string v0, "<>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 280
    :goto_0
    return-object v0

    .line 254
    :cond_0
    instance-of v0, p0, Lgnu/bytecode/ObjectType;

    if-eqz v0, :cond_5

    .line 256
    const-string v0, "instance?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    new-instance v0, Lgnu/kawa/functions/NamedPart;

    const/16 v1, 0x49

    invoke-direct {v0, p0, p1, v1}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/Object;C)V

    goto :goto_0

    .line 258
    :cond_1
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    new-instance v0, Lgnu/kawa/functions/NamedPart;

    const/16 v1, 0x43

    invoke-direct {v0, p0, p1, v1}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/Object;C)V

    goto :goto_0

    .line 260
    :cond_2
    const-string v0, "new"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    new-instance v0, Lgnu/kawa/functions/NamedPart;

    const/16 v1, 0x4e

    invoke-direct {v0, p0, p1, v1}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/Object;C)V

    goto :goto_0

    .line 262
    :cond_3
    const-string v0, ".length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_5

    instance-of v0, p0, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_5

    .line 265
    :cond_4
    new-instance v0, Lgnu/kawa/functions/NamedPart;

    const/16 v1, 0x44

    invoke-direct {v0, p0, p1, v1}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/Object;C)V

    goto :goto_0

    .line 268
    :cond_5
    instance-of v0, p0, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_6

    .line 272
    :try_start_0
    invoke-static {p0, p1}, Lgnu/kawa/reflect/SlotGet;->staticField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 278
    sget-object v0, Lgnu/kawa/reflect/ClassMethods;->classMethods:Lgnu/kawa/reflect/ClassMethods;

    invoke-static {v0, p0, p1}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/MethodProc;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_6
    invoke-static {p0, p1}, Lgnu/kawa/functions/GetNamedPart;->getMemberPart(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static makeExp(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 2
    .parameter "type"
    .parameter "member"

    .prologue
    .line 86
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-direct {v1, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lgnu/kawa/functions/GetNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 6
    .parameter "clas"
    .parameter "member"

    .prologue
    .line 40
    invoke-static {p0, p1}, Lgnu/kawa/functions/GetNamedPart;->combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, combinedName:Ljava/lang/String;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v3

    .line 42
    .local v3, env:Lgnu/mapping/Environment;
    if-eqz v2, :cond_1

    .line 44
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v1

    check-cast v1, Lkawa/lang/Translator;

    .line 45
    .local v1, tr:Lkawa/lang/Translator;
    sget-object v4, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v4, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    .line 46
    .local v4, symbol:Lgnu/mapping/Symbol;
    iget-object v1, v1, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    .end local v1           #tr:Lkawa/lang/Translator;
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v1

    .line 47
    .local v1, decl:Lgnu/expr/Declaration;
    invoke-static {v1}, Lgnu/expr/Declaration;->isUnknown(Lgnu/expr/Declaration;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 48
    new-instance p0, Lgnu/expr/ReferenceExp;

    .end local p0
    invoke-direct {p0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 76
    .end local v1           #decl:Lgnu/expr/Declaration;
    .end local v3           #env:Lgnu/mapping/Environment;
    .end local v4           #symbol:Lgnu/mapping/Symbol;
    :goto_0
    return-object p0

    .line 50
    .restart local v1       #decl:Lgnu/expr/Declaration;
    .restart local v3       #env:Lgnu/mapping/Environment;
    .restart local v4       #symbol:Lgnu/mapping/Symbol;
    .restart local p0
    :cond_0
    const/4 v1, 0x0

    .line 51
    .local v1, property:Ljava/lang/Object;
    if-eqz v4, :cond_1

    invoke-virtual {v3, v4, v1}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v1

    .end local v1           #property:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 52
    new-instance p0, Lgnu/expr/ReferenceExp;

    .end local p0
    invoke-direct {p0, v2}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    .end local v4           #symbol:Lgnu/mapping/Symbol;
    .restart local p0
    :cond_1
    instance-of v1, p0, Lgnu/expr/ReferenceExp;

    if-eqz v1, :cond_2

    move-object v0, p0

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v1, v0

    .local v1, rexp:Lgnu/expr/ReferenceExp;
    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->isUnknown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    .line 58
    .local v4, rsym:Ljava/lang/Object;
    instance-of v5, v4, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_3

    check-cast v4, Lgnu/mapping/Symbol;

    .line 60
    .local v4, sym:Lgnu/mapping/Symbol;
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Environment;->get(Lgnu/mapping/EnvironmentKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #env:Lgnu/mapping/Environment;
    if-nez v3, :cond_2

    .line 62
    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, name:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 66
    .local v1, cl:Ljava/lang/Class;
    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    .end local v1           #cl:Ljava/lang/Class;
    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 73
    .end local v4           #sym:Lgnu/mapping/Symbol;
    :cond_2
    :goto_2
    const/4 v1, 0x2

    new-array v1, v1, [Lgnu/expr/Expression;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 74
    .end local p0
    .local v1, args:[Lgnu/expr/Expression;
    new-instance p0, Lgnu/kawa/functions/GetNamedExp;

    invoke-direct {p0, v1}, Lgnu/kawa/functions/GetNamedExp;-><init>([Lgnu/expr/Expression;)V

    .line 75
    .local p0, exp:Lgnu/kawa/functions/GetNamedExp;
    iput-object v2, p0, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    goto :goto_0

    .line 58
    .local v1, rexp:Lgnu/expr/ReferenceExp;
    .restart local v3       #env:Lgnu/mapping/Environment;
    .local v4, rsym:Ljava/lang/Object;
    .local p0, clas:Lgnu/expr/Expression;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4           #rsym:Ljava/lang/Object;
    invoke-virtual {v3, v4}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    goto :goto_1

    .line 68
    .end local v1           #rexp:Lgnu/expr/ReferenceExp;
    .end local v3           #env:Lgnu/mapping/Environment;
    .local v4, sym:Lgnu/mapping/Symbol;
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public static makeExp(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 1
    .parameter "clas"
    .parameter "member"

    .prologue
    .line 81
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lgnu/kawa/functions/GetNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "container"
    .parameter "part"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 230
    instance-of v5, p1, Lgnu/mapping/Values;

    if-eqz v5, :cond_1

    .line 232
    check-cast p1, Lgnu/mapping/Values;

    .end local p1
    invoke-virtual {p1}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v4

    .line 233
    .local v4, values:[Ljava/lang/Object;
    new-instance v2, Lgnu/mapping/Values;

    invoke-direct {v2}, Lgnu/mapping/Values;-><init>()V

    .line 234
    .local v2, result:Lgnu/mapping/Values;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 236
    aget-object v5, v4, v1

    invoke-virtual {p0, v5, p2}, Lgnu/kawa/functions/GetNamedPart;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v2}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {v2}, Lgnu/mapping/Values;->canonicalize()Ljava/lang/Object;

    move-result-object v5

    .line 245
    .end local v1           #i:I
    .end local v2           #result:Lgnu/mapping/Values;
    .end local v4           #values:[Ljava/lang/Object;
    :goto_1
    return-object v5

    .line 241
    .restart local p1
    :cond_1
    instance-of v5, p2, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_2

    .line 242
    move-object v0, p2

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v3, v0

    .line 245
    .local v3, sym:Lgnu/mapping/Symbol;
    :goto_2
    invoke-static {p1, v3}, Lgnu/kawa/functions/GetNamedPart;->getNamedPart(Ljava/lang/Object;Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 244
    .end local v3           #sym:Lgnu/mapping/Symbol;
    :cond_2
    sget-object v5, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    .restart local v3       #sym:Lgnu/mapping/Symbol;
    goto :goto_2
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lgnu/kawa/functions/SetNamedPart;->setNamedPart:Lgnu/kawa/functions/SetNamedPart;

    return-object v0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 28
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    .line 92
    invoke-virtual/range {p1 .. p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 93
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    .line 94
    .local v6, args:[Lgnu/expr/Expression;
    move-object v0, v6

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    const/16 v24, 0x1

    aget-object v24, v6, v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/kawa/functions/GetNamedExp;

    move/from16 v24, v0

    if-nez v24, :cond_1

    :cond_0
    move-object/from16 v24, p1

    .line 221
    .end local p0
    :goto_0
    return-object v24

    .line 97
    .restart local p0
    :cond_1
    const/16 v24, 0x0

    aget-object v10, v6, v24

    .line 98
    .local v10, context:Lgnu/expr/Expression;
    const/4 v11, 0x0

    .line 99
    .local v11, decl:Lgnu/expr/Declaration;
    move-object v0, v10

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 101
    move-object v0, v10

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object/from16 v19, v0

    .line 102
    .local v19, rexp:Lgnu/expr/ReferenceExp;
    const-string v24, "*"

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 103
    const/16 v24, 0x1

    aget-object v24, v6, v24

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/GetNamedInstancePart;->makeExp(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v24

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v11

    .line 107
    .end local v19           #rexp:Lgnu/expr/ReferenceExp;
    :cond_3
    const/16 v24, 0x1

    aget-object p0, v6, v24

    .end local p0
    check-cast p0, Lgnu/expr/QuoteExp;

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 108
    .local v15, mname:Ljava/lang/String;
    invoke-virtual {v10}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v20

    .line 109
    .local v20, type:Lgnu/bytecode/Type;
    sget-object v24, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    move-object v0, v10

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/16 v24, 0x1

    move/from16 v12, v24

    .line 110
    .local v12, isInstanceOperator:Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v9

    .line 111
    .local v9, comp:Lgnu/expr/Compilation;
    invoke-virtual {v9}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v13

    .line 112
    .local v13, language:Lgnu/expr/Language;
    const/16 v24, 0x0

    move-object v0, v13

    move-object v1, v10

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v21

    .line 113
    .local v21, typeval:Lgnu/bytecode/Type;
    if-nez v9, :cond_5

    const/16 v24, 0x0

    move-object/from16 v8, v24

    .line 116
    .local v8, caller:Lgnu/bytecode/ClassType;
    :goto_2
    move-object/from16 v0, p1

    check-cast v0, Lgnu/kawa/functions/GetNamedExp;

    move-object/from16 v16, v0

    .line 118
    .local v16, nexp:Lgnu/kawa/functions/GetNamedExp;
    if-eqz v21, :cond_a

    .line 120
    const-string v24, "<>"

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 121
    new-instance v24, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    .end local v8           #caller:Lgnu/bytecode/ClassType;
    .end local v9           #comp:Lgnu/expr/Compilation;
    .end local v12           #isInstanceOperator:Z
    .end local v13           #language:Lgnu/expr/Language;
    .end local v16           #nexp:Lgnu/kawa/functions/GetNamedExp;
    .end local v21           #typeval:Lgnu/bytecode/Type;
    :cond_4
    const/16 v24, 0x0

    move/from16 v12, v24

    goto :goto_1

    .line 113
    .restart local v9       #comp:Lgnu/expr/Compilation;
    .restart local v12       #isInstanceOperator:Z
    .restart local v13       #language:Lgnu/expr/Language;
    .restart local v21       #typeval:Lgnu/bytecode/Type;
    :cond_5
    move-object v0, v9

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    move-object v0, v9

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    move-object/from16 v8, v24

    goto :goto_2

    :cond_6
    move-object v0, v9

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    move-object/from16 v8, v24

    goto :goto_2

    .line 123
    .restart local v8       #caller:Lgnu/bytecode/ClassType;
    .restart local v16       #nexp:Lgnu/kawa/functions/GetNamedExp;
    :cond_7
    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 125
    const-string v24, "new"

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 126
    const/16 v24, 0x4e

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v24

    goto/16 :goto_0

    .line 127
    :cond_8
    const-string v24, "instance?"

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 128
    const/16 v24, 0x49

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v24

    goto/16 :goto_0

    .line 129
    :cond_9
    const-string v24, "@"

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 130
    const/16 v24, 0x43

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v24

    goto/16 :goto_0

    .line 133
    :cond_a
    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v24, v0

    if-eqz v24, :cond_e

    .line 135
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_b

    const/16 v24, 0x0

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x2e

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 140
    new-instance v24, Lgnu/expr/QuoteExp;

    new-instance v25, Lgnu/kawa/functions/NamedPart;

    const/16 v26, 0x44

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    move-object v2, v15

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/Object;C)V

    invoke-direct/range {v24 .. v25}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 142
    :cond_b
    move-object/from16 v0, v21

    move-object v1, v9

    invoke-static {v0, v1}, Lgnu/kawa/reflect/Invoke;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v24

    if-gez v24, :cond_c

    move-object/from16 v24, p1

    .line 143
    goto/16 :goto_0

    .line 144
    :cond_c
    check-cast v21, Lgnu/bytecode/ObjectType;

    .end local v21           #typeval:Lgnu/bytecode/Type;
    invoke-static {v15}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object v3, v8

    move-object v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v14

    .line 148
    .local v14, methods:[Lgnu/expr/PrimProcedure;
    if-eqz v14, :cond_d

    move-object v0, v14

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_d

    .line 150
    move-object v0, v14

    move-object/from16 v1, v16

    iput-object v0, v1, Lgnu/kawa/functions/GetNamedExp;->methods:[Lgnu/expr/PrimProcedure;

    .line 151
    const/16 v24, 0x53

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v24

    goto/16 :goto_0

    .line 153
    :cond_d
    new-instance v5, Lgnu/expr/ApplyExp;

    sget-object v24, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    move-object v0, v5

    move-object/from16 v1, v24

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 154
    .local v5, aexp:Lgnu/expr/ApplyExp;
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 155
    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->walkApplyOnly(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v24

    goto/16 :goto_0

    .line 158
    .end local v5           #aexp:Lgnu/expr/ApplyExp;
    .end local v14           #methods:[Lgnu/expr/PrimProcedure;
    .restart local v21       #typeval:Lgnu/bytecode/Type;
    :cond_e
    if-eqz v21, :cond_f

    .line 170
    :cond_f
    sget-object v24, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v24

    if-nez v24, :cond_10

    sget-object v24, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v24

    if-eqz v24, :cond_11

    :cond_10
    move-object/from16 v24, p1

    .line 175
    goto/16 :goto_0

    .line 177
    :cond_11
    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v24, v0

    if-eqz v24, :cond_16

    .line 179
    move-object/from16 v0, v20

    check-cast v0, Lgnu/bytecode/ObjectType;

    move-object/from16 v17, v0

    .line 180
    .local v17, otype:Lgnu/bytecode/ObjectType;
    invoke-static {v15}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x56

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object v3, v8

    move-object v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v14

    .line 183
    .restart local v14       #methods:[Lgnu/expr/PrimProcedure;
    if-eqz v14, :cond_12

    move-object v0, v14

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_12

    .line 185
    move-object v0, v14

    move-object/from16 v1, v16

    iput-object v0, v1, Lgnu/kawa/functions/GetNamedExp;->methods:[Lgnu/expr/PrimProcedure;

    .line 186
    const/16 v24, 0x4d

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v24

    goto/16 :goto_0

    .line 189
    :cond_12
    sget-object v24, Lgnu/kawa/functions/GetNamedPart;->typeHasNamedParts:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 192
    if-eqz v11, :cond_13

    invoke-static {v11}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v22

    .local v22, val:Ljava/lang/Object;
    if-eqz v22, :cond_13

    .line 195
    move-object/from16 v0, v22

    check-cast v0, Lgnu/mapping/HasNamedParts;

    move-object/from16 v23, v0

    .line 196
    .local v23, value:Lgnu/mapping/HasNamedParts;
    move-object/from16 v0, v23

    move-object v1, v15

    invoke-interface {v0, v1}, Lgnu/mapping/HasNamedParts;->isConstant(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 198
    move-object/from16 v0, v23

    move-object v1, v15

    invoke-interface {v0, v1}, Lgnu/mapping/HasNamedParts;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .line 199
    invoke-static/range {v22 .. v22}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v24

    goto/16 :goto_0

    .line 202
    .end local v22           #val:Ljava/lang/Object;
    .end local v23           #value:Lgnu/mapping/HasNamedParts;
    :cond_13
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v7, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    aget-object v25, v6, v25

    aput-object v25, v7, v24

    const/16 v24, 0x1

    invoke-static {v15}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v25

    aput-object v25, v7, v24

    .line 203
    .end local v6           #args:[Lgnu/expr/Expression;
    .local v7, args:[Lgnu/expr/Expression;
    new-instance v24, Lgnu/expr/ApplyExp;

    sget-object v25, Lgnu/kawa/functions/GetNamedPart;->typeHasNamedParts:Lgnu/bytecode/ClassType;

    const-string v26, "get"

    const/16 v27, 0x1

    invoke-virtual/range {v25 .. v27}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v24

    move-object v6, v7

    .end local v7           #args:[Lgnu/expr/Expression;
    .restart local v6       #args:[Lgnu/expr/Expression;
    goto/16 :goto_0

    .line 207
    :cond_14
    move-object/from16 v0, v17

    move-object v1, v15

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lgnu/kawa/reflect/SlotGet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v18

    .line 208
    .local v18, part:Lgnu/bytecode/Member;
    if-nez v18, :cond_15

    const-string v24, "length"

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_16

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v24, v0

    if-eqz v24, :cond_16

    .line 213
    :cond_15
    new-instance v5, Lgnu/expr/ApplyExp;

    sget-object v24, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    move-object v0, v5

    move-object/from16 v1, v24

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 214
    .restart local v5       #aexp:Lgnu/expr/ApplyExp;
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 215
    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->walkApplyOnly(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v24

    goto/16 :goto_0

    .line 219
    .end local v5           #aexp:Lgnu/expr/ApplyExp;
    .end local v14           #methods:[Lgnu/expr/PrimProcedure;
    .end local v17           #otype:Lgnu/bytecode/ObjectType;
    .end local v18           #part:Lgnu/bytecode/Member;
    :cond_16
    const-string v24, "warn-invoke-unknown-method"

    move-object v0, v9

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v25, v0

    if-nez v25, :cond_18

    const/16 v25, 0x1

    :goto_3
    move-object v0, v9

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 220
    const/16 v24, 0x77

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "no known slot \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\' in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object v0, v9

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    :cond_17
    move-object/from16 v24, p1

    .line 221
    goto/16 :goto_0

    .line 219
    :cond_18
    const/16 v25, 0x0

    goto :goto_3
.end method
