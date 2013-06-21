.class final Lcom/rubycell/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/rubycell/e/a;


# direct methods
.method constructor <init>(Lcom/rubycell/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/e/b;->a:Lcom/rubycell/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/rubycell/e/b;->a:Lcom/rubycell/e/a;

    iget-object v0, v0, Lcom/rubycell/e/a;->d:Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v1, p0, Lcom/rubycell/e/b;->a:Lcom/rubycell/e/a;

    iget-object v1, v1, Lcom/rubycell/e/a;->b:Landroid/content/Context;

    const v2, 0x7f07002f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/m;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/SongListActivity;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/rubycell/e/b;->a:Lcom/rubycell/e/a;

    iget-object v0, v0, Lcom/rubycell/e/a;->d:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/SongListActivity;->d()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/rubycell/pianisthd/a/g;

    iget-object v2, p0, Lcom/rubycell/e/b;->a:Lcom/rubycell/e/a;

    iget-object v2, v2, Lcom/rubycell/e/a;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/rubycell/e/b;->a:Lcom/rubycell/e/a;

    iget-object v3, v3, Lcom/rubycell/e/a;->d:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-virtual {v3}, Lcom/rubycell/pianisthd/SongListActivity;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/rubycell/pianisthd/a/g;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/rubycell/e/b;->a:Lcom/rubycell/e/a;

    iget-object v0, v0, Lcom/rubycell/e/a;->d:Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v1, p0, Lcom/rubycell/e/b;->a:Lcom/rubycell/e/a;

    iget-object v1, v1, Lcom/rubycell/e/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/m;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/SongListActivity;->b(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/rubycell/e/b;->a:Lcom/rubycell/e/a;

    iget-object v0, v0, Lcom/rubycell/e/a;->d:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/SongListActivity;->c()Landroid/widget/ExpandableListView;

    move-result-object v0

    new-instance v1, Lcom/rubycell/pianisthd/a/m;

    iget-object v2, p0, Lcom/rubycell/e/b;->a:Lcom/rubycell/e/a;

    iget-object v2, v2, Lcom/rubycell/e/a;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/rubycell/e/b;->a:Lcom/rubycell/e/a;

    iget-object v3, v3, Lcom/rubycell/e/a;->d:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-virtual {v3}, Lcom/rubycell/pianisthd/SongListActivity;->g()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/rubycell/pianisthd/a/m;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    return-void
.end method
