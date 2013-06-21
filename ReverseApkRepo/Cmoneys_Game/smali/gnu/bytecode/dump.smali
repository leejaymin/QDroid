.class public Lgnu/bytecode/dump;
.super Lgnu/bytecode/ClassFileInput;
.source "dump.java"


# instance fields
.field writer:Lgnu/bytecode/ClassTypeWriter;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lgnu/bytecode/ClassTypeWriter;)V
    .locals 1
    .parameter "str"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lgnu/bytecode/ClassFileInput;-><init>(Ljava/io/InputStream;)V

    .line 34
    new-instance v0, Lgnu/bytecode/ClassType;

    invoke-direct {v0}, Lgnu/bytecode/ClassType;-><init>()V

    iput-object v0, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    .line 35
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readFormatVersion()V

    .line 37
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readConstants()Lgnu/bytecode/ConstantPool;

    .line 38
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readClassInfo()V

    .line 39
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readFields()V

    .line 40
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readMethods()V

    .line 41
    iget-object v0, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/dump;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    .line 43
    iget-object v0, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {p2, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Lgnu/bytecode/ClassType;)V

    .line 44
    invoke-virtual {p2}, Lgnu/bytecode/ClassTypeWriter;->flush()V

    .line 45
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .parameter "args"

    .prologue
    .line 152
    array-length v0, p0

    .line 153
    .local v0, alen:I
    new-instance v5, Lgnu/bytecode/ClassTypeWriter;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x0

    invoke-direct {v5, v1, v2, v3}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/OutputStream;I)V

    .line 154
    .local v5, out:Lgnu/bytecode/ClassTypeWriter;
    if-nez v0, :cond_0

    .line 155
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v1}, Lgnu/bytecode/dump;->usage(Ljava/io/PrintStream;)V

    .line 156
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_6

    .line 158
    aget-object v2, p0, v4

    .line 159
    .local v2, filename:Ljava/lang/String;
    const-string v1, "-verbose"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "--verbose"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    :cond_1
    const/4 v1, 0x7

    invoke-virtual {v5, v1}, Lgnu/bytecode/ClassTypeWriter;->setFlags(I)V

    move-object v1, v2

    .line 156
    .end local v2           #filename:Ljava/lang/String;
    .local v1, filename:Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v4, 0x1

    .end local v4           #i:I
    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .restart local v4       #i:I
    goto :goto_0

    .line 164
    .restart local v2       #filename:Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Lgnu/bytecode/dump;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v1

    .line 168
    .local v1, isURL:Z
    if-eqz v1, :cond_5

    .line 170
    :try_start_0
    const-string v1, "jar:"

    .end local v1           #isURL:Z
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 172
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, part:Ljava/lang/String;
    invoke-static {v6}, Lgnu/bytecode/dump;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 176
    const/16 v1, 0x21

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 177
    .local v1, excl:I
    if-ltz v1, :cond_3

    .line 179
    const/4 v3, 0x0

    invoke-virtual {v6, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, filepart:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v3

    .end local v3           #filepart:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    .restart local v3       #filepart:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "jar:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v3           #filepart:Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .end local v1           #excl:I
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v2           #filename:Ljava/lang/String;
    .local v1, filename:Ljava/lang/String;
    move-object v2, v1

    .line 189
    .end local v1           #filename:Ljava/lang/String;
    .restart local v2       #filename:Ljava/lang/String;
    :cond_3
    const-string v1, "!/"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4

    .line 191
    const/16 v1, 0x21

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 192
    .local v1, excl:I
    if-lez v1, :cond_4

    const/16 v3, 0x2f

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gez v3, :cond_4

    .line 194
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 195
    .end local v6           #part:Ljava/lang/String;
    .local v3, part:Ljava/lang/String;
    const/16 v6, 0x2e

    const/16 v7, 0x2f

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 196
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v1           #excl:I
    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v6, 0x2f

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".class"

    .end local v3           #part:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v1

    .end local v2           #filename:Ljava/lang/String;
    .local v1, filename:Ljava/lang/String;
    move-object v2, v1

    .line 203
    .end local v1           #filename:Ljava/lang/String;
    .restart local v2       #filename:Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v1

    .local v1, in:Ljava/io/InputStream;
    move-object v9, v1

    .end local v1           #in:Ljava/io/InputStream;
    .local v9, in:Ljava/io/InputStream;
    move-object v1, v2

    .end local v2           #filename:Ljava/lang/String;
    .local v1, filename:Ljava/lang/String;
    move-object v2, v9

    .line 261
    .end local v9           #in:Ljava/io/InputStream;
    .local v2, in:Ljava/io/InputStream;
    :goto_2
    :try_start_2
    invoke-static {v2, v1, v5}, Lgnu/bytecode/dump;->process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 264
    :catch_0
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    .end local v1           #filename:Ljava/lang/String;
    .local v2, filename:Ljava/lang/String;
    move-object v1, v9

    .line 266
    .local v1, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 267
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "caught "

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 268
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 269
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .end local v1           #e:Ljava/io/IOException;
    move-object v1, v2

    .end local v2           #filename:Ljava/lang/String;
    .local v1, filename:Ljava/lang/String;
    goto/16 :goto_1

    .line 205
    .end local v1           #filename:Ljava/lang/String;
    .restart local v2       #filename:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 207
    .local v1, e1:Ljava/io/FileNotFoundException;
    :try_start_3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .end local v1           #e1:Ljava/io/FileNotFoundException;
    const-string v3, "File for URL "

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 208
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 209
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, " not found."

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 211
    const/4 v1, 0x0

    .local v1, in:Ljava/io/InputStream;
    move-object v9, v1

    .end local v1           #in:Ljava/io/InputStream;
    .restart local v9       #in:Ljava/io/InputStream;
    move-object v1, v2

    .end local v2           #filename:Ljava/lang/String;
    .local v1, filename:Ljava/lang/String;
    move-object v2, v9

    .line 212
    .end local v9           #in:Ljava/io/InputStream;
    .local v2, in:Ljava/io/InputStream;
    goto :goto_2

    .line 218
    .local v1, isURL:Z
    .local v2, filename:Ljava/lang/String;
    :cond_5
    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1           #isURL:Z
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .local v1, in:Ljava/io/InputStream;
    move-object v9, v1

    .end local v1           #in:Ljava/io/InputStream;
    .restart local v9       #in:Ljava/io/InputStream;
    move-object v1, v2

    .end local v2           #filename:Ljava/lang/String;
    .local v1, filename:Ljava/lang/String;
    move-object v2, v9

    .line 259
    .end local v9           #in:Ljava/io/InputStream;
    .local v2, in:Ljava/io/InputStream;
    goto :goto_2

    .line 220
    .end local v1           #filename:Ljava/lang/String;
    .local v2, filename:Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 226
    .local v1, e1:Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-static {v2}, Lgnu/bytecode/ObjectType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 227
    .local v1, clas:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v1

    .local v1, loader:Ljava/lang/ClassLoader;
    move-object v3, v1

    .line 243
    .end local v1           #loader:Ljava/lang/ClassLoader;
    .local v3, loader:Ljava/lang/ClassLoader;
    :goto_4
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x2e

    const/16 v7, 0x2f

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".class"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v1

    .line 246
    .local v1, clfilename:Ljava/lang/String;
    :try_start_7
    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 247
    .local v1, resource:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .end local v3           #loader:Ljava/lang/ClassLoader;
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 248
    .local v3, in:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v1

    .end local v2           #filename:Ljava/lang/String;
    .local v1, filename:Ljava/lang/String;
    move-object v2, v3

    .line 258
    .end local v3           #in:Ljava/io/InputStream;
    .local v2, in:Ljava/io/InputStream;
    goto :goto_2

    .line 229
    .end local v1           #filename:Ljava/lang/String;
    .local v2, filename:Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 231
    .local v1, e2:Ljava/lang/NoClassDefFoundError;
    :try_start_8
    invoke-static {}, Lgnu/bytecode/ObjectType;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .local v1, loader:Ljava/lang/ClassLoader;
    move-object v3, v1

    .line 241
    .end local v1           #loader:Ljava/lang/ClassLoader;
    .local v3, loader:Ljava/lang/ClassLoader;
    goto :goto_4

    .line 233
    .end local v3           #loader:Ljava/lang/ClassLoader;
    :catch_4
    move-exception v1

    .line 235
    .local v1, e2:Ljava/lang/Throwable;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .end local v1           #e2:Ljava/lang/Throwable;
    const-string v3, "File "

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 236
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 237
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, " not found."

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 239
    const/4 v1, 0x0

    .local v1, loader:Ljava/lang/ClassLoader;
    move-object v3, v1

    .line 240
    .end local v1           #loader:Ljava/lang/ClassLoader;
    .restart local v3       #loader:Ljava/lang/ClassLoader;
    goto :goto_4

    .line 250
    .end local v3           #loader:Ljava/lang/ClassLoader;
    :catch_5
    move-exception v1

    .line 252
    .local v1, ex:Ljava/lang/Throwable;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Can\'t find .class file for class "

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 253
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 254
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 255
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 256
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 257
    .end local v1           #ex:Ljava/lang/Throwable;
    const/4 v1, 0x0

    .local v1, in:Ljava/io/InputStream;
    move-object v9, v1

    .end local v1           #in:Ljava/io/InputStream;
    .restart local v9       #in:Ljava/io/InputStream;
    move-object v1, v2

    .end local v2           #filename:Ljava/lang/String;
    .local v1, filename:Ljava/lang/String;
    move-object v2, v9

    .end local v9           #in:Ljava/io/InputStream;
    .local v2, in:Ljava/io/InputStream;
    goto/16 :goto_2

    .line 272
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #in:Ljava/io/InputStream;
    :cond_6
    return-void

    .line 264
    .local v2, filename:Ljava/lang/String;
    :catch_6
    move-exception v1

    goto/16 :goto_3
.end method

.method public static process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V
    .locals 9
    .parameter "in"
    .parameter "filename"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const v7, -0x35014542

    const/16 v6, 0x2e

    .line 90
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 91
    .local v0, inp:Ljava/io/InputStream;
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->mark(I)V

    .line 92
    invoke-static {v0}, Lgnu/bytecode/dump;->readMagic(Ljava/io/InputStream;)I

    move-result v1

    .line 93
    .local v1, magic:I
    if-ne v1, v7, :cond_0

    .line 95
    const-string v5, "Reading .class from "

    invoke-virtual {p2, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2, v6}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 98
    new-instance v5, Lgnu/bytecode/dump;

    invoke-direct {v5, v0, p2}, Lgnu/bytecode/dump;-><init>(Ljava/io/InputStream;Lgnu/bytecode/ClassTypeWriter;)V

    .line 143
    :goto_0
    return-void

    .line 100
    :cond_0
    const v5, 0x504b0304

    if-ne v1, v5, :cond_4

    .line 102
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 103
    const-string v5, "Reading classes from archive "

    invoke-virtual {p2, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2, v6}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 106
    new-instance v4, Ljava/util/zip/ZipInputStream;

    invoke-direct {v4, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 108
    .local v4, zin:Ljava/util/zip/ZipInputStream;
    :goto_1
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    .local v3, zent:Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_3

    .line 110
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 113
    const-string v5, "Archive directory: "

    invoke-virtual {p2, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2, v6}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {p2}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 120
    invoke-static {v4}, Lgnu/bytecode/dump;->readMagic(Ljava/io/InputStream;)I

    move-result v1

    .line 121
    if-ne v1, v7, :cond_2

    .line 123
    const-string v5, "Reading class member: "

    invoke-virtual {p2, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2, v6}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 126
    new-instance v5, Lgnu/bytecode/dump;

    invoke-direct {v5, v4, p2}, Lgnu/bytecode/dump;-><init>(Ljava/io/InputStream;Lgnu/bytecode/ClassTypeWriter;)V

    goto :goto_1

    .line 130
    :cond_2
    const-string v5, "Skipping non-class member: "

    invoke-virtual {p2, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2, v6}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    goto :goto_1

    .line 136
    .end local v2           #name:Ljava/lang/String;
    :cond_3
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 140
    .end local v3           #zent:Ljava/util/zip/ZipEntry;
    .end local v4           #zin:Ljava/util/zip/ZipInputStream;
    :cond_4
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a valid .class file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public static process(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/OutputStream;I)V
    .locals 2
    .parameter "in"
    .parameter "filename"
    .parameter "out"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lgnu/bytecode/ClassTypeWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/OutputStream;I)V

    invoke-static {p0, p1, v0}, Lgnu/bytecode/dump;->process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V

    .line 77
    return-void
.end method

.method public static process(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/Writer;I)V
    .locals 2
    .parameter "in"
    .parameter "filename"
    .parameter "out"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lgnu/bytecode/ClassTypeWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/Writer;I)V

    invoke-static {p0, p1, v0}, Lgnu/bytecode/dump;->process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V

    .line 84
    return-void
