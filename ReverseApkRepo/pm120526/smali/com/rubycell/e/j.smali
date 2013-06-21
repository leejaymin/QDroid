.class final Lcom/rubycell/e/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/rubycell/e/i;


# direct methods
.method constructor <init>(Lcom/rubycell/e/i;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/e/j;->a:Lcom/rubycell/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/rubycell/e/j;->a:Lcom/rubycell/e/i;

    iget-object v0, v0, Lcom/rubycell/e/i;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/SongListActivity;->e()Landroid/widget/ExpandableListView;

    move-result-object v0

    new-instance v1, Lcom/rubycell/pianisthd/a/b;

    iget-object v2, p0, Lcom/rubycell/e/j;->a:Lcom/rubycell/e/i;

    iget-object v2, v2, Lcom/rubycell/e/i;->a:Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v3, p0, Lcom/rubycell/e/j;->a:Lcom/rubycell/e/i;

    iget-object v3, v3, Lcom/rubycell/e/i;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-virtual {v3}, Lcom/rubycell/pianisthd/SongListActivity;->h()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/rubycell/pianisthd/a/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/e/j;->a:Lcom/rubycell/e/i;

    iget-object v0, v0, Lcom/rubycell/e/i;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/SongListActivity;->e()Landroid/widget/ExpandableListView;

    move-result-object v0

    sget v1, Lcom/rubycell/pianisthd/d/b;->V:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/rubycell/e/j;->a:Lcom/rubycell/e/i;

    iget-object v0, v0, Lcom/rubycell/e/i;->a:Lcom/rubycell/pianisthd/SongListActivity;

    const v1, 0x7f0a0057

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
