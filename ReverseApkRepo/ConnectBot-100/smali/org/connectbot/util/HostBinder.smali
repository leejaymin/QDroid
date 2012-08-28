.class public Lorg/connectbot/util/HostBinder;
.super Ljava/lang/Object;
.source "HostBinder.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# instance fields
.field protected COL_NICKNAME:I

.field protected final blue:Landroid/content/res/ColorStateList;

.field protected final green:Landroid/content/res/ColorStateList;

.field protected final manager:Lorg/connectbot/service/TerminalManager;

.field protected final red:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Lorg/connectbot/service/TerminalManager;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "manager"
    .parameter "res"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lorg/connectbot/util/HostBinder;->COL_NICKNAME:I

    .line 24
    iput-object p1, p0, Lorg/connectbot/util/HostBinder;->manager:Lorg/connectbot/service/TerminalManager;

    .line 25
    const v0, 0x7f080002

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/util/HostBinder;->red:Landroid/content/res/ColorStateList;

    .line 26
    const v0, 0x7f080001

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/util/HostBinder;->green:Landroid/content/res/ColorStateList;

    .line 27
    const/high16 v0, 0x7f08

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/util/HostBinder;->blue:Landroid/content/res/ColorStateList;

    .line 28
    return-void
.end method


# virtual methods
.method public isConnected(Landroid/database/Cursor;)Z
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 32
    iget-object v1, p0, Lorg/connectbot/util/HostBinder;->manager:Lorg/connectbot/service/TerminalManager;

    if-nez v1, :cond_0

    move v1, v3

    .line 39
    :goto_0
    return v1

    .line 35
    :cond_0
    iget v1, p0, Lorg/connectbot/util/HostBinder;->COL_NICKNAME:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 36
    const-string v1, "nickname"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/connectbot/util/HostBinder;->COL_NICKNAME:I

    .line 38
    :cond_1
    iget v1, p0, Lorg/connectbot/util/HostBinder;->COL_NICKNAME:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, nickname:Ljava/lang/String;
    iget-object v1, p0, Lorg/connectbot/util/HostBinder;->manager:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v1, v0}, Lorg/connectbot/service/TerminalManager;->findBridge(Ljava/lang/String;)Lorg/connectbot/service/TerminalBridge;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 21
    .parameter "view"
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    .line 100
    const/16 v16, 0x0

    .end local p1
    :goto_0
    return v16

    .line 48
    .restart local p1
    :sswitch_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v9, v0

    .line 49
    .local v9, icon:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/connectbot/util/HostBinder;->isConnected(Landroid/database/Cursor;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 50
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x10100a0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object v0, v9

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 54
    :goto_1
    const/16 v16, 0x1

    goto :goto_0

    .line 52
    :cond_0
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object v0, v9

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_1

    .line 58
    .end local v9           #icon:Landroid/widget/ImageView;
    :sswitch_1
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, color:Ljava/lang/String;
    const v16, 0x1020014

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 60
    .local v14, text1:Landroid/widget/TextView;
    const v16, 0x1020015

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 62
    .local v15, text2:Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 63
    .local v3, chosen:Landroid/content/res/ColorStateList;
    const-string v16, "red"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/HostBinder;->red:Landroid/content/res/ColorStateList;

    move-object v3, v0

    .line 64
    :cond_1
    const-string v16, "green"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/HostBinder;->green:Landroid/content/res/ColorStateList;

    move-object v3, v0

    .line 65
    .restart local v3       #chosen:Landroid/content/res/ColorStateList;
    :cond_2
    const-string v16, "blue"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/HostBinder;->blue:Landroid/content/res/ColorStateList;

    move-object v3, v0

    .line 67
    .restart local v3       #chosen:Landroid/content/res/ColorStateList;
    :cond_3
    if-eqz v3, :cond_4

    .line 68
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 69
    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 74
    :goto_2
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 71
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x1010040

    move-object v0, v14

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x1010042

    invoke-virtual/range {v15 .. v17}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2

    .line 78
    .end local v4           #color:Ljava/lang/String;
    .end local v14           #text1:Landroid/widget/TextView;
    .end local v15           #text2:Landroid/widget/TextView;
    .end local v3           #chosen:Landroid/content/res/ColorStateList;
    :sswitch_2
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 79
    .local v5, created:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v12, v16, v18

    .line 81
    .local v12, now:J
    const-string v11, "never"

    .line 82
    .local v11, nice:Ljava/lang/String;
    const-wide/16 v16, 0x0

    cmp-long v16, v5, v16

    if-lez v16, :cond_5

    .line 83
    sub-long v16, v12, v5

    const-wide/16 v18, 0x3c

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v10, v0

    .line 84
    .local v10, minutes:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f070018

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 85
    const/16 v16, 0x3c

    move v0, v10

    move/from16 v1, v16

    if-lt v0, v1, :cond_5

    .line 86
    div-int/lit8 v8, v10, 0x3c

    .line 87
    .local v8, hours:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f070019

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 88
    .restart local v11       #nice:Ljava/lang/String;
    const/16 v16, 0x18

    move v0, v8

    move/from16 v1, v16

    if-lt v0, v1, :cond_5

    .line 89
    div-int/lit8 v7, v8, 0x18

    .line 90
    .local v7, days:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f07001a

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 95
    .end local v10           #minutes:I
    .end local v8           #hours:I
    .end local v7           #days:I
    .restart local v11       #nice:Ljava/lang/String;
    :cond_5
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1020002 -> :sswitch_1
        0x1020006 -> :sswitch_0
        0x1020015 -> :sswitch_2
    .end sparse-switch
.end method
