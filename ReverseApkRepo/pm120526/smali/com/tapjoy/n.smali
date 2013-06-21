.class public final Lcom/tapjoy/n;
.super Landroid/os/AsyncTask;


# instance fields
.field public a:Landroid/widget/ProgressBar;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/Button;

.field public d:Landroid/widget/ImageView;

.field public e:Z

.field f:Z

.field public g:I

.field public h:I

.field final synthetic i:Lcom/tapjoy/h;

.field private j:Lcom/tapjoy/cc;


# direct methods
.method public constructor <init>(Lcom/tapjoy/h;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/tapjoy/n;->i:Lcom/tapjoy/h;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/n;->j:Lcom/tapjoy/cc;

    iput-boolean v1, p0, Lcom/tapjoy/n;->e:Z

    iput-boolean v1, p0, Lcom/tapjoy/n;->f:Z

    iput v1, p0, Lcom/tapjoy/n;->h:I

    iput-boolean v1, p0, Lcom/tapjoy/n;->f:Z

    iput v1, p0, Lcom/tapjoy/n;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/h;B)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/tapjoy/n;->i:Lcom/tapjoy/h;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/n;->j:Lcom/tapjoy/cc;

    iput-boolean v1, p0, Lcom/tapjoy/n;->e:Z

    iput-boolean v1, p0, Lcom/tapjoy/n;->f:Z

    iput v1, p0, Lcom/tapjoy/n;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/n;->f:Z

    iput v1, p0, Lcom/tapjoy/n;->g:I

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/n;)Lcom/tapjoy/cc;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/n;->j:Lcom/tapjoy/cc;

    return-object v0
.end method

