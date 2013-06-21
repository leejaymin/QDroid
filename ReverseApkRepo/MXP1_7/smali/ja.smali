.class Lja;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic 癤욱븳援:Liw;


# direct methods
.method constructor <init>(Liw;)V
    .locals 0

    iput-object p1, p0, Lja;->癤욱븳援:Liw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lja;->癤욱븳援:Liw;

    iget-object v0, v0, Liw;->몃Ъ:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lja;->癤욱븳援:Liw;

    iget-object v0, v0, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lfp;->癤욱븳援(Landroid/util/SparseBooleanArray;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v3, v0, [J

    new-array v4, v0, [I

    const/4 v1, 0x0

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    move v0, v1

    move v1, v8

    :goto_1
    if-gez v1, :cond_2

    iget-object v0, p0, Lja;->癤욱븳援:Liw;

    invoke-virtual {v0, v3, v4}, Liw;->癤욱븳援([J[I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    iget-object v6, p0, Lja;->癤욱븳援:Liw;

    iget-object v6, v6, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    aput-wide v6, v3, v0

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method
