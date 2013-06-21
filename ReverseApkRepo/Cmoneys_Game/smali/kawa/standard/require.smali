.class public Lkawa/standard/require;
.super Lkawa/lang/Syntax;
.source "require.java"


# static fields
.field private static final SLIB_PREFIX:Ljava/lang/String; = "gnu.kawa.slib."

.field static featureMap:Ljava/util/Hashtable;

.field public static final require:Lkawa/standard/require;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const-string v6, "gnu.kawa.slib.srfi37"

    const-string v5, "gnu.kawa.slib.srfi1"

    const-string v4, "gnu.kawa.slib.readtable"

    const-string v3, "gnu.kawa.slib.srfi69"

    const-string v2, "gnu.kawa.slib.conditions"

    .line 18
    new-instance v0, Lkawa/standard/require;

    invoke-direct {v0}, Lkawa/standard/require;-><init>()V

    sput-object v0, Lkawa/standard/require;->require:Lkawa/standard/require;

    .line 19
    sget-object v0, Lkawa/standard/require;->require:Lkawa/standard/require;

    const-string v1, "require"

    invoke-virtual {v0, v1}, Lkawa/standard/require;->setName(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lkawa/standard/require;->featureMap:Ljava/util/Hashtable;

    .line 70
    const-string v0, "generic-write"

    const-string v1, "gnu.kawa.slib.genwrite"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "pretty-print"

    const-string v1, "gnu.kawa.slib.pp"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "pprint-file"

    const-string v1, "gnu.kawa.slib.ppfile"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "printf"

    const-string v1, "gnu.kawa.slib.printf"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "xml"

    const-string v1, "gnu.kawa.slib.XML"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "readtable"

    const-string v1, "gnu.kawa.slib.readtable"

    invoke-static {v0, v4}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "srfi-10"

    const-string v1, "gnu.kawa.slib.readtable"

    invoke-static {v0, v4}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "http"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "srfi-1"

    const-string v1, "gnu.kawa.slib.srfi1"

    invoke-static {v0, v5}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "list-lib"

    const-string v1, "gnu.kawa.slib.srfi1"

    invoke-static {v0, v5}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "srfi-34"

    const-string v1, "gnu.kawa.slib.srfi34"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "srfi-35"

    const-string v1, "gnu.kawa.slib.conditions"

    invoke-static {v0, v2}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "condition"

    const-string v1, "gnu.kawa.slib.conditions"

    invoke-static {v0, v2}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "conditions"

    const-string v1, "gnu.kawa.slib.conditions"

    invoke-static {v0, v2}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "srfi-37"

    const-string v1, "gnu.kawa.slib.srfi37"

    invoke-static {v0, v6}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "args-fold"

    const-string v1, "gnu.kawa.slib.srfi37"

    invoke-static {v0, v6}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "srfi-64"

    const-string v1, "gnu.kawa.slib.testing"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "testing"

    const-string v1, "gnu.kawa.slib.testing"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "srfi-69"

    const-string v1, "gnu.kawa.slib.srfi69"

    invoke-static {v0, v3}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "hash-table"

    const-string v1, "gnu.kawa.slib.srfi69"

    invoke-static {v0, v3}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "basic-hash-tables"

    const-string v1, "gnu.kawa.slib.srfi69"

    invoke-static {v0, v3}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "srfi-95"

    const-string v1, "kawa.lib.srfi95"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "sorting-and-merging"

    const-string v1, "kawa.lib.srfi95"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "gui"

    const-string v1, "gnu.kawa.slib.gui"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "swing-gui"

    const-string v1, "gnu.kawa.slib.swing"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "android-defs"

    const-string v1, "gnu.kawa.android.defs"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public static find(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "typeName"

    .prologue
    .line 105
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleManager;->findWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->getInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z
    .locals 20
    .parameter "className"
    .parameter "info"
    .parameter "renamer"
    .parameter "forms"
    .parameter "defs"
    .parameter "tr"

    .prologue
    .line 221
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v4

    .line 223
    .local v4, manager:Lgnu/expr/ModuleManager;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .local v5, now:J
    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Lgnu/expr/ModuleInfo;->checkCurrent(Lgnu/expr/ModuleManager;J)Z

    move-result v4

    .end local v4           #manager:Lgnu/expr/ModuleManager;
    if-nez v4, :cond_0

    .line 226
    invoke-virtual/range {p5 .. p5}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    .line 227
    .end local v5           #now:J
    .local v6, messages:Lgnu/text/SourceMessages;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v5

    .line 231
    .local v5, language:Lgnu/expr/Language;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->getSourceAbsPath()Lgnu/text/Path;

    move-result-object v4

    invoke-static {v4}, Lgnu/mapping/InPort;->openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v4

    .line 232
    .local v4, fstream:Lgnu/mapping/InPort;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->clearClass()V

    .line 233
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    .line 234
    move-object v0, v5

    move-object v1, v4

    move-object v2, v6

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object p0

    .line 235
    .local p0, comp:Lgnu/expr/Compilation;
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move v4, v0

    .end local v4           #fstream:Lgnu/mapping/InPort;
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgnu/expr/Compilation;->immediate:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    .line 254
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v4

    .line 255
    .local v4, mexp:Lgnu/expr/ModuleExp;
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object p0

    .line 256
    .local p0, ctype:Lgnu/bytecode/ClassType;
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object p0

    .end local p0           #ctype:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    .line 259
    .end local v4           #mexp:Lgnu/expr/ModuleExp;
    .end local v5           #language:Lgnu/expr/Language;
    .end local v6           #messages:Lgnu/text/SourceMessages;
    :cond_0
    move-object/from16 v0, p5

    iget-object v0, v0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    move-object/from16 p0, v0

    if-eqz p0, :cond_2

    invoke-virtual/range {p5 .. p5}, Lgnu/expr/Compilation;->getState()I

    move-result p0

    const/4 v4, 0x4

    move/from16 v0, p0

    move v1, v4

    if-ge v0, v1, :cond_2

    .line 261
    move-object/from16 v0, p5

    iget-object v0, v0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    move-object/from16 p0, v0

    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ModuleInfo;->addDependency(Lgnu/expr/ModuleInfo;)V

    .line 263
    const/16 p0, 0xc

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleInfo;->loadEager(I)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->getState()I

    move-result p0

    const/4 v4, 0x6

    move/from16 v0, p0

    move v1, v4

    if-ge v0, v1, :cond_2

    .line 267
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->pushPendingImport(Lgnu/expr/ModuleInfo;Lgnu/expr/ScopeExp;)V

    .line 268
    const/16 p0, 0x1

    .line 482
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :goto_0
    return p0

    .line 237
    .restart local v5       #language:Lgnu/expr/Language;
    .restart local v6       #messages:Lgnu/text/SourceMessages;
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :catch_0
    move-exception p0

    .line 239
    .local p0, ex:Ljava/io/FileNotFoundException;
    const/16 p1, 0x65

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p1
    .end local p2
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not found: "

    .end local p3
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p0 .. p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #ex:Ljava/io/FileNotFoundException;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p5

    move/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 240
    const/16 p0, 0x0

    goto :goto_0

    .line 242
    .restart local p1
    .restart local p2
    .restart local p3
    :catch_1
    move-exception p0

    .line 244
    .local p0, ex:Ljava/io/IOException;
    const/16 p1, 0x65

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p1
    .end local p2
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "caught "

    .end local p3
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ex:Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p5

    move/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 245
    const/16 p0, 0x0

    goto :goto_0

    .line 247
    .restart local p1
    .restart local p2
    .restart local p3
    :catch_2
    move-exception p0

    .line 249
    .local p0, ex:Lgnu/text/SyntaxException;
    invoke-virtual/range {p0 .. p0}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object p1

    .end local p1
    move-object/from16 v0, p1

    move-object v1, v6

    if-eq v0, v1, :cond_1

    .line 250
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "confussing syntax error: "

    .end local p3
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ex:Lgnu/text/SyntaxException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 252
    .restart local p0       #ex:Lgnu/text/SyntaxException;
    .restart local p2
    .restart local p3
    :cond_1
    const/16 p0, 0x0

    goto :goto_0

    .line 272
    .end local v5           #language:Lgnu/expr/Language;
    .end local v6           #messages:Lgnu/text/SourceMessages;
    .end local p0           #ex:Lgnu/text/SyntaxException;
    .restart local p1
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v17

    .line 273
    .local v17, type:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 274
    .local v16, tname:Ljava/lang/String;
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 p0, v0

    if-eqz p0, :cond_4

    move-object/from16 v0, p4

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 p0, v0

    if-eqz p0, :cond_4

    const/16 p0, 0x1

    move/from16 v11, p0

    .line 275
    .local v11, immediate:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->getState()I

    move-result p0

    const/4 v4, 0x6

    move/from16 v0, p0

    move v1, v4

    if-lt v0, v1, :cond_3

    sget-object p0, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_3
    const/16 p0, 0x1

    move/from16 v13, p0

    .line 277
    .local v13, isRunnable:Z
    :goto_2
    const/16 p0, 0x0

    .line 278
    .local p0, decl:Lgnu/expr/Declaration;
    const-string v4, "kawa.standard.require"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    .line 279
    .local v5, thisType:Lgnu/bytecode/ClassType;
    const/4 v4, 0x1

    new-array v4, v4, [Lgnu/expr/Expression;

    const/4 v6, 0x0

    new-instance v7, Lgnu/expr/QuoteExp;

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v7, v4, v6

    .line 280
    .local v4, args:[Lgnu/expr/Expression;
    const-string v6, "find"

    invoke-static {v5, v6, v4}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v7

    .line 281
    .local v7, dofind:Lgnu/expr/Expression;
    const/4 v8, 0x0

    .line 282
    .local v8, instanceField:Lgnu/bytecode/Field;
    invoke-virtual/range {p5 .. p5}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v15

    .line 283
    .local v15, language:Lgnu/expr/Language;
    move-object v0, v7

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 284
    invoke-virtual/range {p3 .. p3}, Ljava/util/Vector;->size()I

    move-result v5

    .line 286
    .local v5, formsStart:I
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->setupModuleExp()Lgnu/expr/ModuleExp;

    move-result-object p1

    .line 288
    .local p1, mod:Lgnu/expr/ModuleExp;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 289
    .local v6, declPairs:Ljava/util/Vector;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object p1

    .local p1, fdecl:Lgnu/expr/Declaration;
    move-object v12, v8

    .end local v8           #instanceField:Lgnu/bytecode/Field;
    .local v12, instanceField:Lgnu/bytecode/Field;
    move-object/from16 v8, p1

    .end local p1           #fdecl:Lgnu/expr/Declaration;
    .local v8, fdecl:Lgnu/expr/Declaration;
    move/from16 p1, v5

    .end local v5           #formsStart:I
    .local p1, formsStart:I
    move-object/from16 v5, p0

    .line 290
    .end local p0           #decl:Lgnu/expr/Declaration;
    .local v5, decl:Lgnu/expr/Declaration;
    :goto_3
    if-eqz v8, :cond_19

    .line 292
    invoke-virtual {v8}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result p0

    if-eqz p0, :cond_6

    move-object v9, v12

    .end local v12           #instanceField:Lgnu/bytecode/Field;
    .local v9, instanceField:Lgnu/bytecode/Field;
    move-object/from16 p0, v5

    .end local v5           #decl:Lgnu/expr/Declaration;
    .restart local p0       #decl:Lgnu/expr/Declaration;
    move/from16 v5, p1

    .line 290
    .end local p1           #formsStart:I
    .local v5, formsStart:I
    :goto_4
    invoke-virtual {v8}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object p1

    .end local v8           #fdecl:Lgnu/expr/Declaration;
    .local p1, fdecl:Lgnu/expr/Declaration;
    move-object/from16 v8, p1

    .end local p1           #fdecl:Lgnu/expr/Declaration;
    .restart local v8       #fdecl:Lgnu/expr/Declaration;
    move-object v12, v9

    .end local v9           #instanceField:Lgnu/bytecode/Field;
    .restart local v12       #instanceField:Lgnu/bytecode/Field;
    move/from16 p1, v5

    .end local v5           #formsStart:I
    .local p1, formsStart:I
    move-object/from16 v5, p0

    .end local p0           #decl:Lgnu/expr/Declaration;
    .local v5, decl:Lgnu/expr/Declaration;
    goto :goto_3

    .line 274
    .end local v4           #args:[Lgnu/expr/Expression;
    .end local v5           #decl:Lgnu/expr/Declaration;
    .end local v6           #declPairs:Ljava/util/Vector;
    .end local v7           #dofind:Lgnu/expr/Expression;
    .end local v8           #fdecl:Lgnu/expr/Declaration;
    .end local v11           #immediate:Z
    .end local v12           #instanceField:Lgnu/bytecode/Field;
    .end local v13           #isRunnable:Z
    .end local v15           #language:Lgnu/expr/Language;
    .local p1, info:Lgnu/expr/ModuleInfo;
    :cond_4
    const/16 p0, 0x0

    move/from16 v11, p0

    goto :goto_1

    .line 275
    .restart local v11       #immediate:Z
    :cond_5
    const/16 p0, 0x0

    move/from16 v13, p0

    goto :goto_2

    .line 295
    .restart local v4       #args:[Lgnu/expr/Expression;
    .restart local v5       #decl:Lgnu/expr/Declaration;
    .restart local v6       #declPairs:Ljava/util/Vector;
    .restart local v7       #dofind:Lgnu/expr/Expression;
    .restart local v8       #fdecl:Lgnu/expr/Declaration;
    .restart local v12       #instanceField:Lgnu/bytecode/Field;
    .restart local v13       #isRunnable:Z
    .restart local v15       #language:Lgnu/expr/Language;
    .local p1, formsStart:I
    :cond_6
    invoke-virtual {v8}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgnu/mapping/Symbol;

    .line 296
    .local p0, aname:Lgnu/mapping/Symbol;
    if-eqz p2, :cond_9

    .line 301
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object p0

    .line 307
    .end local p0           #aname:Lgnu/mapping/Symbol;
    :goto_5
    if-nez p0, :cond_7

    move-object v9, v12

    .end local v12           #instanceField:Lgnu/bytecode/Field;
    .restart local v9       #instanceField:Lgnu/bytecode/Field;
    move-object/from16 p0, v5

    .end local v5           #decl:Lgnu/expr/Declaration;
    .local p0, decl:Lgnu/expr/Declaration;
    move/from16 v5, p1

    .line 308
    .end local p1           #formsStart:I
    .local v5, formsStart:I
    goto :goto_4

    .line 303
    .end local v9           #instanceField:Lgnu/bytecode/Field;
    .local v5, decl:Lgnu/expr/Declaration;
    .restart local v12       #instanceField:Lgnu/bytecode/Field;
    .local p0, aname:Lgnu/mapping/Symbol;
    .restart local p1       #formsStart:I
    :catch_3
    move-exception p0

    .line 305
    .local p0, ex:Ljava/lang/Throwable;
    move-object/from16 p0, p0

    .local p0, mapped:Ljava/lang/Throwable;
    goto :goto_5

    .line 309
    .end local p0           #mapped:Ljava/lang/Throwable;
    :cond_7
    move-object/from16 v0, p0

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move v9, v0

    if-nez v9, :cond_8

    .line 311
    const/16 v9, 0x65

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "internal error - import name mapper returned non-symbol: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p5

    move v1, v9

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    move-object v9, v12

    .end local v12           #instanceField:Lgnu/bytecode/Field;
    .restart local v9       #instanceField:Lgnu/bytecode/Field;
    move-object/from16 p0, v5

    .end local v5           #decl:Lgnu/expr/Declaration;
    .local p0, decl:Lgnu/expr/Declaration;
    move/from16 v5, p1

    .line 312
    .end local p1           #formsStart:I
    .local v5, formsStart:I
    goto :goto_4

    .line 314
    .end local v9           #instanceField:Lgnu/bytecode/Field;
    .end local p0           #decl:Lgnu/expr/Declaration;
    .local v5, decl:Lgnu/expr/Declaration;
    .restart local v12       #instanceField:Lgnu/bytecode/Field;
    .restart local p1       #formsStart:I
    :cond_8
    check-cast p0, Lgnu/mapping/Symbol;

    .line 316
    .local p0, aname:Lgnu/mapping/Symbol;
    :cond_9
    const/16 v9, 0x800

    invoke-virtual {v8, v9}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v14

    .line 317
    .local v14, isStatic:Z
    if-nez v14, :cond_1f

    if-nez v5, :cond_1f

    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #formsStart:I
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    const/16 v9, 0x24

    move-object/from16 v0, v16

    move v1, v5

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .end local v5           #decl:Lgnu/expr/Declaration;
    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, "$instance"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 320
    .local v5, iname:Ljava/lang/String;
    new-instance p1, Lgnu/expr/Declaration;

    invoke-static {v5}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v5

    .end local v5           #iname:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 321
    .local p1, decl:Lgnu/expr/Declaration;
    if-nez v11, :cond_a

    .line 322
    const/4 v5, 0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 323
    :cond_a
    const v5, 0x40004000

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 325
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 327
    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 328
    new-instance v5, Lgnu/expr/SetExp;

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 329
    .local v5, sexp:Lgnu/expr/SetExp;
    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lgnu/expr/SetExp;->setLine(Lgnu/expr/Compilation;)V

    .line 330
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 331
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 332
    invoke-virtual/range {p3 .. p3}, Ljava/util/Vector;->size()I

    move-result v5

    .line 333
    .local v5, formsStart:I
    const/high16 v9, 0x2000

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 336
    if-eqz v13, :cond_b

    .line 337
    const/4 v9, 0x0

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 339
    :cond_b
    const/16 v9, 0x2000

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setFlag(I)V

    move v9, v5

    .line 342
    .end local v5           #formsStart:I
    .local v9, formsStart:I
    :goto_6
    iget-object v5, v8, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v5, :cond_c

    .line 344
    iget-object v5, v8, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v5}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 345
    .local v5, fname:Ljava/lang/String;
    const-string v10, "$instance"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .end local v5           #fname:Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 347
    move-object v0, v8

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 p0, v0

    .end local v12           #instanceField:Lgnu/bytecode/Field;
    .local p0, instanceField:Lgnu/bytecode/Field;
    move v5, v9

    .end local v9           #formsStart:I
    .local v5, formsStart:I
    move-object/from16 v9, p0

    .end local p0           #instanceField:Lgnu/bytecode/Field;
    .local v9, instanceField:Lgnu/bytecode/Field;
    move-object/from16 p0, p1

    .line 348
    .end local p1           #decl:Lgnu/expr/Declaration;
    .local p0, decl:Lgnu/expr/Declaration;
    goto/16 :goto_4

    .line 359
    .end local v5           #formsStart:I
    .local v9, formsStart:I
    .restart local v12       #instanceField:Lgnu/bytecode/Field;
    .local p0, aname:Lgnu/mapping/Symbol;
    .restart local p1       #decl:Lgnu/expr/Declaration;
    :cond_c
    iget-object v5, v8, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v5, :cond_d

    iget-object v5, v8, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v5}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v10, "$instance"

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    .line 363
    .local v5, isImportedInstance:Z
    :goto_7
    invoke-virtual {v15, v8}, Lgnu/expr/Language;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v10

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move-object v2, v15

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;Lgnu/expr/Language;I)Lgnu/expr/Declaration;

    move-result-object v10

    .line 364
    .local v10, old:Lgnu/expr/Declaration;
    if-eqz v5, :cond_14

    .line 366
    if-eqz v10, :cond_e

    move v5, v9

    .end local v9           #formsStart:I
    .local v5, formsStart:I
    move-object/from16 p0, p1

    .end local p1           #decl:Lgnu/expr/Declaration;
    .local p0, decl:Lgnu/expr/Declaration;
    move-object v9, v12

    .line 367
    .end local v12           #instanceField:Lgnu/bytecode/Field;
    .local v9, instanceField:Lgnu/bytecode/Field;
    goto/16 :goto_4

    .line 359
    .end local v5           #formsStart:I
    .end local v10           #old:Lgnu/expr/Declaration;
    .local v9, formsStart:I
    .restart local v12       #instanceField:Lgnu/bytecode/Field;
    .local p0, aname:Lgnu/mapping/Symbol;
    .restart local p1       #decl:Lgnu/expr/Declaration;
    :cond_d
    const/4 v5, 0x0

    goto :goto_7

    .line 368
    .local v5, isImportedInstance:Z
    .restart local v10       #old:Lgnu/expr/Declaration;
    :cond_e
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object p0

    .line 369
    .local p0, adecl:Lgnu/expr/Declaration;
    const v10, 0x40004000

    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 371
    .end local v10           #old:Lgnu/expr/Declaration;
    invoke-virtual {v8}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v10

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 372
    const/16 v10, 0x2000

    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 396
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setLocation(Lgnu/text/SourceLocator;)V

    .line 397
    new-instance v10, Lgnu/expr/ReferenceExp;

    invoke-direct {v10, v8}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 398
    .local v10, fref:Lgnu/expr/ReferenceExp;
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ReferenceExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 399
    if-nez v5, :cond_f

    .line 401
    const/16 v18, 0x1

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 402
    const/16 v18, 0x8

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/expr/ReferenceExp;->setFlag(I)V

    .line 403
    if-nez v11, :cond_f

    .line 404
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 406
    :cond_f
    const/16 v18, 0x4000

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 407
    const/16 v18, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 408
    :cond_10
    const v18, 0x8000

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 409
    const v18, 0x8000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 410
    :cond_11
    invoke-virtual {v8}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 411
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 412
    :cond_12
    if-eqz v14, :cond_13

    .line 413
    const/16 v14, 0x800

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 415
    .end local v14           #isStatic:Z
    :cond_13
    new-instance v14, Lgnu/expr/SetExp;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 416
    .local v14, sexp:Lgnu/expr/SetExp;
    const/high16 v18, 0x2000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 417
    const/16 v18, 0x1

    move-object v0, v14

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 418
    if-eqz v5, :cond_18

    .line 424
    move-object/from16 v0, p3

    move-object v1, v14

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 425
    add-int/lit8 v5, v9, 0x1

    .line 430
    .end local v9           #formsStart:I
    .local v5, formsStart:I
    :goto_9
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-virtual {v6, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 433
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 434
    const/high16 v9, 0x2

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 435
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->push(Lgnu/expr/Declaration;)V

    move-object v9, v12

    .end local v12           #instanceField:Lgnu/bytecode/Field;
    .local v9, instanceField:Lgnu/bytecode/Field;
    move-object/from16 p0, p1

    .end local p1           #decl:Lgnu/expr/Declaration;
    .local p0, decl:Lgnu/expr/Declaration;
    goto/16 :goto_4

    .line 374
    .local v5, isImportedInstance:Z
    .local v9, formsStart:I
    .local v10, old:Lgnu/expr/Declaration;
    .restart local v12       #instanceField:Lgnu/bytecode/Field;
    .local v14, isStatic:Z
    .local p0, aname:Lgnu/mapping/Symbol;
    .restart local p1       #decl:Lgnu/expr/Declaration;
    :cond_14
    if-eqz v10, :cond_15

    const/16 v18, 0x200

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v18

    if-nez v18, :cond_15

    invoke-static {v10}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v18

    invoke-static {v8}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_15

    move v5, v9

    .end local v9           #formsStart:I
    .local v5, formsStart:I
    move-object/from16 p0, p1

    .end local p1           #decl:Lgnu/expr/Declaration;
    .local p0, decl:Lgnu/expr/Declaration;
    move-object v9, v12

    .line 378
    .end local v12           #instanceField:Lgnu/bytecode/Field;
    .local v9, instanceField:Lgnu/bytecode/Field;
    goto/16 :goto_4

    .line 381
    .local v5, isImportedInstance:Z
    .local v9, formsStart:I
    .restart local v12       #instanceField:Lgnu/bytecode/Field;
    .local p0, aname:Lgnu/mapping/Symbol;
    .restart local p1       #decl:Lgnu/expr/Declaration;
    :cond_15
    if-eqz v10, :cond_17

    const v18, 0x10200

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 384
    const/16 p0, 0x0

    const v18, 0x10200

    move-object v0, v10

    move/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(ZI)V

    .line 385
    .end local p0           #aname:Lgnu/mapping/Symbol;
    move-object/from16 p0, v10

    .line 393
    .local p0, adecl:Lgnu/expr/Declaration;
    :cond_16
    :goto_a
    const/4 v10, 0x1

    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 394
    .end local v10           #old:Lgnu/expr/Declaration;
    const/4 v10, 0x1

    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    goto/16 :goto_8

    .line 389
    .restart local v10       #old:Lgnu/expr/Declaration;
    .local p0, aname:Lgnu/mapping/Symbol;
    :cond_17
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object p0

    .line 390
    .local p0, adecl:Lgnu/expr/Declaration;
    if-eqz v10, :cond_16

    .line 391
    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lgnu/expr/ScopeExp;->duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    goto :goto_a

    .line 428
    .local v10, fref:Lgnu/expr/ReferenceExp;
    .local v14, sexp:Lgnu/expr/SetExp;
    :cond_18
    move-object/from16 v0, p3

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v5, v9

    .end local v9           #formsStart:I
    .local v5, formsStart:I
    goto/16 :goto_9

    .line 440
    .end local v10           #fref:Lgnu/expr/ReferenceExp;
    .end local v14           #sexp:Lgnu/expr/SetExp;
    .end local p0           #adecl:Lgnu/expr/Declaration;
    .local v5, decl:Lgnu/expr/Declaration;
    .local p1, formsStart:I
    :cond_19
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v9

    .line 441
    .local v9, ndecls:I
    const/16 p0, 0x0

    .local p0, i:I
    move/from16 v8, p0

    .end local v11           #immediate:Z
    .end local p0           #i:I
    .end local p1           #formsStart:I
    .end local p2
    .local v8, i:I
    :goto_b
    if-ge v8, v9, :cond_1b

    .line 443
    invoke-virtual {v6, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgnu/expr/Declaration;

    .line 444
    .local p0, adecl:Lgnu/expr/Declaration;
    add-int/lit8 p1, v8, 0x1

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/expr/Declaration;

    .line 445
    .local p1, fdecl:Lgnu/expr/Declaration;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object p2

    .line 446
    .local p2, fval:Lgnu/expr/Expression;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result p1

    .end local p1           #fdecl:Lgnu/expr/Declaration;
    if-eqz p1, :cond_1a

    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 p1, v0

    if-eqz p1, :cond_1a

    .line 448
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object p0

    .end local p0           #adecl:Lgnu/expr/Declaration;
    check-cast p0, Lgnu/expr/ReferenceExp;

    .line 449
    .local p0, aref:Lgnu/expr/ReferenceExp;
    check-cast p2, Lgnu/expr/ReferenceExp;

    .end local p2           #fval:Lgnu/expr/Expression;
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object p1

    .line 450
    .local p1, xdecl:Lgnu/expr/Declaration;
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ReferenceExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 451
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->needsContext()Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 453
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 p1, v0

    .end local p1           #xdecl:Lgnu/expr/Declaration;
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v10, 0x2e

    const/16 v11, 0x24

    move-object/from16 v0, p1

    move v1, v10

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "$instance"

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 456
    .local p1, iname:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object p1

    .end local p1           #iname:Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object p1

    .line 457
    .local p1, cdecl:Lgnu/expr/Declaration;
    const/16 p2, 0x400

    invoke-virtual/range {p1 .. p2}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 458
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ReferenceExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 441
    .end local p0           #aref:Lgnu/expr/ReferenceExp;
    .end local p1           #cdecl:Lgnu/expr/Declaration;
    :cond_1a
    add-int/lit8 p0, v8, 0x2

    .end local v8           #i:I
    .local p0, i:I
    move/from16 v8, p0

    .end local p0           #i:I
    .restart local v8       #i:I
    goto/16 :goto_b

    .line 463
    :cond_1b
    if-eqz v13, :cond_1e

    .line 465
    sget-object p0, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    const-string p1, "run"

    const/16 p2, 0x0

    invoke-virtual/range {p0 .. p2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p4

    .line 466
    .local p4, run:Lgnu/bytecode/Method;
    if-eqz v5, :cond_1c

    .line 467
    new-instance p0, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .end local v7           #dofind:Lgnu/expr/Expression;
    .local p0, dofind:Lgnu/expr/Expression;
    move-object/from16 p1, p0

    .end local p0           #dofind:Lgnu/expr/Expression;
    .local p1, dofind:Lgnu/expr/Expression;
    move-object/from16 p0, v4

    .line 477
    .end local v4           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    :goto_c
    new-instance p2, Lgnu/expr/ApplyExp;

    const/4 v4, 0x1

    new-array v4, v4, [Lgnu/expr/Expression;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .end local v5           #decl:Lgnu/expr/Declaration;
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 478
    .end local p1           #dofind:Lgnu/expr/Expression;
    .local p2, dofind:Lgnu/expr/Expression;
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 479
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 p1, p2

    .line 481
    .end local p2           #dofind:Lgnu/expr/Expression;
    .end local p4           #run:Lgnu/bytecode/Method;
    .restart local p1       #dofind:Lgnu/expr/Expression;
    :goto_d
    invoke-virtual/range {p5 .. p5}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 482
    const/16 p0, 0x1

    goto/16 :goto_0

    .line 470
    .end local p0           #args:[Lgnu/expr/Expression;
    .end local p1           #dofind:Lgnu/expr/Expression;
    .restart local v4       #args:[Lgnu/expr/Expression;
    .restart local v5       #decl:Lgnu/expr/Declaration;
    .restart local v7       #dofind:Lgnu/expr/Expression;
    .restart local p4       #run:Lgnu/bytecode/Method;
    :cond_1c
    if-eqz v12, :cond_1d

    .line 472
    const/16 p0, 0x2

    move/from16 v0, p0

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 p0, v0

    const/16 p1, 0x0

    new-instance p2, Lgnu/expr/QuoteExp;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object p2, p0, p1

    const/16 p1, 0x1

    new-instance p2, Lgnu/expr/QuoteExp;

    const-string v4, "$instance"

    .end local v4           #args:[Lgnu/expr/Expression;
    move-object/from16 v0, p2

    move-object v1, v4

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object p2, p0, p1

    .line 474
    .restart local p0       #args:[Lgnu/expr/Expression;
    new-instance p1, Lgnu/expr/ApplyExp;

    sget-object p2, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .end local v7           #dofind:Lgnu/expr/Expression;
    .restart local p1       #dofind:Lgnu/expr/Expression;
    goto :goto_c

    .end local p0           #args:[Lgnu/expr/Expression;
    .end local p1           #dofind:Lgnu/expr/Expression;
    .restart local v4       #args:[Lgnu/expr/Expression;
    .restart local v7       #dofind:Lgnu/expr/Expression;
    :cond_1d
    move-object/from16 p1, v7

    .end local v7           #dofind:Lgnu/expr/Expression;
    .restart local p1       #dofind:Lgnu/expr/Expression;
    move-object/from16 p0, v4

    .end local v4           #args:[Lgnu/expr/Expression;
    .restart local p0       #args:[Lgnu/expr/Expression;
    goto :goto_c

    .end local p0           #args:[Lgnu/expr/Expression;
    .end local p1           #dofind:Lgnu/expr/Expression;
    .restart local v4       #args:[Lgnu/expr/Expression;
    .restart local v7       #dofind:Lgnu/expr/Expression;
    .local p4, defs:Lgnu/expr/ScopeExp;
    :cond_1e
    move-object/from16 p1, v7

    .end local v7           #dofind:Lgnu/expr/Expression;
    .restart local p1       #dofind:Lgnu/expr/Expression;
    move-object/from16 p0, v4

    .end local v4           #args:[Lgnu/expr/Expression;
    .restart local p0       #args:[Lgnu/expr/Expression;
    goto :goto_d

    .end local v9           #ndecls:I
    .restart local v4       #args:[Lgnu/expr/Expression;
    .restart local v7       #dofind:Lgnu/expr/Expression;
    .local v8, fdecl:Lgnu/expr/Declaration;
    .restart local v11       #immediate:Z
    .local v14, isStatic:Z
    .local p0, aname:Lgnu/mapping/Symbol;
    .local p1, formsStart:I
    .local p2, renamer:Lgnu/mapping/Procedure;
    :cond_1f
    move/from16 v9, p1

    .end local p1           #formsStart:I
    .local v9, formsStart:I
    move-object/from16 p1, v5

    .end local v5           #decl:Lgnu/expr/Declaration;
    .local p1, decl:Lgnu/expr/Declaration;
    goto/16 :goto_6
.end method

.method public static lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;
    .locals 3
    .parameter "sourceName"
    .parameter "defs"

    .prologue
    .line 206
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v1

    .line 207
    .local v1, manager:Lgnu/expr/ModuleManager;
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, baseName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 209
    invoke-static {v0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    invoke-virtual {v2, p0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 210
    :cond_0
    invoke-virtual {v1, p0}, Lgnu/expr/ModuleManager;->findWithSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v2

    return-object v2
.end method

.method static map(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "featureName"
    .parameter "className"

    .prologue
    .line 63
    sget-object v0, Lkawa/standard/require;->featureMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public static mapFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "featureName"

    .prologue
    .line 100
    sget-object v0, Lkawa/standard/require;->featureMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 487
    const/4 v0, 0x0

    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 18
    .parameter "st"
    .parameter "forms"
    .parameter "defs"
    .parameter "tr"

    .prologue
    .line 112
    invoke-virtual/range {p4 .. p4}, Lkawa/lang/Translator;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 114
    const/4 v3, 0x2

    move-object/from16 v0, p4

    move v1, v3

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setState(I)V

    .line 115
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    iput-object v0, v1, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    .line 118
    const/4 v3, 0x1

    .line 201
    .end local p0
    :goto_0
    return v3

    .line 120
    .restart local p0
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/lists/Pair;

    .line 121
    .local v11, args:Lgnu/lists/Pair;
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    .line 122
    .local v13, name:Ljava/lang/Object;
    const/16 v16, 0x0

    .line 124
    .local v16, type:Lgnu/bytecode/Type;
    instance-of v3, v13, Lgnu/lists/Pair;

    if-eqz v3, :cond_5

    move-object v0, v13

    check-cast v0, Lgnu/lists/Pair;

    move-object v14, v0

    .local v14, p:Lgnu/lists/Pair;
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "quote"

    move-object/from16 v0, p4

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 127
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    .line 128
    instance-of v3, v13, Lgnu/lists/Pair;

    if-eqz v3, :cond_1

    move-object v0, v13

    check-cast v0, Lgnu/lists/Pair;

    move-object v14, v0

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v4, :cond_1

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/mapping/Symbol;

    if-nez v3, :cond_2

    .line 132
    :cond_1
    const/16 v3, 0x65

    const-string v4, "invalid quoted symbol for \'require\'"

    move-object/from16 v0, p4

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 133
    const/4 v3, 0x0

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkawa/standard/require;->mapFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 136
    .local v13, name:Ljava/lang/String;
    if-nez v13, :cond_3

    .line 138
    const/16 v3, 0x65

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown feature name \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' for \'require\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 139
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 141
    :cond_3
    check-cast v13, Ljava/lang/String;

    .end local v13           #name:Ljava/lang/String;
    invoke-static {v13}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v16

    .line 184
    .end local v14           #p:Lgnu/lists/Pair;
    .end local p0
    :cond_4
    move-object/from16 v0, v16

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move v3, v0

    if-nez v3, :cond_9

    .line 186
    const/16 v3, 0x65

    const-string v4, "invalid specifier for \'require\'"

    move-object/from16 v0, p4

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 187
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 143
    .local v13, name:Ljava/lang/Object;
    .restart local p0
    :cond_5
    instance-of v3, v13, Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    .line 150
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 151
    .local v15, sourceName:Ljava/lang/String;
    move-object v0, v15

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lkawa/standard/require;->lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;

    move-result-object v4

    .line 152
    .local v4, info:Lgnu/expr/ModuleInfo;
    if-nez v4, :cond_6

    .line 154
    const/16 v3, 0x65

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #info:Lgnu/expr/ModuleInfo;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "malformed URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 155
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 157
    .restart local v4       #info:Lgnu/expr/ModuleInfo;
    :cond_6
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-static/range {v3 .. v8}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    move-result v3

    goto/16 :goto_0

    .line 159
    .end local v4           #info:Lgnu/expr/ModuleInfo;
    .end local v15           #sourceName:Ljava/lang/String;
    :cond_7
    instance-of v3, v13, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_4

    move-object/from16 v0, p4

    move-object v1, v13

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 161
    invoke-virtual/range {p4 .. p4}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move-object v1, v13

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v16

    .line 162
    move-object/from16 v0, v16

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move v3, v0

    if-eqz v3, :cond_4

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-eqz v3, :cond_4

    .line 164
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/lists/Pair;

    invoke-virtual/range {p0 .. p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    .line 165
    instance-of v3, v13, Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    .line 172
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 173
    .restart local v15       #sourceName:Ljava/lang/String;
    move-object v0, v15

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lkawa/standard/require;->lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;

    move-result-object v4

    .line 174
    .restart local v4       #info:Lgnu/expr/ModuleInfo;
    if-nez v4, :cond_8

    .line 176
    const/16 v3, 0x65

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #info:Lgnu/expr/ModuleInfo;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "malformed URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 177
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 179
    .restart local v4       #info:Lgnu/expr/ModuleInfo;
    :cond_8
    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-static/range {v3 .. v8}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    move-result v3

    goto/16 :goto_0

    .line 192
    .end local v4           #info:Lgnu/expr/ModuleInfo;
    .end local v13           #name:Ljava/lang/Object;
    .end local v15           #sourceName:Ljava/lang/String;
    :cond_9
    :try_start_0
    move-object/from16 v0, v16

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lgnu/expr/ModuleInfo;->find(Lgnu/bytecode/ClassType;)Lgnu/expr/ModuleInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 199
    .local v6, minfo:Lgnu/expr/ModuleInfo;
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-static/range {v5 .. v10}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    .line 201
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 194
    .end local v6           #minfo:Lgnu/expr/ModuleInfo;
    :catch_0
    move-exception v3

    move-object v12, v3

    .line 196
    .local v12, ex:Ljava/lang/Exception;
    const/16 v3, 0x65

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 197
    const/4 v3, 0x0

    goto/16 :goto_0
.end method
