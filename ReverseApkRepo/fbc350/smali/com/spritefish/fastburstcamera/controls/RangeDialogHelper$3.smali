.class Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$3;
.super Ljava/lang/Object;
.source "RangeDialogHelper.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$OnRangeSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->createRangeDialog(Landroid/content/Context;JLjava/lang/String;Lcom/spritefish/fastburstcamera/controls/RangeDialogChangeListener;Lcom/spritefish/fastburstcamera/controls/RangeDialogResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$OnRangeSeekBarChangeListener",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;

.field private final synthetic val$largeTextView:Landroid/widget/TextView;

.field private final synthetic val$listener:Lcom/spritefish/fastburstcamera/controls/RangeDialogChangeListener;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;Lcom/spritefish/fastburstcamera/controls/RangeDialogChangeListener;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$3;->this$0:Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$3;->val$listener:Lcom/spritefish/fastburstcamera/controls/RangeDialogChangeListener;

    iput-object p3, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$3;->val$largeTextView:Landroid/widget/TextView;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rangeSeekBarValuesChanged(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 6
    .parameter "minValue"
    .parameter "maxValue"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$3;->this$0:Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->updatePictures(JJ)V

    .line 93
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$3;->val$listener:Lcom/spritefish/fastburstcamera/controls/RangeDialogChangeListener;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$3;->val$largeTextView:Landroid/widget/TextView;

    invoke-interface/range {v0 .. v5}, Lcom/spritefish/fastburstcamera/controls/RangeDialogChangeListener;->onRangeChange(JJLandroid/widget/TextView;)V

    .line 94
    return-void
.end method

.method public bridge synthetic rangeSeekBarValuesChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$3;->rangeSeekBarValuesChanged(Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method
