.class Lcom/fleapapa/helper/CallOptions$3;
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
    iput-object p1, p0, Lcom/fleapapa/helper/CallOptions$3;->this$0:Lcom/fleapapa/helper/CallOptions;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 40
    sput-boolean p2, Lcom/fleapapa/helper/CallTabs;->hideTabs:Z

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hideTabs"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-boolean v2, Lcom/fleapapa/helper/CallTabs;->hideTabs:Z

    if-eqz v2, :cond_0

    const-string v2, "1"

    :goto_0
    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 42
    return-void

    .line 41
    :cond_0
    const-string v2, "0"

    goto :goto_0
.end method