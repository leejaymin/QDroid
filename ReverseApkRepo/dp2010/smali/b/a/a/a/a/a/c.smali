.class public final Lb/a/a/a/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/a/a/d;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lb/a/a/a/a/a/c;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lb/a/a/a/a/e;)Lb/a/a/a/a/i;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    sget-object v0, Lb/a/a/a/a/a/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/i;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-nez v0, :cond_e

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UNIX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    new-instance v0, Lb/a/a/a/a/a/o;

    invoke-direct {v0, p1}, Lb/a/a/a/a/a/o;-><init>(Lb/a/a/a/a/e;)V

    move-object v1, v0

    :goto_1
    instance-of v0, v1, Lb/a/a/a/a/a;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lb/a/a/a/a/a;

    invoke-interface {v0, p1}, Lb/a/a/a/a/a;->a(Lb/a/a/a/a/e;)V

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v3, Lb/a/a/a/a/a/m;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " does not implement the interface org.apache.commons.net.ftp.FTPFileEntryParser."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lb/a/a/a/a/a/m;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v2, Lb/a/a/a/a/a/m;

    const-string v3, "Error initializing parser"

    invoke-direct {v2, v3, v0}, Lb/a/a/a/a/a/m;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    new-instance v2, Lb/a/a/a/a/a/m;

    const-string v3, "Error initializing parser"

    invoke-direct {v2, v3, v0}, Lb/a/a/a/a/a/m;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    const-string v1, "VMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    new-instance v0, Lb/a/a/a/a/a/q;

    invoke-direct {v0, p1}, Lb/a/a/a/a/a/q;-><init>(Lb/a/a/a/a/e;)V

    move-object v1, v0

    goto :goto_1

    :cond_3
    const-string v1, "WINDOWS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    if-eqz p1, :cond_4

    const-string v0, "WINDOWS"

    invoke-virtual {p1}, Lb/a/a/a/a/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lb/a/a/a/a/a/i;

    invoke-direct {v0, p1}, Lb/a/a/a/a/a/i;-><init>(Lb/a/a/a/a/e;)V

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_4
    new-instance v0, Lb/a/a/a/a/a/a;

    new-array v1, v7, [Lb/a/a/a/a/i;

    new-instance v2, Lb/a/a/a/a/a/i;

    invoke-direct {v2, p1}, Lb/a/a/a/a/a/i;-><init>(Lb/a/a/a/a/e;)V

    aput-object v2, v1, v5

    new-instance v2, Lb/a/a/a/a/a/o;

    invoke-direct {v2, p1}, Lb/a/a/a/a/a/o;-><init>(Lb/a/a/a/a/e;)V

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Lb/a/a/a/a/a/a;-><init>([Lb/a/a/a/a/i;)V

    goto :goto_2

    :cond_5
    const-string v1, "OS/2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6

    new-instance v0, Lb/a/a/a/a/a/k;

    invoke-direct {v0, p1}, Lb/a/a/a/a/a/k;-><init>(Lb/a/a/a/a/e;)V

    move-object v1, v0

    goto/16 :goto_1

    :cond_6
    const-string v1, "OS/400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_7

    const-string v1, "AS/400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_9

    :cond_7
    if-eqz p1, :cond_8

    const-string v0, "OS/400"

    invoke-virtual {p1}, Lb/a/a/a/a/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lb/a/a/a/a/a/l;

    invoke-direct {v0, p1}, Lb/a/a/a/a/a/l;-><init>(Lb/a/a/a/a/e;)V

    :goto_3
    move-object v1, v0

    goto/16 :goto_1

    :cond_8
    new-instance v0, Lb/a/a/a/a/a/a;

    new-array v1, v7, [Lb/a/a/a/a/i;

    new-instance v2, Lb/a/a/a/a/a/l;

    invoke-direct {v2, p1}, Lb/a/a/a/a/a/l;-><init>(Lb/a/a/a/a/e;)V

    aput-object v2, v1, v5

    new-instance v2, Lb/a/a/a/a/a/o;

    invoke-direct {v2, p1}, Lb/a/a/a/a/a/o;-><init>(Lb/a/a/a/a/e;)V

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Lb/a/a/a/a/a/a;-><init>([Lb/a/a/a/a/i;)V

    goto :goto_3

    :cond_9
    const-string v1, "MVS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_a

    new-instance v0, Lb/a/a/a/a/a/g;

    invoke-direct {v0}, Lb/a/a/a/a/a/g;-><init>()V

    move-object v1, v0

    goto/16 :goto_1

    :cond_a
    const-string v1, "NETWARE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_b

    new-instance v0, Lb/a/a/a/a/a/j;

    invoke-direct {v0, p1}, Lb/a/a/a/a/a/j;-><init>(Lb/a/a/a/a/e;)V

    move-object v1, v0

    goto/16 :goto_1

    :cond_b
    const-string v1, "MACOS PETER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_c

    new-instance v0, Lb/a/a/a/a/a/h;

    invoke-direct {v0, p1}, Lb/a/a/a/a/a/h;-><init>(Lb/a/a/a/a/e;)V

    move-object v1, v0

    goto/16 :goto_1

    :cond_c
    const-string v1, "TYPE: L8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    new-instance v0, Lb/a/a/a/a/a/o;

    invoke-direct {v0, p1}, Lb/a/a/a/a/a/o;-><init>(Lb/a/a/a/a/e;)V

    move-object v1, v0

    goto/16 :goto_1

    :cond_d
    new-instance v0, Lb/a/a/a/a/a/m;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown parser type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/a/a/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object v1, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Lb/a/a/a/a/e;)Lb/a/a/a/a/i;
    .locals 1

    invoke-virtual {p1}, Lb/a/a/a/a/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lb/a/a/a/a/a/c;->a(Ljava/lang/String;Lb/a/a/a/a/e;)Lb/a/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lb/a/a/a/a/i;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lb/a/a/a/a/a/m;

    const-string v1, "Parser key cannot be null"

    invoke-direct {v0, v1}, Lb/a/a/a/a/a/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lb/a/a/a/a/a/c;->a(Ljava/lang/String;Lb/a/a/a/a/e;)Lb/a/a/a/a/i;

    move-result-object v0

    return-object v0
.end method
