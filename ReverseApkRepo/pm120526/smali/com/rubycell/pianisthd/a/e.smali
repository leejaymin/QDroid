.class final Lcom/rubycell/pianisthd/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/a/b;

.field private final synthetic b:Lcom/rubycell/pianisthd/c/h;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/a/b;Lcom/rubycell/pianisthd/c/h;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/a/e;->a:Lcom/rubycell/pianisthd/a/b;

    iput-object p2, p0, Lcom/rubycell/pianisthd/a/e;->b:Lcom/rubycell/pianisthd/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/rubycell/pianisthd/a/e;->a:Lcom/rubycell/pianisthd/a/b;

    iget-object v0, v0, Lcom/rubycell/pianisthd/a/b;->a:Landroid/content/Context;

    check-cast v0, Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v1, p0, Lcom/rubycell/pianisthd/a/e;->b:Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/SongListActivity;->a(Lcom/rubycell/pianisthd/c/h;)V

    return-void
.end method
