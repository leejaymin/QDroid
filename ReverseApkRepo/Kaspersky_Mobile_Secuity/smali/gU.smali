.class public final LgU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LgU;-><init>(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, LgU;->a:Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-ltz p2, :cond_0

    iget-object v0, p0, LgU;->a:Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;

    invoke-virtual {v0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 45
    iget-object v3, p0, LgU;->a:Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->b(IZ)V

    .line 46
    iget-object v0, p0, LgU;->a:Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;

    if-eq p2, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v4, v1}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->b(IZ)V

    .line 47
    iget-object v0, p0, LgU;->a:Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;

    invoke-static {v0, p2}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->a(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;I)V

    .line 48
    iget-object v0, p0, LgU;->a:Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;

    iget-object v1, p0, LgU;->a:Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;

    invoke-static {v1}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->a(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->a(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;ILjava/lang/String;)V

    .line 49
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 51
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 45
    goto :goto_0

    :cond_2
    move v1, v2

    .line 46
    goto :goto_1
.end method
