.class final Lcom/rubycell/pianisthd/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/SongListActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/SongListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/bl;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/rubycell/pianisthd/bl;->a:Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/SongListActivity;->q:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/bl;->a:Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/SongListActivity;->q:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/bl;->a:Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/SongListActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/bl;->a:Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/SongListActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    :cond_0
    iget-object v1, p0, Lcom/rubycell/pianisthd/bl;->a:Lcom/rubycell/pianisthd/SongListActivity;

    const v0, 0x7f0a0132

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/rubycell/pianisthd/SongListActivity;->q:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/rubycell/pianisthd/bl;->a:Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/SongListActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/bl;->a:Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/SongListActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/bl;->a:Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/SongListActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    return-void
.end method
