.class Lcom/samsungapps/plasma/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsungapps/plasma/d;->a(ILjava/util/ArrayList;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ExpandableListView;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/samsungapps/plasma/d;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/d;Landroid/widget/ExpandableListView;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/d$2;->c:Lcom/samsungapps/plasma/d;

    iput-object p2, p0, Lcom/samsungapps/plasma/d$2;->a:Landroid/widget/ExpandableListView;

    iput-object p3, p0, Lcom/samsungapps/plasma/d$2;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsungapps/plasma/d$2;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/samsungapps/plasma/d$2;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsungapps/plasma/d$2;->c:Lcom/samsungapps/plasma/d;

    iget-object v0, p0, Lcom/samsungapps/plasma/d$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsungapps/plasma/g;

    invoke-static {v1, v0}, Lcom/samsungapps/plasma/d;->a(Lcom/samsungapps/plasma/d;Lcom/samsungapps/plasma/g;)Lcom/samsungapps/plasma/g;

    return-void
.end method
