.class final Lcom/rubycell/pianisthd/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rubycell/a/h;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/SongListActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/SongListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/bi;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/rubycell/pianisthd/SongListActivity;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - http://goo.gl/h9vpN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/rubycell/a/a;

    iget-object v2, p0, Lcom/rubycell/pianisthd/bi;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-static {v2}, Lcom/rubycell/pianisthd/SongListActivity;->f(Lcom/rubycell/pianisthd/SongListActivity;)Lcom/rubycell/a/f;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/rubycell/a/a;-><init>(Lcom/rubycell/a/f;)V

    const-string v2, "me/feed"

    const-string v3, "POST"

    new-instance v4, Lcom/rubycell/pianisthd/br;

    iget-object v5, p0, Lcom/rubycell/pianisthd/bi;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-direct {v4, v5}, Lcom/rubycell/pianisthd/br;-><init>(Lcom/rubycell/pianisthd/SongListActivity;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/rubycell/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/rubycell/a/c;)V

    return-void
.end method

.method public final a(Lcom/rubycell/a/e;)V
    .locals 3

    iget-object v0, p0, Lcom/rubycell/pianisthd/bi;->a:Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v1, p0, Lcom/rubycell/pianisthd/bi;->a:Lcom/rubycell/pianisthd/SongListActivity;

    const v2, 0x7f07003a

    invoke-virtual {v1, v2}, Lcom/rubycell/pianisthd/SongListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1}, Lcom/rubycell/a/e;->printStackTrace()V

    return-void
.end method

.method public final a(Lcom/rubycell/a/i;)V
    .locals 3

    iget-object v0, p0, Lcom/rubycell/pianisthd/bi;->a:Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v1, p0, Lcom/rubycell/pianisthd/bi;->a:Lcom/rubycell/pianisthd/SongListActivity;

    const v2, 0x7f07003a

    invoke-virtual {v1, v2}, Lcom/rubycell/pianisthd/SongListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1}, Lcom/rubycell/a/i;->printStackTrace()V

    return-void
.end method
