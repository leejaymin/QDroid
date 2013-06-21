.class public Lcom/flexware/fixer/Main;
.super Landroid/app/ListActivity;
.source "Main.java"


# instance fields
.field private dialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private makeUi2()V
    .locals 28

    .prologue
    .line 55
    const-string v6, "Phone Number Fixer"

    const-string v7, "Reading your contacts..."

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flexware/fixer/Main;->dialog:Landroid/app/ProgressDialog;

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/flexware/fixer/Main;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 57
    .local v5, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "_id"

    aput-object v8, v7, v6

    const/4 v6, 0x1

    const-string v8, "name"

    aput-object v8, v7, v6

    .line 58
    .local v7, fields:[Ljava/lang/String;
    sget-object v6, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "name"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 59
    .local v16, cursor:Landroid/database/Cursor;
    new-instance v22, Ljava/util/LinkedHashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedHashMap;-><init>()V

    .line 60
    .local v22, people:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v6, "_id"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 61
    .local v19, id:I
    const-string v6, "name"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 62
    .local v20, nameCol:I
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 64
    .end local v7           #fields:[Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    .line 63
    if-nez v6, :cond_0

    .line 67
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 68
    new-instance v17, Ljava/util/ArrayList;

    const/16 v6, 0xa

    move-object/from16 v0, v17

    move v1, v6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v17, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v27, sb:Ljava/lang/StringBuilder;
    const/4 v6, 0x3

    new-array v10, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "display_name"

    aput-object v7, v10, v6

    const/4 v6, 0x1

    const-string v7, "number"

    aput-object v7, v10, v6

    const/4 v6, 0x2

    const-string v7, "_id"

    aput-object v7, v10, v6

    .line 71
    .local v10, projection:[Ljava/lang/String;
    const/16 v24, 0x0

    .line 72
    .local v24, personUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 73
    .local v9, phonesUri:Landroid/net/Uri;
    const/16 v18, 0x0

    .line 74
    .local v18, displayName:I
    const/16 v21, 0x1

    .line 75
    .local v21, number:I
    const/16 v26, 0x2

    .line 76
    .local v26, phoneIdCol:I
    const/16 v25, -0x1

    .line 77
    .local v25, phoneId:I
    const/4 v15, 0x0

    .line 78
    .local v15, cnt:I
    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flexware/fixer/Main;->dialog:Landroid/app/ProgressDialog;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 102
    new-instance v14, Landroid/widget/ArrayAdapter;

    const v6, 0x7f030001

    move-object v0, v14

    move-object/from16 v1, p0

    move v2, v6

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 103
    .local v14, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/flexware/fixer/Main;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " phone numbers updated"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 105
    return-void

    .line 78
    .end local v14           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 79
    .local v23, personId:I
    sget-object v6, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide v11, v0

    invoke-static {v6, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    .line 80
    const-string v6, "phones"

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 81
    const-string v11, "type=7"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 82
    const-string v6, "display_name"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 83
    const-string v6, "number"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 84
    const-string v6, "_id"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 85
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 87
    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 88
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v6, ": "

    move-object/from16 v0, v27

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v27

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const/16 v6, 0x7c

    move-object/from16 v0, v27

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v27

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v6, "PhoneNumberFixer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "Adding phone data:"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 96
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/flexware/fixer/Main;->updateContact(I)I

    move-result v6

    add-int/2addr v15, v6

    .line 97
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    .line 86
    if-nez v6, :cond_3

    .line 99
    :cond_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private updateContact(I)I
    .locals 7
    .parameter "phoneId"

    .prologue
    const/4 v6, 0x0

    .line 108
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "type"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    invoke-virtual {p0}, Lcom/flexware/fixer/Main;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 111
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 112
    .local v0, phoneUri:Landroid/net/Uri;
    invoke-virtual {v1, v0, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/flexware/fixer/Main;->setContentView(I)V

    .line 28
    invoke-direct {p0}, Lcom/flexware/fixer/Main;->makeUi2()V

    .line 29
    return-void
.end method
