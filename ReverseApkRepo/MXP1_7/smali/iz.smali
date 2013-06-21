.class Liz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic 癤욱븳援:Liw;


# direct methods
.method constructor <init>(Liw;)V
    .locals 0

    iput-object p1, p0, Liz;->癤욱븳援:Liw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Liz;->癤욱븳援:Liw;

    iget-object v0, v0, Liw;->몃Ъ:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liz;->癤욱븳援:Liw;

    iget-object v0, v0, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v0, p0, Liz;->癤욱븳援:Liw;

    iget-object v0, v0, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckItemIds()[J

    move-result-object v0

    array-length v0, v0

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-lt v1, v2, :cond_2

    iget-object v0, p0, Liz;->癤욱븳援:Liw;

    invoke-static {v0}, Liw;->癤욱븳援(Liw;)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Liz;->癤욱븳援:Liw;

    iget-object v3, v3, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {v3, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
