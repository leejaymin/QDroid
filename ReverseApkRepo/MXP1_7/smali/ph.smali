.class Lph;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic 癤욱븳援:Lpb;


# direct methods
.method constructor <init>(Lpb;)V
    .locals 0

    iput-object p1, p0, Lph;->癤욱븳援:Lpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object v0, p0, Lph;->癤욱븳援:Lpb;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lpb;->癤욱븳援:Z

    iget-object v0, p0, Lph;->癤욱븳援:Lpb;

    invoke-static {v0}, Lpb;->궗(Lpb;)Loh;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_3

    iget-object v0, p0, Lph;->癤욱븳援:Lpb;

    invoke-static {v0}, Lpb;->궗(Lpb;)Loh;

    move-result-object v0

    iget-object v1, p0, Lph;->癤욱븳援:Lpb;

    invoke-static {v1}, Lpb;->먯꽌(Lpb;)Log;

    move-result-object v1

    iget-object v2, p0, Lph;->癤욱븳援:Lpb;

    invoke-static {v2}, Lpb;->쇰뒗(Lpb;)F

    move-result v2

    invoke-interface {v0, v1, v2}, Loh;->궗(Log;F)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lph;->癤욱븳援:Lpb;

    invoke-static {v0}, Lpb;->대쫫(Lpb;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lph;->癤욱븳援:Lpb;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lpb;->癤욱븳援(Lpb;Landroid/widget/Toast;)V

    :cond_1
    if-eqz p2, :cond_4

    sget v0, Lgr;->궗:I

    const/16 v1, 0x2738

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lph;->癤욱븳援:Lpb;

    invoke-static {v0}, Lpb;->대쫫(Lpb;)Landroid/widget/Toast;

    move-result-object v0

    sget v1, Lnt;->alert_brightness_control_on:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    iget-object v0, p0, Lph;->癤욱븳援:Lpb;

    invoke-static {v0}, Lpb;->대쫫(Lpb;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lph;->癤욱븳援:Lpb;

    invoke-static {v0}, Lpb;->궗(Lpb;)Loh;

    move-result-object v0

    iget-object v1, p0, Lph;->癤욱븳援:Lpb;

    invoke-static {v1}, Lpb;->먯꽌(Lpb;)Log;

    move-result-object v1

    const/high16 v2, -0x4080

    invoke-interface {v0, v1, v2}, Loh;->궗(Log;F)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lph;->癤욱븳援:Lpb;

    invoke-static {v0}, Lpb;->대쫫(Lpb;)Landroid/widget/Toast;

    move-result-object v0

    sget v1, Lnt;->alert_brightness_control:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    iget-object v0, p0, Lph;->癤욱븳援:Lpb;

    invoke-static {v0}, Lpb;->대쫫(Lpb;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
