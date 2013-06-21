.class public Lcom/wareone/tappmt/DuringReport;
.super Landroid/app/Activity;
.source "DuringReport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v1, 0x7f03001a

    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/DuringReport;->setContentView(I)V

    .line 20
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    .local v0, ll:Landroid/widget/LinearLayout;
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/wareone/tappmt/DuringReport;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 28
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 30
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, it:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 52
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 43
    :sswitch_0
    const-string v1, "Report not ready."

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 46
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #it:Landroid/content/Intent;
    const-class v1, Lcom/wareone/tappmt/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .restart local v0       #it:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/DuringReport;->startActivity(Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p0}, Lcom/wareone/tappmt/DuringReport;->finish()V

    goto :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x7f0c00c3 -> :sswitch_0
        0x7f0c00c8 -> :sswitch_1
    .end sparse-switch
.end method
