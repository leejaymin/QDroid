.class public Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;
.super Ljava/lang/Object;
.source "CleanupHelper.java"


# instance fields
.field private context:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;->context:Landroid/app/Activity;

    .line 25
    return-void
.end method


# virtual methods
.method public cleanup(Lcom/spritefish/fastburstcamera/activities/helper/CleanupProgressCallback;)V
    .locals 8
    .parameter "cb"

    .prologue
    .line 83
    new-instance v4, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;->context:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 84
    .local v4, dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    const-wide/16 v2, 0x0

    .line 85
    .local v2, completed:J
    invoke-virtual {v4}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getBursts()Ljava/util/List;

    move-result-object v1

    .line 86
    .local v1, bursts:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Burst;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 91
    return-void

    .line 86
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spritefish/fastburstcamera/db/dao/Burst;

    .line 87
    .local v0, burst:Lcom/spritefish/fastburstcamera/db/dao/Burst;
    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->getId()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;->cleanupBurst(J)Z

    .line 88
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 89
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    invoke-interface {p1, v2, v3, v6, v7}, Lcom/spritefish/fastburstcamera/activities/helper/CleanupProgressCallback;->onProgress(JJ)V

    goto :goto_0
.end method

.method public cleanupBurst(J)Z
    .locals 11
    .parameter "burstId"

    .prologue
    const/4 v6, 0x0

    .line 50
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v7, "mounted"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    .line 78
    :goto_0
    return v5

    .line 53
    :cond_0
    new-instance v0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;->context:Landroid/app/Activity;

    invoke-direct {v0, v5}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    const/4 v1, 0x0

    .line 55
    .local v1, deleted:Z
    invoke-virtual {v0, p1, p2}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicturesInBurst(J)Ljava/util/List;

    move-result-object v4

    .line 56
    .local v4, pictures:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Picture;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 68
    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {v0, p1, p2}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicturesInBurst(J)Ljava/util/List;

    move-result-object v4

    .line 72
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 74
    invoke-virtual {v0, p1, p2}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->deleteBurst(J)Z

    .line 75
    const-string v5, "insta"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "deleting burst#"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v5, 0x1

    goto :goto_0

    .line 56
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    .line 57
    .local v3, picture:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 60
    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->deletePicture(J)Z

    .line 61
    const-string v5, "insta"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "deleting picture#"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v1, 0x1

    .line 64
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;->context:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->checkIfDeleted(Ljava/lang/String;)V

    goto :goto_1

    .end local v2           #f:Ljava/io/File;
    .end local v3           #picture:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :cond_4
    move v5, v6

    .line 78
    goto/16 :goto_0
.end method

.method public removeBurst(J)V
    .locals 7
    .parameter "id"

    .prologue
    .line 113
    new-instance v1, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;->context:Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 115
    .local v1, dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    invoke-virtual {v1, p1, p2}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getBurst(J)Lcom/spritefish/fastburstcamera/db/dao/Burst;

    move-result-object v0

    .line 116
    .local v0, b:Lcom/spritefish/fastburstcamera/db/dao/Burst;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v1, p1, p2}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicturesInBurst(J)Ljava/util/List;

    move-result-object v2

    .line 119
    .local v2, pics:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Picture;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 123
    .end local v2           #pics:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Picture;>;"
    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->deleteBurst(J)Z

    .line 125
    return-void

    .line 119
    .restart local v2       #pics:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Picture;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    .line 120
    .local v3, picture:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;->removePicture(J)V

    goto :goto_0
.end method

.method public removeImageInGallery(Ljava/lang/String;)V
    .locals 10
    .parameter "fullpath"

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 29
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v9

    const-string v0, "_id"

    aput-object v0, v2, v4

    .line 31
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 32
    const-string v3, "_data like ? "

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    .line 31
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 33
    .local v7, mImageCursor:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 45
    return-void

    .line 37
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id like ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v6

    .line 41
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "insta"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "failed to delete "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removePicture(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 95
    new-instance v0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;->context:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    invoke-virtual {v0, p1, p2}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicture(J)Lcom/spritefish/fastburstcamera/db/dao/Picture;

    move-result-object v2

    .line 97
    .local v2, p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;->removeImageInGallery(Ljava/lang/String;)V

    .line 100
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 105
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->deletePicture(J)Z

    .line 109
    .end local v1           #f:Ljava/io/File;
    :cond_1
    return-void
.end method
