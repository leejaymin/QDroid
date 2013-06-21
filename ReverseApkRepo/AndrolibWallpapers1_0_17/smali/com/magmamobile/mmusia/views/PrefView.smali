.class public Lcom/magmamobile/mmusia/views/PrefView;
.super Landroid/widget/LinearLayout;
.source "PrefView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/magmamobile/mmusia/views/PrefView;->setOrientation(I)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/magmamobile/mmusia/views/PrefView;->buildView(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method public buildView(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 18
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 19
    .local v0, check:Landroid/widget/CheckBox;
    sget-object v1, Lcom/magmamobile/mmusia/data/LanguageBase;->DIALOG_SETTINGS_CHKTEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 20
    sget v1, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_PREF_CHECK_ENABLE:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setId(I)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/magmamobile/mmusia/views/PrefView;->addView(Landroid/view/View;)V

    .line 23
    return-void
.end method
