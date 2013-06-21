.class public Lgnu/bytecode/ArrayType;
.super Lgnu/bytecode/ObjectType;
.source "ArrayType.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field public elements:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 2
    .parameter "elements"

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method constructor <init>(Lgnu/bytecode/Type;Ljava/lang/String;)V
    .locals 2
    .parameter "elements"
    .parameter "name"

    .prologue
    .line 19
    invoke-direct {p0}, Lgnu/bytecode/ObjectType;-><init>()V

    .line 20
    iput-object p2, p0, Lgnu/bytecode/ArrayType;->this_name:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ArrayType;->setSignature(Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    .line 23
    return-void
.end method

.method public static make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;
    .locals 3
    .parameter "elements"

    .prologue
    .line 47
    iget-object v0, p0, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    .line 48
    .local v0, array_type:Lgnu/bytecode/ArrayType;
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lgnu/bytecode/ArrayType;

    .end local v0           #array_type:Lgnu/bytecode/ArrayType;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;Ljava/lang/String;)V

    .line 51
    .restart local v0       #array_type:Lgnu/bytecode/ArrayType;
    iput-object v0, p0, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    .line 53
    :cond_0
    return-object v0
.end method

.method static make(Ljava/lang/String;)Lgnu/bytecode/ArrayType;
    .locals 5
    .parameter "name"

    .prologue
    .line 34
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/bytecode/Type;->getType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    .line 35
    .local v1, elements:Lgnu/bytecode/Type;
    iget-object v0, v1, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    .line 36
    .local v0, array_type:Lgnu/bytecode/ArrayType;
    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lgnu/bytecode/ArrayType;

    .end local v0           #array_type:Lgnu/bytecode/ArrayType;
    invoke-direct {v0, v1, p0}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;Ljava/lang/String;)V

    .line 39
    .restart local v0       #array_type:Lgnu/bytecode/ArrayType;
    iput-object v0, v1, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    .line 41
    :cond_0
    return-object v0
.end method


# virtual methods
.method public compare(Lgnu/bytecode/Type;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 109
    sget-object v0, Lgnu/bytecode/ArrayType;->nullType:Lgnu/bytecode/ObjectType;

    if-ne p1, v0, :cond_0

    .line 110
    const/4 v0, 0x1

    .line 117
    .end local p1
    :goto_0
    return v0

    .line 111
    .restart local p1
    :cond_0
    instance-of v0, p1, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    check-cast p1, Lgnu/bytecode/ArrayType;

    .end local p1
    iget-object v1, p1, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v0

    goto :goto_0

    .line 113
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lgnu/bytecode/ArrayType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p1, v0, :cond_3

    .line 115
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 117
    :cond_3
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public getComponentType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 27
    iget-object v1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 28
    .local v0, eltype:Lgnu/bytecode/Type;
    iget-object v1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    if-ne v1, v0, :cond_0

    move-object v1, p0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v1

    goto :goto_0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lgnu/bytecode/ArrayType;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethods(Lgnu/bytecode/Filter;ILjava/util/Vector;Ljava/lang/String;)I
    .locals 4
    .parameter "filter"
    .parameter "searchSupers"
    .parameter "result"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 93
    if-lez p2, :cond_2

    .line 95
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v3, p3, v2}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/Vector;Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, count:I
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    sget-object v1, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    invoke-interface {p1, v1}, Lgnu/bytecode/Filter;->select(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    if-eqz p3, :cond_0

    .line 99
    sget-object v1, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    invoke-virtual {p3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    move v1, v0

    .line 104
    .end local v0           #count:I
    :goto_0
    return v1

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .locals 7

    .prologue
    .line 65
    :try_start_0
    iget-object v4, p0, Lgnu/bytecode/ArrayType;->reflectClass:Ljava/lang/Class;

    if-nez v4, :cond_0

    .line 67
    invoke-virtual {p0}, Lgnu/bytecode/ArrayType;->getInternalName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    const/16 v6, 0x2e

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, cname:Ljava/lang/String;
    iget-object v4, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    .line 69
    .local v1, elClass:Ljava/lang/Class;
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v0, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lgnu/bytecode/ArrayType;->reflectClass:Ljava/lang/Class;

    .line 72
    .end local v0           #cname:Ljava/lang/String;
    .end local v1           #elClass:Ljava/lang/Class;
    :cond_0
    iget v4, p0, Lgnu/bytecode/ArrayType;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lgnu/bytecode/ArrayType;->flags:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_1
    iget-object v4, p0, Lgnu/bytecode/ArrayType;->reflectClass:Ljava/lang/Class;

    return-object v4

    .line 74
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 76
    .local v2, ex:Ljava/lang/ClassNotFoundException;
    iget v4, p0, Lgnu/bytecode/ArrayType;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1

    .line 78
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no such array class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgnu/bytecode/ArrayType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 81
    .local v3, rex:Ljava/lang/RuntimeException;
    invoke-virtual {v3, v2}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 83
    throw v3
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
    .line 128
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    .line 129
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    iget-object v0, v1, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    .line 134
    .local v0, array_type:Lgnu/bytecode/ArrayType;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 139
    :goto_0
    return-object v1

    .line 138
    :cond_0
    iget-object v1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    iput-object p0, v1, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    move-object v1, p0

    .line 139
    goto :goto_0
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
    .line 122
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 123
    return-void
.end method
