.class Lgnu/kawa/reflect/MethodFilter;
.super Ljava/lang/Object;
.source "ClassMethods.java"

# interfaces
.implements Lgnu/bytecode/Filter;


# instance fields
.field caller:Lgnu/bytecode/ClassType;

.field modifiers:I

.field modmask:I

.field name:Ljava/lang/String;

.field nlen:I

.field receiver:Lgnu/bytecode/ObjectType;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;)V
    .locals 1
    .parameter "name"
    .parameter "modifiers"
    .parameter "modmask"
    .parameter "caller"
    .parameter "receiver"

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lgnu/kawa/reflect/MethodFilter;->name:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    .line 259
    iput p2, p0, Lgnu/kawa/reflect/MethodFilter;->modifiers:I

    .line 260
    iput p3, p0, Lgnu/kawa/reflect/MethodFilter;->modmask:I

    .line 261
    iput-object p4, p0, Lgnu/kawa/reflect/MethodFilter;->caller:Lgnu/bytecode/ClassType;

    .line 262
    iput-object p5, p0, Lgnu/kawa/reflect/MethodFilter;->receiver:Lgnu/bytecode/ObjectType;

    .line 263
    return-void
.end method


# virtual methods
.method public select(Ljava/lang/Object;)Z
    .locals 9
    .parameter "value"

    .prologue
    const/4 v8, 0x0

    .line 267
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/Method;

    move-object v2, v0

    .line 268
    .local v2, method:Lgnu/bytecode/Method;
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, mname:Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v4

    .line 270
    .local v4, mmods:I
    iget v6, p0, Lgnu/kawa/reflect/MethodFilter;->modmask:I

    and-int/2addr v6, v4

    iget v7, p0, Lgnu/kawa/reflect/MethodFilter;->modifiers:I

    if-ne v6, v7, :cond_0

    and-int/lit16 v6, v4, 0x1000

    if-nez v6, :cond_0

    iget-object v6, p0, Lgnu/kawa/reflect/MethodFilter;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v6, v8

    .line 283
    :goto_0
    return v6

    .line 274
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 276
    .local v3, mlen:I
    iget v6, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    if-eq v3, v6, :cond_4

    iget v6, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    add-int/lit8 v6, v6, 0x2

    if-ne v3, v6, :cond_2

    iget v6, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x24

    if-ne v6, v7, :cond_2

    iget v6, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, c:C
    const/16 v6, 0x56

    if-eq v1, v6, :cond_4

    const/16 v6, 0x58

    if-eq v1, v6, :cond_4

    .end local v1           #c:C
    :cond_2
    iget v6, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    add-int/lit8 v6, v6, 0x4

    if-ne v3, v6, :cond_3

    const-string v6, "$V$X"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    move v6, v8

    .line 282
    goto :goto_0

    .line 283
    :cond_4
    iget-object v6, p0, Lgnu/kawa/reflect/MethodFilter;->caller:Lgnu/bytecode/ClassType;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lgnu/kawa/reflect/MethodFilter;->caller:Lgnu/bytecode/ClassType;

    iget-object v7, p0, Lgnu/kawa/reflect/MethodFilter;->receiver:Lgnu/bytecode/ObjectType;

    invoke-virtual {v6, v2, v7}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    move v6, v8

    goto :goto_0
.end method
