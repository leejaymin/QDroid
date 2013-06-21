.class public Lcom/fleapapa/helper/CallBursts$Burstx;
.super Ljava/lang/Object;
.source "CallBursts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/CallBursts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Burstx"
.end annotation


# instance fields
.field burst:Lcom/fleapapa/helper/CallPapa$Burst;

.field ll:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/fleapapa/helper/CallBursts;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/CallBursts;Lcom/fleapapa/helper/CallPapa$Burst;)V
    .locals 0
    .parameter
    .parameter "burst"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/fleapapa/helper/CallBursts$Burstx;->this$0:Lcom/fleapapa/helper/CallBursts;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p2, p0, Lcom/fleapapa/helper/CallBursts$Burstx;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    return-void
.end method


# virtual methods
.method select(Z)V
    .locals 2
    .parameter "selected"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/fleapapa/helper/CallBursts$Burstx;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iput-boolean p1, v0, Lcom/fleapapa/helper/CallPapa$Burst;->selected:Z

    .line 199
    iget-object v0, p0, Lcom/fleapapa/helper/CallBursts$Burstx;->ll:Landroid/widget/LinearLayout;

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fleapapa/helper/CallBursts$Burstx;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-boolean v1, v1, Lcom/fleapapa/helper/CallPapa$Burst;->selected:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    return-void

    .line 199
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method
