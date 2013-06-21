.class Lelectrum2/drums/waveeditactivity$2;
.super Ljava/lang/Object;
.source "waveeditactivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/waveeditactivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/waveeditactivity;


# direct methods
.method constructor <init>(Lelectrum2/drums/waveeditactivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/waveeditactivity$2;->this$0:Lelectrum2/drums/waveeditactivity;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 182
    iget-object v0, p0, Lelectrum2/drums/waveeditactivity$2;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v0, v0, Lelectrum2/drums/waveeditactivity;->waveviewer:Lelectrum2/drums/waveedit;

    invoke-virtual {v0}, Lelectrum2/drums/waveedit;->ZoomIn()V

    .line 186
    return-void
.end method