.method private a(Lcom/tapjoy/cc;Z)Z
    .locals 25

    const-string v4, "VirtualGoodUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "downloadVirtualGood: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/cc;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sd_download: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "VirtualGoodUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Downloading virtual good data for: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/cc;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/cc;->k()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/n;->g:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Integer;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/tapjoy/n;->publishProgress([Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    const-string v4, "VirtualGoodUtil"

    const-string v5, "No zip file associated with virtual good."

    invoke-static {v4, v5}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    move v5, v4

    move-object v4, v8

    :goto_0
    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tapjoy/n;->f:Z

    move v6, v0

    if-eqz v6, :cond_c

    const/16 v6, 0x14

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/n;->g:I

    :goto_1
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/cc;->j(Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v6, 0x0

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/n;->publishProgress([Ljava/lang/Object;)V

    :cond_0
    const-string v4, "VirtualGoodUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "downloadVirtualGood success: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_1
    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_f

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v9, :cond_f

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const/4 v7, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x4

    sub-int/2addr v8, v10

    invoke-virtual {v9, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "VirtualGoodUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "externalRoot: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tapjoy/n;->f:Z

    move v9, v0

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/n;->i:Lcom/tapjoy/h;

    move-object v9, v0

    invoke-static {v9}, Lcom/tapjoy/h;->b(Lcom/tapjoy/h;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/tempZipDownloads/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tapjoy/h;->d()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v24, v9

    move-object v9, v8

    move-object/from16 v8, v24

    :goto_2
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "VirtualGoodUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "downloading zip file: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    const/16 v13, 0x3a98

    invoke-virtual {v6, v13}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v13, 0x7530

    invoke-virtual {v6, v13}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v6

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "VirtualGoodUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "created directory at: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v11, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ".zip"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v12, 0x400

    :try_start_2
    new-array v12, v12, [B

    const-wide/16 v15, 0x0

    :goto_3
    invoke-virtual {v13, v12}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V

    const-string v6, "VirtualGoodUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "ZIP FILE SIZE: "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v15

    move-object v0, v12

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-wide v11

    const-wide/16 v15, 0x0

    cmp-long v6, v11, v15

    if-nez v6, :cond_d

    const/4 v5, 0x1

    move-object v6, v13

    move v11, v5

    move-object v5, v14

    :goto_4
    if-eqz v11, :cond_6

    const-string v7, "VirtualGoodUtil"

    const-string v9, "zip file not downloaded"

    invoke-static {v7, v9}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tapjoy/n;->f:Z

    move v7, v0

    if-eqz v7, :cond_5

    const/16 v7, 0x29

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/n;->g:I

    :goto_5
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v5, v4

    move-object v4, v8

    goto/16 :goto_0

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "data/data/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/n;->i:Lcom/tapjoy/h;

    move-object v9, v0

    invoke-static {v9}, Lcom/tapjoy/h;->b(Lcom/tapjoy/h;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/tempZipDownloads/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tapjoy/h;->e()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v24, v9

    move-object v9, v8

    move-object/from16 v8, v24

    goto/16 :goto_2

    :cond_4
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v15, v15, v18

    const/16 v18, 0x1

    :try_start_4
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-wide/16 v20, 0x5a

    mul-long v20, v20, v15

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tapjoy/n;->publishProgress([Ljava/lang/Object;)V

    const/16 v18, 0x0

    move-object v0, v14

    move-object v1, v12

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_3

    :catch_0
    move-exception v5

    move-object v6, v14

    move-object v10, v13

    :goto_6
    const-string v11, "VirtualGoodUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Network timeout: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/tapjoy/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v11, 0x1

    move-object/from16 v24, v6

    move-object v6, v10

    move v10, v5

    move-object/from16 v5, v24

    goto/16 :goto_4

    :catch_1
    move-exception v6

    move-object v10, v12

    :goto_7
    const-string v12, "VirtualGoodUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Error downloading zip file: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/tapjoy/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object/from16 v24, v10

    move v10, v6

    move-object v6, v11

    move v11, v5

    move-object/from16 v5, v24

    goto/16 :goto_4

    :cond_5
    const/16 v7, 0x2a

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/n;->g:I

    goto/16 :goto_5

    :catch_2
    move-exception v5

    move v5, v4

    move-object v4, v8

    goto/16 :goto_0

    :cond_6
    const-string v5, "VirtualGoodUtil"

    const-string v6, "No network error."

    invoke-static {v5, v6}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_a

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".zip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/h;->c()Lcom/tapjoy/ar;

    invoke-static {v5, v8}, Lcom/tapjoy/ar;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v4, 0x5a

    :goto_8
    const/16 v5, 0x64

    if-le v4, v5, :cond_7

    const/4 v4, 0x1

    move v5, v4

    move-object v4, v8

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/tapjoy/n;->publishProgress([Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tapjoy/n;->f:Z

    move v5, v0

    if-eqz v5, :cond_9

    const/16 v5, 0x2b

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/n;->g:I

    move v5, v4

    move-object v4, v8

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0x2c

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/n;->g:I

    move v5, v4

    move-object v4, v8

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tapjoy/n;->f:Z

    move v5, v0

    if-eqz v5, :cond_b

    const/16 v5, 0x2b

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/n;->g:I

    move v5, v4

    move-object v4, v8

    goto/16 :goto_0

    :cond_b
    const/16 v5, 0x2c

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/n;->g:I

    move v5, v4

    move-object v4, v8

    goto/16 :goto_0

    :cond_c
    const/16 v6, 0xa

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/n;->g:I

    goto/16 :goto_1

    :catch_3
    move-exception v6

    move-object v10, v12

    move-object v11, v13

    goto/16 :goto_7

    :catch_4
    move-exception v6

    move-object v10, v14

    move-object v11, v13

    goto/16 :goto_7

    :catch_5
    move-exception v5

    move-object v6, v12

    move-object v10, v11

    goto/16 :goto_6

    :catch_6
    move-exception v5

    move-object v6, v12

    move-object v10, v13

    goto/16 :goto_6

    :cond_d
    move-object v6, v13

    move v11, v5

    move-object v5, v14

    goto/16 :goto_4

    :cond_e
    move-object/from16 v24, v9

    move-object v9, v7

    move-object/from16 v7, v24

    goto/16 :goto_2

    :cond_f
    move v5, v4

    move-object v4, v8

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/tapjoy/n;)Lcom/tapjoy/h;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/n;->i:Lcom/tapjoy/h;

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Lcom/tapjoy/cc;

    const-string v0, "VirtualGoodUtil"

    const-string v1, "doInBackground"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/tapjoy/n;->j:Lcom/tapjoy/cc;

    iget-object v0, p0, Lcom/tapjoy/n;->j:Lcom/tapjoy/cc;

    iget-boolean v1, p0, Lcom/tapjoy/n;->f:Z

    invoke-virtual {v0, v1}, Lcom/tapjoy/cc;->a(Z)V

    iget-object v0, p0, Lcom/tapjoy/n;->j:Lcom/tapjoy/cc;

    iget-boolean v1, p0, Lcom/tapjoy/n;->f:Z

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/n;->a(Lcom/tapjoy/cc;Z)Z

    iget-object v0, p0, Lcom/tapjoy/n;->j:Lcom/tapjoy/cc;

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 3

    const-string v0, "VirtualGoodUtil"

    const-string v1, "onCancelled"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-boolean v0, p0, Lcom/tapjoy/n;->e:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tapjoy/h;->c()Lcom/tapjoy/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/n;->j:Lcom/tapjoy/cc;

    iget-boolean v2, p0, Lcom/tapjoy/n;->f:Z

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/ar;->a(Lcom/tapjoy/cc;Z)V

    :cond_0
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    check-cast p1, Lcom/tapjoy/cc;

    const-string v0, "VirtualGoodUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPostExecute: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/n;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tapjoy/n;->g:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->l:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "VirtualGoodUtil"

    const-string v1, "UPDATE DETAIL VIEW"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/n;)V

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/n;->i:Lcom/tapjoy/h;

    invoke-static {p0}, Lcom/tapjoy/h;->a(Landroid/os/AsyncTask;)Z

    const-string v0, "VirtualGoodUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentTask size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tapjoy/n;->g:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/tapjoy/n;->g:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/tapjoy/n;->i:Lcom/tapjoy/h;

    iget-object v0, v0, Lcom/tapjoy/h;->b:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/n;->i:Lcom/tapjoy/h;

    iget-object v0, v0, Lcom/tapjoy/h;->b:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/tapjoy/n;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tapjoy/n;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tapjoy/n;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tapjoy/n;->b:Landroid/widget/TextView;

    const-string v1, "Download Completed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "VirtualGoodUtil"

    const-string v1, "*** Download completed! ***"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->b()Lcom/tapjoy/ap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->b()Lcom/tapjoy/ap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tapjoy/ap;->a(Lcom/tapjoy/cc;)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/tapjoy/n;->c:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tapjoy/n;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tapjoy/n;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tapjoy/n;->b:Landroid/widget/TextView;

    const-string v1, "Download Failed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tapjoy/n;->i:Lcom/tapjoy/h;

    const-string v1, "Download Failed"

    iput-object v1, v0, Lcom/tapjoy/h;->f:Ljava/lang/String;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tapjoy/n;->i:Lcom/tapjoy/h;

    invoke-static {v1}, Lcom/tapjoy/h;->a(Lcom/tapjoy/h;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tapjoy/n;->j:Lcom/tapjoy/cc;

    invoke-virtual {v2}, Lcom/tapjoy/cc;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " fail to download. Would you like to download again?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Cancel"

    new-instance v2, Lcom/tapjoy/o;

    invoke-direct {v2, p0}, Lcom/tapjoy/o;-><init>(Lcom/tapjoy/n;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Retry"

    new-instance v2, Lcom/tapjoy/p;

    invoke-direct {v2, p0}, Lcom/tapjoy/p;-><init>(Lcom/tapjoy/n;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/tapjoy/n;->c:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tapjoy/n;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tapjoy/n;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tapjoy/n;->b:Landroid/widget/TextView;

    const-string v1, "Download Failed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tapjoy/n;->i:Lcom/tapjoy/h;

    const-string v1, "No more space is available on Device and SD Card."

    iput-object v1, v0, Lcom/tapjoy/h;->f:Ljava/lang/String;

    sget-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->l:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "VirtualGoodUtil"

    const-string v1, "UPDATE DETAIL VIEW"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/n;)V

    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tapjoy/n;->i:Lcom/tapjoy/h;

    invoke-static {v1}, Lcom/tapjoy/h;->a(Lcom/tapjoy/h;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Not enough space on the device or SD card.  Free more space and try again."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "OK"

    new-instance v2, Lcom/tapjoy/q;

    invoke-direct {v2, p0}, Lcom/tapjoy/q;-><init>(Lcom/tapjoy/n;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/tapjoy/n;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tapjoy/n;->cancel(Z)Z

    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tapjoy/n;->i:Lcom/tapjoy/h;

    invoke-static {v1}, Lcom/tapjoy/h;->a(Lcom/tapjoy/h;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not enough space on the device. Would you like to download Item \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/n;->j:Lcom/tapjoy/cc;

    invoke-virtual {v2}, Lcom/tapjoy/cc;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' on SD card?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "No"

    new-instance v2, Lcom/tapjoy/r;

    invoke-direct {v2, p0}, Lcom/tapjoy/r;-><init>(Lcom/tapjoy/n;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Yes"

    new-instance v2, Lcom/tapjoy/s;

    invoke-direct {v2, p0}, Lcom/tapjoy/s;-><init>(Lcom/tapjoy/n;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :try_start_2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2a -> :sswitch_1
        0x2b -> :sswitch_2
        0x2c -> :sswitch_3
    .end sparse-switch
.end method

.method protected final varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 5

    const/16 v1, 0x64

    const/4 v4, 0x0

    check-cast p1, [Ljava/lang/Integer;

    aget-object v0, p1, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    move v0, v4

    :cond_0
    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    iget-object v1, p0, Lcom/tapjoy/n;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Downloading... "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tapjoy/n;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/tapjoy/n;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iput v0, p0, Lcom/tapjoy/n;->h:I

    sget-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->l:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/n;->j:Lcom/tapjoy/cc;

    invoke-virtual {v2}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->a(I)V

    :cond_2
    return-void
.end method
