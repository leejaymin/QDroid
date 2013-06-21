.class public final Limoblife/cmfilemanager/c;
.super Ljava/lang/Thread;


# static fields
.field static b:Ljava/lang/reflect/Method;


# instance fields
.field a:Z

.field private c:Ljava/io/File;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Limoblife/cmfilemanager/b/c;

.field private g:Landroid/os/Handler;

.field private h:J

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    :try_start_0
    const-string v0, "android.text.format.Formatter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "formatFileSize"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Limoblife/cmfilemanager/c;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method constructor <init>(Ljava/io/File;Landroid/content/Context;Landroid/os/Handler;Limoblife/cmfilemanager/b/c;Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "Directory Scanner"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Limoblife/cmfilemanager/c;->c:Ljava/io/File;

    iput-object p2, p0, Limoblife/cmfilemanager/c;->e:Landroid/content/Context;

    iput-object p3, p0, Limoblife/cmfilemanager/c;->g:Landroid/os/Handler;

    iput-object p4, p0, Limoblife/cmfilemanager/c;->f:Limoblife/cmfilemanager/b/c;

    iput-object p5, p0, Limoblife/cmfilemanager/c;->d:Ljava/lang/String;

    iput-boolean p6, p0, Limoblife/cmfilemanager/c;->i:Z

    iput-boolean p7, p0, Limoblife/cmfilemanager/c;->j:Z

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Limoblife/cmfilemanager/c;->e:Landroid/content/Context;

    iput-object v0, p0, Limoblife/cmfilemanager/c;->f:Limoblife/cmfilemanager/b/c;

    iput-object v0, p0, Limoblife/cmfilemanager/c;->g:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    const-string v2, "OIFM_DirScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scanning directory "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Limoblife/cmfilemanager/c;->c:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Limoblife/cmfilemanager/c;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Limoblife/cmfilemanager/c;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "OIFM_DirScanner"

    const-string v3, "Scan aborted"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Limoblife/cmfilemanager/c;->a()V

    :goto_0
    return-void

    :cond_0
    if-nez v9, :cond_3

    const-string v2, "OIFM_DirScanner"

    const-string v3, "Returned null - inaccessible directory?"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Limoblife/cmfilemanager/c;->h:J

    const-string v2, "OIFM_DirScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Counting files... (total count="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v12, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Limoblife/cmfilemanager/c;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Limoblife/cmfilemanager/ak;->f:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v4, v0, Limoblife/cmfilemanager/c;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Limoblife/cmfilemanager/ak;->a:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v4, v0, Limoblife/cmfilemanager/c;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Limoblife/cmfilemanager/ak;->e:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v9, :cond_1

    array-length v15, v9

    const/4 v4, 0x0

    move/from16 v22, v4

    move v4, v5

    move/from16 v5, v22

    :goto_2
    if-lt v5, v15, :cond_4

    :cond_1
    const-string v3, "OIFM_DirScanner"

    const-string v4, "Sorting results..."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Limoblife/cmfilemanager/ab;

    invoke-direct {v3}, Limoblife/cmfilemanager/ab;-><init>()V

    invoke-static {v10, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Limoblife/cmfilemanager/ab;

    invoke-direct {v3}, Limoblife/cmfilemanager/ab;-><init>()V

    invoke-static {v11, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Limoblife/cmfilemanager/c;->a:Z

    if-nez v3, :cond_2

    const-string v3, "OIFM_DirScanner"

    const-string v4, "Sending data back to main thread"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Limoblife/cmfilemanager/b;

    invoke-direct {v3}, Limoblife/cmfilemanager/b;-><init>()V

    iput-object v10, v3, Limoblife/cmfilemanager/b;->a:Ljava/util/List;

    iput-object v11, v3, Limoblife/cmfilemanager/b;->b:Ljava/util/List;

    iput-object v12, v3, Limoblife/cmfilemanager/b;->c:Ljava/util/List;

    iput-boolean v2, v3, Limoblife/cmfilemanager/b;->d:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Limoblife/cmfilemanager/c;->g:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    invoke-direct/range {p0 .. p0}, Limoblife/cmfilemanager/c;->a()V

    goto/16 :goto_0

    :cond_3
    array-length v2, v9

    move v3, v2

    goto/16 :goto_1

    :cond_4
    aget-object v16, v9, v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Limoblife/cmfilemanager/c;->a:Z

    if-eqz v6, :cond_5

    const-string v2, "OIFM_DirScanner"

    const-string v3, "Scan aborted while checking files"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Limoblife/cmfilemanager/c;->a()V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v6, v4, 0x1

    rem-int/lit8 v4, v6, 0x32

    if-nez v4, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Limoblife/cmfilemanager/c;->h:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    const-wide/16 v19, 0x3e8

    cmp-long v4, v17, v19

    if-ltz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Limoblife/cmfilemanager/c;->g:Landroid/os/Handler;

    const/16 v7, 0x1f5

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput v6, v4, Landroid/os/Message;->arg1:I

    iput v3, v4, Landroid/os/Message;->arg2:I

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Limoblife/cmfilemanager/c;->d:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Limoblife/cmfilemanager/ac;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-direct {v4, v7, v0, v13}, Limoblife/cmfilemanager/ac;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v6

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Limoblife/cmfilemanager/c;->i:Z

    if-eqz v4, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_9
    new-instance v4, Limoblife/cmfilemanager/ac;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-direct {v4, v7, v0, v14}, Limoblife/cmfilemanager/ac;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v2, :cond_e

    const-string v4, ".nomedia"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v2, 0x1

    move v4, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Limoblife/cmfilemanager/c;->f:Limoblife/cmfilemanager/b/c;

    invoke-virtual {v2, v7}, Limoblife/cmfilemanager/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v7, v0, Limoblife/cmfilemanager/c;->e:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static/range {v16 .. v16}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.intent.action.VIEW"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_5
    if-nez v2, :cond_d

    move-object v7, v8

    :goto_6
    :try_start_0
    sget-object v2, Limoblife/cmfilemanager/c;->b:Ljava/lang/reflect/Method;

    const/16 v17, 0x0

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Limoblife/cmfilemanager/c;->e:Landroid/content/Context;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Limoblife/cmfilemanager/c;->j:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    new-instance v17, Limoblife/cmfilemanager/ac;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2, v7}, Limoblife/cmfilemanager/ac;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    move v2, v4

    goto/16 :goto_3

    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    :catch_0
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v17

    const-wide/16 v19, 0x400

    div-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " KB"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_d
    move-object v7, v2

    goto :goto_6

    :cond_e
    move v4, v2

    goto/16 :goto_4
.end method
