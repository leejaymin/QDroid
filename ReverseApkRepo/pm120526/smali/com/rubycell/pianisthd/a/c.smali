.class final Lcom/rubycell/pianisthd/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/a/b;

.field private final synthetic b:I

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/a/b;II)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/a/c;->a:Lcom/rubycell/pianisthd/a/b;

    iput p2, p0, Lcom/rubycell/pianisthd/a/c;->b:I

    iput p3, p0, Lcom/rubycell/pianisthd/a/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/rubycell/pianisthd/a/c;->a:Lcom/rubycell/pianisthd/a/b;

    iget-object v0, v0, Lcom/rubycell/pianisthd/a/b;->a:Landroid/content/Context;

    check-cast v0, Lcom/rubycell/pianisthd/SongListActivity;

    const/4 v1, 0x5

    iget v2, p0, Lcom/rubycell/pianisthd/a/c;->b:I

    iget v3, p0, Lcom/rubycell/pianisthd/a/c;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/rubycell/pianisthd/SongListActivity;->a(III)V

    return-void
.end method
