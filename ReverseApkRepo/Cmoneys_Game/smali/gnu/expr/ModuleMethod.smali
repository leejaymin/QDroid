.class public Lgnu/expr/ModuleMethod;
.super Lgnu/mapping/MethodProc;
.source "ModuleMethod.java"


# instance fields
.field public module:Lgnu/expr/ModuleBody;

.field protected numArgs:I

.field public final selector:I


# direct methods
.method public constructor <init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V
    .locals 0
    .parameter "module"
    .parameter "selector"
    .parameter "name"
    .parameter "numArgs"

    .prologue
    .line 22
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 23
    iput-object p1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    .line 24
    iput p2, p0, Lgnu/expr/ModuleMethod;->selector:I

    .line 25
    iput p4, p0, Lgnu/expr/ModuleMethod;->numArgs:I

    .line 26
    if-eqz p3, :cond_0

    .line 27
    invoke-virtual {p0, p3}, Lgnu/expr/ModuleMethod;->setSymbol(Ljava/lang/Object;)V

    .line 28
    :cond_0
    return-void
.end method

.method public constructor <init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 0
    .parameter "module"
    .parameter "selector"
    .parameter "name"
    .parameter "numArgs"
    .parameter "argTypes"

    .prologue
    .line 32
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 33
    iput-object p1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    .line 34
    iput p2, p0, Lgnu/expr/ModuleMethod;->selector:I

    .line 35
    iput p4, p0, Lgnu/expr/ModuleMethod;->numArgs:I

    .line 36
    if-eqz p3, :cond_0

    .line 37
    invoke-virtual {p0, p3}, Lgnu/expr/ModuleMethod;->setSymbol(Ljava/lang/Object;)V

    .line 38
    :cond_0
    iput-object p5, p0, Lgnu/expr/ModuleMethod;->argTypes:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public static apply0Default(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    sget-object v1, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static apply1Default(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "method"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 225
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 226
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 227
    iget-object v1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v1, p0, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static apply2Default(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "method"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 233
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 234
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 235
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 236
    iget-object v1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v1, p0, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static apply3Default(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "method"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 243
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    .line 244
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 245
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 246
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 247
    iget-object v1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v1, p0, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static apply4Default(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "method"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    .line 255
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 256
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 257
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 258
    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 259
    iget-object v1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v1, p0, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static applyError()V
    .locals 2

    .prologue
    .line 292
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error - bad selector"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static applyNDefault(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "method"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 265
    array-length v6, p1

    .line 266
    .local v6, count:I
    invoke-virtual {p0}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v7

    .line 267
    .local v7, num:I
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    .line 268
    .local v0, module:Lgnu/expr/ModuleBody;
    and-int/lit16 v1, v7, 0xfff

    if-lt v6, v1, :cond_1

    if-ltz v7, :cond_0

    shr-int/lit8 v1, v7, 0xc

    if-gt v6, v1, :cond_1

    .line 271
    :cond_0
    packed-switch v6, :pswitch_data_0

    .line 285
    :cond_1
    new-instance v1, Lgnu/mapping/WrongArguments;

    invoke-direct {v1, p0, v6}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v1

    .line 274
    :pswitch_0
    invoke-virtual {v0, p0}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v1

    .line 282
    :goto_0
    return-object v1

    .line 276
    :pswitch_1
    aget-object v1, p1, v2

    invoke-virtual {v0, p0, v1}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 278
    :pswitch_2
    aget-object v1, p1, v2

    aget-object v2, p1, v3

    invoke-virtual {v0, p0, v1, v2}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 280
    :pswitch_3
    aget-object v1, p1, v2

    aget-object v2, p1, v3

    aget-object v3, p1, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 282
    :pswitch_4
    aget-object v2, p1, v2

    aget-object v3, p1, v3

    aget-object v4, p1, v4

    const/4 v1, 0x3

    aget-object v5, p1, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 5
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 154
    iget v1, p1, Lgnu/mapping/CallContext;->pc:I

    packed-switch v1, :pswitch_data_0

    .line 175
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internal error - apply "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :pswitch_0
    invoke-virtual {p0}, Lgnu/expr/ModuleMethod;->apply0()Ljava/lang/Object;

    move-result-object v0

    .line 177
    .local v0, result:Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 178
    return-void

    .line 160
    .end local v0           #result:Ljava/lang/Object;
    :pswitch_1
    iget-object v1, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lgnu/expr/ModuleMethod;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    .restart local v0       #result:Ljava/lang/Object;
    goto :goto_0

    .line 163
    .end local v0           #result:Ljava/lang/Object;
    :pswitch_2
    iget-object v1, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iget-object v2, p1, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lgnu/expr/ModuleMethod;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    .restart local v0       #result:Ljava/lang/Object;
    goto :goto_0

    .line 166
    .end local v0           #result:Ljava/lang/Object;
    :pswitch_3
    iget-object v1, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iget-object v2, p1, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iget-object v3, p1, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 167
    .restart local v0       #result:Ljava/lang/Object;
    goto :goto_0

    .line 169
    .end local v0           #result:Ljava/lang/Object;
    :pswitch_4
    iget-object v1, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iget-object v2, p1, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iget-object v3, p1, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iget-object v4, p1, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    .restart local v0       #result:Ljava/lang/Object;
    goto :goto_0

    .line 172
    .end local v0           #result:Ljava/lang/Object;
    :pswitch_5
    iget-object v1, p1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lgnu/expr/ModuleMethod;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    .restart local v0       #result:Ljava/lang/Object;
    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public apply0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1, p2}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .locals 1
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 95
    iput v0, p1, Lgnu/mapping/CallContext;->count:I

    .line 96
    iput v0, p1, Lgnu/mapping/CallContext;->where:I

    .line 97
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1
    .parameter "arg1"
    .parameter "ctx"

    .prologue
    const/4 v0, 0x1

    .line 102
    iput v0, p2, Lgnu/mapping/CallContext;->count:I

    .line 103
    iput v0, p2, Lgnu/mapping/CallContext;->where:I

    .line 104
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1, p2}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1
    .parameter "arg1"
    .parameter "arg2"
    .parameter "ctx"

    .prologue
    .line 109
    const/4 v0, 0x2

    iput v0, p3, Lgnu/mapping/CallContext;->count:I

    .line 110
    const/16 v0, 0x21

    iput v0, p3, Lgnu/mapping/CallContext;->where:I

    .line 112
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "ctx"

    .prologue
    .line 117
    const/4 v0, 0x3

    iput v0, p4, Lgnu/mapping/CallContext;->count:I

    .line 118
    const/16 v0, 0x321

    iput v0, p4, Lgnu/mapping/CallContext;->where:I

    .line 121
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 7
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "ctx"

    .prologue
    .line 127
    const/4 v0, 0x4

    iput v0, p5, Lgnu/mapping/CallContext;->count:I

    .line 128
    const/16 v0, 0x4321

    iput v0, p5, Lgnu/mapping/CallContext;->where:I

    .line 132
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1
    .parameter "args"
    .parameter "ctx"

    .prologue
    .line 137
    array-length v0, p1

    iput v0, p2, Lgnu/mapping/CallContext;->count:I

    .line 138
    const/4 v0, 0x0

    iput v0, p2, Lgnu/mapping/CallContext;->where:I

    .line 139
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1, p2}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lgnu/expr/ModuleMethod;->numArgs:I

    return v0
.end method

.method protected resolveParameterTypes()V
    .locals 11

    .prologue
    .line 46
    const/4 v4, 0x0

    .line 47
    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Lgnu/expr/ModuleMethod;->getName()Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, name:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 52
    :try_start_0
    iget-object v10, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 53
    .local v6, moduleClass:Ljava/lang/Class;
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 54
    .local v5, methods:[Ljava/lang/reflect/Method;
    invoke-static {v7}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, mangledName:Ljava/lang/String;
    array-length v1, v5

    .local v1, i:I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 57
    aget-object v10, v5, v1

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 59
    if-eqz v4, :cond_4

    .line 61
    const/4 v4, 0x0

    .line 67
    :cond_1
    if-eqz v4, :cond_2

    .line 69
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v2

    .line 70
    .local v2, lang:Lgnu/expr/Language;
    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 73
    .local v9, parameterClasses:[Ljava/lang/Class;
    array-length v8, v9

    .line 74
    .local v8, numParamTypes:I
    new-array v0, v8, [Lgnu/bytecode/Type;

    .line 75
    .local v0, atypes:[Lgnu/bytecode/Type;
    move v1, v8

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5

    .line 77
    aget-object v10, v9, v1

    invoke-virtual {v2, v10}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v10

    aput-object v10, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 83
    .end local v0           #atypes:[Lgnu/bytecode/Type;
    .end local v1           #i:I
    .end local v2           #lang:Lgnu/expr/Language;
    .end local v3           #mangledName:Ljava/lang/String;
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    .end local v6           #moduleClass:Ljava/lang/Class;
    .end local v8           #numParamTypes:I
    .end local v9           #parameterClasses:[Ljava/lang/Class;
    :catch_0
    move-exception v10

    .line 87
    :cond_2
    :goto_2
    iget-object v10, p0, Lgnu/expr/ModuleMethod;->argTypes:Ljava/lang/Object;

    if-nez v10, :cond_3

    .line 88
    invoke-super {p0}, Lgnu/mapping/MethodProc;->resolveParameterTypes()V

    .line 89
    :cond_3
    return-void

    .line 64
    .restart local v1       #i:I
    .restart local v3       #mangledName:Ljava/lang/String;
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    .restart local v6       #moduleClass:Ljava/lang/Class;
    :cond_4
    :try_start_1
    aget-object v4, v5, v1

    goto :goto_0

    .line 79
    .restart local v0       #atypes:[Lgnu/bytecode/Type;
    .restart local v2       #lang:Lgnu/expr/Language;
    .restart local v8       #numParamTypes:I
    .restart local v9       #parameterClasses:[Ljava/lang/Class;
    :cond_5
    iput-object v0, p0, Lgnu/expr/ModuleMethod;->argTypes:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
