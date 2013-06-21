.class public Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ThreadDeleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;
    }
.end annotation


# instance fields
.field private _ctx:Landroid/content/Context;

.field private _mapCheckBoxStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Map;)V
    .locals 1
    .parameter "ctx"
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p3, mapCheckBoxStatus:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const v0, 0x7f030006

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->_mapCheckBoxStatus:Ljava/util/Map;

    .line 32
    iput-object p1, p0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->_ctx:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->_mapCheckBoxStatus:Ljava/util/Map;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->_mapCheckBoxStatus:Ljava/util/Map;

    return-object v0
.end method

.method private getAddressByRecipientIDs(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "recipientId"

    .prologue
    const/4 v2, 0x0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "content://mms-sms/canonical-address/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 169
    .local v1, uri:Landroid/net/Uri;
    const-string v6, ""

    .line 170
    .local v6, address:Ljava/lang/String;
    iget-object v0, p0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->_ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 171
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 173
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 177
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_1
    return-object v6

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 178
    throw v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 30
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 39
    const/16 v25, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 41
    .local v20, recipient_ids:Ljava/lang/String;
    const/16 v25, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 42
    .local v23, type:I
    const-string v18, ""

    .line 43
    .local v18, number:Ljava/lang/String;
    const-string v16, ""

    .line 44
    .local v16, name:Ljava/lang/String;
    if-nez v23, :cond_5

    .line 45
    invoke-static/range {v20 .. v20}, Lcom/superdroid/sqd/data/DataCache;->getAddressByRecipientIds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 46
    invoke-static/range {v18 .. v18}, Lcom/superdroid/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 47
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->getAddressByRecipientIDs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 48
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/superdroid/sqd/data/DataCache;->addRecipientIdsAddress(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    invoke-static/range {v18 .. v18}, Lcom/superdroid/sqd/data/DataCache;->getContactNameByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 51
    if-nez v16, :cond_1

    .line 52
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->getNameByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 53
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/superdroid/sqd/data/DataCache;->addContactNumberName(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_1
    :goto_0
    const/16 v25, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 90
    .local v8, count:Ljava/lang/Long;
    const/16 v25, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, content:Ljava/lang/String;
    const/16 v25, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 94
    .local v5, charset:I
    if-eqz v5, :cond_2

    .line 96
    :try_start_0
    const-string v25, "iso-8859-1"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 97
    .local v4, bytes:[B
    invoke-static {v5}, Lcom/superdroid/sqd/util/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v15

    .line 98
    .local v15, mimeName:Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #content:Ljava/lang/String;
    .local v7, content:Ljava/lang/String;
    move-object v6, v7

    .line 104
    .end local v4           #bytes:[B
    .end local v7           #content:Ljava/lang/String;
    .end local v15           #mimeName:Ljava/lang/String;
    .restart local v6       #content:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {v6}, Lcom/superdroid/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->_ctx:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f040016

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 108
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;

    .line 110
    .local v24, views:Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;
    invoke-static/range {v16 .. v16}, Lcom/superdroid/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 111
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;->nameView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :goto_2
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;->contentView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    const-wide/16 v27, 0x1

    cmp-long v25, v25, v27

    if-nez v25, :cond_d

    .line 118
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;->countView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :goto_3
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;->contentView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 125
    .local v13, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->_mapCheckBoxStatus:Ljava/util/Map;

    move-object/from16 v25, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->_mapCheckBoxStatus:Ljava/util/Map;

    move-object/from16 v25, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    invoke-interface/range {v25 .. v27}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_4
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;->checkbox:Landroid/widget/CheckBox;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->_mapCheckBoxStatus:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 130
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;->checkbox:Landroid/widget/CheckBox;

    move-object/from16 v25, v0

    new-instance v26, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$1;-><init>(Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;I)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 138
    .local v9, date:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->_ctx:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-wide v1, v9

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/superdroid/sqd/util/MessageUtil;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v22

    .line 140
    .local v22, timestamp:Ljava/lang/String;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;->dateView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void

    .line 56
    .end local v5           #charset:I
    .end local v6           #content:Ljava/lang/String;
    .end local v8           #count:Ljava/lang/Long;
    .end local v9           #date:J
    .end local v13           #id:I
    .end local v22           #timestamp:Ljava/lang/String;
    .end local v24           #views:Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;
    .restart local p1
    :cond_5
    const-string v25, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 57
    .local v14, ids:[Ljava/lang/String;
    move-object v0, v14

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 58
    .local v19, numbers:[Ljava/lang/String;
    move-object v0, v14

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 59
    .local v17, names:[Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v21, sb:Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_4
    move-object v0, v14

    array-length v0, v0

    move/from16 v25, v0

    move v0, v12

    move/from16 v1, v25

    if-lt v0, v1, :cond_6

    .line 85
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 61
    :cond_6
    aget-object v25, v14, v12

    invoke-static/range {v25 .. v25}, Lcom/superdroid/sqd/data/DataCache;->getAddressByRecipientIds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v19, v12

    .line 62
    aget-object v25, v19, v12

    invoke-static/range {v25 .. v25}, Lcom/superdroid/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 63
    aget-object v25, v14, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->getAddressByRecipientIDs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v19, v12

    .line 64
    aget-object v25, v14, v12

    aget-object v26, v19, v12

    invoke-static/range {v25 .. v26}, Lcom/superdroid/sqd/data/DataCache;->addRecipientIdsAddress(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_7
    aget-object v25, v19, v12

    invoke-static/range {v25 .. v25}, Lcom/superdroid/sqd/data/DataCache;->getContactNameByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v17, v12

    .line 67
    aget-object v25, v17, v12

    if-nez v25, :cond_8

    .line 68
    aget-object v25, v19, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->getNameByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v17, v12

    .line 69
    aget-object v25, v19, v12

    aget-object v26, v17, v12

    invoke-static/range {v25 .. v26}, Lcom/superdroid/sqd/data/DataCache;->addContactNumberName(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_8
    aget-object v25, v17, v12

    invoke-static/range {v25 .. v25}, Lcom/superdroid/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 72
    if-nez v12, :cond_9

    .line 73
    aget-object v25, v19, v12

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 75
    :cond_9
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, ", "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v26, v19, v12

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 78
    :cond_a
    if-nez v12, :cond_b

    .line 79
    aget-object v25, v17, v12

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 81
    :cond_b
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, ", "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v26, v17, v12

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 99
    .end local v12           #i:I
    .end local v14           #ids:[Ljava/lang/String;
    .end local v17           #names:[Ljava/lang/String;
    .end local v19           #numbers:[Ljava/lang/String;
    .end local v21           #sb:Ljava/lang/StringBuilder;
    .restart local v5       #charset:I
    .restart local v6       #content:Ljava/lang/String;
    .restart local v8       #count:Ljava/lang/Long;
    :catch_0
    move-exception v25

    move-object/from16 v11, v25

    .line 100
    .local v11, e:Ljava/io/UnsupportedEncodingException;
    sget-object v25, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    .line 101
    const-string v29, "ISO_8859_1 must be supported!"

    aput-object v29, v27, v28

    .line 100
    invoke-interface/range {v25 .. v27}, Lcom/superdroid/logger/Logger;->error(Ljava/lang/Class;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 113
    .end local v11           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v24       #views:Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;
    :cond_c
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;->nameView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 120
    :cond_d
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;->countView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, " ("

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public getNameByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 184
    invoke-static {}, Lcom/superdroid/util/ContactHelper;->getContactInstance()Lcom/superdroid/util/ContactHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->_ctx:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/superdroid/util/ContactHelper;->getNameByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 145
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;-><init>(Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;)V

    .line 148
    .local v1, views:Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;
    const v2, 0x7f060011

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;->nameView:Landroid/widget/TextView;

    .line 149
    const v2, 0x7f06000e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;->contentView:Landroid/widget/TextView;

    .line 150
    const v2, 0x7f060012

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;->countView:Landroid/widget/TextView;

    .line 151
    const v2, 0x7f060010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    iput-object p0, v1, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;->checkbox:Landroid/widget/CheckBox;

    .line 152
    const v2, 0x7f06000f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$ThreadDeleteRowViews;->dateView:Landroid/widget/TextView;

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    return-object v0
.end method
