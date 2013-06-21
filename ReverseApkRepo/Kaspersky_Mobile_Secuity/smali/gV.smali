.class public final LgV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field private synthetic a:Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LgV;-><init>(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, LgV;->a:Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, LgV;->a:Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;

    invoke-static {v0, p2, p3}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->a(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;II)V

    .line 79
    iget-object v0, p0, LgV;->a:Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;

    const/4 v1, 0x2

    iget-object v2, p0, LgV;->a:Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;

    invoke-static {v2}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->c(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->c(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;ILjava/lang/String;)V

    .line 80
    return-void
.end method
