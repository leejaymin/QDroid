.class public Lcom/wareone/tappmt/General$SeparatedListAdapter;
.super Landroid/widget/BaseAdapter;
.source "General.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/General;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeparatedListAdapter"
.end annotation


# static fields
.field public static final TYPE_SECTION_HEADER:I


# instance fields
.field public final headers:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/Adapter;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/wareone/tappmt/General;


# direct methods
.method public constructor <init>(Lcom/wareone/tappmt/General;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/wareone/tappmt/General$SeparatedListAdapter;->this$0:Lcom/wareone/tappmt/General;

    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/General$SeparatedListAdapter;->sections:Ljava/util/Map;

    .line 55
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030027

    invoke-direct {v0, p2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/wareone/tappmt/General$SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    return-void
.end method


# virtual methods
.method public addSection(Ljava/lang/String;Landroid/widget/Adapter;)V
    .locals 1
    .parameter "section"
    .parameter "adapter"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wareone/tappmt/General$SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/wareone/tappmt/General$SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public areAllItemsSelectable()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, total:I
    iget-object v2, p0, Lcom/wareone/tappmt/General$SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    return v1

    .line 81
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 82
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .parameter "position"

    .prologue
    .line 64
    iget-object v3, p0, Lcom/wareone/tappmt/General$SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 64
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 65
    .local v1, section:Ljava/lang/Object;
    iget-object v4, p0, Lcom/wareone/tappmt/General$SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 66
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 69
    .local v2, size:I
    if-nez p1, :cond_1

    move-object v3, v1

    goto :goto_1

    .line 70
    :cond_1
    if-ge p1, v2, :cond_2

    const/4 v3, 0x1

    sub-int v3, p1, v3

    invoke-interface {v0, v3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 73
    :cond_2
    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 139
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "position"

    .prologue
    .line 95
    const/4 v3, 0x1

    .line 96
    .local v3, type:I
    iget-object v4, p0, Lcom/wareone/tappmt/General$SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 108
    const/4 v4, -0x1

    :goto_1
    return v4

    .line 96
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 97
    .local v1, section:Ljava/lang/Object;
    iget-object v5, p0, Lcom/wareone/tappmt/General$SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 98
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 101
    .local v2, size:I
    if-nez p1, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    .line 102
    :cond_1
    if-ge p1, v2, :cond_2

    const/4 v4, 0x1

    sub-int v4, p1, v4

    invoke-interface {v0, v4}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_1

    .line 105
    :cond_2
    sub-int/2addr p1, v2

    .line 106
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, sectionnum:I
    iget-object v4, p0, Lcom/wareone/tappmt/General$SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 134
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 122
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 123
    .local v1, section:Ljava/lang/Object;
    iget-object v5, p0, Lcom/wareone/tappmt/General$SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 124
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 127
    .local v3, size:I
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/wareone/tappmt/General$SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v2, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 128
    :cond_1
    if-ge p1, v3, :cond_2

    const/4 v4, 0x1

    sub-int v4, p1, v4

    invoke-interface {v0, v4, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 131
    :cond_2
    sub-int/2addr p1, v3

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 88
    const/4 v1, 0x1

    .line 89
    .local v1, total:I
    iget-object v2, p0, Lcom/wareone/tappmt/General$SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    return v1

    .line 89
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 90
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/wareone/tappmt/General$SeparatedListAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
