.class public Limoblife/startupmanager/ListViewItem;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private isSystem:Z

.field public myView:[Landroid/view/View;

.field public scr:Ljava/util/List;

.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Limoblife/startupmanager/ListViewItem;->scr:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Limoblife/startupmanager/ListViewItem;->size:I

    iget v0, p0, Limoblife/startupmanager/ListViewItem;->size:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Limoblife/startupmanager/ListViewItem;->myView:[Landroid/view/View;

    iput-boolean p3, p0, Limoblife/startupmanager/ListViewItem;->isSystem:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Limoblife/startupmanager/ListViewItem;->size:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v1, p0, Limoblife/startupmanager/ListViewItem;->myView:[Landroid/view/View;

    sget-object v2, Limoblife/startupmanager/MyActivity;->myActivity:Limoblife/startupmanager/MyActivity;

    iget-object v0, p0, Limoblife/startupmanager/ListViewItem;->scr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/j;

    iget-boolean v3, p0, Limoblife/startupmanager/ListViewItem;->isSystem:Z

    invoke-virtual {v2, v0, v3}, Limoblife/startupmanager/MyActivity;->createView(Limoblife/startupmanager/j;Z)Landroid/view/View;

    move-result-object v0

    aput-object v0, v1, p1

    iget-object v0, p0, Limoblife/startupmanager/ListViewItem;->myView:[Landroid/view/View;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public setSize(Z)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Limoblife/startupmanager/ListViewItem;->scr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    :goto_1
    if-eqz p1, :cond_1

    :goto_2
    iput v0, p0, Limoblife/startupmanager/ListViewItem;->size:I

    return-void

    :cond_0
    iget-object v0, p0, Limoblife/startupmanager/ListViewItem;->scr:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/j;

    iget-boolean v0, v0, Limoblife/startupmanager/j;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Limoblife/startupmanager/ListViewItem;->scr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_2

    add-int/lit8 v2, v1, 0x1

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Limoblife/startupmanager/ListViewItem;->scr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_1
.end method
