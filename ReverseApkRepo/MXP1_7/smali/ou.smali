.class Lou;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic 癤욱븳援:Los;


# direct methods
.method constructor <init>(Los;)V
    .locals 0

    iput-object p1, p0, Lou;->癤욱븳援:Los;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lou;->癤욱븳援:Los;

    const/4 v1, 0x1

    iput-boolean v1, v0, Los;->癤욱븳援:Z

    iget-object v0, p0, Lou;->癤욱븳援:Los;

    invoke-static {v0}, Los;->궗(Los;)Loh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lou;->癤욱븳援:Los;

    invoke-static {v0}, Los;->궗(Los;)Loh;

    move-result-object v0

    iget-object v1, p0, Lou;->癤욱븳援:Los;

    invoke-static {v1}, Los;->먯꽌(Los;)Log;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Loh;->癤욱븳援(Log;Z)V

    :cond_0
    return-void
.end method
