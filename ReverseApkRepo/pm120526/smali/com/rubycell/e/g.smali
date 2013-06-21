.class final Lcom/rubycell/e/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/rubycell/e/f;


# direct methods
.method constructor <init>(Lcom/rubycell/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/e/g;->a:Lcom/rubycell/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget v0, Lcom/rubycell/pianisthd/d/b;->M:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rubycell/e/g;->a:Lcom/rubycell/e/f;

    iget-object v0, v0, Lcom/rubycell/e/f;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/SongListActivity;->c()Landroid/widget/ExpandableListView;

    move-result-object v0

    new-instance v1, Lcom/rubycell/pianisthd/a/m;

    iget-object v2, p0, Lcom/rubycell/e/g;->a:Lcom/rubycell/e/f;

    iget-object v2, v2, Lcom/rubycell/e/f;->a:Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v3, p0, Lcom/rubycell/e/g;->a:Lcom/rubycell/e/f;

    iget-object v3, v3, Lcom/rubycell/e/f;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-virtual {v3}, Lcom/rubycell/pianisthd/SongListActivity;->g()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/rubycell/pianisthd/a/m;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/e/g;->a:Lcom/rubycell/e/f;

    iget-object v0, v0, Lcom/rubycell/e/f;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/SongListActivity;->c()Landroid/widget/ExpandableListView;

    move-result-object v0

    sget v1, Lcom/rubycell/pianisthd/d/b;->V:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