.end method

.method static readMagic(Ljava/io/InputStream;)I
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, magic:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 64
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 65
    .local v0, b:I
    if-gez v0, :cond_1

    .line 69
    .end local v0           #b:I
    :cond_0
    return v2

    .line 67
    .restart local v0       #b:I
    :cond_1
    shl-int/lit8 v3, v2, 0x8

    and-int/lit16 v4, v0, 0xff

    or-int v2, v3, v4

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static uriSchemeLength(Ljava/lang/String;)I
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, -0x1

    .line 284
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 285
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 287
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 288
    .local v0, ch:C
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_0

    move v3, v1

    .line 295
    .end local v0           #ch:C
    :goto_1
    return v3

    .line 290
    .restart local v0       #ch:C
    :cond_0
    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    move v3, v4

    .line 293
    goto :goto_1

    .line 290
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_3

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_3

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_1

    .line 285
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #ch:C
    :cond_4
    move v3, v4

    .line 295
    goto :goto_1
.end method

.method static uriSchemeSpecified(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 307
    invoke-static {p0}, Lgnu/bytecode/dump;->uriSchemeLength(Ljava/lang/String;)I

    move-result v1

    .line 308
    .local v1, ulen:I
    if-ne v1, v5, :cond_3

    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_3

    .line 310
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 311
    .local v0, drive:C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-le v0, v2, :cond_2

    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_2

    :cond_1
    move v2, v5

    .line 314
    .end local v0           #drive:C
    :goto_0
    return v2

    .restart local v0       #drive:C
    :cond_2
    move v2, v4

    .line 311
    goto :goto_0

    .line 314
    .end local v0           #drive:C
    :cond_3
    if-lez v1, :cond_4

    move v2, v5

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_0
.end method

.method public static usage(Ljava/io/PrintStream;)V
    .locals 1
    .parameter "err"

    .prologue
    .line 319
    const-string v0, "Prints and dis-assembles the contents of JVM .class files."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    const-string v0, "Usage: [--verbose] class-or-jar ..."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    const-string v0, "where a class-or-jar can be one of:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 322
    const-string v0, "- a fully-qualified class name; or"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    const-string v0, "- the name of a .class file, or a URL reference to one; or"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 324
    const-string v0, "- the name of a .jar or .zip archive file, or a URL reference to one."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 325
    const-string v0, "If a .jar/.zip archive is named, all its.class file members are printed."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 327
    const-string v0, "You can name a single .class member of an archive with a jar: URL,"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 328
    const-string v0, "which looks like: jar:jar-spec!/p1/p2/cl.class"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 329
    const-string v0, "The jar-spec can be a URL or the name of the .jar file."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 330
    const-string v0, "You can also use the shorthand syntax: jar:jar-spec!p1.p2.cl"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 331
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 332
    return-void
.end method


# virtual methods
.method public readAttribute(Ljava/lang/String;ILgnu/bytecode/AttrContainer;)Lgnu/bytecode/Attribute;
    .locals 1
    .parameter "name"
    .parameter "length"
    .parameter "container"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Lgnu/bytecode/ClassFileInput;->readAttribute(Ljava/lang/String;ILgnu/bytecode/AttrContainer;)Lgnu/bytecode/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public readConstants()Lgnu/bytecode/ConstantPool;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    invoke-super {p0}, Lgnu/bytecode/ClassFileInput;->readConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v1

    iput-object v1, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 50
    iget-object v0, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    return-object v0
.end method
