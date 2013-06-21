.class public final Lcom/mosaicture/b/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/mosaicture/b/d;

.field private b:Landroid/database/sqlite/SQLiteStatement;

.field private c:Landroid/database/sqlite/SQLiteStatement;

.field private d:Landroid/database/sqlite/SQLiteStatement;

.field private e:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mosaicture/b/c;->a()Lcom/mosaicture/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mosaicture/b/c;->b()Lcom/mosaicture/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/b/a;->a:Lcom/mosaicture/b/d;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 5

    iget-object v0, p0, Lcom/mosaicture/b/a;->a:Lcom/mosaicture/b/d;

    new-instance v1, Lcom/mosaicture/g/x;

    invoke-direct {v1}, Lcom/mosaicture/g/x;-><init>()V

    new-instance v2, Lcom/mosaicture/g/v;

    const-string v3, "ID_CHECKED"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mosaicture/g/v;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/mosaicture/g/x;->a(Lcom/mosaicture/g/u;)Lcom/mosaicture/g/x;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT COUNT(*) FROM TB_BASE_IMAGE"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mosaicture/g/x;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mosaicture/b/d;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/b/a;->a:Lcom/mosaicture/b/d;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-wide v1
.end method

.method public final declared-synchronized a(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mosaicture/b/a;->a:Lcom/mosaicture/b/d;

    const-string v1, "DELETE FROM TB_BASE_IMAGE WHERE NM_ANDROID_IMAGE_ID= ?"

    invoke-virtual {v0, v1}, Lcom/mosaicture/b/d;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/b/a;->c:Landroid/database/sqlite/SQLiteStatement;

    iget-object v0, p0, Lcom/mosaicture/b/a;->c:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->a:Lcom/mosaicture/b/d;

    iget-object v1, p0, Lcom/mosaicture/b/a;->c:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v1}, Lcom/mosaicture/b/d;->a(Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "DB_EXCEPTION"

    const-string v2, "Error deleting base image from database:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/mosaicture/d/a;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mosaicture/b/a;->a:Lcom/mosaicture/b/d;

    const-string v1, "INSERT INTO TB_BASE_IMAGE(DC_PATH,ID_CHECKED,NM_RED_1,NM_RED_2,NM_RED_3,NM_RED_4,NM_RED_5,NM_RED_6,NM_RED_7,NM_RED_8,NM_RED_9,NM_GREEN_1,NM_GREEN_2,NM_GREEN_3,NM_GREEN_4,NM_GREEN_5,NM_GREEN_6,NM_GREEN_7,NM_GREEN_8,NM_GREEN_9,NM_BLUE_1,NM_BLUE_2,NM_BLUE_3,NM_BLUE_4,NM_BLUE_5,NM_BLUE_6,NM_BLUE_7,NM_BLUE_8,NM_BLUE_9,NM_ANDROID_IMAGE_ID)VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v0, v1}, Lcom/mosaicture/b/d;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/mosaicture/d/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    iget v2, p1, Lcom/mosaicture/d/a;->c:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    iget v2, p1, Lcom/mosaicture/d/a;->d:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    iget v2, p1, Lcom/mosaicture/d/a;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    iget v2, p1, Lcom/mosaicture/d/a;->f:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x6

    iget v2, p1, Lcom/mosaicture/d/a;->g:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x7

    iget v2, p1, Lcom/mosaicture/d/a;->h:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x8

    iget v2, p1, Lcom/mosaicture/d/a;->i:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x9

    iget v2, p1, Lcom/mosaicture/d/a;->j:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xa

    iget v2, p1, Lcom/mosaicture/d/a;->k:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xb

    iget v2, p1, Lcom/mosaicture/d/a;->l:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xc

    iget v2, p1, Lcom/mosaicture/d/a;->m:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xd

    iget v2, p1, Lcom/mosaicture/d/a;->n:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xe

    iget v2, p1, Lcom/mosaicture/d/a;->o:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xf

    iget v2, p1, Lcom/mosaicture/d/a;->p:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x10

    iget v2, p1, Lcom/mosaicture/d/a;->q:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x11

    iget v2, p1, Lcom/mosaicture/d/a;->r:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x12

    iget v2, p1, Lcom/mosaicture/d/a;->s:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x13

    iget v2, p1, Lcom/mosaicture/d/a;->t:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x14

    iget v2, p1, Lcom/mosaicture/d/a;->u:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x15

    iget v2, p1, Lcom/mosaicture/d/a;->v:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x16

    iget v2, p1, Lcom/mosaicture/d/a;->w:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x17

    iget v2, p1, Lcom/mosaicture/d/a;->x:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x18

    iget v2, p1, Lcom/mosaicture/d/a;->y:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x19

    iget v2, p1, Lcom/mosaicture/d/a;->z:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x1a

    iget v2, p1, Lcom/mosaicture/d/a;->A:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x1b

    iget v2, p1, Lcom/mosaicture/d/a;->B:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x1c

    iget v2, p1, Lcom/mosaicture/d/a;->C:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x1d

    iget v2, p1, Lcom/mosaicture/d/a;->D:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x1e

    iget-wide v2, p1, Lcom/mosaicture/d/a;->E:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->a:Lcom/mosaicture/b/d;

    iget-object v1, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v1}, Lcom/mosaicture/b/d;->c(Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "DB_EXCEPTION"

    const-string v2, "Error saving base image on database:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/mosaicture/d/a;Lcom/mosaicture/c/c;Lcom/mosaicture/c/a;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/mosaicture/g/x;

    invoke-direct {v1}, Lcom/mosaicture/g/x;-><init>()V

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/mosaicture/d/a;->c:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/mosaicture/g/v;

    const-string v2, "ID_CHECKED"

    iget v3, p1, Lcom/mosaicture/d/a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mosaicture/g/v;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/mosaicture/g/x;->a(Lcom/mosaicture/g/u;)Lcom/mosaicture/g/x;

    :cond_0
    iget-object v0, p0, Lcom/mosaicture/b/a;->a:Lcom/mosaicture/b/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM TB_BASE_IMAGE"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mosaicture/g/x;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "TB_BASE_IMAGE"

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mosaicture/b/d;->a(Ljava/lang/String;[Ljava/lang/String;Lcom/mosaicture/c/c;Ljava/lang/String;Lcom/mosaicture/c/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/ArrayList;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mosaicture/b/a;->a:Lcom/mosaicture/b/d;

    invoke-virtual {v0}, Lcom/mosaicture/b/d;->a()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/b/a;->a:Lcom/mosaicture/b/d;

    invoke-virtual {v0}, Lcom/mosaicture/b/d;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/mosaicture/b/a;->a:Lcom/mosaicture/b/d;

    invoke-virtual {v0}, Lcom/mosaicture/b/d;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/a;

    iget-object v2, p0, Lcom/mosaicture/b/a;->a:Lcom/mosaicture/b/d;

    const-string v3, "INSERT INTO TB_BASE_IMAGE(DC_PATH,ID_CHECKED,NM_RED_1,NM_RED_2,NM_RED_3,NM_RED_4,NM_RED_5,NM_RED_6,NM_RED_7,NM_RED_8,NM_RED_9,NM_GREEN_1,NM_GREEN_2,NM_GREEN_3,NM_GREEN_4,NM_GREEN_5,NM_GREEN_6,NM_GREEN_7,NM_GREEN_8,NM_GREEN_9,NM_BLUE_1,NM_BLUE_2,NM_BLUE_3,NM_BLUE_4,NM_BLUE_5,NM_BLUE_6,NM_BLUE_7,NM_BLUE_8,NM_BLUE_9,NM_ANDROID_IMAGE_ID)VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v2, v3}, Lcom/mosaicture/b/d;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/mosaicture/d/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x2

    iget v4, v0, Lcom/mosaicture/d/a;->c:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x3

    iget v4, v0, Lcom/mosaicture/d/a;->d:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x4

    iget v4, v0, Lcom/mosaicture/d/a;->e:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x5

    iget v4, v0, Lcom/mosaicture/d/a;->f:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x6

    iget v4, v0, Lcom/mosaicture/d/a;->g:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x7

    iget v4, v0, Lcom/mosaicture/d/a;->h:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0x8

    iget v4, v0, Lcom/mosaicture/d/a;->i:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0x9

    iget v4, v0, Lcom/mosaicture/d/a;->j:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0xa

    iget v4, v0, Lcom/mosaicture/d/a;->k:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0xb

    iget v4, v0, Lcom/mosaicture/d/a;->l:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0xc

    iget v4, v0, Lcom/mosaicture/d/a;->m:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0xd

    iget v4, v0, Lcom/mosaicture/d/a;->n:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0xe

    iget v4, v0, Lcom/mosaicture/d/a;->o:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0xf

    iget v4, v0, Lcom/mosaicture/d/a;->p:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0x10

    iget v4, v0, Lcom/mosaicture/d/a;->q:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0x11

    iget v4, v0, Lcom/mosaicture/d/a;->r:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0x12

    iget v4, v0, Lcom/mosaicture/d/a;->s:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0x13

    iget v4, v0, Lcom/mosaicture/d/a;->t:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0x14

    iget v4, v0, Lcom/mosaicture/d/a;->u:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0x15

    iget v4, v0, Lcom/mosaicture/d/a;->v:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0x16

    iget v4, v0, Lcom/mosaicture/d/a;->w:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0x17

    iget v4, v0, Lcom/mosaicture/d/a;->x:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0x18

    iget v4, v0, Lcom/mosaicture/d/a;->y:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0x19

    iget v4, v0, Lcom/mosaicture/d/a;->z:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0x1a

    iget v4, v0, Lcom/mosaicture/d/a;->A:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0x1b

    iget v4, v0, Lcom/mosaicture/d/a;->B:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0x1c

    iget v4, v0, Lcom/mosaicture/d/a;->C:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0x1d

    iget v4, v0, Lcom/mosaicture/d/a;->D:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v2, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0x1e

    iget-wide v4, v0, Lcom/mosaicture/d/a;->E:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, p0, Lcom/mosaicture/b/a;->a:Lcom/mosaicture/b/d;

    iget-object v0, p0, Lcom/mosaicture/b/a;->b:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "DB_EXCEPTION"

    const-string v2, "Error saving base image on database:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/mosaicture/b/a;->a:Lcom/mosaicture/b/d;

    invoke-virtual {v0}, Lcom/mosaicture/b/d;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/mosaicture/b/a;->a:Lcom/mosaicture/b/d;

    invoke-virtual {v1}, Lcom/mosaicture/b/d;->c()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mosaicture/b/a;->a:Lcom/mosaicture/b/d;

    new-instance v1, Lcom/mosaicture/g/x;

    invoke-direct {v1}, Lcom/mosaicture/g/x;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Lcom/mosaicture/g/w;

    const-string v3, "CD_BASE_IMAGE"

    invoke-direct {v2, v3, p1}, Lcom/mosaicture/g/w;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/mosaicture/g/x;->a(Lcom/mosaicture/g/u;)Lcom/mosaicture/g/x;

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DELETE FROM TB_BASE_IMAGE"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mosaicture/g/x;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mosaicture/b/d;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/b/a;->d:Landroid/database/sqlite/SQLiteStatement;

    iget-object v0, p0, Lcom/mosaicture/b/a;->a:Lcom/mosaicture/b/d;

    iget-object v1, p0, Lcom/mosaicture/b/a;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v1}, Lcom/mosaicture/b/d;->a(Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "DB_EXCEPTION"

    const-string v2, "Error deleting all base images from database:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(ZLjava/util/List;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mosaicture/b/a;->a:Lcom/mosaicture/b/d;

    new-instance v2, Lcom/mosaicture/g/x;

    invoke-direct {v2}, Lcom/mosaicture/g/x;-><init>()V

    new-instance v0, Lcom/mosaicture/g/w;

    const-string v3, "NM_ANDROID_IMAGE_ID"

    invoke-direct {v0, v3, p2}, Lcom/mosaicture/g/w;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v0}, Lcom/mosaicture/g/x;->a(Lcom/mosaicture/g/u;)Lcom/mosaicture/g/x;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "UPDATE TB_BASE_IMAGE SET ID_CHECKED = "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/mosaicture/g/x;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mosaicture/b/d;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/b/a;->e:Landroid/database/sqlite/SQLiteStatement;

    iget-object v0, p0, Lcom/mosaicture/b/a;->a:Lcom/mosaicture/b/d;

    iget-object v1, p0, Lcom/mosaicture/b/a;->e:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v1}, Lcom/mosaicture/b/d;->b(Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "DB_EXCEPTION"

    const-string v2, "Error updating checked status in database:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
