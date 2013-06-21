.class public Lcom/cocmoc/kulinglite/StationSelector;
.super Landroid/app/ExpandableListActivity;
.source "StationSelector.java"


# static fields
.field private static final IS_EVEN:Ljava/lang/String; = "IS_EVEN"

.field private static final NAME:Ljava/lang/String; = "NAME"


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cocmoc/kulinglite/StationSelector;)Landroid/widget/ExpandableListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cocmoc/kulinglite/StationSelector;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cocmoc/kulinglite/StationSelector;II[Ljava/lang/CharSequence;)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/cocmoc/kulinglite/StationSelector;->getNumber(II[Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method private getNumber(II[Ljava/lang/CharSequence;)I
    .locals 5
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "AreaCountCharSequence"

    .prologue
    .line 111
    const/4 v3, 0x0

    .line 114
    .local v3, result:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 122
    add-int v4, v3, p2

    return v4

    .line 115
    :cond_0
    aget-object p0, p3, v1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, area:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 26
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super/range {p0 .. p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/cocmoc/kulinglite/StationSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 36
    .local v25, res:Landroid/content/res/Resources;
    const/high16 v4, 0x7f05

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v14

    .line 39
    .local v14, AreaCharSequence:[Ljava/lang/CharSequence;
    const v4, 0x7f050002

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v16

    .line 42
    .local v16, StationsCharSequence:[Ljava/lang/CharSequence;
    const v4, 0x7f050003

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v17

    .line 45
    .local v17, StationsCharSequenceId:[Ljava/lang/CharSequence;
    const v4, 0x7f050001

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v15

    .line 47
    .local v15, AreaCountCharSequence:[Ljava/lang/CharSequence;
    const/16 v18, 0x0

    .line 48
    .local v18, areaSize:I
    const/16 v24, 0x0

    .line 51
    .local v24, pos:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v6, groupData:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v10, childData:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    array-length v4, v14

    move/from16 v0, v22

    move v1, v4

    if-lt v0, v1, :cond_0

    .line 71
    new-instance v4, Landroid/widget/SimpleExpandableListAdapter;

    .line 74
    const v7, 0x1090006

    .line 75
    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "NAME"

    aput-object v9, v8, v5

    const/4 v5, 0x1

    const-string v9, "IS_EVEN"

    aput-object v9, v8, v5

    .line 76
    const/4 v5, 0x2

    new-array v9, v5, [I

    fill-array-data v9, :array_0

    .line 78
    const v11, 0x1090007

    .line 79
    const/4 v5, 0x2

    new-array v12, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v13, "NAME"

    aput-object v13, v12, v5

    const/4 v5, 0x1

    const-string v13, "IS_EVEN"

    aput-object v13, v12, v5

    .line 80
    const/4 v5, 0x2

    new-array v13, v5, [I

    fill-array-data v13, :array_1

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v13}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    .line 71
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cocmoc/kulinglite/StationSelector;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/StationSelector;->mAdapter:Landroid/widget/ExpandableListAdapter;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/cocmoc/kulinglite/StationSelector;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/cocmoc/kulinglite/StationSelector;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v4

    new-instance v5, Lcom/cocmoc/kulinglite/StationSelector$1;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/cocmoc/kulinglite/StationSelector$1;-><init>(Lcom/cocmoc/kulinglite/StationSelector;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v5}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 107
    return-void

    .line 54
    :cond_0
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v21, curGroupMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, v6

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v4, "NAME"

    aget-object v5, v14, v22

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    aget-object v4, v15, v22

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 60
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v19, children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v23, 0x0

    .local v23, j:I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 67
    move-object v0, v10

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 62
    :cond_1
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v20, curChildMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v4, "NAME"

    aget-object v5, v16, v24

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    add-int/lit8 v24, v24, 0x1

    .line 61
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 76
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data

    .line 80
    :array_1
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method
