.class Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper$1;
.super Ljava/lang/Object;
.source "WhatsNewHelper.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;->showWhatsNew(Landroid/app/Activity;ZLcom/google/android/apps/analytics/GoogleAnalyticsTracker;Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper$1;->this$0:Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const-string v0, "OK"

    return-object v0
.end method
