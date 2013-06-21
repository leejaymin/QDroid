.class public Lcom/tequnique/camerax/SeekBarPreference;
.super Landroid/preference/DialogPreference;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private a:Landroid/widget/SeekBar;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/tequnique/camerax/SeekBarPreference;->i:I

    iput-object p1, p0, Lcom/tequnique/camerax/SeekBarPreference;->d:Landroid/content/Context;

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "dialogMessage"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/SeekBarPreference;->e:Ljava/lang/String;

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "text"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/SeekBarPreference;->f:Ljava/lang/String;

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "defaultValue"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/SeekBarPreference;->g:I

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "max"

    const/16 v2, 0x64

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/SeekBarPreference;->h:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/tequnique/camerax/SeekBarPreference;->i:I

    return v0
.end method

.method public final a(I)V
    .locals 1

    iput p1, p0, Lcom/tequnique/camerax/SeekBarPreference;->i:I

    iget-object v0, p0, Lcom/tequnique/camerax/SeekBarPreference;->a:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/SeekBarPreference;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tequnique/camerax/SeekBarPreference;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/tequnique/camerax/SeekBarPreference;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/SeekBarPreference;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/tequnique/camerax/SeekBarPreference;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x6

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tequnique/camerax/SeekBarPreference;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tequnique/camerax/SeekBarPreference;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tequnique/camerax/SeekBarPreference;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tequnique/camerax/SeekBarPreference;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tequnique/camerax/SeekBarPreference;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tequnique/camerax/SeekBarPreference;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/tequnique/camerax/SeekBarPreference;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tequnique/camerax/SeekBarPreference;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tequnique/camerax/SeekBarPreference;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tequnique/camerax/SeekBarPreference;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/tequnique/camerax/SeekBarPreference;->c:Landroid/widget/TextView;

    const/high16 v2, 0x4200

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/tequnique/camerax/SeekBarPreference;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/tequnique/camerax/SeekBarPreference;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tequnique/camerax/SeekBarPreference;->a:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/tequnique/camerax/SeekBarPreference;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/tequnique/camerax/SeekBarPreference;->a:Landroid/widget/SeekBar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/tequnique/camerax/SeekBarPreference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/tequnique/camerax/SeekBarPreference;->g:I

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SeekBarPreference;->getPersistedInt(I)I

    move-result v1

    iput v1, p0, Lcom/tequnique/camerax/SeekBarPreference;->i:I

    :cond_1
    iget-object v1, p0, Lcom/tequnique/camerax/SeekBarPreference;->a:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/tequnique/camerax/SeekBarPreference;->h:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/tequnique/camerax/SeekBarPreference;->a:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/tequnique/camerax/SeekBarPreference;->i:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iput p2, p0, Lcom/tequnique/camerax/SeekBarPreference;->i:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/SeekBarPreference;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tequnique/camerax/SeekBarPreference;->f:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/tequnique/camerax/SeekBarPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/tequnique/camerax/SeekBarPreference;->persistInt(I)Z

    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v2, p0, Lcom/tequnique/camerax/SeekBarPreference;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/tequnique/camerax/SeekBarPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tequnique/camerax/SeekBarPreference;->g:I

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/tequnique/camerax/SeekBarPreference;->i:I

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/SeekBarPreference;->i:I

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
