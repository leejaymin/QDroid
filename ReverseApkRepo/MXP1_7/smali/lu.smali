.class Llu;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic 癤욱븳援:Llp;


# direct methods
.method public constructor <init>(Llp;)V
    .locals 1

    iput-object p1, p0, Llu;->癤욱븳援:Llp;

    invoke-static {p1}, Llp;->癤욱븳援(Llp;)Llx;

    move-result-object v0

    invoke-interface {v0}, Llx;->뚮Ц()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Llu;->癤욱븳援:Llp;

    invoke-static {v0}, Llp;->ㅼ꽑嫄(Llp;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llu;->癤욱븳援:Llp;

    invoke-static {v0}, Llp;->ㅼ꽑嫄(Llp;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    return-void
.end method
