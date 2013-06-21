.class Lcom/spritefish/fastburstcamera/activities/BurstListActivity$1;
.super Lcom/spritefish/fastburstcamera/activities/EndAnimationListener;
.source "BurstListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->updateRow(Landroid/view/View;Lcom/spritefish/fastburstcamera/db/dao/Burst;ZLcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    .line 144
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/EndAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 149
    return-void
.end method
