.class final Lcom/rubycell/pianisthd/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/SongListActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/SongListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/be;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/be;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-static {v0}, Lcom/rubycell/pianisthd/SongListActivity;->c(Lcom/rubycell/pianisthd/SongListActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/be;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/be;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-static {v0}, Lcom/rubycell/pianisthd/SongListActivity;->d(Lcom/rubycell/pianisthd/SongListActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rubycell/pianisthd/SongListActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/be;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/SongListActivity;->b()V

    :goto_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/be;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-static {v0}, Lcom/rubycell/pianisthd/SongListActivity;->c(Lcom/rubycell/pianisthd/SongListActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/be;->a:Lcom/rubycell/pianisthd/SongListActivity;

    const-string v1, "Unable to connect to network."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/be;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/be;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-static {v0}, Lcom/rubycell/pianisthd/SongListActivity;->d(Lcom/rubycell/pianisthd/SongListActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rubycell/pianisthd/SongListActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/be;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-static {v0}, Lcom/rubycell/pianisthd/SongListActivity;->e(Lcom/rubycell/pianisthd/SongListActivity;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/be;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/SongListActivity;->a()V

    :goto_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/be;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-static {v0}, Lcom/rubycell/pianisthd/SongListActivity;->c(Lcom/rubycell/pianisthd/SongListActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/be;->a:Lcom/rubycell/pianisthd/SongListActivity;

    const-string v1, "Unable to connect to network."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x7f0a0104
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
