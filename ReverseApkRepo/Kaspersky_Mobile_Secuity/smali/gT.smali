.class public final LgT;
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
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LgT;-><init>(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, LgT;->a:Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 61
    if-ltz p2, :cond_0

    iget-object v0, p0, LgT;->a:Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;

    invoke-virtual {v0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 64
    iget-object v0, p0, LgT;->a:Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;

    invoke-static {v0, p2}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->b(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;I)V

    .line 65
    iget-object v0, p0, LgT;->a:Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;

    const/4 v1, 0x1

    iget-object v2, p0, LgT;->a:Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;

    invoke-static {v2}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->b(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->b(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;ILjava/lang/String;)V

    .line 66
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 68
    :cond_0
    return-void
.end method
