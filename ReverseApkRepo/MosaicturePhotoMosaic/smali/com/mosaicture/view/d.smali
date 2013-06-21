.class final Lcom/mosaicture/view/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/c;


# direct methods
.method constructor <init>(Lcom/mosaicture/view/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/d;->a:Lcom/mosaicture/view/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/d;->a:Lcom/mosaicture/view/c;

    iget-object v0, v0, Lcom/mosaicture/view/c;->a:Lcom/mosaicture/view/Eula;

    invoke-virtual {v0}, Lcom/mosaicture/view/Eula;->finish()V

    return-void
.end method
