.class final Lcom/sphericbox/syb/browse/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic z:Lcom/sphericbox/syb/browse/SettingsActivity;


# direct methods
.method private constructor <init>(Lcom/sphericbox/syb/browse/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sphericbox/syb/browse/c;->z:Lcom/sphericbox/syb/browse/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sphericbox/syb/browse/SettingsActivity;Lcom/sphericbox/syb/browse/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sphericbox/syb/browse/c;-><init>(Lcom/sphericbox/syb/browse/SettingsActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sphericbox/syb/browse/c;->z:Lcom/sphericbox/syb/browse/SettingsActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/browse/SettingsActivity;->b(Lcom/sphericbox/syb/browse/SettingsActivity;)Lcom/sphericbox/syb/processing/ProcessingConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/sphericbox/syb/browse/c;->z:Lcom/sphericbox/syb/browse/SettingsActivity;

    invoke-static {v1}, Lcom/sphericbox/syb/browse/SettingsActivity;->a(Lcom/sphericbox/syb/browse/SettingsActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/processing/ProcessingConfig;->setAutoContrastEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/sphericbox/syb/browse/c;->z:Lcom/sphericbox/syb/browse/SettingsActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/browse/SettingsActivity;->b(Lcom/sphericbox/syb/browse/SettingsActivity;)Lcom/sphericbox/syb/processing/ProcessingConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/sphericbox/syb/browse/c;->z:Lcom/sphericbox/syb/browse/SettingsActivity;

    invoke-static {v1}, Lcom/sphericbox/syb/browse/SettingsActivity;->c(Lcom/sphericbox/syb/browse/SettingsActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/processing/ProcessingConfig;->setEdgesGeometryEnabled(Z)V

    .line 58
    iget-object v0, p0, Lcom/sphericbox/syb/browse/c;->z:Lcom/sphericbox/syb/browse/SettingsActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/browse/SettingsActivity;->b(Lcom/sphericbox/syb/browse/SettingsActivity;)Lcom/sphericbox/syb/processing/ProcessingConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/sphericbox/syb/browse/c;->z:Lcom/sphericbox/syb/browse/SettingsActivity;

    invoke-static {v1}, Lcom/sphericbox/syb/browse/SettingsActivity;->d(Lcom/sphericbox/syb/browse/SettingsActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/processing/ProcessingConfig;->setEnhaceEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/sphericbox/syb/browse/c;->z:Lcom/sphericbox/syb/browse/SettingsActivity;

    invoke-virtual {v0}, Lcom/sphericbox/syb/browse/SettingsActivity;->finish()V

    .line 60
    return-void
.end method
