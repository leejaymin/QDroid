.class Lcom/rookiestudio/customize/AmbilWarnaDialog$1;
.super Ljava/lang/Object;
.source "AmbilWarnaDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/customize/AmbilWarnaDialog;-><init>(Landroid/content/Context;ILcom/rookiestudio/customize/AmbilWarnaDialog$OnAmbilWarnaListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;


# direct methods
.method constructor <init>(Lcom/rookiestudio/customize/AmbilWarnaDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog$1;->this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x43b4

    .line 64
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 69
    .local v0, y:F
    cmpg-float v2, v0, v5

    if-gez v2, :cond_1

    const/4 v0, 0x0

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog$1;->this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;

    iget v2, v2, Lcom/rookiestudio/customize/AmbilWarnaDialog;->ukuranUiPx:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog$1;->this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;

    iget v2, v2, Lcom/rookiestudio/customize/AmbilWarnaDialog;->ukuranUiPx:F

    const v3, 0x3a83126f

    sub-float v0, v2, v3

    .line 72
    :cond_2
    iget-object v2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog$1;->this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;

    iget-object v3, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog$1;->this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;

    iget v3, v3, Lcom/rookiestudio/customize/AmbilWarnaDialog;->ukuranUiPx:F

    div-float v3, v4, v3

    mul-float/2addr v3, v0

    sub-float v3, v4, v3

    iput v3, v2, Lcom/rookiestudio/customize/AmbilWarnaDialog;->hue:F

    .line 73
    iget-object v2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog$1;->this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;

    iget v2, v2, Lcom/rookiestudio/customize/AmbilWarnaDialog;->hue:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog$1;->this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;

    iput v5, v2, Lcom/rookiestudio/customize/AmbilWarnaDialog;->hue:F

    .line 75
    :cond_3
    iget-object v2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog$1;->this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;

    iget-object v3, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog$1;->this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;

    #calls: Lcom/rookiestudio/customize/AmbilWarnaDialog;->hitungWarna()I
    invoke-static {v3}, Lcom/rookiestudio/customize/AmbilWarnaDialog;->access$0(Lcom/rookiestudio/customize/AmbilWarnaDialog;)I

    move-result v3

    iput v3, v2, Lcom/rookiestudio/customize/AmbilWarnaDialog;->warnaBaru:I

    .line 77
    iget-object v2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog$1;->this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;

    iget-object v2, v2, Lcom/rookiestudio/customize/AmbilWarnaDialog;->viewKotak:Lcom/rookiestudio/customize/AmbilWarnaKotak;

    iget-object v3, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog$1;->this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;

    iget v3, v3, Lcom/rookiestudio/customize/AmbilWarnaDialog;->hue:F

    invoke-virtual {v2, v3}, Lcom/rookiestudio/customize/AmbilWarnaKotak;->setHue(F)V

    .line 78
    iget-object v2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog$1;->this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;

    invoke-virtual {v2}, Lcom/rookiestudio/customize/AmbilWarnaDialog;->letakkanPanah()V

    .line 79
    iget-object v2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog$1;->this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;

    iget-object v2, v2, Lcom/rookiestudio/customize/AmbilWarnaDialog;->viewWarnaBaru:Landroid/view/View;

    iget-object v3, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog$1;->this$0:Lcom/rookiestudio/customize/AmbilWarnaDialog;

    iget v3, v3, Lcom/rookiestudio/customize/AmbilWarnaDialog;->warnaBaru:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 83
    .end local v0           #y:F
    :goto_0
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method
