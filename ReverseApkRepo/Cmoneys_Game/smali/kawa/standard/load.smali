.class public Lkawa/standard/load;
.super Lgnu/mapping/Procedure1;
.source "load.java"


# static fields
.field private static currentLoadPath:Ljava/lang/ThreadLocal;

.field public static final load:Lkawa/standard/load;

.field public static final loadRelative:Lkawa/standard/load;


# instance fields
.field relative:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lkawa/standard/load;->currentLoadPath:Ljava/lang/ThreadLocal;

    .line 29
    new-instance v0, Lkawa/standard/load;

    const-string v1, "load"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkawa/standard/load;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/load;->load:Lkawa/standard/load;

    .line 30
    new-instance v0, Lkawa/standard/load;

    const-string v1, "load-relative"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkawa/standard/load;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/load;->loadRelative:Lkawa/standard/load;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "name"
    .parameter "relative"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure1;-><init>(Ljava/lang/String;)V

    .line 26
    iput-boolean p2, p0, Lkawa/standard/load;->relative:Z

    .line 27
    return-void
.end method

.method private static final apply(Lgnu/text/Path;Lgnu/mapping/Environment;ZI)V
    .locals 4
    .parameter "path"
    .parameter "env"
    .parameter "relative"
    .parameter "skipLines"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, name:Ljava/lang/String;
    const-string p2, ".zip"

    .end local p2
    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, ".jar"

    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 194
    :cond_0
    invoke-static {p0, p1}, Lkawa/standard/load;->loadCompiled(Lgnu/text/Path;Lgnu/mapping/Environment;)V

    move-object p0, v1

    .line 238
    .end local v1           #name:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :goto_0
    return-void

    .line 197
    .restart local v1       #name:Ljava/lang/String;
    .local p0, path:Lgnu/text/Path;
    :cond_1
    invoke-virtual {p0}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v2

    .line 198
    .local v2, url:Ljava/net/URL;
    const-string p2, "file.separator"

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 200
    .local p2, file_separator:C
    const-string v0, ".class"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    const/4 p0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .end local p0           #path:Lgnu/text/Path;
    move-result v0

    const/4 v2, 0x6

    sub-int/2addr v0, v2

    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v2           #url:Ljava/net/URL;
    move-result-object p0

    .line 203
    .end local v1           #name:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 204
    const/16 v0, 0x2f

    if-eq p2, v0, :cond_2

    .line 205
    const/16 v0, 0x2e

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 206
    :cond_2
    invoke-static {p0, p1}, Lkawa/standard/load;->loadClassFile(Ljava/lang/String;Lgnu/mapping/Environment;)V

    goto :goto_0

    .line 209
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #url:Ljava/net/URL;
    .local p0, path:Lgnu/text/Path;
    :cond_3
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object p2

    .end local p2           #file_separator:C
    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 210
    .local v0, fs:Ljava/io/InputStream;
    const/4 p2, 0x5

    invoke-virtual {v0, p2}, Ljava/io/InputStream;->mark(I)V

    .line 211
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p2

    .line 212
    .local p2, char0:I
    const/4 v3, -0x1

    if-ne p2, v3, :cond_4

    move-object p0, v1

    .line 213
    .end local v1           #name:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    goto :goto_0

    .line 214
    .restart local v1       #name:Ljava/lang/String;
    .local p0, path:Lgnu/text/Path;
    :cond_4
    const/16 v3, 0x50

    if-ne p2, v3, :cond_5

    .line 216
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p2

    .line 217
    .local p2, char1:I
    const/16 v3, 0x4b

    if-ne p2, v3, :cond_5

    .line 219
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p2

    .line 220
    .local p2, char2:I
    const/4 v3, 0x3

    if-ne p2, v3, :cond_5

    .line 222
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p2

    .line 223
    .local p2, char3:I
    const/4 v3, 0x4

    if-ne p2, v3, :cond_5

    .line 225
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 226
    invoke-static {p0, p1}, Lkawa/standard/load;->loadCompiled(Lgnu/text/Path;Lgnu/mapping/Environment;)V

    move-object p0, v1

    .line 227
    .end local v1           #name:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    goto :goto_0

    .line 232
    .end local p2           #char3:I
    .restart local v1       #name:Ljava/lang/String;
    .local p0, path:Lgnu/text/Path;
    :cond_5
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 233
    invoke-static {v0, p0}, Lgnu/mapping/InPort;->openFile(Ljava/io/InputStream;Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object p0

    .line 234
    .local p0, src:Lgnu/mapping/InPort;
    :goto_1
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_6

    .line 235
    invoke-virtual {p0}, Lgnu/mapping/InPort;->skipRestOfLine()V

    goto :goto_1

    .line 236
    :cond_6
    invoke-static {p0, p1, v2}, Lkawa/standard/load;->loadSource(Lgnu/mapping/InPort;Lgnu/mapping/Environment;Ljava/net/URL;)V

    .line 237
    invoke-virtual {p0}, Lgnu/mapping/InPort;->close()V

    move-object p0, v1

    .line 238
    .end local v1           #name:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static final apply(Ljava/lang/Object;Lgnu/mapping/Environment;ZI)V
    .locals 4
    .parameter "name"
    .parameter "env"
    .parameter "relative"
    .parameter "skipLines"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 172
    sget-object v2, Lkawa/standard/load;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/text/Path;

    .line 175
    .local v1, savePath:Lgnu/text/Path;
    :try_start_0
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    .line 176
    .local v0, path:Lgnu/text/Path;
    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1, v0}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v0

    .line 178
    :cond_0
    sget-object v2, Lkawa/standard/load;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 179
    invoke-static {v0, p1, p2, p3}, Lkawa/standard/load;->apply(Lgnu/text/Path;Lgnu/mapping/Environment;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    sget-object v2, Lkawa/standard/load;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 185
    return-void

    .line 183
    .end local v0           #path:Lgnu/text/Path;
    :catchall_0
    move-exception v2

    sget-object v3, Lkawa/standard/load;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v2
.end method

.method public static final loadClassFile(Ljava/lang/String;Lgnu/mapping/Environment;)V
    .locals 5
    .parameter "name"
    .parameter "env"

    .prologue
    .line 39
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    .line 42
    .local v1, orig_env:Lgnu/mapping/Environment;
    if-eq p1, v1, :cond_0

    .line 43
    :try_start_0
    invoke-static {p1}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 44
    :cond_0
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v2

    invoke-virtual {v2, p0}, Lgnu/expr/Language;->loadClass(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    if-eq p1, v1, :cond_1

    .line 54
    invoke-static {v1}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 56
    :cond_1
    return-void

    .line 46
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 48
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_1
    new-instance v2, Lgnu/mapping/WrappedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception during load of \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    if-eq p1, v1, :cond_2

    .line 54
    invoke-static {v1}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    :cond_2
    throw v2
.end method

.method public static final loadCompiled(Lgnu/text/Path;Lgnu/mapping/Environment;)V
    .locals 10
    .parameter "path"
    .parameter "env"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-string v7, "load: "

    .line 61
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    .line 62
    .local v4, orig_env:Lgnu/mapping/Environment;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, name:Ljava/lang/String;
    if-eq p1, v4, :cond_0

    .line 66
    :try_start_0
    invoke-static {p1}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 67
    :cond_0
    instance-of v7, p0, Lgnu/text/FilePath;

    if-nez v7, :cond_2

    .line 68
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "load: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - not a file path"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 82
    .end local p0
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 84
    .local v1, ex:Ljava/io/IOException;
    :try_start_1
    new-instance v7, Lgnu/mapping/WrappedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "load: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eq p1, v4, :cond_1

    .line 97
    invoke-static {v4}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    :cond_1
    throw v7

    .line 69
    .restart local p0
    :cond_2
    :try_start_2
    check-cast p0, Lgnu/text/FilePath;

    .end local p0
    invoke-virtual {p0}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object v6

    .line 70
    .local v6, zfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 71
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "load: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    .line 86
    .end local v6           #zfile:Ljava/io/File;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 88
    .local v1, ex:Ljava/lang/InstantiationException;
    :try_start_3
    new-instance v7, Lgnu/mapping/WrappedException;

    const-string v8, "class not instantiable: in load"

    invoke-direct {v7, v8, v1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    .end local v1           #ex:Ljava/lang/InstantiationException;
    .restart local v6       #zfile:Ljava/io/File;
    :cond_3
    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_4

    .line 73
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "load: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - not readable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2

    .line 90
    .end local v6           #zfile:Ljava/io/File;
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 92
    .local v1, ex:Ljava/lang/IllegalAccessException;
    :try_start_5
    new-instance v7, Lgnu/mapping/WrappedException;

    const-string v8, "class illegal access: in load"

    invoke-direct {v7, v8, v1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 74
    .end local v1           #ex:Ljava/lang/IllegalAccessException;
    .restart local v6       #zfile:Ljava/io/File;
    :cond_4
    :try_start_6
    new-instance v2, Lgnu/bytecode/ZipLoader;

    invoke-direct {v2, v3}, Lgnu/bytecode/ZipLoader;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, loader:Lgnu/bytecode/ZipLoader;
    invoke-virtual {v2}, Lgnu/bytecode/ZipLoader;->loadAllClasses()Ljava/lang/Class;

    move-result-object v0

    .line 76
    .local v0, clas:Ljava/lang/Class;
    if-nez v0, :cond_5

    const/4 v7, 0x0

    move-object v5, v7

    .line 77
    .local v5, proc:Ljava/lang/Object;
    :goto_0
    instance-of v7, v5, Lgnu/expr/ModuleBody;

    if-nez v7, :cond_6

    .line 78
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "load: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - no module in archive"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 76
    .end local v5           #proc:Ljava/lang/Object;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    goto :goto_0

    .line 79
    .restart local v5       #proc:Ljava/lang/Object;
    :cond_6
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v7

    invoke-static {v5, v7, p1}, Lgnu/kawa/reflect/ClassMemberLocation;->defineAll(Ljava/lang/Object;Lgnu/expr/Language;Lgnu/mapping/Environment;)V

    .line 80
    check-cast v5, Lgnu/expr/ModuleBody;

    .end local v5           #proc:Ljava/lang/Object;
    invoke-virtual {v5}, Lgnu/expr/ModuleBody;->run()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_2

    .line 96
    if-eq p1, v4, :cond_7

    .line 97
    invoke-static {v4}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 99
    :cond_7
    return-void
.end method

.method public static final loadSource(Lgnu/mapping/InPort;Lgnu/mapping/Environment;Ljava/net/URL;)V
    .locals 9
    .parameter "port"
    .parameter "env"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Lgnu/expr/ModuleBody;->getMainPrintValues()Z

    move-result v8

    .line 105
    .local v8, print:Z
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 106
    .local v0, language:Lgnu/expr/Language;
    if-eqz v8, :cond_0

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v1

    invoke-static {v1}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object v1

    move-object v3, v1

    .line 108
    .local v3, out:Lgnu/lists/Consumer;
    :goto_0
    new-instance v6, Lgnu/text/SourceMessages;

    invoke-direct {v6}, Lgnu/text/SourceMessages;-><init>()V

    .line 115
    .local v6, messages:Lgnu/text/SourceMessages;
    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v7

    .line 117
    .local v7, ex:Ljava/lang/Throwable;
    if-eqz v7, :cond_1

    .line 118
    throw v7

    .line 106
    .end local v3           #out:Lgnu/lists/Consumer;
    .end local v6           #messages:Lgnu/text/SourceMessages;
    .end local v7           #ex:Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Lgnu/lists/VoidConsumer;

    invoke-direct {v1}, Lgnu/lists/VoidConsumer;-><init>()V

    move-object v3, v1

    goto :goto_0

    .line 140
    .restart local v3       #out:Lgnu/lists/Consumer;
    .restart local v6       #messages:Lgnu/text/SourceMessages;
    .restart local v7       #ex:Ljava/lang/Throwable;
    :cond_1
    return-void
.end method


# virtual methods
.method public final apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lkawa/standard/load;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "name"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 153
    :try_start_0
    move-object v0, p2

    check-cast v0, Lgnu/mapping/Environment;

    move-object v2, v0

    .line 154
    .local v2, env:Lgnu/mapping/Environment;
    iget-boolean v4, p0, Lkawa/standard/load;->relative:Z

    const/4 v5, 0x0

    invoke-static {p1, v2, v4, v5}, Lkawa/standard/load;->apply(Ljava/lang/Object;Lgnu/mapping/Environment;ZI)V

    .line 155
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v4

    .line 157
    .end local v2           #env:Lgnu/mapping/Environment;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 159
    .local v1, e:Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot load "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 161
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 163
    .local v3, ex:Lgnu/text/SyntaxException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load: errors while compiling \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\':\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
