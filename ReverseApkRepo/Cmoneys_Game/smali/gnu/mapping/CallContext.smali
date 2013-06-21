.class public Lgnu/mapping/CallContext;
.super Ljava/lang/Object;
.source "CallContext.java"


# static fields
.field public static final ARG_IN_IVALUE1:I = 0x5

.field public static final ARG_IN_IVALUE2:I = 0x6

.field public static final ARG_IN_VALUE1:I = 0x1

.field public static final ARG_IN_VALUE2:I = 0x2

.field public static final ARG_IN_VALUE3:I = 0x3

.field public static final ARG_IN_VALUE4:I = 0x4

.field public static final ARG_IN_VALUES_ARRAY:I

.field static currentContext:Ljava/lang/ThreadLocal;


# instance fields
.field public consumer:Lgnu/lists/Consumer;

.field public count:I

.field curEnvironment:Lgnu/mapping/Environment;

.field currentThread:Ljava/lang/Thread;

.field public evalFrames:[[Ljava/lang/Object;

.field public ivalue1:I

.field public ivalue2:I

.field public next:I

.field public pc:I

.field public proc:Lgnu/mapping/Procedure;

.field pushedFluids:[Lgnu/mapping/Location;

.field pushedFluidsCount:I

.field public value1:Ljava/lang/Object;

.field public value2:Ljava/lang/Object;

.field public value3:Ljava/lang/Object;

.field public value4:Ljava/lang/Object;

.field public values:[Ljava/lang/Object;

.field public vstack:Lgnu/mapping/ValueStack;

.field public where:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lgnu/mapping/CallContext;->currentContext:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lgnu/mapping/ValueStack;

    invoke-direct {v0}, Lgnu/mapping/ValueStack;-><init>()V

    iput-object v0, p0, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    .line 91
    iget-object v0, p0, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    iput-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method

.method public static getInstance()Lgnu/mapping/CallContext;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lgnu/mapping/CallContext;->getOnlyInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 68
    .local v0, ctx:Lgnu/mapping/CallContext;
    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lgnu/mapping/CallContext;

    .end local v0           #ctx:Lgnu/mapping/CallContext;
    invoke-direct {v0}, Lgnu/mapping/CallContext;-><init>()V

    .line 71
    .restart local v0       #ctx:Lgnu/mapping/CallContext;
    invoke-static {v0}, Lgnu/mapping/CallContext;->setInstance(Lgnu/mapping/CallContext;)V

    .line 73
    :cond_0
    return-object v0
.end method

.method public static getOnlyInstance()Lgnu/mapping/CallContext;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lgnu/mapping/CallContext;->currentContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/CallContext;

    return-object v0
.end method

.method public static setInstance(Lgnu/mapping/CallContext;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 40
    .local v0, thread:Ljava/lang/Thread;
    iput-object v0, p0, Lgnu/mapping/CallContext;->currentThread:Ljava/lang/Thread;

    .line 42
    sget-object v1, Lgnu/mapping/CallContext;->currentContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final cleanupFromContext(I)V
    .locals 6
    .parameter "oldIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v2, p0, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    .line 297
    .local v2, vst:Lgnu/mapping/ValueStack;
    iget-object v0, v2, Lgnu/mapping/ValueStack;->data:[C

    .line 298
    .local v0, data:[C
    const/4 v3, 0x2

    sub-int v3, p1, v3

    aget-char v3, v0, v3

    shl-int/lit8 v3, v3, 0x10

    const/4 v4, 0x1

    sub-int v4, p1, v4

    aget-char v4, v0, v4

    const v5, 0xffff

    and-int/2addr v4, v5

    or-int v1, v3, v4

    .line 299
    .local v1, oindex:I
    iget-object v3, v2, Lgnu/mapping/ValueStack;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Lgnu/lists/Consumer;

    iput-object v3, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 300
    iget-object v3, v2, Lgnu/mapping/ValueStack;->objects:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 301
    iput v1, v2, Lgnu/mapping/ValueStack;->oindex:I

    .line 302
    const/4 v3, 0x3

    sub-int v3, p1, v3

    iput v3, v2, Lgnu/mapping/ValueStack;->gapStart:I

    .line 303
    return-void
.end method

.method getArgAsObject(I)Ljava/lang/Object;
    .locals 2
    .parameter "i"

    .prologue
    .line 124
    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    .line 126
    iget v0, p0, Lgnu/mapping/CallContext;->where:I

    mul-int/lit8 v1, p1, 0x4

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_0

    .line 136
    :cond_0
    iget-object v0, p0, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    .line 128
    :pswitch_0
    iget-object v0, p0, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v0, p0, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    goto :goto_0

    .line 130
    :pswitch_2
    iget-object v0, p0, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    goto :goto_0

    .line 131
    :pswitch_3
    iget-object v0, p0, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    goto :goto_0

    .line 132
    :pswitch_4
    iget v0, p0, Lgnu/mapping/CallContext;->ivalue1:I

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_5
    iget v0, p0, Lgnu/mapping/CallContext;->ivalue2:I

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getArgs()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 220
    iget v3, p0, Lgnu/mapping/CallContext;->where:I

    if-nez v3, :cond_0

    .line 221
    iget-object v3, p0, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 229
    :goto_0
    return-object v3

    .line 224
    :cond_0
    iget v2, p0, Lgnu/mapping/CallContext;->count:I

    .line 225
    .local v2, n:I
    const/4 v3, 0x0

    iput v3, p0, Lgnu/mapping/CallContext;->next:I

    .line 226
    new-array v0, v2, [Ljava/lang/Object;

    .line 227
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 228
    invoke-virtual {p0}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v0

    .line 229
    goto :goto_0
.end method

.method public final getEnvironment()Lgnu/mapping/Environment;
    .locals 3

    .prologue
    .line 27
    iget-object v1, p0, Lgnu/mapping/CallContext;->curEnvironment:Lgnu/mapping/Environment;

    if-nez v1, :cond_0

    .line 29
    iget-object v1, p0, Lgnu/mapping/CallContext;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgnu/mapping/Environment;->global:Lgnu/mapping/Environment;

    invoke-static {v1, v2}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v0

    .line 31
    .local v0, env:Lgnu/mapping/Environment;
    iget v1, v0, Lgnu/mapping/Environment;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lgnu/mapping/Environment;->flags:I

    .line 32
    iput-object v0, p0, Lgnu/mapping/CallContext;->curEnvironment:Lgnu/mapping/Environment;

    .line 34
    .end local v0           #env:Lgnu/mapping/Environment;
    :cond_0
    iget-object v1, p0, Lgnu/mapping/CallContext;->curEnvironment:Lgnu/mapping/Environment;

    return-object v1
.end method

.method public final getEnvironmentRaw()Lgnu/mapping/Environment;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lgnu/mapping/CallContext;->curEnvironment:Lgnu/mapping/Environment;

    return-object v0
.end method

.method public final getFromContext(I)Ljava/lang/Object;
    .locals 3
    .parameter "oldIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 281
    iget-object v1, p0, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    .line 282
    .local v1, vst:Lgnu/mapping/ValueStack;
    iget v2, v1, Lgnu/mapping/ValueStack;->gapStart:I

    invoke-static {v1, p1, v2}, Lgnu/mapping/Values;->make(Lgnu/lists/TreeList;II)Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, result:Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 284
    return-object v0
.end method

.method public getNextArg()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 147
    iget v0, p0, Lgnu/mapping/CallContext;->next:I

    iget v1, p0, Lgnu/mapping/CallContext;->count:I

    if-lt v0, v1, :cond_0

    .line 148
    new-instance v0, Lgnu/mapping/WrongArguments;

    const/4 v1, 0x0

    iget v2, p0, Lgnu/mapping/CallContext;->count:I

    invoke-direct {v0, v1, v2}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0

    .line 149
    :cond_0
    iget v0, p0, Lgnu/mapping/CallContext;->next:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgnu/mapping/CallContext;->next:I

    invoke-virtual {p0, v0}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNextArg(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 165
    iget v0, p0, Lgnu/mapping/CallContext;->next:I

    iget v1, p0, Lgnu/mapping/CallContext;->count:I

    if-lt v0, v1, :cond_0

    move-object v0, p1

    .line 167
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lgnu/mapping/CallContext;->next:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgnu/mapping/CallContext;->next:I

    invoke-virtual {p0, v0}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getNextIntArg()I
    .locals 4

    .prologue
    .line 154
    iget v1, p0, Lgnu/mapping/CallContext;->next:I

    iget v2, p0, Lgnu/mapping/CallContext;->count:I

    if-lt v1, v2, :cond_0

    .line 155
    new-instance v1, Lgnu/mapping/WrongArguments;

    const/4 v2, 0x0

    iget v3, p0, Lgnu/mapping/CallContext;->count:I

    invoke-direct {v1, v2, v3}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v1

    .line 156
    :cond_0
    iget v1, p0, Lgnu/mapping/CallContext;->next:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/mapping/CallContext;->next:I

    invoke-virtual {p0, v1}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 157
    .local v0, arg:Ljava/lang/Object;
    check-cast v0, Ljava/lang/Number;

    .end local v0           #arg:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1
.end method

.method public getNextIntArg(I)I
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 172
    iget v0, p0, Lgnu/mapping/CallContext;->next:I

    iget v1, p0, Lgnu/mapping/CallContext;->count:I

    if-lt v0, v1, :cond_0

    move v0, p1

    .line 174
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget v0, p0, Lgnu/mapping/CallContext;->next:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgnu/mapping/CallContext;->next:I

    invoke-virtual {p0, v0}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final getRestArgsArray(I)[Ljava/lang/Object;
    .locals 5
    .parameter "next"

    .prologue
    .line 180
    iget v4, p0, Lgnu/mapping/CallContext;->count:I

    sub-int/2addr v4, p1

    new-array v0, v4, [Ljava/lang/Object;

    .line 181
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 182
    .local v1, i:I
    :goto_0
    iget v4, p0, Lgnu/mapping/CallContext;->count:I

    if-ge p1, v4, :cond_0

    .line 184
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    add-int/lit8 v3, p1, 0x1

    .end local p1
    .local v3, next:I
    invoke-virtual {p0, p1}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    move p1, v3

    .end local v3           #next:I
    .restart local p1
    goto :goto_0

    .line 186
    :cond_0
    return-object v0
.end method

.method public final getRestArgsList(I)Lgnu/lists/LList;
    .locals 6
    .parameter "next"

    .prologue
    .line 193
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 194
    .local v3, nil:Lgnu/lists/LList;
    move-object v1, v3

    .line 195
    .local v1, list:Lgnu/lists/LList;
    const/4 v0, 0x0

    .line 196
    .local v0, last:Lgnu/lists/Pair;
    :goto_0
    iget v5, p0, Lgnu/mapping/CallContext;->count:I

    if-ge p1, v5, :cond_1

    .line 198
    new-instance v4, Lgnu/lists/Pair;

    add-int/lit8 v2, p1, 0x1

    .end local p1
    .local v2, next:I
    invoke-virtual {p0, p1}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    .local v4, pair:Lgnu/lists/Pair;
    if-nez v0, :cond_0

    .line 200
    move-object v1, v4

    .line 203
    :goto_1
    move-object v0, v4

    move p1, v2

    .line 204
    .end local v2           #next:I
    .restart local p1
    goto :goto_0

    .line 202
    .end local p1
    .restart local v2       #next:I
    :cond_0
    invoke-virtual {v0, v4}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    goto :goto_1

    .line 205
    .end local v2           #next:I
    .end local v4           #pair:Lgnu/lists/Pair;
    .restart local p1
    :cond_1
    return-object v1
.end method

.method public lastArg()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    iget v0, p0, Lgnu/mapping/CallContext;->next:I

    iget v1, p0, Lgnu/mapping/CallContext;->count:I

    if-ge v0, v1, :cond_0

    .line 214
    new-instance v0, Lgnu/mapping/WrongArguments;

    iget v1, p0, Lgnu/mapping/CallContext;->count:I

    invoke-direct {v0, v2, v1}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0

    .line 215
    :cond_0
    iput-object v2, p0, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 216
    return-void
.end method

.method public final popFluid()V
    .locals 3

    .prologue
    .line 373
    iget-object v0, p0, Lgnu/mapping/CallContext;->pushedFluids:[Lgnu/mapping/Location;

    iget v1, p0, Lgnu/mapping/CallContext;->pushedFluidsCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lgnu/mapping/CallContext;->pushedFluidsCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 374
    return-void
.end method

.method public final pushFluid(Lgnu/mapping/Location;)V
    .locals 5
    .parameter "loc"

    .prologue
    const/4 v4, 0x0

    .line 355
    iget-object v1, p0, Lgnu/mapping/CallContext;->pushedFluids:[Lgnu/mapping/Location;

    .line 356
    .local v1, fluids:[Lgnu/mapping/Location;
    iget v0, p0, Lgnu/mapping/CallContext;->pushedFluidsCount:I

    .line 357
    .local v0, count:I
    if-nez v1, :cond_1

    .line 359
    const/16 v3, 0xa

    new-array v1, v3, [Lgnu/mapping/Location;

    iput-object v1, p0, Lgnu/mapping/CallContext;->pushedFluids:[Lgnu/mapping/Location;

    .line 367
    :cond_0
    :goto_0
    aput-object p1, v1, v0

    .line 368
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lgnu/mapping/CallContext;->pushedFluidsCount:I

    .line 369
    return-void

    .line 361
    :cond_1
    array-length v3, v1

    if-ne v0, v3, :cond_0

    .line 363
    mul-int/lit8 v3, v0, 0x2

    new-array v2, v3, [Lgnu/mapping/Location;

    .line 364
    .local v2, newFluids:[Lgnu/mapping/Location;
    invoke-static {v1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    move-object v1, v2

    iput-object v2, p0, Lgnu/mapping/CallContext;->pushedFluids:[Lgnu/mapping/Location;

    goto :goto_0
.end method

.method public runUntilDone()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 237
    :goto_0
    iget-object v0, p0, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 238
    .local v0, proc:Lgnu/mapping/Procedure;
    if-nez v0, :cond_0

    .line 253
    return-void

    .line 250
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 251
    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply(Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public final runUntilValue()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 309
    .local v0, consumerSave:Lgnu/lists/Consumer;
    iget-object v3, p0, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    .line 310
    .local v3, vst:Lgnu/mapping/ValueStack;
    iput-object v3, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 311
    iget v1, v3, Lgnu/mapping/ValueStack;->gapStart:I

    .line 312
    .local v1, dindexSave:I
    iget v2, v3, Lgnu/mapping/ValueStack;->oindex:I

    .line 315
    .local v2, oindexSave:I
    :try_start_0
    invoke-virtual {p0}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 316
    iget v4, v3, Lgnu/mapping/ValueStack;->gapStart:I

    invoke-static {v3, v1, v4}, Lgnu/mapping/Values;->make(Lgnu/lists/TreeList;II)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 320
    iput-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 321
    iput v1, v3, Lgnu/mapping/ValueStack;->gapStart:I

    .line 322
    iput v2, v3, Lgnu/mapping/ValueStack;->oindex:I

    return-object v4

    .line 320
    :catchall_0
    move-exception v4

    iput-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 321
    iput v1, v3, Lgnu/mapping/ValueStack;->gapStart:I

    .line 322
    iput v2, v3, Lgnu/mapping/ValueStack;->oindex:I

    throw v4
.end method

.method public final runUntilValue(Lgnu/lists/Consumer;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 330
    .local v0, consumerSave:Lgnu/lists/Consumer;
    iput-object p1, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    iput-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 339
    return-void

    .line 337
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    throw v1
.end method

.method public final setEnvironmentRaw(Lgnu/mapping/Environment;)V
    .locals 0
    .parameter "env"

    .prologue
    .line 23
    iput-object p1, p0, Lgnu/mapping/CallContext;->curEnvironment:Lgnu/mapping/Environment;

    return-void
.end method

.method public final startFromContext()I
    .locals 6

    .prologue
    .line 264
    iget-object v3, p0, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    .line 265
    .local v3, vst:Lgnu/mapping/ValueStack;
    iget-object v4, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-virtual {v3, v4}, Lgnu/mapping/ValueStack;->find(Ljava/lang/Object;)I

    move-result v2

    .line 266
    .local v2, oindex:I
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgnu/mapping/ValueStack;->ensureSpace(I)V

    .line 267
    iget v0, v3, Lgnu/mapping/ValueStack;->gapStart:I

    .line 268
    .local v0, gapStart:I
    iget-object v4, v3, Lgnu/mapping/ValueStack;->data:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0           #gapStart:I
    .local v1, gapStart:I
    const v5, 0xf102

    aput-char v5, v4, v0

    .line 269
    invoke-virtual {v3, v1, v2}, Lgnu/mapping/ValueStack;->setIntN(II)V

    .line 270
    add-int/lit8 v0, v1, 0x2

    .line 271
    .end local v1           #gapStart:I
    .restart local v0       #gapStart:I
    iput-object v3, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 272
    iput v0, v3, Lgnu/mapping/ValueStack;->gapStart:I

    .line 273
    return v0
.end method

.method public writeValue(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 344
    iget-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-static {p1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 345
    return-void
.end method
