.class Ljb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic 癤욱븳援:Liw;


# direct methods
.method constructor <init>(Liw;)V
    .locals 0

    iput-object p1, p0, Ljb;->癤욱븳援:Liw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Ljb;->癤욱븳援:Liw;

    iget-object v0, v0, Liw;->몃Ъ:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljb;->癤욱븳援:Liw;

    iget-object v0, v0, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Ljb;->癤욱븳援:Liw;

    iget-object v2, p0, Ljb;->癤욱븳援:Liw;

    iget-object v2, v2, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Liw;->癤욱븳援(JI)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
