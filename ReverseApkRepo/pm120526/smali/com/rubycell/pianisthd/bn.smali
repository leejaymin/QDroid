.class final Lcom/rubycell/pianisthd/bn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/SongListActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/SongListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/bn;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3

    const-string v0, "Play default song"

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    sput p3, Lcom/rubycell/pianisthd/d/b;->V:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/bn;->a:Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/SongListActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/a;

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "groupId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "childId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/pianisthd/bn;->a:Lcom/rubycell/pianisthd/SongListActivity;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2, v0}, Lcom/rubycell/pianisthd/SongListActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/bn;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/SongListActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
