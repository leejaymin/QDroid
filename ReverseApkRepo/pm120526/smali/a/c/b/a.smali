.class public abstract La/c/b/a;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/Class;

.field private static final b:La/c/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "twitter4j.loggerFactory"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/c/b/b;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    if-nez v0, :cond_0

    :try_start_1
    const-string v1, "org.slf4j.impl.StaticLoggerBinder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v1, "org.slf4j.Logger"

    const-string v2, "twitter4j.internal.logging.SLF4JLoggerFactory"

    invoke-static {v1, v2}, La/c/b/a;->b(Ljava/lang/String;Ljava/lang/String;)La/c/b/b;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v0

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    const-string v0, "org.apache.commons.logging.Log"

    const-string v1, "twitter4j.internal.logging.CommonsLoggingLoggerFactory"

    invoke-static {v0, v1}, La/c/b/a;->b(Ljava/lang/String;Ljava/lang/String;)La/c/b/b;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "org.apache.log4j.Logger"

    const-string v1, "twitter4j.internal.logging.Log4JLoggerFactory"

    invoke-static {v0, v1}, La/c/b/a;->b(Ljava/lang/String;Ljava/lang/String;)La/c/b/b;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, La/c/b/d;

    invoke-direct {v0}, La/c/b/d;-><init>()V

    :cond_3
    sput-object v0, La/c/b/a;->b:La/c/b/b;

    sget-object v1, La/c/b/a;->a:Ljava/lang/Class;

    if-nez v1, :cond_4

    const-string v1, "a.c.b.a"

    invoke-static {v1}, La/c/b/a;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, La/c/b/a;->a:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v0}, La/c/b/b;->a()La/c/b/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Will use "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " as logging factory."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, La/c/b/a;->b(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_4
    sget-object v1, La/c/b/a;->a:Ljava/lang/Class;

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()La/c/b/a;
    .locals 1

    sget-object v0, La/c/b/a;->b:La/c/b/b;

    invoke-virtual {v0}, La/c/b/b;->a()La/c/b/a;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)La/c/b/b;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/c/b/b;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract b()Z
.end method
