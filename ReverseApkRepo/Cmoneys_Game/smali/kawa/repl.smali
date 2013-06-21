.class public Lkawa/repl;
.super Lgnu/mapping/Procedure0or1;
.source "repl.java"


# static fields
.field public static commandLineArgArray:[Ljava/lang/String;

.field public static commandLineArguments:Lgnu/lists/FVector;

.field public static compilationTopname:Ljava/lang/String;

.field private static exitCounter:I

.field public static homeDirectory:Ljava/lang/String;

.field public static noConsole:Z

.field static previousLanguage:Lgnu/expr/Language;

.field static propertyFields:[[Ljava/lang/String;

.field static shutdownRegistered:Z


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "gnu.text.PrettyWriter"

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    .line 221
    sget-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    invoke-virtual {v0}, Lgnu/text/WriterManager;->registerShutdownHook()Z

    move-result v0

    sput-boolean v0, Lkawa/repl;->shutdownRegistered:Z

    .line 848
    const/16 v0, 0xa

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "out:doctype-system"

    aput-object v2, v1, v4

    const-string v2, "gnu.xml.XMLPrinter"

    aput-object v2, v1, v5

    const-string v2, "doctypeSystem"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "out:doctype-public"

    aput-object v2, v1, v4

    const-string v2, "gnu.xml.XMLPrinter"

    aput-object v2, v1, v5

    const-string v2, "doctypePublic"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "out:base"

    aput-object v2, v1, v4

    const-string v2, "gnu.kawa.functions.DisplayFormat"

    aput-object v2, v1, v5

    const-string v2, "outBase"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "out:radix"

    aput-object v2, v1, v4

    const-string v2, "gnu.kawa.functions.DisplayFormat"

    aput-object v2, v1, v5

    const-string v2, "outRadix"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "out:line-length"

    aput-object v3, v2, v4

    const-string v3, "gnu.text.PrettyWriter"

    aput-object v8, v2, v5

    const-string v3, "lineLengthLoc"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "out:right-margin"

    aput-object v3, v2, v4

    const-string v3, "gnu.text.PrettyWriter"

    aput-object v8, v2, v5

    const-string v3, "lineLengthLoc"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "out:miser-width"

    aput-object v3, v2, v4

    const-string v3, "gnu.text.PrettyWriter"

    aput-object v8, v2, v5

    const-string v3, "miserWidthLoc"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "out:xml-indent"

    aput-object v3, v2, v4

    const-string v3, "gnu.xml.XMLPrinter"

    aput-object v3, v2, v5

    const-string v3, "indentLoc"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "display:toolkit"

    aput-object v3, v2, v4

    const-string v3, "gnu.kawa.models.Display"

    aput-object v3, v2, v5

    const-string v3, "myDisplay"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Lkawa/repl;->propertyFields:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 22
    invoke-direct {p0}, Lgnu/mapping/Procedure0or1;-><init>()V

    .line 23
    iput-object p1, p0, Lkawa/repl;->language:Lgnu/expr/Language;

    .line 24
    return-void
.end method

.method static bad_option(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 40
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kawa: bad option \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lkawa/repl;->printOptions(Ljava/io/PrintStream;)V

    .line 42
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 43
    return-void
.end method

.method static checkInitFile()V
    .locals 6

    .prologue
    .line 154
    sget-object v4, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 157
    .local v1, initFile:Ljava/io/File;
    const-string v4, "user.home"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    .line 159
    sget-object v4, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 161
    new-instance v3, Lgnu/lists/FString;

    sget-object v4, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    invoke-direct {v3, v4}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    .line 162
    .local v3, scmHomeDirectory:Lgnu/lists/FString;
    const-string v4, "file.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, file_separator:Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ".kawarc.scm"

    move-object v2, v4

    .line 166
    .local v2, kawarc_name:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    .end local v1           #initFile:Ljava/io/File;
    sget-object v4, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v0           #file_separator:Ljava/lang/String;
    .end local v2           #kawarc_name:Ljava/lang/String;
    .end local v3           #scmHomeDirectory:Lgnu/lists/FString;
    .restart local v1       #initFile:Ljava/io/File;
    :goto_1
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    const-string v5, "home-directory"

    invoke-virtual {v4, v5, v3}, Lgnu/mapping/Environment;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lkawa/Shell;->runFile(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 173
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 175
    .end local v1           #initFile:Ljava/io/File;
    :cond_0
    return-void

    .line 163
    .restart local v0       #file_separator:Ljava/lang/String;
    .restart local v1       #initFile:Ljava/io/File;
    .restart local v3       #scmHomeDirectory:Lgnu/lists/FString;
    :cond_1
    const-string v4, "kawarc.scm"

    move-object v2, v4

    goto :goto_0

    .line 169
    .end local v0           #file_separator:Ljava/lang/String;
    .end local v3           #scmHomeDirectory:Lgnu/lists/FString;
    :cond_2
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .local v3, scmHomeDirectory:Ljava/lang/Boolean;
    goto :goto_1
.end method

.method public static compileFiles([Ljava/lang/String;II)V
    .locals 12
    .parameter "args"
    .parameter "iArg"
    .parameter "maxArg"

    .prologue
    .line 739
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v8

    .line 740
    .local v8, manager:Lgnu/expr/ModuleManager;
    sub-int v1, p2, p1

    new-array v4, v1, [Lgnu/expr/Compilation;

    .line 741
    .local v4, comps:[Lgnu/expr/Compilation;
    sub-int v1, p2, p1

    new-array v7, v1, [Lgnu/expr/ModuleInfo;

    .line 742
    .local v7, infos:[Lgnu/expr/ModuleInfo;
    new-instance v9, Lgnu/text/SourceMessages;

    invoke-direct {v9}, Lgnu/text/SourceMessages;-><init>()V

    .line 743
    .local v9, messages:Lgnu/text/SourceMessages;
    move v1, p1

    .local v1, i:I
    move v6, v1

    .end local v1           #i:I
    .local v6, i:I
    :goto_0
    if-ge v6, p2, :cond_3

    .line 745
    aget-object v1, p0, v6

    .line 746
    .local v1, arg:Ljava/lang/String;
    invoke-static {v1}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 747
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v5

    .line 748
    .local v5, language:Lgnu/expr/Language;
    const/4 v2, 0x0

    .line 754
    .local v2, comp:Lgnu/expr/Compilation;
    :try_start_0
    invoke-static {v1}, Lgnu/mapping/InPort;->openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 763
    .local v3, fstream:Lgnu/mapping/InPort;
    const/4 v10, 0x4

    :try_start_1
    invoke-virtual {v5, v3, v9, v10}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 766
    .end local v2           #comp:Lgnu/expr/Compilation;
    .local v3, comp:Lgnu/expr/Compilation;
    :try_start_2
    sget-object v2, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 768
    sget-object v2, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    invoke-static {v2}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 770
    .local v2, cname:Ljava/lang/String;
    new-instance v5, Lgnu/bytecode/ClassType;

    .end local v5           #language:Lgnu/expr/Language;
    invoke-direct {v5, v2}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 771
    .local v5, ctype:Lgnu/bytecode/ClassType;
    invoke-virtual {v3}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v2

    .line 772
    .local v2, mexp:Lgnu/expr/ModuleExp;
    invoke-virtual {v2, v5}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 773
    sget-object v10, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 774
    iput-object v5, v3, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 777
    .end local v2           #mexp:Lgnu/expr/ModuleExp;
    .end local v5           #ctype:Lgnu/bytecode/ClassType;
    :cond_0
    sub-int v2, v6, p1

    invoke-virtual {v8, v3}, Lgnu/expr/ModuleManager;->find(Lgnu/expr/Compilation;)Lgnu/expr/ModuleInfo;

    move-result-object v5

    aput-object v5, v7, v2

    .line 778
    sub-int v2, v6, p1

    aput-object v3, v4, v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .line 787
    .end local v3           #comp:Lgnu/expr/Compilation;
    .local v2, comp:Lgnu/expr/Compilation;
    :cond_1
    :goto_1
    invoke-virtual {v9}, Lgnu/text/SourceMessages;->seenErrorsOrWarnings()Z

    move-result v2

    .end local v2           #comp:Lgnu/expr/Compilation;
    if-eqz v2, :cond_2

    .line 789
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(compiling "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #arg:Ljava/lang/String;
    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 790
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v2, 0x14

    invoke-virtual {v9, v1, v2}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintStream;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 791
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 743
    :cond_2
    add-int/lit8 v1, v6, 0x1

    .end local v6           #i:I
    .local v1, i:I
    move v6, v1

    .end local v1           #i:I
    .restart local v6       #i:I
    goto :goto_0

    .line 756
    .local v1, arg:Ljava/lang/String;
    .restart local v2       #comp:Lgnu/expr/Compilation;
    .local v5, language:Lgnu/expr/Language;
    :catch_0
    move-exception v3

    .line 758
    .local v3, ex:Ljava/io/FileNotFoundException;
    :try_start_3
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .end local v5           #language:Lgnu/expr/Language;
    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 759
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 795
    .end local v1           #arg:Ljava/lang/String;
    .end local v2           #comp:Lgnu/expr/Compilation;
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :cond_3
    move v1, p1

    .end local v6           #i:I
    .local v1, i:I
    move v5, v1

    .end local v1           #i:I
    .end local v8           #manager:Lgnu/expr/ModuleManager;
    .local v5, i:I
    :goto_2
    if-ge v5, p2, :cond_7

    .line 797
    aget-object v1, p0, v5

    .line 798
    .local v1, arg:Ljava/lang/String;
    sub-int v2, v5, p1

    aget-object v2, v4, v2

    .line 801
    .restart local v2       #comp:Lgnu/expr/Compilation;
    :try_start_4
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(compiling "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v2, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v8, 0x29

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 803
    sub-int v3, v5, p1

    aget-object v3, v7, v3

    const/16 v6, 0xe

    invoke-virtual {v3, v6}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 804
    invoke-virtual {v9}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v3

    .line 805
    .local v3, sawErrors:Z
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v8, 0x32

    invoke-virtual {v9, v6, v8}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintStream;I)Z

    .line 806
    if-eqz v3, :cond_4

    .line 807
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 808
    .end local v3           #sawErrors:Z
    :cond_4
    sub-int v3, v5, p1

    aput-object v2, v4, v3

    .line 809
    invoke-virtual {v9}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v3

    .line 810
    .restart local v3       #sawErrors:Z
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v8, 0x32

    invoke-virtual {v9, v6, v8}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintStream;I)Z

    .line 811
    if-eqz v3, :cond_5

    .line 812
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 795
    .end local v3           #sawErrors:Z
    :cond_5
    :goto_3
    add-int/lit8 v1, v5, 0x1

    .end local v5           #i:I
    .local v1, i:I
    move v5, v1

    .end local v1           #i:I
    .restart local v5       #i:I
    goto :goto_2

    .line 781
    .end local v5           #i:I
    .local v1, arg:Ljava/lang/String;
    .restart local v6       #i:I
    .restart local v8       #manager:Lgnu/expr/ModuleManager;
    :catch_1
    move-exception v3

    .line 783
    .local v3, ex:Ljava/lang/Throwable;
    :goto_4
    instance-of v5, v3, Lgnu/text/SyntaxException;

    if-eqz v5, :cond_6

    move-object v0, v3

    check-cast v0, Lgnu/text/SyntaxException;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v5

    if-eq v5, v9, :cond_1

    .line 785
    :cond_6
    invoke-static {v3, v2, v1}, Lkawa/repl;->internalError(Ljava/lang/Throwable;Lgnu/expr/Compilation;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 814
    .end local v3           #ex:Ljava/lang/Throwable;
    .end local v6           #i:I
    .end local v8           #manager:Lgnu/expr/ModuleManager;
    .restart local v5       #i:I
    :catch_2
    move-exception v3

    .line 816
    .restart local v3       #ex:Ljava/lang/Throwable;
    invoke-static {v3, v2, v1}, Lkawa/repl;->internalError(Ljava/lang/Throwable;Lgnu/expr/Compilation;Ljava/lang/Object;)V

    goto :goto_3

    .line 819
    .end local v1           #arg:Ljava/lang/String;
    .end local v2           #comp:Lgnu/expr/Compilation;
    .end local v3           #ex:Ljava/lang/Throwable;
    :cond_7
    return-void

    .line 781
    .end local v5           #i:I
    .restart local v1       #arg:Ljava/lang/String;
    .local v3, comp:Lgnu/expr/Compilation;
    .restart local v6       #i:I
    .restart local v8       #manager:Lgnu/expr/ModuleManager;
    :catch_3
    move-exception v2

    move-object v11, v2

    move-object v2, v3

    .end local v3           #comp:Lgnu/expr/Compilation;
    .restart local v2       #comp:Lgnu/expr/Compilation;
    move-object v3, v11

    goto :goto_4
.end method

.method public static declared-synchronized exitDecrement()V
    .locals 3

    .prologue
    .line 133
    const-class v1, Lkawa/repl;

    monitor-enter v1

    :try_start_0
    sget v0, Lkawa/repl;->exitCounter:I

    .line 134
    .local v0, counter:I
    if-lez v0, :cond_0

    .line 136
    add-int/lit8 v0, v0, -0x1

    .line 137
    if-nez v0, :cond_1

    .line 139
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 142
    :cond_1
    :try_start_1
    sput v0, Lkawa/repl;->exitCounter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    .end local v0           #counter:I
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static declared-synchronized exitIncrement()V
    .locals 2

    .prologue
    .line 121
    const-class v0, Lkawa/repl;

    monitor-enter v0

    :try_start_0
    sget v1, Lkawa/repl;->exitCounter:I

    if-nez v1, :cond_0

    .line 122
    sget v1, Lkawa/repl;->exitCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lkawa/repl;->exitCounter:I

    .line 123
    :cond_0
    sget v1, Lkawa/repl;->exitCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lkawa/repl;->exitCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit v0

    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getLanguage()V
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x0

    invoke-static {v0}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v0

    sput-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    .line 217
    sget-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 219
    :cond_0
    return-void
.end method

.method public static getLanguageFromFilenameExtension(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 200
    sget-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    if-nez v0, :cond_0

    .line 202
    invoke-static {p0}, Lgnu/expr/Language;->getInstanceFromFilenameExtension(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v0

    sput-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    .line 203
    sget-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-static {}, Lkawa/repl;->getLanguage()V

    goto :goto_0
.end method

.method static internalError(Ljava/lang/Throwable;Lgnu/expr/Compilation;Ljava/lang/Object;)V
    .locals 5
    .parameter "ex"
    .parameter "comp"
    .parameter "arg"

    .prologue
    .line 823
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 824
    .local v2, sbuf:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 826
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, file:Ljava/lang/String;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v1

    .line 828
    .local v1, line:I
    if-eqz v0, :cond_0

    if-lez v1, :cond_0

    .line 830
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 831
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 832
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 833
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 836
    .end local v0           #file:Ljava/lang/String;
    .end local v1           #line:I
    :cond_0
    const-string v3, "internal error while compiling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 837
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 838
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 839
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 840
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 841
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .parameter "args"

    .prologue
    .line 866
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p0

    invoke-static {p0, v3, v4}, Lkawa/repl;->processArgs([Ljava/lang/String;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 867
    .local v1, iArg:I
    if-gez v1, :cond_1

    .line 896
    sget-boolean v3, Lkawa/repl;->shutdownRegistered:Z

    if-nez v3, :cond_0

    .line 899
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 901
    :cond_0
    invoke-static {}, Lkawa/repl;->exitDecrement()V

    .line 903
    :goto_0
    return-void

    .line 870
    :cond_1
    :try_start_1
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 872
    aget-object v0, p0, v1

    .line 873
    .local v0, filename:Ljava/lang/String;
    invoke-static {v0}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 874
    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, v3}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 875
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 876
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lkawa/Shell;->runFile(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 896
    .end local v0           #filename:Ljava/lang/String;
    :cond_2
    :goto_1
    sget-boolean v3, Lkawa/repl;->shutdownRegistered:Z

    if-nez v3, :cond_3

    .line 899
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 901
    :cond_3
    invoke-static {}, Lkawa/repl;->exitDecrement()V

    goto :goto_0

    .line 880
    :cond_4
    :try_start_2
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 881
    invoke-static {p0, v1}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 882
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 883
    invoke-static {}, Lkawa/repl;->shouldUseGuiConsole()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 884
    invoke-static {}, Lkawa/repl;->startGuiConsole()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 896
    .end local v1           #iArg:I
    :catchall_0
    move-exception v3

    sget-boolean v4, Lkawa/repl;->shutdownRegistered:Z

    if-nez v4, :cond_5

    .line 899
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 901
    :cond_5
    invoke-static {}, Lkawa/repl;->exitDecrement()V

    throw v3

    .line 887
    .restart local v1       #iArg:I
    :cond_6
    :try_start_3
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v3

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    invoke-static {v3, v4}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    move-result v2

    .line 889
    .local v2, ok:Z
    if-nez v2, :cond_2

    .line 890
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "out"
    .parameter "option"
    .parameter "doc"

    .prologue
    const-string v3, " "

    .line 47
    const-string v2, " "

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 51
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x1e

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    .line 52
    const-string v2, " "

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    const-string v2, " "

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static printOptions(Ljava/io/PrintStream;)V
    .locals 9
    .parameter "out"

    .prologue
    .line 59
    const-string v7, "Usage: [java kawa.repl | kawa] [options ...]"

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 61
    const-string v7, " Generic options:"

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    const-string v7, "--help"

    const-string v8, "Show help about options"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v7, "--author"

    const-string v8, "Show author information"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v7, "--version"

    const-string v8, "Show version information"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 66
    const-string v7, " Options"

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    const-string v7, "-e <expr>"

    const-string v8, "Evaluate expression <expr>"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v7, "-c <expr>"

    const-string v8, "Same as -e, but make sure ~/.kawarc.scm is run first"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v7, "-f <filename>"

    const-string v8, "File to interpret"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v7, "-s| --"

    const-string v8, "Start reading commands interactively from console"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v7, "-w"

    const-string v8, "Launch the interpreter in a GUI window"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v7, "--server <port>"

    const-string v8, "Start a server accepting telnet connections on <port>"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v7, "--debug-dump-zip"

    const-string v8, "Compiled interactive expressions to a zip archive"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v7, "--debug-print-expr"

    const-string v8, "Print generated internal expressions"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v7, "--debug-print-final-expr"

    const-string v8, "Print expression after any optimizations"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v7, "--debug-error-prints-stack-trace"

    const-string v8, "Print stack trace with errors"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v7, "--debug-warning-prints-stack-trace"

    const-string v8, "Print stack trace with warnings"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v7, "--[no-]full-tailcalls"

    const-string v8, "(Don\'t) use full tail-calls"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v7, "-C <filename> ..."

    const-string v8, "Compile named files to Java class files"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v7, "--output-format <format>"

    const-string v8, "Use <format> when printing top-level output"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v7, "--<language>"

    const-string v8, "Select source language, one of:"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lgnu/expr/Language;->getLanguages()[[Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, languages:[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v7, v4

    if-ge v0, v7, :cond_2

    .line 85
    const-string v7, "   "

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 86
    aget-object v3, v4, v0

    .line 88
    .local v3, lang:[Ljava/lang/String;
    array-length v7, v3

    const/4 v8, 0x1

    sub-int v6, v7, v8

    .line 89
    .local v6, nwords:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v6, :cond_0

    .line 90
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v3, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    :cond_0
    if-nez v0, :cond_1

    .line 92
    const-string v7, "[default]"

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 93
    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v1           #j:I
    .end local v3           #lang:[Ljava/lang/String;
    .end local v6           #nwords:I
    :cond_2
    const-string v7, " Compilation options, must be specified before -C"

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    const-string v7, "-d <dirname>"

    const-string v8, "Directory to place .class files in"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v7, "-P <prefix>"

    const-string v8, "Prefix to prepand to class names"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v7, "-T <topname>"

    const-string v8, "name to give to top-level class"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v7, "--main"

    const-string v8, "Generate an application, with a main method"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v7, "--applet"

    const-string v8, "Generate an applet"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v7, "--servlet"

    const-string v8, "Generate a servlet"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v7, "--module-static"

    const-string v8, "Top-leval definitions are by default static"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v7, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    invoke-virtual {v7}, Lgnu/text/Options;->keys()Ljava/util/Vector;

    move-result-object v2

    .line 106
    .local v2, keys:Ljava/util/Vector;
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 108
    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 109
    .local v5, name:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    invoke-virtual {v8, v5}, Lgnu/text/Options;->getDoc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 112
    .end local v5           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 113
    const-string v7, "For more information go to:  http://www.gnu.org/software/kawa/"

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static processArgs([Ljava/lang/String;II)I
    .locals 16
    .parameter "args"
    .parameter "iArg"
    .parameter "maxArg"

    .prologue
    .line 226
    const/4 v3, 0x0

    .local v3, something_done:Z
    move v8, v3

    .line 227
    .end local v3           #something_done:Z
    .local v8, something_done:Z
    :goto_0
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_5a

    .line 229
    aget-object v9, p0, p1

    .line 230
    .local v9, arg:Ljava/lang/String;
    const-string v3, "-c"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "-e"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 232
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 233
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 234
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 235
    :cond_1
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 236
    add-int/lit8 v3, p1, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-static {v0, v1}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 237
    const-string v3, "-c"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 239
    :cond_2
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v3

    .line 240
    .local v3, language:Lgnu/expr/Language;
    new-instance v8, Lgnu/text/SourceMessages;

    .end local v8           #something_done:Z
    invoke-direct {v8}, Lgnu/text/SourceMessages;-><init>()V

    .line 241
    .local v8, messages:Lgnu/text/SourceMessages;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    new-instance v5, Lgnu/mapping/CharArrayInPort;

    aget-object v6, p0, p1

    invoke-direct {v5, v6}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v3

    .line 245
    .local v3, ex:Ljava/lang/Throwable;
    if-eqz v3, :cond_3

    .line 247
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v4

    invoke-static {v3, v8, v4}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    .line 248
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 250
    .end local v3           #ex:Ljava/lang/Throwable;
    :cond_3
    const/4 v3, 0x1

    .local v3, something_done:Z
    move v4, v3

    .end local v3           #something_done:Z
    .local v4, something_done:Z
    move-object v3, v9

    .line 227
    .end local v8           #messages:Lgnu/text/SourceMessages;
    .end local v9           #arg:Ljava/lang/String;
    .local v3, arg:Ljava/lang/String;
    :goto_1
    add-int/lit8 p1, p1, 0x1

    move v8, v4

    .end local v4           #something_done:Z
    .local v8, something_done:Z
    goto :goto_0

    .line 252
    .end local v3           #arg:Ljava/lang/String;
    .restart local v9       #arg:Ljava/lang/String;
    :cond_4
    const-string v3, "-f"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 254
    add-int/lit8 p1, p1, 0x1

    .line 255
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_5

    .line 256
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 257
    :cond_5
    aget-object v3, p0, p1

    .line 258
    .local v3, filename:Ljava/lang/String;
    invoke-static {v3}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 259
    add-int/lit8 v4, p1, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-static {v0, v1}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 260
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 261
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lkawa/Shell;->runFile(Ljava/lang/String;I)Z

    move-result v3

    .end local v3           #filename:Ljava/lang/String;
    if-nez v3, :cond_6

    .line 262
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 263
    :cond_6
    const/4 v3, 0x1

    .end local v8           #something_done:Z
    .local v3, something_done:Z
    move v4, v3

    .end local v3           #something_done:Z
    .restart local v4       #something_done:Z
    move-object v3, v9

    .line 264
    .end local v9           #arg:Ljava/lang/String;
    .local v3, arg:Ljava/lang/String;
    goto :goto_1

    .line 265
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_7
    const-string v3, "--script"

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 267
    const/16 v3, 0x8

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, count:Ljava/lang/String;
    add-int/lit8 p1, p1, 0x1

    .line 269
    const/4 v4, 0x0

    .line 270
    .local v4, skipLines:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_61

    .line 274
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 281
    .end local v4           #skipLines:I
    .local v3, skipLines:I
    :goto_2
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_8

    .line 282
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 283
    :cond_8
    aget-object p2, p0, p1

    .line 284
    .local p2, filename:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 285
    add-int/lit8 v4, p1, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-static {v0, v1}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 286
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 287
    move-object/from16 v0, p2

    move v1, v3

    invoke-static {v0, v1}, Lkawa/Shell;->runFile(Ljava/lang/String;I)Z

    move-result p0

    .end local p0
    if-nez p0, :cond_9

    .line 288
    const/16 p0, -0x1

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->exit(I)V

    .line 289
    :cond_9
    const/16 p0, -0x1

    .line 734
    .end local v3           #skipLines:I
    .end local v8           #something_done:Z
    .end local v9           #arg:Ljava/lang/String;
    .end local p2           #filename:Ljava/lang/String;
    :goto_3
    return p0

    .line 276
    .local v3, count:Ljava/lang/String;
    .restart local v4       #skipLines:I
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    .restart local p0
    .local p2, maxArg:I
    :catch_0
    move-exception p1

    .line 278
    .local p1, ex:Ljava/lang/Throwable;
    move/from16 p1, p2

    .local p1, iArg:I
    move v3, v4

    .end local v4           #skipLines:I
    .local v3, skipLines:I
    goto :goto_2

    .line 291
    .end local v3           #skipLines:I
    :cond_a
    const-string v3, "\\"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 294
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    .line 295
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 296
    :cond_b
    aget-object v3, p0, p1

    .line 298
    .local v3, filename:Ljava/lang/String;
    new-instance v8, Lgnu/text/SourceMessages;

    .end local v8           #something_done:Z
    invoke-direct {v8}, Lgnu/text/SourceMessages;-><init>()V

    .line 301
    .local v8, messages:Lgnu/text/SourceMessages;
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance p2, Ljava/io/FileInputStream;

    .end local p2           #maxArg:I
    move-object/from16 v0, p2

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 302
    .local v4, fstream:Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result p2

    .line 303
    .local p2, ch:I
    const/16 v5, 0x23

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_12

    .line 305
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 306
    .local v5, sbuf:Ljava/lang/StringBuffer;
    new-instance v7, Ljava/util/Vector;

    const/16 v6, 0xa

    invoke-direct {v7, v6}, Ljava/util/Vector;-><init>(I)V

    .line 307
    .local v7, xargs:Ljava/util/Vector;
    const/4 v6, 0x0

    .line 308
    .end local v9           #arg:Ljava/lang/String;
    .local v6, state:I
    :goto_4
    const/16 v9, 0xa

    move/from16 v0, p2

    move v1, v9

    if-eq v0, v1, :cond_c

    const/16 v9, 0xd

    move/from16 v0, p2

    move v1, v9

    if-eq v0, v1, :cond_c

    if-ltz p2, :cond_c

    .line 309
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result p2

    goto :goto_4

    .line 312
    :cond_c
    :goto_5
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result p2

    .line 313
    if-gez p2, :cond_d

    .line 315
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected end-of-file processing argument line for: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    .line 318
    :cond_d
    if-nez v6, :cond_17

    .line 320
    const/16 v9, 0x5c

    move/from16 v0, p2

    move v1, v9

    if-eq v0, v1, :cond_e

    const/16 v9, 0x27

    move/from16 v0, p2

    move v1, v9

    if-eq v0, v1, :cond_e

    const/16 v9, 0x22

    move/from16 v0, p2

    move v1, v9

    if-ne v0, v1, :cond_f

    .line 322
    :cond_e
    move/from16 v6, p2

    .line 323
    goto :goto_5

    .line 325
    :cond_f
    const/16 v9, 0xa

    move/from16 v0, p2

    move v1, v9

    if-eq v0, v1, :cond_10

    const/16 v9, 0xd

    move/from16 v0, p2

    move v1, v9

    if-ne v0, v1, :cond_15

    .line 346
    :cond_10
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .end local v6           #state:I
    if-lez v6, :cond_11

    .line 347
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5           #sbuf:Ljava/lang/StringBuffer;
    invoke-virtual {v7, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 348
    :cond_11
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v6

    .line 349
    .local v6, nxargs:I
    if-lez v6, :cond_12

    .line 351
    new-array v5, v6, [Ljava/lang/String;

    .line 352
    .local v5, sargs:[Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 353
    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Lkawa/repl;->processArgs([Ljava/lang/String;II)I

    .end local v7           #xargs:Ljava/util/Vector;
    move-result v5

    .line 354
    .local v5, ixarg:I
    if-ltz v5, :cond_12

    if-ge v5, v6, :cond_12

    .line 356
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-int v5, v6, v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v5           #ixarg:I
    move-result-object v5

    const-string v6, " unused meta args"

    .end local v6           #nxargs:I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    :cond_12
    invoke-static {v3}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 361
    invoke-static {v4, v3}, Lgnu/mapping/InPort;->openFile(Ljava/io/InputStream;Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v11

    .line 363
    .local v11, freader:Lgnu/mapping/InPort;
    add-int/lit8 p2, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 364
    .end local p2           #ch:I
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 365
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object p0

    .line 366
    .local p0, err:Lgnu/mapping/OutPort;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v9

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v10

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v12

    const/4 v13, 0x0

    move-object v14, v8

    invoke-static/range {v9 .. v14}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object p2

    .line 370
    .local p2, ex:Ljava/lang/Throwable;
    const/16 v3, 0x14

    move-object v0, v8

    move-object/from16 v1, p0

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 371
    .end local v3           #filename:Ljava/lang/String;
    if-eqz p2, :cond_14

    .line 373
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/text/SyntaxException;

    move/from16 p0, v0

    .end local p0           #err:Lgnu/mapping/OutPort;
    if-eqz p0, :cond_13

    .line 375
    move-object/from16 v0, p2

    check-cast v0, Lgnu/text/SyntaxException;

    move-object/from16 p0, v0

    .line 376
    .local p0, se:Lgnu/text/SyntaxException;
    invoke-virtual/range {p0 .. p0}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object p0

    .end local p0           #se:Lgnu/text/SyntaxException;
    move-object/from16 v0, p0

    move-object v1, v8

    if-ne v0, v1, :cond_13

    .line 377
    const/16 p0, 0x1

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->exit(I)V

    .line 379
    :cond_13
    throw p2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    .end local v4           #fstream:Ljava/io/InputStream;
    .end local v11           #freader:Lgnu/mapping/InPort;
    .end local p2           #ex:Ljava/lang/Throwable;
    :catch_1
    move-exception p0

    .line 384
    .local p0, ex:Ljava/lang/Throwable;
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object p2

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    .line 385
    const/16 p0, 0x1

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->exit(I)V

    .line 387
    .end local p0           #ex:Ljava/lang/Throwable;
    :cond_14
    const/16 p0, -0x1

    goto/16 :goto_3

    .line 327
    .restart local v3       #filename:Ljava/lang/String;
    .restart local v4       #fstream:Ljava/io/InputStream;
    .local v5, sbuf:Ljava/lang/StringBuffer;
    .local v6, state:I
    .restart local v7       #xargs:Ljava/util/Vector;
    .local p0, args:[Ljava/lang/String;
    .local p2, ch:I
    :cond_15
    const/16 v9, 0x20

    move/from16 v0, p2

    move v1, v9

    if-eq v0, v1, :cond_16

    const/16 v9, 0x9

    move/from16 v0, p2

    move v1, v9

    if-ne v0, v1, :cond_18

    .line 329
    :cond_16
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_c

    .line 331
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 332
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_5

    .line 337
    :cond_17
    const/16 v9, 0x5c

    if-ne v6, v9, :cond_19

    .line 338
    const/4 v6, 0x0

    .line 344
    :cond_18
    move/from16 v0, p2

    int-to-char v0, v0

    move v9, v0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    .line 339
    :cond_19
    move/from16 v0, p2

    move v1, v6

    if-ne v0, v1, :cond_18

    .line 341
    const/4 v6, 0x0

    .line 342
    goto/16 :goto_5

    .line 389
    .end local v3           #filename:Ljava/lang/String;
    .end local v4           #fstream:Ljava/io/InputStream;
    .end local v5           #sbuf:Ljava/lang/StringBuffer;
    .end local v6           #state:I
    .end local v7           #xargs:Ljava/util/Vector;
    .local v8, something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    .local p2, maxArg:I
    :cond_1a
    const-string v3, "-s"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "--"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 391
    :cond_1b
    add-int/lit8 p1, p1, 0x1

    .line 392
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 393
    invoke-static/range {p0 .. p1}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 394
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 395
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object p0

    .end local p0           #args:[Ljava/lang/String;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object p2

    .end local p2           #maxArg:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    .line 396
    const/16 p0, -0x1

    goto/16 :goto_3

    .line 398
    .restart local p0       #args:[Ljava/lang/String;
    .restart local p2       #maxArg:I
    :cond_1c
    const-string v3, "-w"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 400
    add-int/lit8 p1, p1, 0x1

    .line 401
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 402
    invoke-static/range {p0 .. p1}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 403
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 404
    invoke-static {}, Lkawa/repl;->startGuiConsole()V

    .line 405
    const/4 v3, 0x1

    .end local v8           #something_done:Z
    .local v3, something_done:Z
    move v4, v3

    .end local v3           #something_done:Z
    .local v4, something_done:Z
    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .local v3, arg:Ljava/lang/String;
    goto/16 :goto_1

    .line 407
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_1d
    const-string v3, "-d"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 409
    add-int/lit8 p1, p1, 0x1

    .line 410
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1e

    .line 411
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 412
    :cond_1e
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v3

    .line 413
    .local v3, manager:Lgnu/expr/ModuleManager;
    aget-object v4, p0, p1

    invoke-virtual {v3, v4}, Lgnu/expr/ModuleManager;->setCompilationDirectory(Ljava/lang/String;)V

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .local v3, arg:Ljava/lang/String;
    move v4, v8

    .line 414
    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 415
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_1f
    const-string v3, "--target"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "target"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 417
    :cond_20
    add-int/lit8 p1, p1, 0x1

    .line 418
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_21

    .line 419
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 420
    :cond_21
    aget-object v3, p0, p1

    .line 421
    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    const-string v4, "7"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 422
    const/high16 v4, 0x33

    sput v4, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    .line 423
    :cond_22
    const-string v4, "6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "1.6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 424
    :cond_23
    const/high16 v4, 0x32

    sput v4, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 425
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    :cond_24
    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const-string v4, "1.5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 426
    :cond_25
    const/high16 v4, 0x31

    sput v4, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 427
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    :cond_26
    const-string v4, "1.4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 428
    const/high16 v4, 0x30

    sput v4, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 429
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    :cond_27
    const-string v4, "1.3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 430
    const/high16 v4, 0x2f

    sput v4, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 431
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    :cond_28
    const-string v4, "1.2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 432
    const/high16 v4, 0x2e

    sput v4, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 433
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    :cond_29
    const-string v4, "1.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 434
    const v4, 0x2d0003

    sput v4, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 436
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    :cond_2a
    invoke-static {v3}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 438
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_2b
    const-string v3, "-P"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 440
    add-int/lit8 p1, p1, 0x1

    .line 441
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_2c

    .line 442
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 443
    :cond_2c
    aget-object v3, p0, p1

    sput-object v3, Lgnu/expr/Compilation;->classPrefixDefault:Ljava/lang/String;

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 445
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_2d
    const-string v3, "-T"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 447
    add-int/lit8 p1, p1, 0x1

    .line 448
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_2e

    .line 449
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 450
    :cond_2e
    aget-object v3, p0, p1

    sput-object v3, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 452
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_2f
    const-string v3, "-C"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 454
    add-int/lit8 p1, p1, 0x1

    .line 455
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_30

    .line 456
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 457
    :cond_30
    invoke-static/range {p0 .. p2}, Lkawa/repl;->compileFiles([Ljava/lang/String;II)V

    .line 458
    const/16 p0, -0x1

    goto/16 :goto_3

    .line 460
    :cond_31
    const-string v3, "--output-format"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    const-string v3, "--format"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 463
    :cond_32
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_33

    .line 464
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 465
    :cond_33
    aget-object v3, p0, p1

    invoke-static {v3}, Lkawa/Shell;->setDefaultFormat(Ljava/lang/String;)V

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 467
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_34
    const-string v3, "--connect"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 469
    add-int/lit8 p1, p1, 0x1

    .line 470
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_35

    .line 471
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 473
    :cond_35
    aget-object v3, p0, p1

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 474
    const/4 v3, 0x0

    .line 489
    .local v3, port:I
    :goto_6
    :try_start_3
    new-instance v4, Ljava/net/Socket;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 490
    .local v4, socket:Ljava/net/Socket;
    new-instance v3, Lkawa/Telnet;

    .end local v3           #port:I
    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkawa/Telnet;-><init>(Ljava/net/Socket;Z)V

    .line 491
    .local v3, conn:Lkawa/Telnet;
    invoke-virtual {v3}, Lkawa/Telnet;->getInputStream()Lkawa/TelnetInputStream;

    move-result-object v4

    .line 492
    .local v4, sin:Ljava/io/InputStream;
    invoke-virtual {v3}, Lkawa/Telnet;->getOutputStream()Lkawa/TelnetOutputStream;

    move-result-object v5

    .line 493
    .local v5, sout:Ljava/io/OutputStream;
    new-instance v3, Ljava/io/PrintStream;

    .end local v3           #conn:Lkawa/Telnet;
    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 494
    .local v3, pout:Ljava/io/PrintStream;
    invoke-static {v4}, Ljava/lang/System;->setIn(Ljava/io/InputStream;)V

    .line 495
    invoke-static {v3}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 496
    invoke-static {v3}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .local v3, arg:Ljava/lang/String;
    move v4, v8

    .line 503
    .end local v8           #something_done:Z
    .local v4, something_done:Z
    goto/16 :goto_1

    .line 479
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .end local v5           #sout:Ljava/io/OutputStream;
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_36
    :try_start_4
    aget-object v3, p0, p1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v3

    .local v3, port:I
    goto :goto_6

    .line 481
    .end local v3           #port:I
    :catch_2
    move-exception v3

    .line 483
    .local v3, ex:Ljava/lang/NumberFormatException;
    const-string v3, "--connect port#"

    .end local v3           #ex:Ljava/lang/NumberFormatException;
    invoke-static {v3}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 484
    const/4 v3, -0x1

    .local v3, port:I
    goto :goto_6

    .line 498
    .end local v3           #port:I
    :catch_3
    move-exception p0

    .line 500
    .local p0, ex:Ljava/io/IOException;
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .end local p1           #iArg:I
    invoke-virtual/range {p0 .. p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 501
    new-instance p1, Ljava/lang/Error;

    invoke-virtual/range {p0 .. p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #ex:Ljava/io/IOException;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 504
    .local p0, args:[Ljava/lang/String;
    .restart local p1       #iArg:I
    :cond_37
    const-string v3, "--server"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 506
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 507
    add-int/lit8 p1, p1, 0x1

    .line 508
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_38

    .line 509
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 511
    :cond_38
    aget-object p2, p0, p1

    .end local p2           #maxArg:I
    const-string v3, "-"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    .line 512
    const/16 p0, 0x0

    .line 527
    .local p0, port:I
    :goto_7
    :try_start_5
    new-instance p2, Ljava/net/ServerSocket;

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 529
    .local p2, ssocket:Ljava/net/ServerSocket;
    invoke-virtual/range {p2 .. p2}, Ljava/net/ServerSocket;->getLocalPort()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    move-result p1

    .line 530
    .end local p0           #port:I
    .local p1, port:I
    :try_start_6
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listening on port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 533
    :goto_8
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "waiting ... "

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintStream;->flush()V

    .line 534
    invoke-virtual/range {p2 .. p2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object p0

    .line 535
    .local p0, client:Ljava/net/Socket;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got connection from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " port:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/net/Socket;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 538
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lkawa/TelnetRepl;->serve(Lgnu/expr/Language;Ljava/net/Socket;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    .line 541
    .end local p0           #client:Ljava/net/Socket;
    :catch_4
    move-exception p0

    .line 543
    .end local p2           #ssocket:Ljava/net/ServerSocket;
    .local p0, ex:Ljava/io/IOException;
    :goto_9
    new-instance p1, Ljava/lang/Error;

    .end local p1           #port:I
    invoke-virtual/range {p0 .. p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #ex:Ljava/io/IOException;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 517
    .local p0, args:[Ljava/lang/String;
    .local p1, iArg:I
    :cond_39
    :try_start_7
    aget-object p0, p0, p1

    .end local p0           #args:[Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5

    move-result p0

    .local p0, port:I
    goto/16 :goto_7

    .line 519
    .end local p0           #port:I
    :catch_5
    move-exception p0

    .line 521
    .local p0, ex:Ljava/lang/NumberFormatException;
    const-string p0, "--server port#"

    .end local p0           #ex:Ljava/lang/NumberFormatException;
    invoke-static/range {p0 .. p0}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 522
    const/16 p0, -0x1

    .local p0, port:I
    goto/16 :goto_7

    .line 546
    .local p0, args:[Ljava/lang/String;
    .local p2, maxArg:I
    :cond_3a
    const-string v3, "--main"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 548
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/expr/Compilation;->generateMainDefault:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .local v3, arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 550
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_3b
    const-string v3, "--applet"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 552
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/expr/Compilation;->generateAppletDefault:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 554
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_3c
    const-string v3, "--servlet"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 556
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/expr/Compilation;->generateServletDefault:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 558
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_3d
    const-string v3, "--debug-dump-zip"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 560
    const-string v3, "kawa-zip-dump-"

    sput-object v3, Lgnu/expr/ModuleExp;->dumpZipPrefix:Ljava/lang/String;

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 562
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_3e
    const-string v3, "--debug-print-expr"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 564
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/expr/Compilation;->debugPrintExpr:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 566
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_3f
    const-string v3, "--debug-print-final-expr"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 568
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/expr/Compilation;->debugPrintFinalExpr:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 570
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_40
    const-string v3, "--debug-error-prints-stack-trace"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 572
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/text/SourceMessages;->debugStackTraceOnError:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 574
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_41
    const-string v3, "--debug-warning-prints-stack-trace"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 576
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/text/SourceMessages;->debugStackTraceOnWarning:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 578
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_42
    const-string v3, "--module-static"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 580
    const/4 v3, 0x1

    sput v3, Lgnu/expr/Compilation;->moduleStatic:I

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 582
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_43
    const-string v3, "--module-static-run"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 584
    const/4 v3, 0x2

    sput v3, Lgnu/expr/Compilation;->moduleStatic:I

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 586
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_44
    const-string v3, "--fewer-classes"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 588
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/expr/Compilation;->fewerClasses:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 590
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_45
    const-string v3, "--no-inline"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    const-string v3, "--inline=none"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 593
    :cond_46
    const/4 v3, 0x0

    sput-boolean v3, Lgnu/expr/Compilation;->inlineOk:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 595
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_47
    const-string v3, "--no-console"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 596
    const/4 v3, 0x1

    sput-boolean v3, Lkawa/repl;->noConsole:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 597
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_48
    const-string v3, "--inline"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 599
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/expr/Compilation;->inlineOk:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 601
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_49
    const-string v3, "--cps"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 603
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/expr/Compilation;->fewerClasses:Z

    .line 604
    const/4 v3, 0x4

    sput v3, Lgnu/expr/Compilation;->defaultCallConvention:I

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 607
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_4a
    const-string v3, "--full-tailcalls"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 609
    const/4 v3, 0x3

    sput v3, Lgnu/expr/Compilation;->defaultCallConvention:I

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 612
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_4b
    const-string v3, "--no-full-tailcalls"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 614
    const/4 v3, 0x1

    sput v3, Lgnu/expr/Compilation;->defaultCallConvention:I

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 617
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_4c
    const-string v3, "--pedantic"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 619
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/expr/Language;->requirePedantic:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 621
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_4d
    const-string v3, "--help"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 623
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lkawa/repl;->printOptions(Ljava/io/PrintStream;)V

    .line 624
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 626
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_4e
    const-string v3, "--author"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 628
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Per Bothner <per@bothner.com>"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 629
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 631
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_4f
    const-string v3, "--version"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 633
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Kawa "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 634
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lkawa/Version;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 635
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 636
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Copyright (C) 2007 Per Bothner"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 637
    const/4 v3, 0x1

    .end local v8           #something_done:Z
    .local v3, something_done:Z
    move v4, v3

    .end local v3           #something_done:Z
    .restart local v4       #something_done:Z
    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .local v3, arg:Ljava/lang/String;
    goto/16 :goto_1

    .line 639
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_50
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_59

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_59

    .line 641
    move-object v3, v9

    .line 642
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_60

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_60

    .line 643
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_51

    const/4 v4, 0x2

    :goto_a
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 644
    .end local v3           #name:Ljava/lang/String;
    .local v4, name:Ljava/lang/String;
    :goto_b
    invoke-static {v4}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v3

    .line 645
    .local v3, lang:Lgnu/expr/Language;
    if-eqz v3, :cond_53

    .line 647
    sget-object v5, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    if-nez v5, :cond_52

    .line 648
    invoke-static {v3}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 651
    :goto_c
    sput-object v3, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    move-object v3, v4

    .end local v4           #name:Ljava/lang/String;
    .local v3, name:Ljava/lang/String;
    :goto_d
    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .local v3, arg:Ljava/lang/String;
    move v4, v8

    .line 694
    .end local v8           #something_done:Z
    .local v4, something_done:Z
    goto/16 :goto_1

    .line 643
    .end local v4           #something_done:Z
    .local v3, name:Ljava/lang/String;
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_51
    const/4 v4, 0x1

    goto :goto_a

    .line 650
    .local v3, lang:Lgnu/expr/Language;
    .local v4, name:Ljava/lang/String;
    :cond_52
    invoke-static {v3}, Lgnu/expr/Language;->setDefaultLanguage(Lgnu/expr/Language;)V

    goto :goto_c

    .line 656
    :cond_53
    const-string v3, "="

    .end local v3           #lang:Lgnu/expr/Language;
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 658
    .local v3, eq:I
    if-gez v3, :cond_55

    .line 659
    const/4 v3, 0x0

    .local v3, opt_value:Ljava/lang/String;
    move-object v15, v3

    .end local v3           #opt_value:Ljava/lang/String;
    .local v15, opt_value:Ljava/lang/String;
    move-object v3, v4

    .end local v4           #name:Ljava/lang/String;
    .local v3, name:Ljava/lang/String;
    move-object v4, v15

    .line 667
    .end local v15           #opt_value:Ljava/lang/String;
    .local v4, opt_value:Ljava/lang/String;
    :goto_e
    const-string v5, "no-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_56

    const/4 v5, 0x1

    move v6, v5

    .line 669
    .local v6, startsWithNo:Z
    :goto_f
    if-nez v4, :cond_5f

    if-eqz v6, :cond_5f

    .line 671
    const-string v4, "no"

    .line 672
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .end local v4           #opt_value:Ljava/lang/String;
    .local v5, opt_value:Ljava/lang/String;
    move-object v4, v3

    .line 675
    .end local v3           #name:Ljava/lang/String;
    .local v4, name:Ljava/lang/String;
    :goto_10
    sget-object v3, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    invoke-virtual {v3, v4, v5}, Lgnu/text/Options;->set(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 676
    .local v3, msg:Ljava/lang/String;
    if-eqz v3, :cond_58

    .line 679
    if-eqz v6, :cond_54

    const-string v6, "unknown option name"

    .end local v6           #startsWithNo:Z
    if-ne v3, v6, :cond_54

    .line 680
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #msg:Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "both \'--no-\' prefix and \'="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' specified"

    .end local v5           #opt_value:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 682
    .restart local v3       #msg:Ljava/lang/String;
    :cond_54
    const-string v5, "unknown option name"

    if-ne v3, v5, :cond_57

    .line 684
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    move-object v3, v4

    .end local v4           #name:Ljava/lang/String;
    .local v3, name:Ljava/lang/String;
    goto :goto_d

    .line 662
    .local v3, eq:I
    .restart local v4       #name:Ljava/lang/String;
    :cond_55
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 663
    .restart local v5       #opt_value:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .end local v4           #name:Ljava/lang/String;
    .local v3, name:Ljava/lang/String;
    move-object v4, v5

    .end local v5           #opt_value:Ljava/lang/String;
    .local v4, opt_value:Ljava/lang/String;
    goto :goto_e

    .line 667
    :cond_56
    const/4 v5, 0x0

    move v6, v5

    goto :goto_f

    .line 688
    .local v3, msg:Ljava/lang/String;
    .local v4, name:Ljava/lang/String;
    :cond_57
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kawa: bad option \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\': "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v3           #msg:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 690
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_58
    move-object v3, v4

    .end local v4           #name:Ljava/lang/String;
    .local v3, name:Ljava/lang/String;
    goto/16 :goto_d

    .line 697
    .end local v3           #name:Ljava/lang/String;
    :cond_59
    const/16 v3, 0x3d

    invoke-virtual {v9, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 698
    .local v3, ci:I
    if-gtz v3, :cond_5b

    .line 734
    .end local v3           #ci:I
    .end local v9           #arg:Ljava/lang/String;
    :cond_5a
    if-eqz v8, :cond_5e

    const/16 p0, -0x1

    goto/16 :goto_3

    .line 700
    .restart local v3       #ci:I
    .restart local v9       #arg:Ljava/lang/String;
    :cond_5b
    const/4 v4, 0x0

    invoke-virtual {v9, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 701
    .local v7, key:Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v3           #ci:I
    move-result-object v10

    .line 702
    .local v10, value:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    move v6, v3

    .line 704
    .end local v3           #i:I
    .local v6, i:I
    :goto_11
    sget-object v3, Lkawa/repl;->propertyFields:[[Ljava/lang/String;

    aget-object v3, v3, v6

    .line 705
    .local v3, propertyField:[Ljava/lang/String;
    if-nez v3, :cond_5c

    .line 727
    .end local v3           #propertyField:[Ljava/lang/String;
    :goto_12
    invoke-static {v7}, Lgnu/mapping/Symbol;->parse(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    .line 729
    .local v4, symbol:Lgnu/mapping/Symbol;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    .line 730
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v3

    .line 731
    .local v3, current:Lgnu/mapping/Environment;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v10}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .local v3, arg:Ljava/lang/String;
    move v4, v8

    .end local v8           #something_done:Z
    .local v4, something_done:Z
    goto/16 :goto_1

    .line 707
    .end local v4           #something_done:Z
    .local v3, propertyField:[Ljava/lang/String;
    .restart local v8       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_5c
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 709
    const/4 v4, 0x1

    aget-object v4, v3, v4

    .line 710
    .local v4, cname:Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v5, v3, v5

    .line 713
    .local v5, fname:Ljava/lang/String;
    :try_start_8
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 714
    .local v3, clas:Ljava/lang/Class;
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .end local v3           #clas:Ljava/lang/Class;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/ThreadLocation;

    .line 716
    .local v3, loc:Lgnu/mapping/ThreadLocation;
    invoke-virtual {v3, v10}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_12

    .line 719
    .end local v3           #loc:Lgnu/mapping/ThreadLocation;
    :catch_6
    move-exception v3

    .line 721
    .local v3, ex:Ljava/lang/Throwable;
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error setting property "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " field "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .end local v4           #cname:Ljava/lang/String;
    const/16 v12, 0x2e

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    .end local v5           #fname:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v3           #ex:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 723
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 702
    :cond_5d
    add-int/lit8 v3, v6, 0x1

    .end local v6           #i:I
    .local v3, i:I
    move v6, v3

    .end local v3           #i:I
    .restart local v6       #i:I
    goto :goto_11

    .end local v6           #i:I
    .end local v7           #key:Ljava/lang/String;
    .end local v9           #arg:Ljava/lang/String;
    .end local v10           #value:Ljava/lang/String;
    :cond_5e
    move/from16 p0, p1

    .line 734
    goto/16 :goto_3

    .line 541
    .end local p2           #maxArg:I
    .restart local v9       #arg:Ljava/lang/String;
    .local p0, port:I
    :catch_7
    move-exception p1

    move-object/from16 v15, p1

    move/from16 p1, p0

    .end local p0           #port:I
    .local p1, port:I
    move-object/from16 p0, v15

    goto/16 :goto_9

    .local v3, name:Ljava/lang/String;
    .local v4, opt_value:Ljava/lang/String;
    .local v6, startsWithNo:Z
    .local p0, args:[Ljava/lang/String;
    .local p1, iArg:I
    .restart local p2       #maxArg:I
    :cond_5f
    move-object v5, v4

    .end local v4           #opt_value:Ljava/lang/String;
    .local v5, opt_value:Ljava/lang/String;
    move-object v4, v3

    .end local v3           #name:Ljava/lang/String;
    .local v4, name:Ljava/lang/String;
    goto/16 :goto_10

    .end local v4           #name:Ljava/lang/String;
    .end local v5           #opt_value:Ljava/lang/String;
    .end local v6           #startsWithNo:Z
    .restart local v3       #name:Ljava/lang/String;
    :cond_60
    move-object v4, v3

    .end local v3           #name:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    goto/16 :goto_b

    .local v3, count:Ljava/lang/String;
    .local v4, skipLines:I
    :cond_61
    move v3, v4

    .end local v4           #skipLines:I
    .local v3, skipLines:I
    goto/16 :goto_2
.end method

.method public static setArgs([Ljava/lang/String;I)V
    .locals 7
    .parameter "args"
    .parameter "arg_start"

    .prologue
    .line 179
    array-length v4, p0

    sub-int v2, v4, p1

    .line 180
    .local v2, nargs:I
    new-array v0, v2, [Ljava/lang/Object;

    .line 181
    .local v0, array:[Ljava/lang/Object;
    if-nez p1, :cond_0

    .line 182
    sput-object p0, Lkawa/repl;->commandLineArgArray:[Ljava/lang/String;

    .line 190
    :goto_0
    move v1, v2

    .local v1, i:I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 191
    new-instance v4, Lgnu/lists/FString;

    add-int v5, v1, p1

    aget-object v5, p0, v5

    invoke-direct {v4, v5}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v1

    goto :goto_1

    .line 185
    .end local v1           #i:I
    :cond_0
    new-array v3, v2, [Ljava/lang/String;

    .line 186
    .local v3, strings:[Ljava/lang/String;
    move v1, v2

    .restart local v1       #i:I
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 187
    add-int v4, v1, p1

    aget-object v4, p0, v4

    aput-object v4, v3, v1

    goto :goto_2

    .line 188
    :cond_1
    sput-object v3, Lkawa/repl;->commandLineArgArray:[Ljava/lang/String;

    goto :goto_0

    .line 192
    .end local v3           #strings:[Ljava/lang/String;
    :cond_2
    new-instance v4, Lgnu/lists/FVector;

    invoke-direct {v4, v0}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    sput-object v4, Lkawa/repl;->commandLineArguments:Lgnu/lists/FVector;

    .line 194
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    const-string v5, "command-line-arguments"

    sget-object v6, Lkawa/repl;->commandLineArguments:Lgnu/lists/FVector;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Environment;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method public static shouldUseGuiConsole()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 909
    sget-boolean v0, Lkawa/repl;->noConsole:Z

    if-eqz v0, :cond_0

    move v0, v4

    .line 921
    :goto_0
    return v0

    .line 913
    :cond_0
    :try_start_0
    const-string v0, "java.lang.System"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "console"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v4

    .line 916
    goto :goto_0

    .line 918
    :catch_0
    move-exception v0

    :cond_1
    move v0, v3

    .line 921
    goto :goto_0
.end method

.method private static startGuiConsole()V
    .locals 4

    .prologue
    .line 930
    :try_start_0
    const-string v1, "kawa.GuiConsole"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    :goto_0
    return-void

    .line 932
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 934
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create Kawa window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 935
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lkawa/repl;->language:Lgnu/expr/Language;

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-static {v0, v1}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    .line 29
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "env"

    .prologue
    .line 34
    iget-object v0, p0, Lkawa/repl;->language:Lgnu/expr/Language;

    check-cast p1, Lgnu/mapping/Environment;

    .end local p1
    invoke-static {v0, p1}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    .line 35
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method
