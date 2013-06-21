.class final Lcom/mosaicture/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/mosaicture/c/g;


# direct methods
.method constructor <init>(Lcom/mosaicture/c/g;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/c/h;->a:Lcom/mosaicture/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/mosaicture/c/b;->c:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-lt v2, v4, :cond_1

    sget-object v2, Lcom/mosaicture/c/b;->d:[Ljava/lang/String;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    aget-object v5, v3, v2

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/mosaicture/c/b;->a:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_3
    if-lt v2, v4, :cond_2

    sget-object v2, Lcom/mosaicture/c/b;->b:[Ljava/lang/String;

    array-length v3, v2

    :goto_4
    if-lt v1, v3, :cond_3

    iget-object v1, p0, Lcom/mosaicture/c/h;->a:Lcom/mosaicture/c/g;

    invoke-virtual {v1, v0}, Lcom/mosaicture/c/g;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DATABASE ERROR"

    const-string v2, "Error  DatabaseHandlerCallback  on database:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    aget-object v5, v3, v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DROP TABLE IF EXISTS "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    aget-object v4, v2, v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DROP INDEX IF EXISTS "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mosaicture/c/g;

    invoke-virtual {v0}, Lcom/mosaicture/c/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mosaicture/b/b;

    invoke-virtual {v0}, Lcom/mosaicture/b/b;->f()Lcom/mosaicture/c/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mosaicture/c/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mosaicture/b/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mosaicture/b/b;->b()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/mosaicture/c/j;

    invoke-virtual {v0, v1}, Lcom/mosaicture/b/b;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/mosaicture/c/i;->a:Lcom/mosaicture/c/i;

    invoke-virtual {v0}, Lcom/mosaicture/b/b;->c()I

    move-result v4

    invoke-virtual {v0}, Lcom/mosaicture/b/b;->d()Lcom/mosaicture/c/a;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/mosaicture/c/j;-><init>(Ljava/lang/Object;Lcom/mosaicture/c/i;ILcom/mosaicture/c/a;)V

    invoke-virtual {v0}, Lcom/mosaicture/b/b;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/c/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Lcom/mosaicture/c/c;->a(Lcom/mosaicture/c/j;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mosaicture/b/b;

    new-instance v1, Lcom/mosaicture/c/j;

    const/4 v2, 0x0

    sget-object v3, Lcom/mosaicture/c/i;->a:Lcom/mosaicture/c/i;

    invoke-virtual {v0}, Lcom/mosaicture/b/b;->c()I

    move-result v4

    invoke-virtual {v0}, Lcom/mosaicture/b/b;->d()Lcom/mosaicture/c/a;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mosaicture/c/j;-><init>(Ljava/lang/Object;Lcom/mosaicture/c/i;ILcom/mosaicture/c/a;)V

    invoke-virtual {v0}, Lcom/mosaicture/b/b;->a()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/mosaicture/b/b;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/c/c;

    invoke-interface {v0, v1}, Lcom/mosaicture/c/c;->a(Lcom/mosaicture/c/j;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
