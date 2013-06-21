.class public Lcom/ui/LapseIt/providers/ProjectsContentProvider;
.super Landroid/content/ContentProvider;
.source "ProjectsContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;,
        Lcom/ui/LapseIt/providers/ProjectsContentProvider$FRAME_COLUMNS;,
        Lcom/ui/LapseIt/providers/ProjectsContentProvider$PROJECT_COLUMNS;,
        Lcom/ui/LapseIt/providers/ProjectsContentProvider$RENDERED_COLUMNS;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.ui.lapseit.providers"

.field public static CONTENT_PATH:Ljava/lang/String; = null

.field private static final CONTENT_TYPE_DIR:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.lapseit.projects"

.field private static final CONTENT_TYPE_ITEM:Ljava/lang/String; = "vnd.android.cursor.item/vnd.lapseit.projects"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DATABASE_VERSION:I = 0x4

.field private static final PROJECT:I = 0x1

.field private static final PROJECTS_TABLEFILE:Ljava/lang/String; = "lapseit_projects.db"

.field private static final PROJECTS_TABLENAME:Ljava/lang/String; = "projects"

.field private static final PROJECT_ID:I = 0x2

.field public static imageId:I

.field private static nullColumn:Ljava/lang/String;

.field private static projectsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field dbHelper:Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;

.field private lastUri:Landroid/net/Uri;

.field wipeData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    const-string v0, "content://com.ui.lapseit.providers/projects"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/LapseIt/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->CONTENT_PATH:Ljava/lang/String;

    .line 52
    const-string v0, ""

    sput-object v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->nullColumn:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->projectsProjectionMap:Ljava/util/HashMap;

    .line 61
    sget-object v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->projectsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->projectsProjectionMap:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->projectsProjectionMap:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->projectsProjectionMap:Ljava/util/HashMap;

    const-string v1, "directory"

    const-string v2, "directory"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->projectsProjectionMap:Ljava/util/HashMap;

    const-string v1, "resolution"

    const-string v2, "resolution"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->projectsProjectionMap:Ljava/util/HashMap;

    const-string v1, "timestamp"

    const-string v2, "timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->projectsProjectionMap:Ljava/util/HashMap;

    const-string v1, "framesinfo"

    const-string v2, "framesinfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->projectsProjectionMap:Ljava/util/HashMap;

    const-string v1, "renderedinfo"

    const-string v2, "renderedinfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 71
    sget-object v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.ui.lapseit.providers"

    const-string v2, "projects"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    sget-object v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.ui.lapseit.providers"

    const-string v2, "projects/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->wipeData:Z

    .line 35
    return-void
.end method

.method static synthetic access$0()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->projectsProjectionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->nullColumn:Ljava/lang/String;

    return-object v0
.end method

