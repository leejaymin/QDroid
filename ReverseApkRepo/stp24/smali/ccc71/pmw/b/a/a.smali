.class public Lccc71/pmw/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static b:Lccc71/pmw/b/a/b;

.field protected static c:Landroid/database/sqlite/SQLiteDatabase;

.field private static d:Ljava/lang/Integer;


# instance fields
.field protected final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lccc71/pmw/b/a/a;->d:Ljava/lang/Integer;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/b/a/a;->a:Landroid/content/Context;

    .line 21
    sget-object v1, Lccc71/pmw/b/a/a;->d:Ljava/lang/Integer;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lccc71/pmw/b/a/a;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 25
    const-string v0, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Opening database from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object v0, Lccc71/pmw/b/a/a;->b:Lccc71/pmw/b/a/b;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lccc71/pmw/b/a/b;

    invoke-direct {v0, p1}, Lccc71/pmw/b/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lccc71/pmw/b/a/a;->b:Lccc71/pmw/b/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :try_start_1
    sget-object v0, Lccc71/pmw/b/a/a;->b:Lccc71/pmw/b/a/b;

    invoke-virtual {v0}, Lccc71/pmw/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lccc71/pmw/b/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lccc71/pmw/b/a/a;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lccc71/pmw/b/a/a;->d:Ljava/lang/Integer;

    .line 21
    monitor-exit v1

    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 36
    const-string v2, "process_monitor_widget"

    const-string v3, "Can\'t open database"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lccc71/pmw/b/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method


# virtual methods
.method public finalize()V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 52
    sget-object v1, Lccc71/pmw/b/a/a;->d:Ljava/lang/Integer;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lccc71/pmw/b/a/a;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lccc71/pmw/b/a/a;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 56
    const-string v0, "process_monitor_widget"

    const-string v2, "Closing database"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v0, Lccc71/pmw/b/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lccc71/pmw/b/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/b/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    :cond_0
    sget-object v0, Lccc71/pmw/b/a/a;->b:Lccc71/pmw/b/a/b;

    if-eqz v0, :cond_1

    .line 65
    sget-object v0, Lccc71/pmw/b/a/a;->b:Lccc71/pmw/b/a/b;

    invoke-virtual {v0}, Lccc71/pmw/b/a/b;->close()V

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/b/a/a;->b:Lccc71/pmw/b/a/b;

    .line 52
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 72
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
