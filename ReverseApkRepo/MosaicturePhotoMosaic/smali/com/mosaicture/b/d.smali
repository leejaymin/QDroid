.class public final Lcom/mosaicture/b/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/mosaicture/c/g;


# direct methods
.method public constructor <init>(Lcom/mosaicture/c/g;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mosaicture/b/d;->a:Lcom/mosaicture/c/g;

    iget-object v0, p0, Lcom/mosaicture/b/d;->a:Lcom/mosaicture/c/g;

    invoke-virtual {v0}, Lcom/mosaicture/c/g;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/mosaicture/b/d;->a:Lcom/mosaicture/c/g;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/b/d;->a:Lcom/mosaicture/c/g;

    invoke-virtual {v0}, Lcom/mosaicture/c/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/b/d;->a:Lcom/mosaicture/c/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/b/d;->a:Lcom/mosaicture/c/g;

    invoke-virtual {v0}, Lcom/mosaicture/c/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/b/d;->a:Lcom/mosaicture/c/g;

    invoke-virtual {v0}, Lcom/mosaicture/c/g;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Lcom/mosaicture/c/c;Ljava/lang/String;Lcom/mosaicture/c/a;)V
    .locals 7

    new-instance v0, Lcom/mosaicture/b/b;

    iget-object v3, p0, Lcom/mosaicture/b/d;->a:Lcom/mosaicture/c/g;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mosaicture/b/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/mosaicture/c/g;Lcom/mosaicture/c/c;Ljava/lang/String;Lcom/mosaicture/c/a;)V

    iget-object v1, p0, Lcom/mosaicture/b/d;->a:Lcom/mosaicture/c/g;

    invoke-virtual {v1}, Lcom/mosaicture/c/g;->a()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/b/d;->a:Lcom/mosaicture/c/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/b/d;->a:Lcom/mosaicture/c/g;

    invoke-virtual {v0}, Lcom/mosaicture/c/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/b/d;->a:Lcom/mosaicture/c/g;

    invoke-virtual {v0}, Lcom/mosaicture/c/g;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/b/d;->a:Lcom/mosaicture/c/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/b/d;->a:Lcom/mosaicture/c/g;

    invoke-virtual {v0}, Lcom/mosaicture/c/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    return-void
.end method

.method public final c(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/b/d;->a:Lcom/mosaicture/c/g;

    invoke-virtual {v0}, Lcom/mosaicture/c/g;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