.method public static deleteRecursive(Ljava/io/File;)V
    .locals 7
    .parameter "dir"

    .prologue
    .line 530
    const-string v4, "trace"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Deleting directory "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 533
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, children:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-lt v2, v4, :cond_1

    .line 553
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 555
    .end local v1           #children:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_0
    return-void

    .line 536
    .restart local v1       #children:[Ljava/lang/String;
    .restart local v2       #i:I
    :cond_1
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 537
    .local v3, temp:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 539
    const-string v4, "trace"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Recursive call"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-static {v3}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->deleteRecursive(Ljava/io/File;)V

    .line 534
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 544
    :cond_3
    const-string v4, "trace"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Deleting file"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 546
    .local v0, b:Z
    if-nez v0, :cond_2

    .line 548
    const-string v4, "trace"

    const-string v5, "Fail to delete folders"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static putRenderedVideo(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 23
    .parameter "context"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 397
    const-string v4, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 398
    .local v15, renderedId:J
    const-string v4, "filename"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 399
    .local v11, filename:Ljava/lang/String;
    const-string v4, "filepath"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 400
    .local v12, filepath:Ljava/lang/String;
    const-string v4, "timestamp"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 401
    .local v21, timestamp:J
    const-string v4, "framerate"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 402
    .local v13, framerate:I
    const-string v4, "quality"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 403
    .local v14, quality:I
    const-string v4, "thumb"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 405
    .local v20, thumb:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "renderedinfo"

    aput-object v6, v5, v4

    .line 407
    .local v5, projection:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 409
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 410
    .local v9, cur:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 413
    :try_start_0
    new-instance v17, Lorg/json/JSONArray;

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 415
    .local v17, renderedInfo:Lorg/json/JSONArray;
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    .line 416
    .local v18, renderedObj:Lorg/json/JSONObject;
    const-string v4, "_id"

    move-object/from16 v0, v18

    move-wide v1, v15

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 417
    const-string v4, "filename"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    const-string v4, "filepath"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    const-string v4, "timestamp"

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 420
    const-string v4, "framerate"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 421
    const-string v4, "quality"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 422
    const-string v4, "thumb"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 425
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 426
    .local v19, renderedValues:Landroid/content/ContentValues;
    const-string v4, "renderedinfo"

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .end local v17           #renderedInfo:Lorg/json/JSONArray;
    .end local v18           #renderedObj:Lorg/json/JSONObject;
    .end local v19           #renderedValues:Landroid/content/ContentValues;
    :goto_0
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 435
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 437
    const-string v4, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "File wrote at "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v4, 0x1

    return v4

    .line 429
    :catch_0
    move-exception v10

    .line 430
    .local v10, e:Lorg/json/JSONException;
    const-string v4, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Project content column is not a valid JSON: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 201
    iget-object v1, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->dbHelper:Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 203
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "directory"

    aput-object v3, v2, v1

    .line 207
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 238
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown URI "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :pswitch_0
    const-string v1, "projects"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 210
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0, v8}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->populateDeleteListOnCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v10

    .line 212
    .local v10, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    const-string v1, "projects"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 214
    .local v9, count:I
    invoke-virtual {p0}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 216
    if-eqz v10, :cond_0

    .line 217
    invoke-virtual {p0, v10}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->deleteDirectoriesOnList(Ljava/util/ArrayList;)V

    .line 241
    :cond_0
    :goto_0
    return v9

    .line 223
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #count:I
    .end local v10           #deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .line 225
    .local v11, segment:Ljava/lang/String;
    const-string v1, "projects"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " AND ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x29

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 226
    .restart local v8       #c:Landroid/database/Cursor;
    invoke-virtual {p0, v8}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->populateDeleteListOnCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v10

    .line 228
    .restart local v10       #deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    const-string v3, "projects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, " AND ("

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x29

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 230
    .restart local v9       #count:I
    invoke-virtual {p0}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 232
    if-eqz v10, :cond_0

    .line 233
    invoke-virtual {p0, v10}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->deleteDirectoriesOnList(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 225
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #count:I
    .end local v10           #deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_1
    const-string v3, ""

    goto :goto_1

    .line 228
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v10       #deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_2
    const-string v1, ""

    goto :goto_2

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected deleteDirectoriesOnList(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, listToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ui/LapseIt/providers/ProjectsContentProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/ui/LapseIt/providers/ProjectsContentProvider$1;-><init>(Lcom/ui/LapseIt/providers/ProjectsContentProvider;Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 253
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 254
    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 281
    sget-object v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.lapseit.projects"

    .line 286
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.lapseit.projects"

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 140
    sget-object v5, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 146
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown URI "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 150
    :pswitch_0
    if-eqz p2, :cond_0

    .line 151
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 156
    .local v4, values:Landroid/content/ContentValues;
    :goto_0
    iget-object v5, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->dbHelper:Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 157
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "projects"

    sget-object v6, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->nullColumn:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 158
    .local v2, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_1

    .line 159
    sget-object v5, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 160
    .local v1, projectUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 162
    return-object v1

    .line 153
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #projectUri:Landroid/net/Uri;
    .end local v2           #rowId:J
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .restart local v4       #values:Landroid/content/ContentValues;
    goto :goto_0

    .line 165
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #rowId:J
    :cond_1
    new-instance v5, Landroid/database/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to insert row into "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 6

    .prologue
    .line 104
    new-instance v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "lapseit_projects.db"

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;-><init>(Lcom/ui/LapseIt/providers/ProjectsContentProvider;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->dbHelper:Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 20
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "directory"

    invoke-static {v3, v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->CONTENT_PATH:Ljava/lang/String;

    .line 302
    new-instance v11, Ljava/io/File;

    sget-object v3, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->CONTENT_PATH:Ljava/lang/String;

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v11, contentPathFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 305
    new-instance v9, Ljava/io/File;

    sget-object v3, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->CONTENT_PATH:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .local v9, contentDir:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->lastUri:Landroid/net/Uri;

    if-nez v3, :cond_6

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 307
    invoke-static {v9}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->deleteRecursive(Ljava/io/File;)V

    .line 308
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->lastUri:Landroid/net/Uri;

    .line 314
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 316
    new-instance v18, Ljava/io/File;

    const-string v3, ".nomedia"

    move-object/from16 v0, v18

    invoke-direct {v0, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 317
    .local v18, noMediaFile:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->createNewFile()Z

    .line 319
    const/4 v3, 0x0

    sput v3, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->imageId:I

    .line 321
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 322
    .local v19, values:Landroid/content/ContentValues;
    const-string v3, "directory"

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v18           #noMediaFile:Ljava/io/File;
    .end local v19           #values:Landroid/content/ContentValues;
    :goto_1
    const-string v3, "%08d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget v7, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->imageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 330
    .local v14, format:Ljava/lang/String;
    sget v3, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->imageId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->imageId:I

    .line 332
    :goto_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "imageSequence"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".jpg"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v9, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    .line 337
    new-instance v10, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "imageSequence"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 339
    .local v10, contentFile:Ljava/io/File;
    const/16 v17, 0x0

    .line 341
    .local v17, imode:I
    const-string v3, "w"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    const/high16 v3, 0x2000

    or-int v17, v17, v3

    .line 343
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 345
    :try_start_1
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 352
    :cond_1
    :goto_3
    const-string v3, "r"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v3, 0x1000

    or-int v17, v17, v3

    .line 353
    :cond_2
    const-string v3, "+"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v3, 0x200

    or-int v17, v17, v3

    .line 355
    :cond_3
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "framesinfo"

    aput-object v4, v5, v3

    .line 357
    .local v5, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 359
    .local v12, cur:Landroid/database/Cursor;
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 360
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 363
    :try_start_2
    new-instance v16, Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 365
    .local v16, framesInfo:Lorg/json/JSONArray;
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 366
    .local v15, frameObj:Lorg/json/JSONObject;
    const-string v3, "filename"

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string v3, "filepath"

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string v3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v15, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 370
    sget-object v3, Lcom/ui/LapseIt/capture/CaptureLocation;->lastKnowLocation:Landroid/location/Location;

    if-eqz v3, :cond_4

    .line 371
    const-string v3, "lat"

    sget-object v4, Lcom/ui/LapseIt/capture/CaptureLocation;->lastKnowLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v15, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 372
    const-string v3, "long"

    sget-object v4, Lcom/ui/LapseIt/capture/CaptureLocation;->lastKnowLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v15, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 375
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 376
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 377
    .restart local v19       #values:Landroid/content/ContentValues;
    const-string v3, "framesinfo"

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 385
    .end local v15           #frameObj:Lorg/json/JSONObject;
    .end local v16           #framesInfo:Lorg/json/JSONArray;
    .end local v19           #values:Landroid/content/ContentValues;
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 387
    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 389
    move/from16 v0, v17

    invoke-static {v10, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    return-object v3

    .line 309
    .end local v5           #projection:[Ljava/lang/String;
    .end local v10           #contentFile:Ljava/io/File;
    .end local v12           #cur:Landroid/database/Cursor;
    .end local v14           #format:Ljava/lang/String;
    .end local v17           #imode:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->lastUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->lastUri:Landroid/net/Uri;

    move-object/from16 v0, p1

    if-eq v3, v0, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    invoke-static {v9}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->deleteRecursive(Ljava/io/File;)V

    .line 311
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->lastUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 325
    :catch_0
    move-exception v13

    .line 326
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 333
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v14       #format:Ljava/lang/String;
    :cond_7
    const-string v3, "%08d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget v7, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->imageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 334
    sget v3, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->imageId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->imageId:I

    goto/16 :goto_2

    .line 346
    .restart local v10       #contentFile:Ljava/io/File;
    .restart local v17       #imode:I
    :catch_1
    move-exception v13

    .line 347
    .local v13, e:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 380
    .end local v13           #e:Ljava/io/IOException;
    .restart local v5       #projection:[Ljava/lang/String;
    .restart local v12       #cur:Landroid/database/Cursor;
    :catch_2
    move-exception v13

    .line 381
    .local v13, e:Lorg/json/JSONException;
    const-string v3, "trace"

    const-string v4, "Project content column is not a valid JSON"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 391
    .end local v5           #projection:[Ljava/lang/String;
    .end local v9           #contentDir:Ljava/io/File;
    .end local v10           #contentFile:Ljava/io/File;
    .end local v12           #cur:Landroid/database/Cursor;
    .end local v13           #e:Lorg/json/JSONException;
    .end local v14           #format:Ljava/lang/String;
    .end local v17           #imode:I
    :cond_8
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "External media not mounted"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected populateDeleteListOnCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 4
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v2, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    if-eqz p1, :cond_0

    .line 262
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 263
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_0
    return-object v2

    .line 264
    :cond_1
    const-string v3, "directory"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, currentDirectory:Ljava/lang/String;
    if-eqz v0, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, deleteDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 267
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v1           #deleteDir:Ljava/io/File;
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "where"
    .parameter "whereArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 111
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 112
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 126
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown URI "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :pswitch_0
    const-string v2, "projects"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 115
    sget-object v2, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->projectsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 129
    :goto_0
    iget-object v2, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->dbHelper:Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 131
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 132
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 134
    return-object v8

    .line 119
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 120
    .local v9, segment:Ljava/lang/String;
    const-string v2, "projects"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 121
    sget-object v2, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->projectsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " AND ("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v2, ""

    goto :goto_1

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v7, 0x0

    .line 173
    iget-object v3, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->dbHelper:Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 175
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 187
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown URI "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 177
    :pswitch_0
    const-string v3, "projects"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 190
    .local v0, count:I
    :goto_0
    invoke-virtual {p0}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 192
    return v0

    .line 181
    .end local v0           #count:I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, segment:Ljava/lang/String;
    const-string v4, "projects"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "_id = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " AND ("

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x29

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, p2, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 184
    .restart local v0       #count:I
    goto :goto_0

    .line 183
    .end local v0           #count:I
    :cond_0
    const-string v3, ""

    goto :goto_1

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
