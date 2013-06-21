.class public Ljv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private ㅼ꽑嫄:F

.field private 弱밧:F

.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

.field private final 궗:[Ljava/lang/String;

.field private final 먯꽌:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;[Ljava/lang/String;Landroid/widget/CheckBox;FF)V
    .locals 2

    iput-object p1, p0, Ljv;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljv;->궗:[Ljava/lang/String;

    iput-object p3, p0, Ljv;->먯꽌:Landroid/widget/CheckBox;

    iput p4, p0, Ljv;->ㅼ꽑嫄:F

    iput p5, p0, Ljv;->弱밧:F

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "aspect_ratio.h"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private 癤욱븳援(FF)V
    .locals 2

    iput p1, p0, Ljv;->ㅼ꽑嫄:F

    iput p2, p0, Ljv;->弱밧:F

    iget-object v0, p0, Ljv;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lnb;->癤욱븳援(FFZ)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Ljv;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->롩퐢()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    sget v1, Lno;->widthRatio:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast p1, Landroid/app/Dialog;

    sget v1, Lno;->heightRatio:I

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    :try_start_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpl-float v2, v0, v6

    if-lez v2, :cond_0

    cmpl-float v2, v1, v6

    if-lez v2, :cond_0

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "custom_aspect_ratio_horz"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v3, "custom_aspect_ratio_vert"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-static {v2}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    invoke-direct {p0, v0, v1}, Ljv;->癤욱븳援(FF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    if-ltz p2, :cond_0

    if-nez p2, :cond_3

    invoke-direct {p0, v6, v6}, Ljv;->癤욱븳援(FF)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ljv;->궗:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_4

    iget-object v0, p0, Ljv;->궗:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {p0, v1, v0}, Ljv;->癤욱븳援(FF)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Ljv;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljv;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnp;->custom_aspect_ratio:I

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "custom_aspect_ratio_horz"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "custom_aspect_ratio_vert"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    cmpl-float v0, v4, v6

    if-lez v0, :cond_6

    cmpl-float v0, v5, v6

    if-lez v0, :cond_6

    invoke-static {}, Ljava/text/DecimalFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    instance-of v0, v1, Ljava/text/DecimalFormat;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Ljava/text/DecimalFormat;

    const-string v2, "#.####"

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    :cond_5
    sget v0, Lno;->widthRatio:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lno;->heightRatio:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    float-to-double v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    float-to-double v4, v5

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ljv;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lnt;->enter_custom_aspect_ratio:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ljv;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v1, v0}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Ljv;->먯꽌:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aspect_ratio.h"

    iget v2, p0, Ljv;->ㅼ꽑嫄:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v1, "aspect_ratio.v"

    iget v2, p0, Ljv;->弱밧:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Ljv;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnb;->먯꽌(Z)V

    iget-object v0, p0, Ljv;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援:Lfm;

    invoke-virtual {v0, p1}, Lfm;->궗(Landroid/content/DialogInterface;)V

    return-void

    :cond_1
    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "aspect_ratio.h"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aspect_ratio.h"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "aspect_ratio.v"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method
