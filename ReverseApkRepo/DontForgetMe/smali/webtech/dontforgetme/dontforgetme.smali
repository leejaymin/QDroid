.class public Lwebtech/dontforgetme/dontforgetme;
.super Landroid/app/Activity;
.source "dontforgetme.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lwebtech/dontforgetme/dontforgetme;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lwebtech/dontforgetme/dontforgetme;->openContact(Ljava/lang/String;)V

    return-void
.end method

.method private openContact(Ljava/lang/String;)V
    .locals 4
    .parameter "id"

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://contacts/people/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lwebtech/dontforgetme/dontforgetme;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 28
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/high16 v4, 0x7f03

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lwebtech/dontforgetme/dontforgetme;->setContentView(I)V

    .line 30
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v22, liste:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    sget-object v4, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "name"

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lwebtech/dontforgetme/dontforgetme;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 34
    .local v9, C:Landroid/database/Cursor;
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lwebtech/dontforgetme/dontforgetme;->startManagingCursor(Landroid/database/Cursor;)V

    .line 36
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 43
    const-string v4, "name"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 44
    .local v24, nameColumn:I
    const-string v4, "_id"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 45
    .local v14, idColumn:I
    const-string v4, "number"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 46
    .local v26, phoneColumn:I
    const-string v4, "last_time_contacted"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 51
    .local v20, lastContactColumn:I
    :cond_0
    move-object v0, v9

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 52
    .local v23, name:Ljava/lang/String;
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 53
    .local v13, id:Ljava/lang/String;
    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 54
    .local v27, phoneNumber:Ljava/lang/String;
    move-object v0, v9

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 57
    .local v19, lastContact:Ljava/lang/String;
    if-eqz v23, :cond_1

    if-eqz v27, :cond_1

    if-eqz v19, :cond_1

    .line 59
    new-instance v10, Ljava/util/Date;

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v10, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 60
    .local v10, d:Ljava/util/Date;
    new-instance v25, Ljava/util/Date;

    invoke-direct/range {v25 .. v25}, Ljava/util/Date;-><init>()V

    .line 61
    .local v25, now:Ljava/util/Date;
    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    .line 62
    .local v18, last20days:Ljava/util/Date;
    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getDate()I

    move-result v4

    const/16 v5, 0xa

    sub-int/2addr v4, v5

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/Date;->setDate(I)V

    .line 64
    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    new-instance v21, Ljava/util/Date;

    invoke-direct/range {v21 .. v21}, Ljava/util/Date;-><init>()V

    .line 70
    .local v21, lastContactDate:Ljava/util/Date;
    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v16, v4, v6

    .line 71
    .local v16, lasContactTS:J
    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 73
    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getMonth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 75
    .local v11, days:Ljava/lang/String;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v15, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "line1"

    move-object v0, v15

    move-object v1, v4

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v4, "line2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lwebtech/dontforgetme/dontforgetme;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lwebtech/dontforgetme/dontforgetme;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v4, "line3"

    invoke-virtual {v15, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-object/from16 v0, v22

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v10           #d:Ljava/util/Date;
    .end local v11           #days:Ljava/lang/String;
    .end local v15           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #lasContactTS:J
    .end local v18           #last20days:Ljava/util/Date;
    .end local v21           #lastContactDate:Ljava/util/Date;
    .end local v25           #now:Ljava/util/Date;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 49
    if-nez v4, :cond_0

    .line 88
    new-instance v3, Landroid/widget/SimpleAdapter;

    .line 91
    const v6, 0x7f030001

    .line 92
    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "line1"

    aput-object v5, v7, v4

    const/4 v4, 0x1

    const-string v5, "line2"

    aput-object v5, v7, v4

    const/4 v4, 0x2

    const-string v5, "line3"

    aput-object v5, v7, v4

    .line 93
    const/4 v4, 0x3

    new-array v8, v4, [I

    fill-array-data v8, :array_0

    move-object/from16 v4, p0

    move-object/from16 v5, v22

    .line 88
    invoke-direct/range {v3 .. v8}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 95
    .local v3, adapter:Landroid/widget/SimpleAdapter;
    const/high16 v4, 0x7f05

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lwebtech/dontforgetme/dontforgetme;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    .line 97
    .local v12, group:Landroid/widget/ListView;
    invoke-virtual {v12, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    new-instance v4, Lwebtech/dontforgetme/dontforgetme$1;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lwebtech/dontforgetme/dontforgetme$1;-><init>(Lwebtech/dontforgetme/dontforgetme;)V

    invoke-virtual {v12, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    .end local v3           #adapter:Landroid/widget/SimpleAdapter;
    .end local v12           #group:Landroid/widget/ListView;
    .end local v13           #id:Ljava/lang/String;
    .end local v14           #idColumn:I
    .end local v19           #lastContact:Ljava/lang/String;
    .end local v20           #lastContactColumn:I
    .end local v23           #name:Ljava/lang/String;
    .end local v24           #nameColumn:I
    .end local v26           #phoneColumn:I
    .end local v27           #phoneNumber:Ljava/lang/String;
    :cond_2
    return-void

    .line 93
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x5t 0x7ft
        0x2t 0x0t 0x5t 0x7ft
        0x3t 0x0t 0x5t 0x7ft
    .end array-data
.end method
