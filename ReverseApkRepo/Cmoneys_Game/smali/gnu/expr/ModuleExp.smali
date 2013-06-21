.class public Lgnu/expr/ModuleExp;
.super Lgnu/expr/LambdaExp;
.source "ModuleExp.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final EXPORT_SPECIFIED:I = 0x2000

.field public static final IMMEDIATE:I = 0x80000

.field public static final LAZY_DECLARATIONS:I = 0x40000

.field public static final NONSTATIC_SPECIFIED:I = 0x8000

.field public static final STATIC_RUN_SPECIFIED:I = 0x20000

.field public static final STATIC_SPECIFIED:I = 0x4000

.field public static final SUPERTYPE_SPECIFIED:I = 0x10000

.field public static alwaysCompile:Z

.field public static dumpZipPrefix:Ljava/lang/String;

.field public static interactiveCounter:I

.field static lastZipCounter:I

.field public static neverCompile:Z


# instance fields
.field info:Lgnu/expr/ModuleInfo;

.field interfaces:[Lgnu/bytecode/ClassType;

.field superType:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    .line 182
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/expr/ModuleExp;->neverCompile:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lgnu/expr/LambdaExp;-><init>()V

    .line 42
    return-void
.end method

.method public static final evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z
    .locals 10
    .parameter "env"
    .parameter "ctx"
    .parameter "comp"
    .parameter "url"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v1, p2}, Lgnu/expr/Language;->resolve(Lgnu/expr/Compilation;)V

    .line 200
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v3

    .line 201
    .local v3, mexp:Lgnu/expr/ModuleExp;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v5

    .line 202
    .local v5, orig_env:Lgnu/mapping/Environment;
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v4

    .line 203
    .local v4, orig_comp:Lgnu/expr/Compilation;
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2

    .line 204
    .local v2, messages:Lgnu/text/SourceMessages;
    const/4 v1, 0x0

    .line 205
    .local v1, savedLoader:Ljava/lang/ClassLoader;
    const/4 v6, 0x0

    .line 207
    .local v6, thread:Ljava/lang/Thread;
    sget-boolean v7, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    if-eqz v7, :cond_0

    sget-boolean v7, Lgnu/expr/ModuleExp;->neverCompile:Z

    if-eqz v7, :cond_0

    .line 209
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0
    const-string p1, "alwaysCompile and neverCompile are both true!"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 214
    .restart local p0
    .restart local p1
    :cond_0
    if-eq p0, v5, :cond_1

    .line 215
    :try_start_0
    invoke-static {p0}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 216
    :cond_1
    if-eq p2, v4, :cond_2

    .line 217
    invoke-static {p2}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    .line 221
    :cond_2
    sget-boolean v7, Lgnu/expr/ModuleExp;->neverCompile:Z

    if-eqz v7, :cond_3

    .line 222
    const/4 v7, 0x0

    iput-boolean v7, p2, Lgnu/expr/Compilation;->mustCompile:Z

    .line 224
    :cond_3
    sget-boolean v7, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    if-nez v7, :cond_4

    iget-boolean v7, p2, Lgnu/expr/Compilation;->mustCompile:Z

    if-eqz v7, :cond_5

    .line 225
    :cond_4
    invoke-virtual {p2, v3}, Lgnu/expr/Compilation;->addMainClass(Lgnu/expr/ModuleExp;)V

    .line 227
    :cond_5
    invoke-virtual {p2, v3}, Lgnu/expr/Compilation;->walkModule(Lgnu/expr/ModuleExp;)V

    .line 228
    const/16 v7, 0x8

    invoke-virtual {p2, v7}, Lgnu/expr/Compilation;->setState(I)V

    .line 230
    if-eqz p4, :cond_a

    const/16 v7, 0x14

    invoke-virtual {v2, p4, v7}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v7

    if-eqz v7, :cond_b

    .line 231
    :cond_6
    const/4 p1, 0x0

    .line 344
    .end local p1
    if-eq p0, v5, :cond_7

    .line 345
    invoke-static {v5}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 346
    :cond_7
    if-eq p2, v4, :cond_8

    .line 347
    invoke-static {v4}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    .line 348
    :cond_8
    if-eqz v6, :cond_9

    .line 349
    invoke-virtual {v6, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_9
    move-object p0, v1

    .end local v1           #savedLoader:Ljava/lang/ClassLoader;
    .local p0, savedLoader:Ljava/lang/ClassLoader;
    move p2, p1

    move-object p1, v6

    .line 351
    .end local v2           #messages:Lgnu/text/SourceMessages;
    .end local v3           #mexp:Lgnu/expr/ModuleExp;
    .end local v6           #thread:Ljava/lang/Thread;
    .end local p2
    .end local p3
    .end local p4
    .local p1, thread:Ljava/lang/Thread;
    :goto_0
    return p2

    .line 230
    .restart local v1       #savedLoader:Ljava/lang/ClassLoader;
    .restart local v2       #messages:Lgnu/text/SourceMessages;
    .restart local v3       #mexp:Lgnu/expr/ModuleExp;
    .restart local v6       #thread:Ljava/lang/Thread;
    .local p0, env:Lgnu/mapping/Environment;
    .local p1, ctx:Lgnu/mapping/CallContext;
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_a
    :try_start_1
    invoke-virtual {v2}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v7

    if-nez v7, :cond_6

    .line 233
    :cond_b
    sget-boolean v7, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    if-nez v7, :cond_10

    iget-boolean v7, p2, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v7, :cond_10

    .line 235
    sget-boolean p3, Lgnu/expr/Compilation;->debugPrintFinalExpr:Z

    .end local p3
    if-eqz p3, :cond_c

    if-eqz p4, :cond_c

    .line 237
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Evaluating final module \""

    .end local v2           #messages:Lgnu/text/SourceMessages;
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v3}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, "\":"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v3, p4}, Lgnu/expr/ModuleExp;->print(Lgnu/mapping/OutPort;)V

    .line 239
    const/16 p3, 0x5d

    invoke-virtual {p4, p3}, Lgnu/mapping/OutPort;->println(C)V

    .line 240
    invoke-virtual {p4}, Lgnu/mapping/OutPort;->flush()V

    .line 242
    :cond_c
    iget-object p3, v3, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    invoke-virtual {p3, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object p4, v6

    .end local v6           #thread:Ljava/lang/Thread;
    .local p4, thread:Ljava/lang/Thread;
    move-object p3, v1

    .line 340
    .end local v1           #savedLoader:Ljava/lang/ClassLoader;
    .end local v3           #mexp:Lgnu/expr/ModuleExp;
    .local p3, savedLoader:Ljava/lang/ClassLoader;
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    if-eq p0, v5, :cond_d

    .line 345
    invoke-static {v5}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 346
    :cond_d
    if-eq p2, v4, :cond_e

    .line 347
    invoke-static {v4}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    .line 348
    :cond_e
    if-eqz p4, :cond_f

    .line 349
    invoke-virtual {p4, p3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 351
    :cond_f
    const/4 p0, 0x1

    move-object p1, p4

    .end local p4           #thread:Ljava/lang/Thread;
    .local p1, thread:Ljava/lang/Thread;
    move p2, p0

    move-object p0, p3

    .end local p3           #savedLoader:Ljava/lang/ClassLoader;
    .local p0, savedLoader:Ljava/lang/ClassLoader;
    goto :goto_0

    .line 248
    .restart local v1       #savedLoader:Ljava/lang/ClassLoader;
    .restart local v2       #messages:Lgnu/text/SourceMessages;
    .restart local v3       #mexp:Lgnu/expr/ModuleExp;
    .restart local v6       #thread:Ljava/lang/Thread;
    .local p0, env:Lgnu/mapping/Environment;
    .local p1, ctx:Lgnu/mapping/CallContext;
    .local p3, url:Ljava/net/URL;
    .local p4, msg:Lgnu/mapping/OutPort;
    :cond_10
    :try_start_3
    invoke-static {p2, p3}, Lgnu/expr/ModuleExp;->evalToClass(Lgnu/expr/Compilation;Ljava/net/URL;)Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object p3

    .line 249
    .local p3, clas:Ljava/lang/Class;
    if-nez p3, :cond_14

    .line 250
    const/4 p1, 0x0

    .line 344
    .end local p1           #ctx:Lgnu/mapping/CallContext;
    if-eq p0, v5, :cond_11

    .line 345
    invoke-static {v5}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 346
    :cond_11
    if-eq p2, v4, :cond_12

    .line 347
    invoke-static {v4}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    .line 348
    :cond_12
    if-eqz v6, :cond_13

    .line 349
    invoke-virtual {v6, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_13
    move-object p0, v1

    .end local v1           #savedLoader:Ljava/lang/ClassLoader;
    .local p0, savedLoader:Ljava/lang/ClassLoader;
    move p2, p1

    move-object p1, v6

    .end local v6           #thread:Ljava/lang/Thread;
    .local p1, thread:Ljava/lang/Thread;
    goto :goto_0

    .line 253
    .restart local v1       #savedLoader:Ljava/lang/ClassLoader;
    .restart local v6       #thread:Ljava/lang/Thread;
    .local p0, env:Lgnu/mapping/Environment;
    .local p1, ctx:Lgnu/mapping/CallContext;
    :cond_14
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    .line 254
    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 255
    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v7, v6

    .end local v6           #thread:Ljava/lang/Thread;
    .local v7, thread:Ljava/lang/Thread;
    move-object v6, v1

    .line 265
    .end local v1           #savedLoader:Ljava/lang/ClassLoader;
    .local v6, savedLoader:Ljava/lang/ClassLoader;
    :goto_2
    :try_start_5
    const-string v1, "$instance"

    invoke-virtual {p3, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object p3

    .line 278
    .local p3, inst:Ljava/lang/Object;
    :goto_3
    const/4 v1, 0x0

    :try_start_6
    iput-object v1, v3, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 279
    const/4 v1, 0x0

    iput-object v1, v3, Lgnu/expr/ModuleExp;->thisVariable:Lgnu/bytecode/Variable;

    .line 280
    if-eqz p4, :cond_1c

    const/16 v1, 0x14

    invoke-virtual {v2, p4, v1}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_3

    move-result p4

    .end local p4           #msg:Lgnu/mapping/OutPort;
    if-eqz p4, :cond_1d

    .line 282
    :cond_15
    const/4 p1, 0x0

    .line 344
    .end local p1           #ctx:Lgnu/mapping/CallContext;
    if-eq p0, v5, :cond_16

    .line 345
    invoke-static {v5}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 346
    :cond_16
    if-eq p2, v4, :cond_17

    .line 347
    invoke-static {v4}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    .line 348
    :cond_17
    if-eqz v7, :cond_18

    .line 349
    invoke-virtual {v7, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_18
    move-object p0, v6

    .end local v6           #savedLoader:Ljava/lang/ClassLoader;
    .local p0, savedLoader:Ljava/lang/ClassLoader;
    move p2, p1

    move-object p1, v7

    .end local v7           #thread:Ljava/lang/Thread;
    .local p1, thread:Ljava/lang/Thread;
    goto/16 :goto_0

    .line 257
    .restart local v1       #savedLoader:Ljava/lang/ClassLoader;
    .local v6, thread:Ljava/lang/Thread;
    .local p0, env:Lgnu/mapping/Environment;
    .local p1, ctx:Lgnu/mapping/CallContext;
    .local p3, clas:Ljava/lang/Class;
    .restart local p4       #msg:Lgnu/mapping/OutPort;
    :catch_0
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    .end local v6           #thread:Ljava/lang/Thread;
    .restart local v7       #thread:Ljava/lang/Thread;
    move-object v6, v1

    .end local v1           #savedLoader:Ljava/lang/ClassLoader;
    .local v6, savedLoader:Ljava/lang/ClassLoader;
    move-object v1, v9

    .line 259
    .local v1, ex:Ljava/lang/Throwable;
    const/4 v1, 0x0

    .end local v7           #thread:Ljava/lang/Thread;
    .local v1, thread:Ljava/lang/Thread;
    move-object v7, v1

    .end local v1           #thread:Ljava/lang/Thread;
    .restart local v7       #thread:Ljava/lang/Thread;
    goto :goto_2

    .line 267
    :catch_1
    move-exception v1

    .line 269
    .local v1, ex:Ljava/lang/NoSuchFieldException;
    :try_start_7
    invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p3

    .line 275
    .local p3, inst:Ljava/lang/Object;
    goto :goto_3

    .line 272
    .end local v1           #ex:Ljava/lang/NoSuchFieldException;
    .local p3, clas:Ljava/lang/Class;
    :catch_2
    move-exception p1

    .line 274
    .local p1, ex:Ljava/lang/ExceptionInInitializerError;
    invoke-virtual {p1}, Ljava/lang/ExceptionInInitializerError;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .end local p1           #ex:Ljava/lang/ExceptionInInitializerError;
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_3

    .line 335
    .end local v2           #messages:Lgnu/text/SourceMessages;
    .end local v3           #mexp:Lgnu/expr/ModuleExp;
    .end local p3           #clas:Ljava/lang/Class;
    .end local p4           #msg:Lgnu/mapping/OutPort;
    :catch_3
    move-exception p1

    move-object p4, v7

    .end local v7           #thread:Ljava/lang/Thread;
    .local p4, thread:Ljava/lang/Thread;
    move-object p3, v6

    .line 337
    .end local v6           #savedLoader:Ljava/lang/ClassLoader;
    .local p1, ex:Ljava/lang/IllegalAccessException;
    .local p3, savedLoader:Ljava/lang/ClassLoader;
    :goto_4
    :try_start_8
    new-instance p1, Ljava/lang/RuntimeException;

    .end local p1           #ex:Ljava/lang/IllegalAccessException;
    const-string v1, "class illegal access: in lambda eval"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 344
    :catchall_0
    move-exception p1

    move-object v9, p1

    move-object p1, p3

    .end local p3           #savedLoader:Ljava/lang/ClassLoader;
    .local p1, savedLoader:Ljava/lang/ClassLoader;
    move-object p3, p4

    .end local p4           #thread:Ljava/lang/Thread;
    .local p3, thread:Ljava/lang/Thread;
    move-object p4, v9

    :goto_5
    if-eq p0, v5, :cond_19

    .line 345
    invoke-static {v5}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 346
    :cond_19
    if-eq p2, v4, :cond_1a

    .line 347
    invoke-static {v4}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    .line 348
    :cond_1a
    if-eqz p3, :cond_1b

    .line 349
    invoke-virtual {p3, p1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_1b
    throw p4

    .line 280
    .restart local v2       #messages:Lgnu/text/SourceMessages;
    .restart local v3       #mexp:Lgnu/expr/ModuleExp;
    .restart local v6       #savedLoader:Ljava/lang/ClassLoader;
    .restart local v7       #thread:Ljava/lang/Thread;
    .local p1, ctx:Lgnu/mapping/CallContext;
    .local p3, inst:Ljava/lang/Object;
    .local p4, msg:Lgnu/mapping/OutPort;
    :cond_1c
    :try_start_9
    invoke-virtual {v2}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result p4

    .end local p4           #msg:Lgnu/mapping/OutPort;
    if-nez p4, :cond_15

    .line 283
    :cond_1d
    instance-of p4, p3, Lgnu/expr/ModuleBody;

    if-eqz p4, :cond_1e

    .line 284
    check-cast p3, Lgnu/expr/ModuleBody;

    .end local p3           #inst:Ljava/lang/Object;
    invoke-virtual {p3, p1}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V

    .line 287
    :cond_1e
    invoke-virtual {v3}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object p3

    .line 288
    .end local v2           #messages:Lgnu/text/SourceMessages;
    .end local v3           #mexp:Lgnu/expr/ModuleExp;
    .local p3, decl:Lgnu/expr/Declaration;
    :goto_6
    if-eqz p3, :cond_29

    .line 290
    invoke-virtual {p3}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object p4

    .line 291
    .local p4, dname:Ljava/lang/Object;
    invoke-virtual {p3}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_1f

    if-nez p4, :cond_20

    .line 288
    .end local p4           #dname:Ljava/lang/Object;
    :cond_1f
    :goto_7
    invoke-virtual {p3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object p3

    goto :goto_6

    .line 293
    .restart local p4       #dname:Ljava/lang/Object;
    :cond_20
    iget-object v1, p3, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 294
    .local v1, fld:Lgnu/bytecode/Field;
    instance-of v2, p4, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_22

    check-cast p4, Lgnu/mapping/Symbol;

    .end local p4           #dname:Ljava/lang/Object;
    move-object v3, p4

    .line 296
    .local v3, sym:Lgnu/mapping/Symbol;
    :goto_8
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object p4

    invoke-virtual {p4, p3}, Lgnu/expr/Language;->getEnvPropertyFor(Lgnu/expr/Declaration;)Ljava/lang/Object;

    move-result-object v2

    .line 298
    .local v2, property:Ljava/lang/Object;
    invoke-virtual {p3}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object p4

    .line 303
    .local p4, dvalue:Lgnu/expr/Expression;
    iget-object v8, p3, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v8}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_28

    instance-of v8, p4, Lgnu/expr/ReferenceExp;

    if-eqz v8, :cond_21

    move-object v0, p4

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v8

    if-nez v8, :cond_28

    .line 308
    :cond_21
    instance-of v1, p4, Lgnu/expr/QuoteExp;

    .end local v1           #fld:Lgnu/bytecode/Field;
    if-eqz v1, :cond_23

    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq p4, v1, :cond_23

    .line 310
    check-cast p4, Lgnu/expr/QuoteExp;

    .end local p4           #dvalue:Lgnu/expr/Expression;
    invoke-virtual {p4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p4

    .line 319
    .local p4, value:Ljava/lang/Object;
    :goto_9
    invoke-virtual {p3}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 320
    check-cast p4, Lgnu/mapping/Location;

    .end local p4           #value:Ljava/lang/Object;
    invoke-virtual {p0, v3, v2, p4}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    goto :goto_7

    .line 344
    .end local v2           #property:Ljava/lang/Object;
    .end local v3           #sym:Lgnu/mapping/Symbol;
    .end local p1           #ctx:Lgnu/mapping/CallContext;
    .end local p3           #decl:Lgnu/expr/Declaration;
    :catchall_1
    move-exception p1

    move-object p4, p1

    move-object p3, v7

    .end local v7           #thread:Ljava/lang/Thread;
    .local p3, thread:Ljava/lang/Thread;
    move-object p1, v6

    .end local v6           #savedLoader:Ljava/lang/ClassLoader;
    .local p1, savedLoader:Ljava/lang/ClassLoader;
    goto/16 :goto_5

    .line 294
    .restart local v1       #fld:Lgnu/bytecode/Field;
    .restart local v6       #savedLoader:Ljava/lang/ClassLoader;
    .restart local v7       #thread:Ljava/lang/Thread;
    .local p1, ctx:Lgnu/mapping/CallContext;
    .local p3, decl:Lgnu/expr/Declaration;
    .local p4, dname:Ljava/lang/Object;
    :cond_22
    const-string v2, ""

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    .end local p4           #dname:Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p4

    move-object v3, p4

    goto :goto_8

    .line 313
    .end local v1           #fld:Lgnu/bytecode/Field;
    .restart local v2       #property:Ljava/lang/Object;
    .restart local v3       #sym:Lgnu/mapping/Symbol;
    .local p4, dvalue:Lgnu/expr/Expression;
    :cond_23
    iget-object v1, p3, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 314
    .local v1, value:Ljava/lang/Object;
    invoke-virtual {p3}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v8

    if-nez v8, :cond_24

    .line 315
    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p4

    .end local p4           #dvalue:Lgnu/expr/Expression;
    invoke-virtual {p3, p4}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    move-object p4, v1

    .end local v1           #value:Ljava/lang/Object;
    .local p4, value:Ljava/lang/Object;
    goto :goto_9

    .line 316
    .restart local v1       #value:Ljava/lang/Object;
    .local p4, dvalue:Lgnu/expr/Expression;
    :cond_24
    invoke-virtual {p3}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v8

    if-eqz v8, :cond_25

    instance-of p4, p4, Lgnu/expr/ReferenceExp;

    .end local p4           #dvalue:Lgnu/expr/Expression;
    if-nez p4, :cond_26

    .line 317
    :cond_25
    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    :cond_26
    move-object p4, v1

    .end local v1           #value:Ljava/lang/Object;
    .local p4, value:Ljava/lang/Object;
    goto :goto_9

    .line 322
    :cond_27
    invoke-virtual {p0, v3, v2, p4}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 326
    .local v1, fld:Lgnu/bytecode/Field;
    .local p4, dvalue:Lgnu/expr/Expression;
    :cond_28
    new-instance p4, Lgnu/kawa/reflect/StaticFieldLocation;

    .end local p4           #dvalue:Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v8

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .end local v1           #fld:Lgnu/bytecode/Field;
    invoke-direct {p4, v8, v1}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 329
    .local p4, loc:Lgnu/kawa/reflect/StaticFieldLocation;
    invoke-virtual {p4, p3}, Lgnu/kawa/reflect/StaticFieldLocation;->setDeclaration(Lgnu/expr/Declaration;)V

    .line 330
    invoke-virtual {p0, v3, v2, p4}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    .line 331
    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_7

    .end local v2           #property:Ljava/lang/Object;
    .end local v3           #sym:Lgnu/mapping/Symbol;
    .end local p4           #loc:Lgnu/kawa/reflect/StaticFieldLocation;
    :cond_29
    move-object p4, v7

    .end local v7           #thread:Ljava/lang/Thread;
    .local p4, thread:Ljava/lang/Thread;
    move-object p3, v6

    .line 338
    .end local v6           #savedLoader:Ljava/lang/ClassLoader;
    .local p3, savedLoader:Ljava/lang/ClassLoader;
    goto/16 :goto_1

    .line 344
    .end local p3           #savedLoader:Ljava/lang/ClassLoader;
    .local v1, savedLoader:Ljava/lang/ClassLoader;
    .local v3, mexp:Lgnu/expr/ModuleExp;
    .local v6, thread:Ljava/lang/Thread;
    .local p4, msg:Lgnu/mapping/OutPort;
    :catchall_2
    move-exception p1

    move-object p4, p1

    move-object p3, v6

    .end local v6           #thread:Ljava/lang/Thread;
    .local p3, thread:Ljava/lang/Thread;
    move-object p1, v1

    .end local v1           #savedLoader:Ljava/lang/ClassLoader;
    .local p1, savedLoader:Ljava/lang/ClassLoader;
    goto/16 :goto_5

    .line 335
    .end local p3           #thread:Ljava/lang/Thread;
    .restart local v1       #savedLoader:Ljava/lang/ClassLoader;
    .local v2, messages:Lgnu/text/SourceMessages;
    .restart local v6       #thread:Ljava/lang/Thread;
    .local p1, ctx:Lgnu/mapping/CallContext;
    :catch_4
    move-exception p1

    move-object p4, v6

    .end local v6           #thread:Ljava/lang/Thread;
    .local p4, thread:Ljava/lang/Thread;
    move-object p3, v1

    .end local v1           #savedLoader:Ljava/lang/ClassLoader;
    .local p3, savedLoader:Ljava/lang/ClassLoader;
    goto/16 :goto_4
.end method

.method public static evalToClass(Lgnu/expr/Compilation;Ljava/net/URL;)Ljava/lang/Class;
    .locals 9
    .parameter "comp"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    .line 62
    .local v0, mexp:Lgnu/expr/ModuleExp;
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    .line 65
    .local v6, messages:Lgnu/text/SourceMessages;
    :try_start_0
    invoke-static {}, Lgnu/bytecode/ObjectType;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 66
    .local v0, parentLoader:Ljava/lang/ClassLoader;
    new-instance v5, Lgnu/bytecode/ArrayClassLoader;

    invoke-direct {v5, v0}, Lgnu/bytecode/ArrayClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 67
    .local v5, loader:Lgnu/bytecode/ArrayClassLoader;
    if-nez p1, :cond_0

    .line 68
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v0

    .end local v0           #parentLoader:Ljava/lang/ClassLoader;
    invoke-virtual {v0}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object p1

    .line 69
    :cond_0
    invoke-virtual {v5, p1}, Lgnu/bytecode/ArrayClassLoader;->setResourceContext(Ljava/net/URL;)V

    .line 70
    iput-object v5, p0, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    .line 72
    iget-object v0, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 74
    invoke-virtual {v6}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const/4 p0, 0x0

    .line 160
    .end local v5           #loader:Lgnu/bytecode/ArrayClassLoader;
    .end local p0
    :goto_0
    return-object p0

    .line 77
    .restart local v5       #loader:Lgnu/bytecode/ArrayClassLoader;
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    .line 78
    .local v0, zout:Ljava/util/zip/ZipOutputStream;
    sget-object v1, Lgnu/expr/ModuleExp;->dumpZipPrefix:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 80
    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v0, Lgnu/expr/ModuleExp;->dumpZipPrefix:Ljava/lang/String;

    .end local v0           #zout:Ljava/util/zip/ZipOutputStream;
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, zipname:Ljava/lang/StringBuffer;
    sget v0, Lgnu/expr/ModuleExp;->lastZipCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/ModuleExp;->lastZipCounter:I

    .line 83
    sget v0, Lgnu/expr/ModuleExp;->interactiveCounter:I

    sget v2, Lgnu/expr/ModuleExp;->lastZipCounter:I

    if-le v0, v2, :cond_2

    .line 84
    sget v0, Lgnu/expr/ModuleExp;->interactiveCounter:I

    sput v0, Lgnu/expr/ModuleExp;->lastZipCounter:I

    .line 85
    :cond_2
    sget v0, Lgnu/expr/ModuleExp;->lastZipCounter:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 86
    const-string v0, ".zip"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #zipname:Ljava/lang/StringBuffer;
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, zfout:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v1, zout:Ljava/util/zip/ZipOutputStream;
    move-object v4, v1

    .line 92
    .end local v0           #zfout:Ljava/io/FileOutputStream;
    .end local v1           #zout:Ljava/util/zip/ZipOutputStream;
    .local v4, zout:Ljava/util/zip/ZipOutputStream;
    :goto_1
    const/4 v0, 0x0

    .local v0, iClass:I
    move v2, v0

    .end local v0           #iClass:I
    .local v2, iClass:I
    :goto_2
    iget v0, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v2, v0, :cond_4

    .line 94
    iget-object v0, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v0, v0, v2

    .line 95
    .local v0, clas:Lgnu/bytecode/ClassType;
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, className:Ljava/lang/String;
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->writeToArray()[B

    move-result-object v0

    .line 97
    .local v0, classBytes:[B
    invoke-virtual {v5, v1, v0}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/String;[B)V

    .line 99
    if-eqz v4, :cond_3

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x2e

    const/16 v8, 0x2f

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .end local v1           #className:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".class"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, clname:Ljava/lang/String;
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 104
    .local v3, zent:Ljava/util/zip/ZipEntry;
    array-length v1, v0

    .end local v1           #clname:Ljava/lang/String;
    int-to-long v7, v1

    invoke-virtual {v3, v7, v8}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 105
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 106
    .local v1, crc:Ljava/util/zip/CRC32;
    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 107
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 109
    .end local v1           #crc:Ljava/util/zip/CRC32;
    invoke-virtual {v4, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 110
    invoke-virtual {v4, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 92
    .end local v3           #zent:Ljava/util/zip/ZipEntry;
    :cond_3
    add-int/lit8 v0, v2, 0x1

    .end local v2           #iClass:I
    .local v0, iClass:I
    move v2, v0

    .end local v0           #iClass:I
    .restart local v2       #iClass:I
    goto :goto_2

    .line 113
    :cond_4
    if-eqz v4, :cond_5

    .line 115
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 123
    :cond_5
    const/4 v0, 0x0

    .line 127
    .local v0, clas:Ljava/lang/Class;
    move-object v1, v5

    .local v1, context:Lgnu/bytecode/ArrayClassLoader;
    move-object v2, v1

    .line 128
    .end local v1           #context:Lgnu/bytecode/ArrayClassLoader;
    .local v2, context:Lgnu/bytecode/ArrayClassLoader;
    :goto_3
    invoke-virtual {v2}, Lgnu/bytecode/ArrayClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    instance-of v1, v1, Lgnu/bytecode/ArrayClassLoader;

    if-eqz v1, :cond_6

    .line 129
    invoke-virtual {v2}, Lgnu/bytecode/ArrayClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ArrayClassLoader;

    .end local v2           #context:Lgnu/bytecode/ArrayClassLoader;
    .restart local v1       #context:Lgnu/bytecode/ArrayClassLoader;
    move-object v2, v1

    .end local v1           #context:Lgnu/bytecode/ArrayClassLoader;
    .restart local v2       #context:Lgnu/bytecode/ArrayClassLoader;
    goto :goto_3

    .line 130
    :cond_6
    const/4 v1, 0x0

    .local v1, iClass:I
    move v4, v1

    .end local v1           #iClass:I
    .local v4, iClass:I
    move-object v1, v0

    .end local v0           #clas:Ljava/lang/Class;
    .local v1, clas:Ljava/lang/Class;
    :goto_4
    iget v0, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v4, v0, :cond_9

    .line 132
    iget-object v0, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v3, v0, v4

    .line 133
    .local v3, ctype:Lgnu/bytecode/ClassType;
    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lgnu/bytecode/ArrayClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 134
    .local v0, cclass:Ljava/lang/Class;
    invoke-virtual {v3, v0}, Lgnu/bytecode/ClassType;->setReflectClass(Ljava/lang/Class;)V

    .line 135
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lgnu/bytecode/ClassType;->setExisting(Z)V

    .line 136
    if-nez v4, :cond_7

    .line 137
    move-object v0, v0

    .line 130
    .end local v1           #clas:Ljava/lang/Class;
    .local v0, clas:Ljava/lang/Class;
    :goto_5
    add-int/lit8 v1, v4, 0x1

    .end local v4           #iClass:I
    .local v1, iClass:I
    move v4, v1

    .end local v1           #iClass:I
    .restart local v4       #iClass:I
    move-object v1, v0

    .end local v0           #clas:Ljava/lang/Class;
    .local v1, clas:Ljava/lang/Class;
    goto :goto_4

    .line 142
    .local v0, cclass:Ljava/lang/Class;
    :cond_7
    if-eq v2, v5, :cond_8

    .line 143
    invoke-virtual {v2, v0}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/Class;)V

    :cond_8
    move-object v0, v1

    .end local v1           #clas:Ljava/lang/Class;
    .local v0, clas:Ljava/lang/Class;
    goto :goto_5

    .line 146
    .end local v0           #clas:Ljava/lang/Class;
    .end local v3           #ctype:Lgnu/bytecode/ClassType;
    .restart local v1       #clas:Ljava/lang/Class;
    :cond_9
    iget-object v4, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    .line 147
    .local v4, minfo:Lgnu/expr/ModuleInfo;
    invoke-virtual {v4, v1}, Lgnu/expr/ModuleInfo;->setModuleClass(Ljava/lang/Class;)V

    .line 148
    invoke-virtual {p0}, Lgnu/expr/Compilation;->cleanupAfterCompilation()V

    .line 149
    iget v5, v4, Lgnu/expr/ModuleInfo;->numDependencies:I

    .line 151
    .local v5, ndeps:I
    const/4 v0, 0x0

    .local v0, idep:I
    move v3, v0

    .end local v0           #idep:I
    .end local v2           #context:Lgnu/bytecode/ArrayClassLoader;
    .local v3, idep:I
    :goto_6
    if-ge v3, v5, :cond_b

    .line 153
    iget-object v0, v4, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    aget-object v2, v0, v3

    .line 154
    .local v2, dep:Lgnu/expr/ModuleInfo;
    invoke-virtual {v2}, Lgnu/expr/ModuleInfo;->getModuleClassRaw()Ljava/lang/Class;

    move-result-object v0

    .line 155
    .local v0, dclass:Ljava/lang/Class;
    if-nez v0, :cond_a

    .line 156
    iget-object v0, v2, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    .end local v0           #dclass:Ljava/lang/Class;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lgnu/expr/ModuleExp;->evalToClass(Lgnu/expr/Compilation;Ljava/net/URL;)Ljava/lang/Class;

    .end local v2           #dep:Lgnu/expr/ModuleInfo;
    move-result-object v0

    .line 157
    .restart local v0       #dclass:Ljava/lang/Class;
    :cond_a
    iget-object v2, p0, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    invoke-virtual {v2, v0}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 151
    add-int/lit8 v0, v3, 0x1

    .end local v3           #idep:I
    .local v0, idep:I
    move v3, v0

    .end local v0           #idep:I
    .restart local v3       #idep:I
    goto :goto_6

    :cond_b
    move-object p0, v1

    .line 160
    goto/16 :goto_0

    .line 162
    .end local v1           #clas:Ljava/lang/Class;
    .end local v3           #idep:I
    .end local v4           #minfo:Lgnu/expr/ModuleInfo;
    .end local v5           #ndeps:I
    :catch_0
    move-exception p0

    .line 164
    .local p0, ex:Ljava/io/IOException;
    new-instance p1, Lgnu/mapping/WrappedException;

    .end local p1
    const-string v0, "I/O error in lambda eval"

    invoke-direct {p1, v0, p0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 166
    .local p0, comp:Lgnu/expr/Compilation;
    .restart local p1
    :catch_1
    move-exception p0

    .line 168
    .local p0, ex:Ljava/lang/ClassNotFoundException;
    new-instance p1, Lgnu/mapping/WrappedException;

    .end local p1
    const-string v0, "class not found in lambda eval"

    invoke-direct {p1, v0, p0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 170
    .local p0, comp:Lgnu/expr/Compilation;
    .restart local p1
    :catch_2
    move-exception v0

    .line 172
    .local v0, ex:Ljava/lang/Throwable;
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object p0

    .end local p0           #comp:Lgnu/expr/Compilation;
    const/16 p1, 0x66

    new-instance v1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internal compile error - caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    new-instance p0, Lgnu/text/SyntaxException;

    invoke-direct {p0, v6}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw p0

    .local v0, zout:Ljava/util/zip/ZipOutputStream;
    .local v5, loader:Lgnu/bytecode/ArrayClassLoader;
    .restart local p0       #comp:Lgnu/expr/Compilation;
    .restart local p1
    :cond_c
    move-object v4, v0

    .end local v0           #zout:Ljava/util/zip/ZipOutputStream;
    .local v4, zout:Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_1
.end method

.method public static mustAlwaysCompile()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    .line 191
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/expr/ModuleExp;->neverCompile:Z

    .line 192
    return-void
.end method

.method public static mustNeverCompile()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    .line 186
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/expr/ModuleExp;->neverCompile:Z

    .line 187
    return-void
.end method


# virtual methods
.method public allocChildClasses(Lgnu/expr/Compilation;)V
    .locals 1
    .parameter "comp"

    .prologue
    .line 387
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->declareClosureEnv()Lgnu/bytecode/Variable;

    .line 388
    invoke-virtual {p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleExp;->allocFrame(Lgnu/expr/Compilation;)V

    goto :goto_0
.end method

.method allocFields(Lgnu/expr/Compilation;)V
    .locals 6
    .parameter "comp"

    .prologue
    const/high16 v5, 0x1

    const/16 v4, 0x4000

    const/4 v3, 0x6

    .line 401
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 402
    .local v0, decl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v0, :cond_3

    .line 404
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v2, :cond_2

    .line 402
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 406
    :cond_2
    invoke-virtual {v0, v5}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lgnu/expr/Declaration;->makeField(Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    goto :goto_1

    .line 412
    :cond_3
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 413
    :goto_2
    if-eqz v0, :cond_c

    .line 415
    iget-object v2, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v2, :cond_5

    .line 413
    :cond_4
    :goto_3
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_2

    .line 417
    :cond_5
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    .line 418
    .local v1, value:Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isNamespaceDecl()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v3}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    instance-of v2, v1, Lgnu/expr/ClassExp;

    if-eqz v2, :cond_4

    .line 425
    :cond_7
    invoke-virtual {v0, v5}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 427
    instance-of v2, v1, Lgnu/expr/ModuleExp;

    if-nez v2, :cond_4

    .line 429
    instance-of v2, v1, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_8

    instance-of v2, v1, Lgnu/expr/ClassExp;

    if-nez v2, :cond_8

    .line 431
    check-cast v1, Lgnu/expr/LambdaExp;

    .end local v1           #value:Lgnu/expr/Expression;
    invoke-virtual {v1, p1}, Lgnu/expr/LambdaExp;->allocFieldFor(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    goto :goto_3

    .line 435
    .restart local v1       #value:Lgnu/expr/Expression;
    :cond_8
    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    sget-object v2, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v1, v2, :cond_b

    .line 437
    :cond_a
    const/4 v1, 0x0

    .line 438
    :cond_b
    invoke-virtual {v0, p1, v1}, Lgnu/expr/Declaration;->makeField(Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    goto :goto_3

    .line 441
    .end local v1           #value:Lgnu/expr/Expression;
    :cond_c
    return-void
.end method

.method public classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;
    .locals 11
    .parameter "comp"

    .prologue
    const-string v10, "."

    .line 495
    iget-object v8, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    sget-object v9, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    if-eq v8, v9, :cond_0

    .line 496
    iget-object v8, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    .line 553
    :goto_0
    return-object v8

    .line 497
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v4

    .line 499
    .local v4, mname:Ljava/lang/String;
    const/4 v1, 0x0

    .line 500
    .local v1, className:Ljava/lang/String;
    const/4 v7, 0x0

    .line 501
    .local v7, path:Lgnu/text/Path;
    if-eqz v4, :cond_5

    .line 502
    move-object v3, v4

    .line 525
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    .line 526
    invoke-virtual {p0, v3}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 527
    :cond_2
    invoke-static {v3}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 528
    iget-object v8, p1, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_a

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lgnu/text/Path;->isAbsolute()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v7}, Lgnu/text/Path;->getParent()Lgnu/text/Path;

    move-result-object v6

    .local v6, parentPath:Lgnu/text/Path;
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, parent:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    const-string v8, ".."

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_a

    .line 535
    const-string v8, "file.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 536
    const-string v8, "./"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 537
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 538
    :cond_3
    const-string v8, "."

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    move-object v1, v3

    .line 543
    .end local v5           #parent:Ljava/lang/String;
    .end local v6           #parentPath:Lgnu/text/Path;
    :goto_2
    new-instance v0, Lgnu/bytecode/ClassType;

    invoke-direct {v0, v1}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, clas:Lgnu/bytecode/ClassType;
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 545
    iget-object v8, p1, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    if-ne v8, p0, :cond_4

    .line 547
    iget-object v8, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-nez v8, :cond_b

    .line 548
    iput-object v0, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    :cond_4
    :goto_3
    move-object v8, v0

    .line 553
    goto :goto_0

    .line 503
    .end local v0           #clas:Lgnu/bytecode/ClassType;
    :cond_5
    if-nez v3, :cond_6

    .line 505
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v3

    .line 506
    if-nez v3, :cond_1

    .line 507
    const-string v3, "$unnamed_input_file$"

    goto :goto_1

    .line 509
    :cond_6
    iget-object v8, p0, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    const-string v9, "/dev/stdin"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 511
    :cond_7
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v3

    .line 512
    if-nez v3, :cond_1

    .line 513
    const-string v3, "$stdin$"

    goto/16 :goto_1

    .line 517
    :cond_8
    invoke-static {v3}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v7

    .line 518
    invoke-virtual {v7}, Lgnu/text/Path;->getLast()Ljava/lang/String;

    move-result-object v3

    .line 519
    const/16 v8, 0x2e

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 520
    .local v2, dotIndex:I
    if-lez v2, :cond_1

    .line 521
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 538
    .end local v2           #dotIndex:I
    .restart local v5       #parent:Ljava/lang/String;
    .restart local v6       #parentPath:Lgnu/text/Path;
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    goto :goto_2

    .line 542
    .end local v5           #parent:Ljava/lang/String;
    .end local v6           #parentPath:Lgnu/text/Path;
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 549
    .restart local v0       #clas:Lgnu/bytecode/ClassType;
    :cond_b
    iget-object v8, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 550
    const/16 v8, 0x65

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inconsistent main class name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - old name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_3
.end method

.method public firstDecl()Lgnu/expr/Declaration;
    .locals 1

    .prologue
    .line 482
    monitor-enter p0

    .line 484
    const/high16 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->setupModuleExp()Lgnu/expr/ModuleExp;

    .line 486
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    iget-object v0, p0, Lgnu/expr/ModuleExp;->decls:Lgnu/expr/Declaration;

    return-object v0

    .line 486
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getInterfaces()[Lgnu/bytecode/ClassType;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lgnu/expr/ModuleExp;->interfaces:[Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public getNamespaceUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuperType()Lgnu/bytecode/ClassType;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lgnu/expr/ModuleExp;->superType:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final isStatic()Z
    .locals 1

    .prologue
    .line 370
    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lgnu/expr/Compilation;->moduleStatic:I

    if-gtz v0, :cond_0

    const/high16 v0, 0x8

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/high16 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x8000

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 6
    .parameter "out"

    .prologue
    const/16 v4, 0x2f

    const-string v5, ")"

    .line 450
    const-string v2, "(Module/"

    const-string v3, ")"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v5, v3}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 451
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    .line 452
    .local v1, sym:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 455
    invoke-virtual {p1, v4}, Lgnu/mapping/OutPort;->print(C)V

    .line 457
    :cond_0
    iget v2, p0, Lgnu/expr/ModuleExp;->id:I

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(I)V

    .line 458
    invoke-virtual {p1, v4}, Lgnu/mapping/OutPort;->print(C)V

    .line 459
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 460
    const-string v2, "("

    const/4 v3, 0x0

    const-string v4, ")"

    invoke-virtual {p1, v2, v3, v5}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 462
    .local v0, decl:Lgnu/expr/Declaration;
    if-eqz v0, :cond_1

    .line 464
    const-string v2, "Declarations:"

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 465
    :goto_0
    if-eqz v0, :cond_1

    .line 467
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 468
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 465
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 471
    :cond_1
    const-string v2, ")"

    invoke-virtual {p1, v5}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 473
    iget-object v2, p0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    if-nez v2, :cond_2

    .line 474
    const-string v2, "<null body>"

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 477
    :goto_1
    const-string v2, ")"

    invoke-virtual {p1, v5}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 478
    return-void

    .line 476
    :cond_2
    iget-object v2, p0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v2, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    goto :goto_1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 578
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 579
    .local v0, name:Ljava/lang/Object;
    instance-of v1, v0, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_0

    .line 581
    check-cast v0, Lgnu/bytecode/ClassType;

    .end local v0           #name:Ljava/lang/Object;
    iput-object v0, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    .line 582
    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 586
    :goto_0
    iget v1, p0, Lgnu/expr/ModuleExp;->flags:I

    const/high16 v2, 0x4

    or-int/2addr v1, v2

    iput v1, p0, Lgnu/expr/ModuleExp;->flags:I

    .line 587
    return-void

    .line 585
    .restart local v0       #name:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #name:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setInterfaces([Lgnu/bytecode/ClassType;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 364
    iput-object p1, p0, Lgnu/expr/ModuleExp;->interfaces:[Lgnu/bytecode/ClassType;

    return-void
.end method

.method public final setSuperType(Lgnu/bytecode/ClassType;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 362
    iput-object p1, p0, Lgnu/expr/ModuleExp;->superType:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public staticInitRun()Z
    .locals 2

    .prologue
    .line 380
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lgnu/expr/Compilation;->moduleStatic:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;
    .locals 1
    .parameter "walker"

    .prologue
    .line 445
    invoke-virtual {p1, p0}, Lgnu/expr/ExpWalker;->walkModuleExp(Lgnu/expr/ModuleExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    sget-object v2, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 564
    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 573
    :goto_0
    return-void

    .line 567
    :cond_0
    if-nez v0, :cond_1

    .line 568
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v0

    .line 569
    :cond_1
    if-nez v0, :cond_2

    .line 570
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 571
    :cond_2
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method
