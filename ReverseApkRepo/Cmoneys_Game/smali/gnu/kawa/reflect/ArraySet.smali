.class public Lgnu/kawa/reflect/ArraySet;
.super Lgnu/mapping/Procedure3;
.source "ArraySet.java"

# interfaces
.implements Lgnu/expr/Inlineable;
.implements Ljava/io/Externalizable;


# instance fields
.field element_type:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 0
    .parameter "element_type"

    .prologue
    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure3;-><init>()V

    .line 13
    iput-object p1, p0, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    .line 14
    return-void
.end method


# virtual methods
.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "array"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 18
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    invoke-virtual {v1, p3}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 21
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 3
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 25
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 26
    .local v0, args:[Lgnu/expr/Expression;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    invoke-static {v2}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 27
    const/4 v1, 0x1

    aget-object v1, v0, v1

    sget-object v2, Lgnu/bytecode/Type;->int_type:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, p2, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 28
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v2, p0, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    invoke-virtual {v1, p2, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 29
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    iget-object v2, p0, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 30
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {p2, v1, p3}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 31
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 35
    sget-object v0, Lgnu/bytecode/Type;->void_type:Lgnu/bytecode/PrimType;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    .line 47
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 41
    return-void
.end method
