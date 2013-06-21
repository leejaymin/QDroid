.class final Lcom/rubycell/pianisthd/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/SongListActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/SongListActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/bf;->a:Lcom/rubycell/pianisthd/SongListActivity;

    iput p2, p0, Lcom/rubycell/pianisthd/bf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Lcom/rubycell/e/a;

    iget-object v1, p0, Lcom/rubycell/pianisthd/bf;->a:Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v1, v1, Lcom/rubycell/pianisthd/SongListActivity;->u:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/rubycell/e/a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    iget v3, p0, Lcom/rubycell/pianisthd/bf;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/rubycell/e/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
