.class Lix;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic 癤욱븳援:Liw;


# direct methods
.method constructor <init>(Liw;)V
    .locals 0

    iput-object p1, p0, Lix;->癤욱븳援:Liw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lix;->癤욱븳援:Liw;

    invoke-virtual {v0}, Liw;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lix;->癤욱븳援:Liw;

    invoke-virtual {v0}, Liw;->onSearchRequested()Z

    goto :goto_0
.end method
