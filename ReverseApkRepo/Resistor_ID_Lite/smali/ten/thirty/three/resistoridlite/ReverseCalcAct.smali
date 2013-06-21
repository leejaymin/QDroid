.class public Lten/thirty/three/resistoridlite/ReverseCalcAct;
.super Landroid/app/Activity;
.source "ReverseCalcAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field btnShowRes:Landroid/widget/Button;

.field txtOhm:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public CloseAndReturnWithValue(I)V
    .locals 7
    .parameter "bands"

    .prologue
    const/4 v6, 0x0

    .line 76
    const/4 v1, -0x1

    .line 77
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.RIDReverse"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ohm"

    iget-object v4, p0, Lten/thirty/three/resistoridlite/ReverseCalcAct;->txtOhm:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 78
    const-string v3, "5band"

    const/4 v4, 0x5

    if-ne p1, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 76
    invoke-virtual {p0, v1, v2}, Lten/thirty/three/resistoridlite/ReverseCalcAct;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ReverseCalcAct;->finish()V

    .line 87
    return-void

    :cond_0
    move v4, v6

    .line 78
    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 82
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Error with Input. Resetting input field."

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 83
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ReverseCalcAct;->txtOhm:Landroid/widget/EditText;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public ShowResistor()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lten/thirty/three/resistoridlite/ReverseCalcAct;->CloseAndReturnWithValue(I)V

    .line 70
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 40
    :goto_0
    return-void

    .line 37
    :pswitch_0
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ReverseCalcAct;->ShowResistor()V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x7f050007
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lten/thirty/three/resistoridlite/ReverseCalcAct;->setContentView(I)V

    .line 24
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lten/thirty/three/resistoridlite/ReverseCalcAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ReverseCalcAct;->btnShowRes:Landroid/widget/Button;

    .line 25
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lten/thirty/three/resistoridlite/ReverseCalcAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ReverseCalcAct;->txtOhm:Landroid/widget/EditText;

    .line 26
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ReverseCalcAct;->btnShowRes:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method
