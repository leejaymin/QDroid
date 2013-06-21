.class Lqd;
.super Ljava/lang/Object;

# interfaces
.implements Lc;


# instance fields
.field final synthetic 癤욱븳援:Lqc;


# direct methods
.method constructor <init>(Lqc;)V
    .locals 0

    iput-object p1, p0, Lqd;->癤욱븳援:Lqc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public 癤욱븳援(I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lqd;->癤욱븳援:Lqc;

    invoke-static {v0}, Lqc;->癤욱븳援(Lqc;)Lpv;

    move-result-object v0

    iput-boolean v1, v0, Lpv;->癤욱븳援:Z

    iget-object v0, p0, Lqd;->癤욱븳援:Lqc;

    invoke-static {v0}, Lqc;->癤욱븳援(Lqc;)Lpv;

    move-result-object v0

    invoke-static {v0}, Lpv;->꾨뱾(Lpv;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lqd;->癤욱븳援:Lqc;

    invoke-static {v0}, Lqc;->癤욱븳援(Lqc;)Lpv;

    move-result-object v0

    invoke-static {v0}, Lpv;->먯껜蹂대떎(Lpv;)Lafzkl/development/mColorPicker/views/ColorPanelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setColor(I)V

    iget-object v0, p0, Lqd;->癤욱븳援:Lqc;

    invoke-static {v0}, Lqc;->癤욱븳援(Lqc;)Lpv;

    move-result-object v0

    invoke-static {v0}, Lpv;->몃Ъ(Lpv;)V

    return-void
.end method
