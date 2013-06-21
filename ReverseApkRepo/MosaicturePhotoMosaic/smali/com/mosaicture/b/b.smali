.class public final Lcom/mosaicture/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Ljava/lang/ref/WeakReference;

.field private e:Lcom/mosaicture/c/g;

.field private f:I

.field private g:Lcom/mosaicture/c/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/mosaicture/c/g;Lcom/mosaicture/c/c;Ljava/lang/String;Lcom/mosaicture/c/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mosaicture/b/b;->f:I

    iput-object p1, p0, Lcom/mosaicture/b/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/mosaicture/b/b;->c:[Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mosaicture/b/b;->d:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/mosaicture/b/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mosaicture/b/b;->e:Lcom/mosaicture/c/g;

    iput-object p6, p0, Lcom/mosaicture/b/b;->g:Lcom/mosaicture/c/a;

    return-void
.end method

.method private static b(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 39

    const/4 v4, 0x0

    :try_start_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "CD_BASE_IMAGE"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "DC_PATH"

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "NM_RED_1"

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "NM_RED_2"

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "NM_RED_3"

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "NM_RED_4"

    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "NM_RED_5"

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "NM_RED_6"

    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "NM_RED_7"

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "NM_RED_8"

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "NM_RED_9"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "NM_GREEN_1"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v16, "NM_GREEN_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    const-string v17, "NM_GREEN_3"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    const-string v18, "NM_GREEN_4"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    const-string v19, "NM_GREEN_5"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    const-string v20, "NM_GREEN_6"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    const-string v21, "NM_GREEN_7"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    const-string v22, "NM_GREEN_8"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    const-string v23, "NM_GREEN_9"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    const-string v24, "NM_BLUE_1"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    const-string v25, "NM_BLUE_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    const-string v26, "NM_BLUE_3"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    const-string v27, "NM_BLUE_4"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    const-string v28, "NM_BLUE_5"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    const-string v29, "NM_BLUE_6"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    const-string v30, "NM_BLUE_7"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    const-string v31, "NM_BLUE_8"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    const-string v32, "NM_BLUE_9"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    const-string v33, "ID_CHECKED"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    const-string v34, "NM_ANDROID_IMAGE_ID"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    :cond_0
    new-instance v35, Lcom/mosaicture/d/a;

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Lcom/mosaicture/d/a;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/mosaicture/d/a;->a:J

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->c:I

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->d:I

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->e:I

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->f:I

    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->g:I

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->h:I

    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->i:I

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->j:I

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->k:I

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->l:I

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->m:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->n:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->o:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->p:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->q:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->r:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->s:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->t:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->u:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->v:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->w:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->x:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->y:I

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->z:I

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->A:I

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->B:I

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->C:I

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/mosaicture/d/a;->D:I

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/mosaicture/d/a;->E:J

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v35

    if-nez v35, :cond_0

    :goto_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v3

    :catch_0
    move-exception v3

    move-object/from16 v38, v3

    move-object v3, v4

    move-object/from16 v4, v38

    :goto_2
    :try_start_2
    const-string v5, "Erro"

    const-string v6, "Error retrieving base image from database:"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    throw v3

    :catch_1
    move-exception v4

    goto :goto_2

    :cond_1
    move-object v3, v4

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mosaicture/b/b;->a:Ljava/lang/String;

    const-string v2, "TB_BASE_IMAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/mosaicture/b/b;->b(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final a()Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/b/b;->d:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final b()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/b/b;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/mosaicture/b/b;->f:I

    return v0
.end method

.method public final d()Lcom/mosaicture/c/a;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/b/b;->g:Lcom/mosaicture/c/a;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/mosaicture/c/g;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/b/b;->e:Lcom/mosaicture/c/g;

    return-object v0
.end method
