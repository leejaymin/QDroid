.class final Lcom/rubycell/e/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/rubycell/e/k;


# direct methods
.method constructor <init>(Lcom/rubycell/e/k;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/e/l;->a:Lcom/rubycell/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/rubycell/e/l;->a:Lcom/rubycell/e/k;

    iget-object v0, v0, Lcom/rubycell/e/k;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/SongListActivity;->d()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/rubycell/pianisthd/a/g;

    iget-object v2, p0, Lcom/rubycell/e/l;->a:Lcom/rubycell/e/k;

    iget-object v2, v2, Lcom/rubycell/e/k;->a:Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v3, p0, Lcom/rubycell/e/l;->a:Lcom/rubycell/e/k;

    iget-object v3, v3, Lcom/rubycell/e/k;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-virtual {v3}, Lcom/rubycell/pianisthd/SongListActivity;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/rubycell/pianisthd/a/g;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
