.class Lfk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field 癤욱븳援:Landroid/app/Dialog;

.field final synthetic 궗:Lfh;


# direct methods
.method private constructor <init>(Lfh;)V
    .locals 0

    iput-object p1, p0, Lfk;->궗:Lfh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfh;Lfk;)V
    .locals 0

    invoke-direct {p0, p1}, Lfk;-><init>(Lfh;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lfk;->궗:Lfh;

    iget-object v1, p0, Lfk;->궗:Lfh;

    iget v1, v1, Lfh;->먯꽌:I

    invoke-static {v0, v1}, Lfh;->癤욱븳援(Lfh;I)V

    iget-object v0, p0, Lfk;->궗:Lfh;

    invoke-static {v0}, Lfh;->癤욱븳援(Lfh;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dont_inquire_update_for"

    iget-object v2, p0, Lfk;->궗:Lfh;

    iget v2, v2, Lfh;->먯꽌:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    iget-object v0, p0, Lfk;->癤욱븳援:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
