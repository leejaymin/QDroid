.class public abstract Lgnu/expr/ModuleBody;
.super Lgnu/mapping/Procedure0;
.source "ModuleBody.java"


# static fields
.field private static mainPrintValues:Z


# instance fields
.field protected runDone:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/mapping/Procedure0;-><init>()V

    return-void
.end method

.method public static getMainPrintValues()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lgnu/expr/ModuleBody;->mainPrintValues:Z

    return v0
.end method

.method public static processArgs([Ljava/lang/String;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 101
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2}, Lkawa/repl;->processArgs([Ljava/lang/String;II)I

    move-result v0

    .line 102
    .local v0, iArg:I
    invoke-static {p0, v0}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 103
    return-void
.end method

.method public static runCleanup(Lgnu/mapping/CallContext;Ljava/lang/Throwable;Lgnu/lists/Consumer;)V
    .locals 2
    .parameter "ctx"
    .parameter "th"
    .parameter "save"

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    iput-object p2, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 68
    if-eqz p1, :cond_3

    .line 70
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 71
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1
    throw p1

    .line 62
    .restart local p1
    :catch_0
    move-exception v0

    .line 64
    .local v0, ex:Ljava/lang/Throwable;
    move-object p1, v0

    goto :goto_0

    .line 72
    .end local v0           #ex:Ljava/lang/Throwable;
    :cond_1
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_2

    .line 73
    check-cast p1, Ljava/lang/Error;

    .end local p1
    throw p1

    .line 74
    .restart local p1
    :cond_2
    new-instance v1, Lgnu/mapping/WrappedException;

    invoke-direct {v1, p1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 76
    :cond_3
    return-void
.end method

.method public static setMainPrintValues(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 95
    sput-boolean p0, Lgnu/expr/ModuleBody;->mainPrintValues:Z

    .line 96
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 14
    iget v0, p1, Lgnu/mapping/CallContext;->pc:I

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V

    .line 16
    :cond_0
    return-void
.end method

.method public apply0()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 81
    .local v0, ctx:Lgnu/mapping/CallContext;
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->match0(Lgnu/mapping/CallContext;)I

    .line 82
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 151
    sget-object v0, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "method"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 158
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 159
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 165
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 166
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 167
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 168
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 175
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    .line 176
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 177
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 178
    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 179
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 186
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    .line 187
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 188
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 189
    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 190
    const/4 v1, 0x3

    aput-object p5, v0, v1

    .line 191
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
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

    const/4 v1, 0x0

    .line 197
    array-length v6, p2

    .line 198
    .local v6, count:I
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v7

    .line 199
    .local v7, num:I
    and-int/lit16 v0, v7, 0xfff

    if-lt v6, v0, :cond_1

    if-ltz v7, :cond_0

    shr-int/lit8 v0, v7, 0xc

    if-gt v6, v0, :cond_1

    .line 202
    :cond_0
    packed-switch v6, :pswitch_data_0

    .line 216
    :cond_1
    new-instance v0, Lgnu/mapping/WrongArguments;

    invoke-direct {v0, p1, v6}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0

    .line 205
    :pswitch_0
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 207
    :pswitch_1
    aget-object v0, p2, v1

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 209
    :pswitch_2
    aget-object v0, p2, v1

    aget-object v1, p2, v3

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 211
    :pswitch_3
    aget-object v0, p2, v1

    aget-object v1, p2, v3

    aget-object v2, p2, v4

    invoke-virtual {p0, p1, v0, v1, v2}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 213
    :pswitch_4
    aget-object v2, p2, v1

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    const/4 v0, 0x3

    aget-object v5, p2, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 202
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

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter "proc"
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 221
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v1

    .line 222
    .local v1, num:I
    and-int/lit16 v0, v1, 0xfff

    .line 223
    .local v0, min:I
    if-lez v0, :cond_0

    .line 224
    const/high16 v2, -0xf

    or-int/2addr v2, v0

    .line 231
    :goto_0
    return v2

    .line 225
    :cond_0
    if-gez v1, :cond_1

    .line 226
    sget-object v2, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, v2, p2}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v2

    goto :goto_0

    .line 227
    :cond_1
    iput v2, p2, Lgnu/mapping/CallContext;->count:I

    .line 228
    iput v2, p2, Lgnu/mapping/CallContext;->where:I

    .line 229
    iput v2, p2, Lgnu/mapping/CallContext;->next:I

    .line 230
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "proc"
    .parameter "arg1"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 236
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v3

    .line 237
    .local v3, num:I
    and-int/lit16 v2, v3, 0xfff

    .line 238
    .local v2, min:I
    if-le v2, v4, :cond_0

    .line 239
    const/high16 v4, -0xf

    or-int/2addr v4, v2

    .line 254
    :goto_0
    return v4

    .line 240
    :cond_0
    if-ltz v3, :cond_2

    .line 242
    shr-int/lit8 v1, v3, 0xc

    .line 243
    .local v1, max:I
    if-ge v1, v4, :cond_1

    .line 244
    const/high16 v4, -0xe

    or-int/2addr v4, v1

    goto :goto_0

    .line 245
    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 246
    iput v4, p3, Lgnu/mapping/CallContext;->count:I

    .line 247
    iput v4, p3, Lgnu/mapping/CallContext;->where:I

    .line 248
    iput v5, p3, Lgnu/mapping/CallContext;->next:I

    .line 249
    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move v4, v5

    .line 251
    goto :goto_0

    .line 253
    .end local v1           #max:I
    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v5

    .line 254
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_0
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "proc"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 260
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v3

    .line 261
    .local v3, num:I
    and-int/lit16 v2, v3, 0xfff

    .line 262
    .local v2, min:I
    if-le v2, v4, :cond_0

    .line 263
    const/high16 v4, -0xf

    or-int/2addr v4, v2

    .line 279
    :goto_0
    return v4

    .line 264
    :cond_0
    if-ltz v3, :cond_2

    .line 266
    shr-int/lit8 v1, v3, 0xc

    .line 267
    .local v1, max:I
    if-ge v1, v4, :cond_1

    .line 268
    const/high16 v4, -0xe

    or-int/2addr v4, v1

    goto :goto_0

    .line 269
    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 270
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 271
    iput v4, p4, Lgnu/mapping/CallContext;->count:I

    .line 272
    const/16 v4, 0x21

    iput v4, p4, Lgnu/mapping/CallContext;->where:I

    .line 274
    iput v5, p4, Lgnu/mapping/CallContext;->next:I

    .line 275
    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move v4, v5

    .line 276
    goto :goto_0

    .line 278
    .end local v1           #max:I
    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v5

    const/4 v4, 0x1

    aput-object p3, v0, v4

    .line 279
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p4}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_0
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "proc"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 285
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v3

    .line 286
    .local v3, num:I
    and-int/lit16 v2, v3, 0xfff

    .line 287
    .local v2, min:I
    if-le v2, v4, :cond_0

    .line 288
    const/high16 v4, -0xf

    or-int/2addr v4, v2

    .line 307
    :goto_0
    return v4

    .line 289
    :cond_0
    if-ltz v3, :cond_2

    .line 291
    shr-int/lit8 v1, v3, 0xc

    .line 292
    .local v1, max:I
    if-ge v1, v4, :cond_1

    .line 293
    const/high16 v4, -0xe

    or-int/2addr v4, v1

    goto :goto_0

    .line 294
    :cond_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 295
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 296
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 297
    iput v4, p5, Lgnu/mapping/CallContext;->count:I

    .line 298
    const/16 v4, 0x321

    iput v4, p5, Lgnu/mapping/CallContext;->where:I

    .line 301
    iput v5, p5, Lgnu/mapping/CallContext;->next:I

    .line 302
    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move v4, v5

    .line 304
    goto :goto_0

    .line 306
    .end local v1           #max:I
    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v5

    const/4 v4, 0x1

    aput-object p3, v0, v4

    const/4 v4, 0x2

    aput-object p4, v0, v4

    .line 307
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p5}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_0
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "proc"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 313
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v3

    .line 314
    .local v3, num:I
    and-int/lit16 v2, v3, 0xfff

    .line 315
    .local v2, min:I
    if-le v2, v4, :cond_0

    .line 316
    const/high16 v4, -0xf

    or-int/2addr v4, v2

    .line 337
    :goto_0
    return v4

    .line 317
    :cond_0
    if-ltz v3, :cond_2

    .line 319
    shr-int/lit8 v1, v3, 0xc

    .line 320
    .local v1, max:I
    if-ge v1, v4, :cond_1

    .line 321
    const/high16 v4, -0xe

    or-int/2addr v4, v1

    goto :goto_0

    .line 322
    :cond_1
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 323
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 324
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 325
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    .line 326
    iput v4, p6, Lgnu/mapping/CallContext;->count:I

    .line 327
    const/16 v4, 0x4321

    iput v4, p6, Lgnu/mapping/CallContext;->where:I

    .line 331
    iput v5, p6, Lgnu/mapping/CallContext;->next:I

    .line 332
    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move v4, v5

    .line 334
    goto :goto_0

    .line 336
    .end local v1           #max:I
    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v5

    const/4 v4, 0x1

    aput-object p3, v0, v4

    const/4 v4, 0x2

    aput-object p4, v0, v4

    const/4 v4, 0x3

    aput-object p5, v0, v4

    .line 337
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p6}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_0
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 10
    .parameter "proc"
    .parameter "args"
    .parameter "ctx"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 342
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v9

    .line 343
    .local v9, num:I
    and-int/lit16 v8, v9, 0xfff

    .line 344
    .local v8, min:I
    array-length v0, p2

    if-ge v0, v8, :cond_0

    .line 345
    const/high16 v0, -0xf

    or-int/2addr v0, v8

    .line 373
    :goto_0
    return v0

    .line 346
    :cond_0
    if-ltz v9, :cond_1

    .line 348
    array-length v0, p2

    packed-switch v0, :pswitch_data_0

    .line 361
    shr-int/lit8 v7, v9, 0xc

    .line 362
    .local v7, max:I
    array-length v0, p2

    if-le v0, v7, :cond_1

    .line 363
    const/high16 v0, -0xe

    or-int/2addr v0, v7

    goto :goto_0

    .line 351
    .end local v7           #max:I
    :pswitch_0
    invoke-virtual {p0, p1, p3}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 353
    :pswitch_1
    aget-object v0, p2, v1

    invoke-virtual {p0, p1, v0, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 355
    :pswitch_2
    aget-object v0, p2, v1

    aget-object v1, p2, v3

    invoke-virtual {p0, p1, v0, v1, p3}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 357
    :pswitch_3
    aget-object v2, p2, v1

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 359
    :pswitch_4
    aget-object v2, p2, v1

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    const/4 v0, 0x3

    aget-object v5, p2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0

    .line 366
    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 367
    array-length v0, p2

    iput v0, p3, Lgnu/mapping/CallContext;->count:I

    .line 368
    iput v1, p3, Lgnu/mapping/CallContext;->where:I

    .line 369
    iput v1, p3, Lgnu/mapping/CallContext;->next:I

    .line 370
    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move v0, v1

    .line 373
    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public run()V
    .locals 1

    .prologue
    .line 26
    monitor-enter p0

    .line 28
    :try_start_0
    iget-boolean v0, p0, Lgnu/expr/ModuleBody;->runDone:Z

    if-eqz v0, :cond_0

    .line 29
    monitor-exit p0

    .line 33
    :goto_0
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/expr/ModuleBody;->runDone:Z

    .line 31
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    sget-object v0, Lgnu/lists/VoidConsumer;->instance:Lgnu/lists/VoidConsumer;

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->run(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run(Lgnu/lists/Consumer;)V
    .locals 4
    .parameter "out"

    .prologue
    .line 38
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 39
    .local v0, ctx:Lgnu/mapping/CallContext;
    iget-object v2, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 40
    .local v2, save:Lgnu/lists/Consumer;
    iput-object p1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 44
    :try_start_0
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const/4 v3, 0x0

    .line 51
    .local v3, th:Ljava/lang/Throwable;
    :goto_0
    invoke-static {v0, v3, v2}, Lgnu/expr/ModuleBody;->runCleanup(Lgnu/mapping/CallContext;Ljava/lang/Throwable;Lgnu/lists/Consumer;)V

    .line 52
    return-void

    .line 47
    .end local v3           #th:Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 49
    .local v1, ex:Ljava/lang/Throwable;
    move-object v3, v1

    .restart local v3       #th:Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public run(Lgnu/mapping/CallContext;)V
    .locals 0
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 22
    return-void
.end method

.method public final runAsMain()V
    .locals 5

    .prologue
    .line 108
    sget-object v3, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    invoke-virtual {v3}, Lgnu/text/WriterManager;->registerShutdownHook()Z

    .line 111
    :try_start_0
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 113
    .local v0, ctx:Lgnu/mapping/CallContext;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v3

    invoke-virtual {v0}, Lgnu/mapping/CallContext;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lgnu/kawa/reflect/ClassMemberLocation;->defineAll(Ljava/lang/Object;Lgnu/expr/Language;Lgnu/mapping/Environment;)V

    .line 114
    invoke-static {}, Lgnu/expr/ModuleBody;->getMainPrintValues()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v2

    .line 117
    .local v2, out:Lgnu/mapping/OutPort;
    invoke-static {v2}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object v3

    iput-object v3, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 118
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V

    .line 119
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 120
    invoke-virtual {v2}, Lgnu/mapping/OutPort;->freshLine()V

    .line 128
    .end local v2           #out:Lgnu/mapping/OutPort;
    :goto_0
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 129
    invoke-static {}, Lkawa/repl;->exitDecrement()V

    .line 137
    .end local v0           #ctx:Lgnu/mapping/CallContext;
    :goto_1
    return-void

    .line 124
    .restart local v0       #ctx:Lgnu/mapping/CallContext;
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ModuleBody;->run()V

    .line 125
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v0           #ctx:Lgnu/mapping/CallContext;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 133
    .local v1, ex:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 135
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_1
.end method
