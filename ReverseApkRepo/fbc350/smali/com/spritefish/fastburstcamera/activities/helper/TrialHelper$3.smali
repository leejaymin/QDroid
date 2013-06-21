.class Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$3;
.super Ljava/lang/Object;
.source "TrialHelper.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper;->enableTrialDialog(Landroid/app/Activity;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$3;->val$activity:Landroid/app/Activity;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$3;->val$activity:Landroid/app/Activity;

    const v1, 0x7f070032

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
