.class public Lcom/spritefish/fastburstcamera/activities/BurstListActivity;
.super Landroid/app/ListActivity;
.source "BurstListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;
    }
.end annotation


# static fields
.field private static nextStartTime:J


# instance fields
.field private dateFormat:Ljava/text/DateFormat;

.field private dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

.field private mBusy:Z

.field private m_adapter:Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;

.field private thumbManager:Lcom/spritefish/fastburstcamera/core/ThumbnailManager;

.field private tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->nextStartTime:J

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->mBusy:Z

    return v0
.end method

.method static synthetic access$1(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;Landroid/view/View;Lcom/spritefish/fastburstcamera/db/dao/Burst;ZLcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->updateRow(Landroid/view/View;Lcom/spritefish/fastburstcamera/db/dao/Burst;ZLcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;)V

    return-void
.end method

.method static synthetic access$2(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;)Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$3(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->initUi()V

    return-void
.end method

.method private initUi()V
    .locals 4

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, curPos:I
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->m_adapter:Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;

    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getBursts()Ljava/util/List;

    move-result-object v0

    .line 210
    .local v0, bursts:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Burst;>;"
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 209
    iput-object v2, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->dateFormat:Ljava/text/DateFormat;

    .line 212
    new-instance v2, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;

    const v3, 0x7f030006

    invoke-direct {v2, p0, p0, v3, v0}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;-><init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->m_adapter:Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;

    .line 213
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->m_adapter:Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;

    invoke-virtual {p0, v2}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 216
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 217
    if-lez v1, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 223
    :cond_1
    return-void
.end method

.method private updateRow(Landroid/view/View;Lcom/spritefish/fastburstcamera/db/dao/Burst;ZLcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;)V
    .locals 18
    .parameter "v"
    .parameter "o"
    .parameter "busy"
    .parameter "bdh"

    .prologue
    .line 109
    const-string v8, "-"

    .line 110
    .local v8, t1:Ljava/lang/String;
    const/4 v10, 0x0

    .line 111
    .local v10, thumbnail:Landroid/graphics/Bitmap;
    if-nez p3, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->thumbManager:Lcom/spritefish/fastburstcamera/core/ThumbnailManager;

    if-eqz v12, :cond_0

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->thumbManager:Lcom/spritefish/fastburstcamera/core/ThumbnailManager;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/spritefish/fastburstcamera/core/ThumbnailManager;->getThumbnailForBurst(Lcom/spritefish/fastburstcamera/db/dao/Burst;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 115
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->getNumberOfPictures()J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-nez v12, :cond_1

    .line 116
    invoke-virtual/range {p2 .. p2}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->getId()J

    move-result-wide v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getNoOfPicturesInBurst(J)J

    move-result-wide v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->setPictures(J)V

    .line 118
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->getNumberOfPictures()J

    move-result-wide v4

    .line 119
    .local v4, no:J
    const-wide/16 v12, -0x1

    cmp-long v12, v4, v12

    if-lez v12, :cond_2

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x7f0a

    long-to-int v14, v4

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    long-to-int v0, v4

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 122
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual/range {p2 .. p2}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->getTimestamp()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 124
    .local v9, t2:Ljava/lang/String;
    const v12, 0x7f0d0015

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 125
    .local v11, tt:Landroid/widget/TextView;
    const v12, 0x7f0d0016

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 126
    .local v1, bt:Landroid/widget/TextView;
    const v12, 0x7f0d0005

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 127
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    if-eqz v10, :cond_3

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sget-wide v14, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->nextStartTime:J

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 137
    .local v6, startTime:J
    sput-wide v6, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->nextStartTime:J

    .line 139
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "start : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    const v12, 0x7f04000b

    .line 140
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 142
    .local v2, disappearAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 144
    new-instance v12, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$1;-><init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;)V

    invoke-virtual {v2, v12}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 151
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 153
    invoke-virtual {v2}, Landroid/view/animation/Animation;->start()V

    .line 157
    .end local v2           #disappearAnimation:Landroid/view/animation/Animation;
    .end local v6           #startTime:J
    :cond_3
    return-void
.end method


# virtual methods
.method protected createAdapter()Landroid/widget/ListAdapter;
    .locals 4

    .prologue
    .line 438
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Test1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Test2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Test3"

    aput-object v3, v1, v2

    .line 441
    .local v1, testValues:[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 442
    const v2, 0x1090003

    .line 441
    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 444
    .local v0, adapter:Landroid/widget/ListAdapter;
    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 21
    .parameter "item"

    .prologue
    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->m_adapter:Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/spritefish/fastburstcamera/db/dao/Burst;

    .line 279
    .local v11, burst:Lcom/spritefish/fastburstcamera/db/dao/Burst;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0700a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    new-instance v12, Landroid/content/Intent;

    const-class v3, Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    .local v12, collage:Landroid/content/Intent;
    const-string v3, "burstid"

    invoke-virtual {v11}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->getId()J

    move-result-wide v4

    invoke-virtual {v12, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 283
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->startActivity(Landroid/content/Intent;)V

    .line 292
    .end local v12           #collage:Landroid/content/Intent;
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0700a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 294
    new-instance v2, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;

    invoke-direct {v2}, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;-><init>()V

    .line 295
    .local v2, rdh:Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;
    invoke-virtual {v11}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->getId()J

    move-result-wide v4

    const v3, 0x7f0700a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$2;-><init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;)V

    .line 301
    new-instance v8, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v11}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;-><init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;Lcom/spritefish/fastburstcamera/db/dao/Burst;)V

    move-object/from16 v3, p0

    .line 295
    invoke-virtual/range {v2 .. v8}, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->createRangeDialog(Landroid/content/Context;JLjava/lang/String;Lcom/spritefish/fastburstcamera/controls/RangeDialogChangeListener;Lcom/spritefish/fastburstcamera/controls/RangeDialogResultListener;)V

    .line 340
    .end local v2           #rdh:Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0700a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 342
    new-instance v16, Landroid/content/Intent;

    const-class v3, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 343
    .local v16, gifanim:Landroid/content/Intent;
    const-string v3, "burstid"

    invoke-virtual {v11}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->getId()J

    move-result-wide v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 344
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->startActivity(Landroid/content/Intent;)V

    .line 353
    .end local v16           #gifanim:Landroid/content/Intent;
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f07009f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 356
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v20, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-virtual {v11}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicturesInBurst(J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 370
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 372
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/spritefish/fastburstcamera/activities/helper/ShareHelper;->launchShareSinglePicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 388
    .end local v20           #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_4
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0700a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-virtual {v11}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getNoOfPicturesInBurst(J)J

    move-result-wide v17

    .line 391
    .local v17, numberOfPhotos:J
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 392
    .local v10, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0003

    move-wide/from16 v0, v17

    long-to-int v5, v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-wide/from16 v0, v17

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 393
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 394
    const v4, 0x7f07007b

    new-instance v5, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v11}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$4;-><init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;Lcom/spritefish/fastburstcamera/db/dao/Burst;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 402
    const v4, 0x7f07007c

    new-instance v5, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$5;-><init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 407
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 408
    .local v9, alert:Landroid/app/AlertDialog;
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 412
    .end local v9           #alert:Landroid/app/AlertDialog;
    .end local v10           #builder:Landroid/app/AlertDialog$Builder;
    .end local v17           #numberOfPhotos:J
    :cond_5
    const/4 v3, 0x1

    return v3

    .line 360
    .restart local v20       #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    .line 361
    .local v19, picture:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    new-instance v15, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v15, f:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 365
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/spritefish/fastburstcamera/activities/helper/ShareHelper;->copyToSafeLocation(Ljava/io/File;Landroid/content/Context;)Ljava/io/File;

    move-result-object v13

    .line 366
    .local v13, dest:Ljava/io/File;
    invoke-static {v13}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 377
    .end local v13           #dest:Ljava/io/File;
    .end local v15           #f:Ljava/io/File;
    .end local v19           #picture:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :cond_7
    new-instance v14, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v14, ei:Landroid/content/Intent;
    const-string v3, "image/jpeg"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string v3, "android.intent.extra.SUBJECT"

    const v4, 0x7f0700a7

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v3, "android.intent.extra.STREAM"

    move-object/from16 v0, v20

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 382
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 383
    const v3, 0x7f0700a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0x3039

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x0

    .line 248
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 249
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->m_adapter:Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;

    iget v7, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spritefish/fastburstcamera/db/dao/Burst;

    .line 251
    .local v2, item:Lcom/spritefish/fastburstcamera/db/dao/Burst;
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getNoOfPicturesInBurst(J)J

    move-result-wide v3

    .line 253
    .local v3, pics:J
    iget v6, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const v7, 0x7f07009f

    invoke-interface {p1, v9, v6, v9, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 254
    iget v6, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v7, 0x1

    const v8, 0x7f0700a0

    invoke-interface {p1, v9, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 255
    const-wide/16 v6, 0x4

    cmp-long v6, v3, v6

    if-ltz v6, :cond_0

    .line 257
    iget v6, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v7, 0x3

    const v8, 0x7f0700a1

    invoke-interface {p1, v9, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 258
    iget v6, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v7, 0x4

    const v8, 0x7f0700a2

    invoke-interface {p1, v9, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 260
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 261
    .local v5, preferences:Landroid/content/SharedPreferences;
    const-string v6, "betaenabled"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 265
    .local v1, isBetaEnabeled:Ljava/lang/Boolean;
    const-wide/16 v6, 0x2

    cmp-long v6, v3, v6

    if-ltz v6, :cond_1

    .line 267
    iget v6, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v7, 0x5

    const v8, 0x7f0700a3

    invoke-interface {p1, v9, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 271
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 486
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 487
    const/4 v1, 0x1

    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 418
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 419
    new-instance v1, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 421
    .local v1, dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->m_adapter:Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;

    invoke-virtual {v4, p3}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spritefish/fastburstcamera/db/dao/Burst;

    .line 422
    .local v0, clickedBurst:Lcom/spritefish/fastburstcamera/db/dao/Burst;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicturesInBurst(J)Ljava/util/List;

    move-result-object v3

    .line 424
    .local v3, pics:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Picture;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 425
    const-string v5, "pictureid"

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v4}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 426
    invoke-virtual {p0, v2}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->startActivity(Landroid/content/Intent;)V

    .line 429
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 493
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 530
    :goto_0
    return v7

    .line 497
    :pswitch_0
    new-instance v1, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;

    invoke-direct {v1, p0}, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;-><init>(Landroid/app/Activity;)V

    .line 500
    .local v1, cuh:Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;
    const v4, 0x7f0700a5

    invoke-virtual {p0, v4}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0700a6

    invoke-virtual {p0, v5}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 499
    invoke-static {p0, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 501
    .local v2, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 502
    new-instance v3, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$6;

    invoke-direct {v3, p0, v2}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$6;-><init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;Landroid/app/ProgressDialog;)V

    .line 512
    .local v3, handler:Landroid/os/Handler;
    new-instance v0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7;

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$7;-><init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    .line 527
    .local v0, checkUpdate:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x7f0d006f
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 164
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->close()V

    .line 165
    iput-object v1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    .line 166
    iput-object v1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->thumbManager:Lcom/spritefish/fastburstcamera/core/ThumbnailManager;

    .line 167
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 175
    invoke-static {p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getTracker(Landroid/content/Context;)Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 176
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v2, "Burstlist"

    invoke-virtual {v1, v2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 180
    :cond_0
    new-instance v1, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    .line 181
    new-instance v1, Lcom/spritefish/fastburstcamera/core/ThumbnailManager;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-direct {v1, v2}, Lcom/spritefish/fastburstcamera/core/ThumbnailManager;-><init>(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;)V

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->thumbManager:Lcom/spritefish/fastburstcamera/core/ThumbnailManager;

    .line 182
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    const v1, 0x7f070079

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 187
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->finish()V

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->initUi()V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 452
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 7
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 456
    packed-switch p2, :pswitch_data_0

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 458
    :pswitch_0
    iput-boolean v6, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->mBusy:Z

    .line 460
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 461
    .local v1, first:I
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 462
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 463
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 464
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 465
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->m_adapter:Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;

    add-int v5, v1, v2

    invoke-virtual {v4, v5}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spritefish/fastburstcamera/db/dao/Burst;

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->updateRow(Landroid/view/View;Lcom/spritefish/fastburstcamera/db/dao/Burst;ZLcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;)V

    .line 467
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 462
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 473
    .end local v0           #count:I
    .end local v1           #first:I
    .end local v2           #i:I
    .end local v3           #v:Landroid/view/View;
    :pswitch_1
    iput-boolean v4, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->mBusy:Z

    goto :goto_0

    .line 477
    :pswitch_2
    iput-boolean v4, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->mBusy:Z

    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
