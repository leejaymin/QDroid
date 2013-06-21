.class Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$2;
.super Ljava/lang/Object;
.source "RangeDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->createRangeDialog(Landroid/content/Context;JLjava/lang/String;Lcom/spritefish/fastburstcamera/controls/RangeDialogChangeListener;Lcom/spritefish/fastburstcamera/controls/RangeDialogResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$resultListener:Lcom/spritefish/fastburstcamera/controls/RangeDialogResultListener;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;Lcom/spritefish/fastburstcamera/controls/RangeDialogResultListener;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$2;->this$0:Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$2;->val$resultListener:Lcom/spritefish/fastburstcamera/controls/RangeDialogResultListener;

    iput-object p3, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$2;->val$dialog:Landroid/app/Dialog;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const-wide/16 v2, -0x1

    .line 77
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$2;->val$resultListener:Lcom/spritefish/fastburstcamera/controls/RangeDialogResultListener;

    const/4 v1, 0x0

    move-wide v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/spritefish/fastburstcamera/controls/RangeDialogResultListener;->onResult(ZJJ)V

    .line 78
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 79
    return-void
.end method
