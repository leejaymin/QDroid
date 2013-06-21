.class final Lcom/rubycell/pianisthd/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/a/g;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/a/g;I)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/a/l;->a:Lcom/rubycell/pianisthd/a/g;

    iput p2, p0, Lcom/rubycell/pianisthd/a/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/rubycell/pianisthd/a/l;->a:Lcom/rubycell/pianisthd/a/g;

    iget-object v0, v0, Lcom/rubycell/pianisthd/a/g;->a:Landroid/content/Context;

    check-cast v0, Lcom/rubycell/pianisthd/SongListActivity;

    const/4 v1, 0x4

    iget v2, p0, Lcom/rubycell/pianisthd/a/l;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/rubycell/pianisthd/SongListActivity;->a(III)V

    return-void
.end method
