.class public Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;
.super Landroid/widget/SimpleExpandableListAdapter;
.source "Category.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/Category;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryExpandableListAdapter"
.end annotation


# instance fields
.field private mChildData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private mChildFrom:[Ljava/lang/String;

.field private mChildTo:[I

.field private m_Ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "groupLayout"
    .parameter "groupFrom"
    .parameter "groupTo"
    .parameter
    .parameter "childLayout"
    .parameter "childFrom"
    .parameter "childTo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 92
    .line 93
    .local p2, groupData:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local p6, childData:Ljava/util/List;,"Ljava/util/List<+Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;>;"
    invoke-direct/range {p0 .. p9}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    .line 95
    iput-object p1, p0, Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;->m_Ctx:Landroid/content/Context;

    .line 96
    iput-object p6, p0, Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;->mChildData:Ljava/util/List;

    .line 97
    iput-object p8, p0, Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;->mChildFrom:[Ljava/lang/String;

    .line 98
    iput-object p9, p0, Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;->mChildTo:[I

    .line 100
    return-void
.end method

.method private bindView(Landroid/view/View;Ljava/util/Map;[Ljava/lang/String;[III)V
    .locals 4
    .parameter "view"
    .parameter
    .parameter "from"
    .parameter "to"
    .parameter "groupPosition"
    .parameter "childPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;[",
            "Ljava/lang/String;",
            "[III)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    array-length v1, p4

    .line 121
    .local v1, len:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 136
    return-void

    .line 122
    :cond_0
    aget v3, p4, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 123
    .local v2, v:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 124
    aget-object v3, p3, v0

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 106
    if-nez p4, :cond_0

    .line 107
    invoke-virtual {p0, p3, p5}, Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;->newChildView(ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, v:Landroid/view/View;
    :goto_0
    iget-object v0, p0, Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;->mChildData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;->mChildFrom:[Ljava/lang/String;

    .line 112
    iget-object v4, p0, Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;->mChildTo:[I

    move-object v0, p0

    move v5, p1

    move v6, p2

    .line 111
    invoke-direct/range {v0 .. v6}, Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;->bindView(Landroid/view/View;Ljava/util/Map;[Ljava/lang/String;[III)V

    .line 113
    return-object v1

    .line 109
    .end local v1           #v:Landroid/view/View;
    :cond_0
    move-object v1, p4

    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method
