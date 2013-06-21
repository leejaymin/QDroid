.class final Lccc71/pmw/lib/bz;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_applist;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_applist;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    iput-object p2, p0, Lccc71/pmw/lib/bz;->b:Ljava/util/List;

    .line 904
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/bz;)Lccc71/pmw/lib/pmw_applist;
    .locals 1
    .parameter

    .prologue
    .line 904
    iget-object v0, p0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 27

    .prologue
    .line 909
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 911
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    const-string v3, "du"

    invoke-static {v2, v3}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 912
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->aC(Landroid/content/Context;)I

    move-result v6

    .line 914
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 915
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 916
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 917
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 918
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 919
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    new-instance v23, Lccc71/pmw/b/m;

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;)Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v0, v3, v4}, Lccc71/pmw/b/m;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Lccc71/pmw/b/m;)V

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    sget v3, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableLayout;

    .line 924
    if-nez v4, :cond_0

    .line 1298
    :goto_0
    return-void

    .line 926
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    .line 927
    const/4 v2, 0x0

    move v12, v2

    :goto_1
    if-lt v12, v13, :cond_2

    .line 1021
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->e(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v9

    new-instance v2, Lccc71/pmw/lib/ca;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lccc71/pmw/lib/ca;-><init>(Lccc71/pmw/lib/bz;Landroid/widget/TableLayout;Ljava/util/List;ILjava/util/List;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v11

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    sget v3, Lccc71/pmw/lib/g;->eo:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1075
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    sget v3, Lccc71/pmw/lib/g;->eq:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    sget v3, Lccc71/pmw/lib/g;->dA:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1077
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    sget v3, Lccc71/pmw/lib/g;->cX:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1079
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v25

    .line 1081
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v25

    if-lt v0, v1, :cond_c

    .line 1153
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->e(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v2

    new-instance v7, Lccc71/pmw/lib/cb;

    move-object/from16 v8, p0

    move-object v9, v4

    move v14, v6

    invoke-direct/range {v7 .. v14}, Lccc71/pmw/lib/cb;-><init>(Lccc71/pmw/lib/bz;Landroid/widget/TableLayout;Ljava/util/ArrayList;FLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1208
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1209
    const/4 v2, 0x0

    move v7, v2

    :goto_3
    move/from16 v0, v25

    if-lt v7, v0, :cond_17

    .line 1240
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    sget v3, Lccc71/pmw/lib/g;->dN:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1241
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_applist;->e(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v3

    new-instance v5, Lccc71/pmw/lib/cc;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4, v8, v2}, Lccc71/pmw/lib/cc;-><init>(Lccc71/pmw/lib/bz;Landroid/widget/TableLayout;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1275
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1277
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;I)V

    .line 1278
    new-instance v2, Lccc71/pmw/b/h;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " -s "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_applist;->G(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v6, v21

    invoke-direct/range {v2 .. v8}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 1281
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->e(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lccc71/pmw/lib/cd;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lccc71/pmw/lib/cd;-><init>(Lccc71/pmw/lib/bz;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 929
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->D(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Ljava/util/List;)V

    goto/16 :goto_0

    .line 935
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->b:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 936
    invoke-virtual {v4, v12}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow;

    .line 937
    if-eqz v3, :cond_8

    .line 941
    :try_start_0
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->k()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 942
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->l()I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 944
    sget-boolean v11, Lccc71/pmw/b/h;->c:Z

    if-eqz v11, :cond_7

    .line 946
    new-instance v11, Ljava/io/File;

    iget-object v14, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 947
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 949
    const-string v11, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    const-string v11, "\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    const-string v11, "\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v14, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v15, 0x0

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x4

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ".odex"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 957
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 960
    const-string v14, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    const-string v14, "\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    const-string v11, "\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "/data/dalvik-cache/"

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v15, "/"

    const-string v16, "@"

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "@classes.dex"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 968
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 969
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 971
    const-string v14, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    const-string v14, "\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    const-string v11, "\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "/data/data/"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 979
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 980
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 982
    const-string v11, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    const-string v11, "\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    const-string v9, "\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    :cond_7
    :goto_4
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lccc71/pmw/b/m;->c(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v14

    .line 995
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    .line 996
    const/4 v10, 0x0

    .line 997
    const/4 v9, 0x0

    move v11, v9

    :goto_5
    if-lt v11, v15, :cond_a

    move v9, v10

    .line 1008
    :goto_6
    if-nez v9, :cond_8

    .line 1010
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    :cond_8
    :goto_7
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_1

    .line 990
    :cond_9
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_7

    .line 999
    :cond_a
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->o()Ljava/text/Collator;

    move-result-object v16

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v14}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_b

    .line 1001
    const/4 v9, 0x1

    .line 1002
    invoke-interface {v7, v11, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1003
    invoke-interface {v5, v11, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1004
    move-object/from16 v0, v20

    invoke-interface {v0, v11, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 997
    :cond_b
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    goto :goto_5

    .line 1083
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->D(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1085
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1089
    :cond_d
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 1090
    move/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    .line 1091
    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    .line 1093
    const/4 v2, 0x0

    .line 1094
    const/4 v8, 0x0

    .line 1097
    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v9}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;)Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v15, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v15, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 1098
    iget-object v2, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1099
    iget v8, v9, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v9, v8

    move-object v8, v2

    .line 1107
    :goto_8
    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lccc71/pmw/b/m;->a(Ljava/lang/String;)Lccc71/pmw/b/e;

    move-result-object v15

    .line 1108
    if-eqz v15, :cond_11

    .line 1112
    new-instance v2, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v26, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, ".apk"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1117
    const/4 v15, -0x1

    move-object/from16 v2, v17

    .line 1143
    :goto_9
    if-eqz v8, :cond_16

    .line 1144
    :goto_a
    sub-int v3, v15, v9

    .line 1145
    mul-int/lit8 v9, v16, 0x2

    add-int/lit8 v9, v9, 0x1

    .line 1147
    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v8, v15, v18

    const/4 v8, 0x1

    aput-object v2, v15, v8

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v2, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v15, v2

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    :cond_e
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto/16 :goto_2

    .line 1101
    :catch_1
    move-exception v9

    move v9, v8

    move-object v8, v2

    goto/16 :goto_8

    .line 1121
    :cond_f
    iget-object v2, v15, Lccc71/pmw/b/e;->b:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, v15, Lccc71/pmw/b/e;->b:Ljava/lang/String;

    .line 1122
    :goto_b
    iget v15, v15, Lccc71/pmw/b/e;->d:I

    goto :goto_9

    :cond_10
    move-object v2, v14

    .line 1121
    goto :goto_b

    .line 1127
    :cond_11
    const/4 v2, 0x0

    .line 1128
    new-instance v15, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v26, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v26, ".apk"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 1129
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;)Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, ".apk"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v15, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1131
    :cond_12
    if-eqz v2, :cond_14

    iget-object v15, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v15, :cond_13

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1132
    :goto_c
    if-eqz v2, :cond_15

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    move v15, v2

    .line 1134
    :goto_d
    new-instance v26, Lccc71/pmw/b/e;

    invoke-direct/range {v26 .. v26}, Lccc71/pmw/b/e;-><init>()V

    .line 1135
    move-object/from16 v0, v26

    iput v15, v0, Lccc71/pmw/b/e;->d:I

    .line 1136
    move/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v2, v0, Lccc71/pmw/b/e;->a:Ljava/lang/String;

    .line 1137
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    iput-object v0, v1, Lccc71/pmw/b/e;->b:Ljava/lang/String;

    .line 1138
    const/4 v2, 0x0

    move-object/from16 v0, v26

    iput-object v2, v0, Lccc71/pmw/b/e;->c:Ljava/lang/String;

    .line 1140
    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lccc71/pmw/b/m;->a(Ljava/lang/String;Lccc71/pmw/b/e;)V

    move-object/from16 v2, v18

    goto/16 :goto_9

    :cond_13
    move-object/from16 v18, v14

    .line 1131
    goto :goto_c

    :cond_14
    move-object/from16 v18, v17

    goto :goto_c

    .line 1132
    :cond_15
    const/4 v2, -0x1

    move v15, v2

    goto :goto_d

    :cond_16
    move-object v8, v14

    .line 1143
    goto/16 :goto_a

    .line 1211
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->D(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1217
    :cond_18
    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 1218
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow;

    .line 1219
    if-eqz v3, :cond_19

    if-eqz v2, :cond_19

    .line 1223
    :try_start_2
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->h()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1224
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->p()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1226
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lccc71/pmw/b/m;->b(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1228
    move-object/from16 v0, p0

    iget-object v10, v0, Lccc71/pmw/lib/bz;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v10, v2, v11}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1230
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v6, 0x1

    aput-object v3, v10, v6

    const/4 v3, 0x2

    aput-object v9, v10, v3

    const/4 v3, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v10, v3

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1209
    :cond_19
    :goto_e
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_3

    :catch_2
    move-exception v2

    goto :goto_e
.end method
