.class final Lcom/jaynux/app/SaveInformationActivity$ContactListItemAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SaveInformationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaynux/app/SaveInformationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactListItemAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaynux/app/SaveInformationActivity;


# direct methods
.method public constructor <init>(Lcom/jaynux/app/SaveInformationActivity;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/jaynux/app/SaveInformationActivity$ContactListItemAdapter;->this$0:Lcom/jaynux/app/SaveInformationActivity;

    .line 57
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jaynux/app/SaveInformationActivity$ContactListItemCache;

    .line 64
    .local v5, cache:Lcom/jaynux/app/SaveInformationActivity$ContactListItemCache;
    iget-object v1, v5, Lcom/jaynux/app/SaveInformationActivity$ContactListItemCache;->itemId:Landroid/widget/TextView;

    .line 65
    .local v1, bitemId:Landroid/widget/TextView;
    iget-object v2, v5, Lcom/jaynux/app/SaveInformationActivity$ContactListItemCache;->itemName:Landroid/widget/TextView;

    .line 66
    .local v2, bitemName:Landroid/widget/TextView;
    iget-object v4, v5, Lcom/jaynux/app/SaveInformationActivity$ContactListItemCache;->itemWin:Landroid/widget/TextView;

    .line 67
    .local v4, bitemWin:Landroid/widget/TextView;
    iget-object v3, v5, Lcom/jaynux/app/SaveInformationActivity$ContactListItemCache;->itemRaceTime:Landroid/widget/TextView;

    .line 68
    .local v3, bitemRaceTime:Landroid/widget/TextView;
    const/4 v8, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const/4 v8, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const/4 v8, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_1

    .line 74
    const/4 v8, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-float v6, v8

    .line 75
    .local v6, participation:F
    const/4 v8, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-float v7, v8

    .line 76
    .local v7, win:F
    const-string v8, "1\ub4f1\ud69f\uc218/\ucd9c\uc804\ud69f\uc218(\ud655\ub960):%d/%d(%.1f%%)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    float-to-int v11, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    float-to-int v11, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    div-float v11, v7, v6

    float-to-double v11, v11

    const-wide/high16 v13, 0x4059

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .end local v6           #participation:F
    .end local v7           #win:F
    :goto_0
    const/4 v8, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_0

    .line 82
    const-string v8, "\ud3c9\uc18d:%.2fm/sec"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-float v11, v11

    const/4 v12, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v12

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    return-void

    .line 78
    :cond_1
    const-string v8, "1\ub4f1\ud69f\uc218/\ucd9c\uc804\ud69f\uc218(\ud655\ub960):0/%d(0%%)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/jaynux/app/SaveInformationActivity$ContactListItemCache;

    invoke-direct {v0}, Lcom/jaynux/app/SaveInformationActivity$ContactListItemCache;-><init>()V

    .line 89
    .local v0, cache:Lcom/jaynux/app/SaveInformationActivity$ContactListItemCache;
    const v2, 0x7f090034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jaynux/app/SaveInformationActivity$ContactListItemCache;->itemId:Landroid/widget/TextView;

    .line 90
    const v2, 0x7f090035

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jaynux/app/SaveInformationActivity$ContactListItemCache;->itemName:Landroid/widget/TextView;

    .line 91
    const v2, 0x7f090036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jaynux/app/SaveInformationActivity$ContactListItemCache;->itemWin:Landroid/widget/TextView;

    .line 92
    const v2, 0x7f090037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jaynux/app/SaveInformationActivity$ContactListItemCache;->itemRaceTime:Landroid/widget/TextView;

    .line 93
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    return-object v1
.end method
