.class public final Ldi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/KMSCommonSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/gui/KMSCommonSettingsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldi;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/gui/KMSCommonSettingsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Ldi;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 333
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 334
    iget-object v1, p0, Ldi;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v1

    aget-object v1, v1, v0

    iget-boolean v1, v1, Ldk;->d:Z

    if-eq v1, p2, :cond_0

    .line 336
    iget-object v1, p0, Ldi;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    iget-object v1, p0, Ldi;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v1

    aget-object v1, v1, v0

    iput-boolean p2, v1, Ldk;->d:Z

    .line 339
    iget-object v1, p0, Ldi;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->a(I)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v1, p0, Ldi;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v1

    aget-object v0, v1, v0

    iget-boolean v0, v0, Ldk;->d:Z

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 318
    iget-object v0, p0, Ldi;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-virtual {v0, v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Ldi;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v0

    aget-object v0, v0, v1

    iget v0, v0, Ldk;->a:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Ldi;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v0

    aget-object v0, v0, v1

    iget v0, v0, Ldk;->a:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 322
    :cond_0
    const v0, 0x7f0b007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 323
    iget-object v2, p0, Ldi;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v2}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Ldk;->d:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 325
    :cond_1
    iget-object v1, p0, Ldi;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->a(I)V

    .line 327
    :cond_2
    return-void

    .line 323
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
