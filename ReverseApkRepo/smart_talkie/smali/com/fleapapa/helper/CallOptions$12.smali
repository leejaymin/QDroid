.class Lcom/fleapapa/helper/CallOptions$12;
.super Ljava/lang/Object;
.source "CallOptions.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallOptions;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallOptions;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallOptions$12;->this$0:Lcom/fleapapa/helper/CallOptions;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    sget-object v0, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/fleapapa/helper/CallPapa;->quietOnTime:Z

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "quietOnTime"

    aput-object v1, v0, v2

    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v1, v1, Lcom/fleapapa/helper/CallPapa;->quietOnTime:Z

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 114
    return-void

    :cond_0
    move v1, v3

    .line 112
    goto :goto_0

    :cond_1
    move v1, v2

    .line 113
    goto :goto_1
.end method
