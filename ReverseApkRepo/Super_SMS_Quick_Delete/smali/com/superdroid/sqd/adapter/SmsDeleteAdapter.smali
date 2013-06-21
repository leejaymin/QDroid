.class public Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SmsDeleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$SmsDeleteRowViews;
    }
.end annotation


# instance fields
.field private _ctx:Landroid/content/Context;

.field private _mapCheckBoxStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/superdroid/sqd/data/IdType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private _name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter "context"
    .parameter "c"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/superdroid/sqd/data/IdType;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, mapCheckBoxStatus:Ljava/util/Map;,"Ljava/util/Map<Lcom/superdroid/sqd/data/IdType;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .line 29
    const v0, 0x7f030005

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 25
    iput-object v1, p0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->_name:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->_mapCheckBoxStatus:Ljava/util/Map;

    .line 30
    iput-object p1, p0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->_ctx:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->_name:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->_mapCheckBoxStatus:Ljava/util/Map;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->_mapCheckBoxStatus:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 25
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$SmsDeleteRowViews;

    .line 39
    .local v19, views:Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$SmsDeleteRowViews;
    const-string v15, ""

    .line 41
    .local v15, text:Ljava/lang/String;
    const-string v13, ""

    .line 43
    .local v13, subject:Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 44
    .local v17, transport_type:Ljava/lang/String;
    const-string v20, "sms"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 45
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$SmsDeleteRowViews;->contentView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    const/16 v20, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 47
    const/16 v20, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 48
    .local v6, date:J
    const/16 v20, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 49
    .local v18, type:I
    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->_ctx:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f040009

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 77
    :cond_0
    :goto_0
    invoke-static {v13}, Lcom/superdroid/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->_ctx:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f040016

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 80
    :cond_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$SmsDeleteRowViews;->contentView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 83
    .local v9, id:I
    const-string v20, "sms"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 84
    .local v10, isSms:Ljava/lang/Boolean;
    new-instance v11, Lcom/superdroid/sqd/data/IdType;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    move-object v0, v11

    move v1, v9

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/superdroid/sqd/data/IdType;-><init>(IZ)V

    .line 85
    .local v11, key:Lcom/superdroid/sqd/data/IdType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->_mapCheckBoxStatus:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v11

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->_mapCheckBoxStatus:Ljava/util/Map;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v20

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_2
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$SmsDeleteRowViews;->checkbox:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->_mapCheckBoxStatus:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 90
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$SmsDeleteRowViews;->checkbox:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    new-instance v21, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$1;-><init>(Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;Lcom/superdroid/sqd/data/IdType;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->_ctx:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-wide v1, v6

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/superdroid/sqd/util/MessageUtil;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v16

    .line 97
    .local v16, timestamp:Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$SmsDeleteRowViews;->dateView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void

    .line 52
    .end local v9           #id:I
    .end local v10           #isSms:Ljava/lang/Boolean;
    .end local v11           #key:Lcom/superdroid/sqd/data/IdType;
    .end local v16           #timestamp:Ljava/lang/String;
    .restart local p1
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->_name:Ljava/lang/String;

    move-object v15, v0

    goto/16 :goto_0

    .line 55
    .end local v6           #date:J
    .end local v18           #type:I
    :cond_4
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$SmsDeleteRowViews;->contentView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, -0x100

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    const/16 v20, 0xb

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    mul-long v6, v20, v22

    .line 57
    .restart local v6       #date:J
    const/16 v20, 0xd

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 58
    .restart local v18       #type:I
    const/16 v20, 0x80

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->_ctx:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f040009

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 63
    :goto_1
    const/16 v20, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 64
    .local v5, charset:I
    if-eqz v5, :cond_0

    .line 66
    const/16 v20, 0x9

    :try_start_0
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 67
    const-string v20, "iso-8859-1"

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 68
    .local v4, bytes:[B
    invoke-static {v5}, Lcom/superdroid/sqd/util/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v12

    .line 69
    .local v12, mimeName:Ljava/lang/String;
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v4, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v13           #subject:Ljava/lang/String;
    .local v14, subject:Ljava/lang/String;
    move-object v13, v14

    .end local v14           #subject:Ljava/lang/String;
    .restart local v13       #subject:Ljava/lang/String;
    goto/16 :goto_0

    .line 61
    .end local v4           #bytes:[B
    .end local v5           #charset:I
    .end local v12           #mimeName:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->_name:Ljava/lang/String;

    move-object v15, v0

    goto :goto_1

    .line 70
    .restart local v5       #charset:I
    :catch_0
    move-exception v20

    move-object/from16 v8, v20

    .line 71
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    sget-object v20, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    .line 72
    const-string v24, "ISO_8859_1 must be supported!"

    aput-object v24, v22, v23

    .line 71
    invoke-interface/range {v20 .. v22}, Lcom/superdroid/logger/Logger;->error(Ljava/lang/Class;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$SmsDeleteRowViews;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$SmsDeleteRowViews;-><init>(Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$SmsDeleteRowViews;)V

    .line 104
    .local v1, views:Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$SmsDeleteRowViews;
    const v2, 0x7f06000e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$SmsDeleteRowViews;->contentView:Landroid/widget/TextView;

    .line 105
    const v2, 0x7f06000d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    iput-object p0, v1, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$SmsDeleteRowViews;->checkbox:Landroid/widget/CheckBox;

    .line 106
    const v2, 0x7f06000f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$SmsDeleteRowViews;->dateView:Landroid/widget/TextView;

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    return-object v0
.end method
