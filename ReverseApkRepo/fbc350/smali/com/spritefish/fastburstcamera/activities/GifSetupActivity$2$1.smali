.class Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2$1;
.super Ljava/lang/Object;
.source "GifSetupActivity.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/controls/RangeDialogChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2$1;->this$1:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangeChange(JJLandroid/widget/TextView;)V
    .locals 8
    .parameter "min"
    .parameter "max"
    .parameter "txtView"

    .prologue
    const-wide/16 v6, 0x1

    .line 133
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2$1;->this$1:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;->access$0(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;)Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0001

    add-long v3, p3, v6

    sub-long/2addr v3, p1

    long-to-int v3, v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-long/2addr v6, p3

    sub-long/2addr v6, p1

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, txt:Ljava/lang/String;
    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method
