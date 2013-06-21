.class public abstract Lgnu/mapping/Procedure;
.super Lgnu/mapping/PropertySet;
.source "Procedure.java"


# static fields
.field private static final setterKey:Lgnu/mapping/Symbol; = null

.field private static final sourceLocationKey:Ljava/lang/String; = "source-location"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "setter"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Procedure;->setterKey:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lgnu/mapping/PropertySet;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "n"

    .prologue
    .line 32
    invoke-direct {p0}, Lgnu/mapping/PropertySet;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lgnu/mapping/Procedure;->setName(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static apply(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    .locals 6
    .parameter "proc"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 101
    iget v0, p1, Lgnu/mapping/CallContext;->count:I

    .line 102
    .local v0, count:I
    iget v2, p1, Lgnu/mapping/CallContext;->where:I

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 103
    iget-object v2, p1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 130
    .local v1, result:Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1, v1}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 131
    return-void

    .line 106
    .end local v1           #result:Ljava/lang/Object;
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 126
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #result:Ljava/lang/Object;
    goto :goto_0

    .line 109
    .end local v1           #result:Ljava/lang/Object;
    :pswitch_0
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v1

    .line 110
    .restart local v1       #result:Ljava/lang/Object;
    goto :goto_0

    .line 112
    .end local v1           #result:Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    .restart local v1       #result:Ljava/lang/Object;
    goto :goto_0

    .line 115
    .end local v1           #result:Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 116
    .restart local v1       #result:Ljava/lang/Object;
    goto :goto_0

    .line 118
    .end local v1           #result:Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 120
    .restart local v1       #result:Ljava/lang/Object;
    goto :goto_0

    .line 122
    .end local v1           #result:Ljava/lang/Object;
    :pswitch_4
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 124
    .restart local v1       #result:Ljava/lang/Object;
    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static checkArgCount(Lgnu/mapping/Procedure;I)V
    .locals 2
    .parameter "proc"
    .parameter "argCount"

    .prologue
    .line 65
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 66
    .local v0, num:I
    and-int/lit16 v1, v0, 0xfff

    if-lt p1, v1, :cond_0

    if-ltz v0, :cond_1

    shr-int/lit8 v1, v0, 0xc

    if-le p1, v1, :cond_1

    .line 68
    :cond_0
    new-instance v1, Lgnu/mapping/WrongArguments;

    invoke-direct {v1, p0, p1}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v1

    .line 69
    :cond_1
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 0
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {p0, p1}, Lgnu/mapping/Procedure;->apply(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V

    .line 96
    return-void
.end method

.method public abstract apply0()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public check0(Lgnu/mapping/CallContext;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result v0

    .line 302
    .local v0, code:I
    if-eqz v0, :cond_0

    .line 304
    sget-object v1, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 306
    :cond_0
    return-void
.end method

.method public check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 3
    .parameter "arg1"
    .parameter "ctx"

    .prologue
    .line 311
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    .line 312
    .local v1, code:I
    if-eqz v1, :cond_0

    .line 314
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 315
    .local v0, args:[Ljava/lang/Object;
    invoke-static {v1, p0, v0}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 317
    .end local v0           #args:[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 3
    .parameter "arg1"
    .parameter "arg2"
    .parameter "ctx"

    .prologue
    .line 322
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    .line 323
    .local v1, code:I
    if-eqz v1, :cond_0

    .line 325
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    .line 326
    .local v0, args:[Ljava/lang/Object;
    invoke-static {v1, p0, v0}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 328
    .end local v0           #args:[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 3
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "ctx"

    .prologue
    .line 333
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    .line 334
    .local v1, code:I
    if-eqz v1, :cond_0

    .line 336
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    .line 337
    .local v0, args:[Ljava/lang/Object;
    invoke-static {v1, p0, v0}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 339
    .end local v0           #args:[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 3
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "ctx"

    .prologue
    .line 345
    invoke-virtual/range {p0 .. p5}, Lgnu/mapping/Procedure;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    .line 346
    .local v1, code:I
    if-eqz v1, :cond_0

    .line 348
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const/4 v2, 0x3

    aput-object p4, v0, v2

    .line 349
    .local v0, args:[Ljava/lang/Object;
    invoke-static {v1, p0, v0}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 351
    .end local v0           #args:[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 2
    .parameter "args"
    .parameter "ctx"

    .prologue
    .line 356
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 357
    .local v0, code:I
    if-eqz v0, :cond_0

    .line 359
    invoke-static {v0, p0, p1}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 361
    :cond_0
    return-void
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 5

    .prologue
    .line 365
    instance-of v2, p0, Lgnu/mapping/HasSetter;

    if-nez v2, :cond_1

    .line 367
    sget-object v2, Lgnu/mapping/Procedure;->setterKey:Lgnu/mapping/Symbol;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 368
    .local v1, setter:Ljava/lang/Object;
    instance-of v2, v1, Lgnu/mapping/Procedure;

    if-eqz v2, :cond_0

    .line 369
    check-cast v1, Lgnu/mapping/Procedure;

    .end local v1           #setter:Ljava/lang/Object;
    move-object v2, v1

    .line 377
    :goto_0
    return-object v2

    .line 370
    .restart local v1       #setter:Ljava/lang/Object;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "procedure \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has no setter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 372
    .end local v1           #setter:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 373
    .local v0, num_args:I
    if-nez v0, :cond_2

    .line 374
    new-instance v2, Lgnu/mapping/Setter0;

    invoke-direct {v2, p0}, Lgnu/mapping/Setter0;-><init>(Lgnu/mapping/Procedure;)V

    goto :goto_0

    .line 375
    :cond_2
    const/16 v2, 0x1001

    if-ne v0, v2, :cond_3

    .line 376
    new-instance v2, Lgnu/mapping/Setter1;

    invoke-direct {v2, p0}, Lgnu/mapping/Setter1;-><init>(Lgnu/mapping/Procedure;)V

    goto :goto_0

    .line 377
    :cond_3
    new-instance v2, Lgnu/mapping/Setter;

    invoke-direct {v2, p0}, Lgnu/mapping/Setter;-><init>(Lgnu/mapping/Procedure;)V

    goto :goto_0
.end method

.method public getSourceLocation()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    const-string v1, "source-location"

    invoke-virtual {p0, v1, v2}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v1

    .line 139
    .local v1, num:I
    and-int/lit16 v0, v1, 0xfff

    .line 140
    .local v0, min:I
    if-lez v0, :cond_0

    .line 141
    const/high16 v2, -0xf

    or-int/2addr v2, v0

    .line 148
    :goto_0
    return v2

    .line 142
    :cond_0
    if-gez v1, :cond_1

    .line 143
    sget-object v2, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v2, p1}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v2

    goto :goto_0

    .line 144
    :cond_1
    iput v2, p1, Lgnu/mapping/CallContext;->count:I

    .line 145
    iput v2, p1, Lgnu/mapping/CallContext;->where:I

    .line 146
    iput v2, p1, Lgnu/mapping/CallContext;->next:I

    .line 147
    iput-object p0, p1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    goto :goto_0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "arg1"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 156
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v3

    .line 157
    .local v3, num:I
    and-int/lit16 v2, v3, 0xfff

    .line 158
    .local v2, min:I
    if-le v2, v4, :cond_0

    .line 159
    const/high16 v4, -0xf

    or-int/2addr v4, v2

    .line 173
    :goto_0
    return v4

    .line 160
    :cond_0
    if-ltz v3, :cond_2

    .line 162
    shr-int/lit8 v1, v3, 0xc

    .line 163
    .local v1, max:I
    if-ge v1, v4, :cond_1

    .line 164
    const/high16 v4, -0xe

    or-int/2addr v4, v1

    goto :goto_0

    .line 165
    :cond_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 166
    iput v4, p2, Lgnu/mapping/CallContext;->count:I

    .line 167
    iput v4, p2, Lgnu/mapping/CallContext;->where:I

    .line 168
    iput v5, p2, Lgnu/mapping/CallContext;->next:I

    .line 169
    iput-object p0, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move v4, v5

    .line 170
    goto :goto_0

    .line 172
    .end local v1           #max:I
    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v5

    .line 173
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, v0, p2}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_0
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "arg1"
    .parameter "arg2"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 181
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v3

    .line 182
    .local v3, num:I
    and-int/lit16 v2, v3, 0xfff

    .line 183
    .local v2, min:I
    if-le v2, v4, :cond_0

    .line 184
    const/high16 v4, -0xf

    or-int/2addr v4, v2

    .line 200
    :goto_0
    return v4

    .line 185
    :cond_0
    if-ltz v3, :cond_2

    .line 187
    shr-int/lit8 v1, v3, 0xc

    .line 188
    .local v1, max:I
    if-ge v1, v4, :cond_1

    .line 189
    const/high16 v4, -0xe

    or-int/2addr v4, v1

    goto :goto_0

    .line 190
    :cond_1
    iput-object p1, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 191
    iput-object p2, p3, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 192
    iput v4, p3, Lgnu/mapping/CallContext;->count:I

    .line 193
    const/16 v4, 0x21

    iput v4, p3, Lgnu/mapping/CallContext;->where:I

    .line 195
    iput v5, p3, Lgnu/mapping/CallContext;->next:I

    .line 196
    iput-object p0, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move v4, v5

    .line 197
    goto :goto_0

    .line 199
    .end local v1           #max:I
    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v5

    const/4 v4, 0x1

    aput-object p2, v0, v4

    .line 200
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_0
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 208
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v3

    .line 209
    .local v3, num:I
    and-int/lit16 v2, v3, 0xfff

    .line 210
    .local v2, min:I
    if-le v2, v4, :cond_0

    .line 211
    const/high16 v4, -0xf

    or-int/2addr v4, v2

    .line 229
    :goto_0
    return v4

    .line 212
    :cond_0
    if-ltz v3, :cond_2

    .line 214
    shr-int/lit8 v1, v3, 0xc

    .line 215
    .local v1, max:I
    if-ge v1, v4, :cond_1

    .line 216
    const/high16 v4, -0xe

    or-int/2addr v4, v1

    goto :goto_0

    .line 217
    :cond_1
    iput-object p1, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 218
    iput-object p2, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 219
    iput-object p3, p4, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 220
    iput v4, p4, Lgnu/mapping/CallContext;->count:I

    .line 221
    const/16 v4, 0x321

    iput v4, p4, Lgnu/mapping/CallContext;->where:I

    .line 224
    iput v5, p4, Lgnu/mapping/CallContext;->next:I

    .line 225
    iput-object p0, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move v4, v5

    .line 226
    goto :goto_0

    .line 228
    .end local v1           #max:I
    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v5

    const/4 v4, 0x1

    aput-object p2, v0, v4

    const/4 v4, 0x2

    aput-object p3, v0, v4

    .line 229
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, v0, p4}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_0
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 238
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v3

    .line 239
    .local v3, num:I
    and-int/lit16 v2, v3, 0xfff

    .line 240
    .local v2, min:I
    if-le v2, v4, :cond_0

    .line 241
    const/high16 v4, -0xf

    or-int/2addr v4, v2

    .line 261
    :goto_0
    return v4

    .line 242
    :cond_0
    if-ltz v3, :cond_2

    .line 244
    shr-int/lit8 v1, v3, 0xc

    .line 245
    .local v1, max:I
    if-ge v1, v4, :cond_1

    .line 246
    const/high16 v4, -0xe

    or-int/2addr v4, v1

    goto :goto_0

    .line 247
    :cond_1
    iput-object p1, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 248
    iput-object p2, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 249
    iput-object p3, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 250
    iput-object p4, p5, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    .line 251
    iput v4, p5, Lgnu/mapping/CallContext;->count:I

    .line 252
    const/16 v4, 0x4321

    iput v4, p5, Lgnu/mapping/CallContext;->where:I

    .line 256
    iput v5, p5, Lgnu/mapping/CallContext;->next:I

    .line 257
    iput-object p0, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move v4, v5

    .line 258
    goto :goto_0

    .line 260
    .end local v1           #max:I
    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v5

    const/4 v4, 0x1

    aput-object p2, v0, v4

    const/4 v4, 0x2

    aput-object p3, v0, v4

    const/4 v4, 0x3

    aput-object p4, v0, v4

    .line 261
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, v0, p5}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_0
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 9
    .parameter "args"
    .parameter "ctx"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 266
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v8

    .line 267
    .local v8, num:I
    and-int/lit16 v7, v8, 0xfff

    .line 268
    .local v7, min:I
    array-length v0, p1

    if-ge v0, v7, :cond_0

    .line 269
    const/high16 v0, -0xf

    or-int/2addr v0, v7

    .line 295
    :goto_0
    return v0

    .line 270
    :cond_0
    if-ltz v8, :cond_1

    .line 272
    array-length v0, p1

    packed-switch v0, :pswitch_data_0

    .line 285
    shr-int/lit8 v6, v8, 0xc

    .line 286
    .local v6, max:I
    array-length v0, p1

    if-le v0, v6, :cond_1

    .line 287
    const/high16 v0, -0xe

    or-int/2addr v0, v6

    goto :goto_0

    .line 275
    .end local v6           #max:I
    :pswitch_0
    invoke-virtual {p0, p2}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 277
    :pswitch_1
    aget-object v0, p1, v1

    invoke-virtual {p0, v0, p2}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 279
    :pswitch_2
    aget-object v0, p1, v1

    aget-object v1, p1, v2

    invoke-virtual {p0, v0, v1, p2}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 281
    :pswitch_3
    aget-object v0, p1, v1

    aget-object v1, p1, v2

    aget-object v2, p1, v3

    invoke-virtual {p0, v0, v1, v2, p2}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 283
    :pswitch_4
    aget-object v1, p1, v1

    aget-object v2, p1, v2

    aget-object v3, p1, v3

    const/4 v0, 0x3

    aget-object v4, p1, v0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lgnu/mapping/Procedure;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 290
    :cond_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 291
    array-length v0, p1

    iput v0, p2, Lgnu/mapping/CallContext;->count:I

    .line 292
    iput v1, p2, Lgnu/mapping/CallContext;->where:I

    .line 293
    iput v1, p2, Lgnu/mapping/CallContext;->next:I

    .line 294
    iput-object p0, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move v0, v1

    .line 295
    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final maxArgs()I
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    shr-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public final minArgs()I
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    and-int/lit16 v0, v0, 0xfff

    return v0
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 78
    const/16 v0, -0x1000

    return v0
.end method

.method public set0(Ljava/lang/Object;)V
    .locals 1
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    return-void
.end method

.method public set1(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "arg1"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 396
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-void
.end method

.method public setN([Ljava/lang/Object;)V
    .locals 1
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    return-void
.end method

.method public setSetter(Lgnu/mapping/Procedure;)V
    .locals 3
    .parameter "setter"

    .prologue
    .line 382
    instance-of v0, p0, Lgnu/mapping/HasSetter;

    if-eqz v0, :cond_0

    .line 383
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "procedure \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has builtin setter - cannot be modified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_0
    sget-object v0, Lgnu/mapping/Procedure;->setterKey:Lgnu/mapping/Symbol;

    invoke-virtual {p0, v0, p1}, Lgnu/mapping/Procedure;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 386
    return-void
.end method

.method public setSourceLocation(Ljava/lang/String;I)V
    .locals 3
    .parameter "file"
    .parameter "line"

    .prologue
    .line 18
    const-string v0, "source-location"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgnu/mapping/Procedure;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 406
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 407
    .local v1, sbuf:Ljava/lang/StringBuffer;
    const-string v2, "#<procedure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, n:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getSourceLocation()Ljava/lang/String;

    move-result-object v0

    .line 411
    :cond_0
    if-nez v0, :cond_1

    .line 412
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 413
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 415
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
