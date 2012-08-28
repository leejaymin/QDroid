.class Lcom/adfonic/android/AdfonicView$1;
.super Ljava/lang/Object;
.source "AdfonicView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adfonic/android/AdfonicView;->changeContentArea(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adfonic/android/AdfonicView;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/adfonic/android/AdfonicView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/adfonic/android/AdfonicView$1;->this$0:Lcom/adfonic/android/AdfonicView;

    iput p2, p0, Lcom/adfonic/android/AdfonicView$1;->val$width:I

    iput p3, p0, Lcom/adfonic/android/AdfonicView$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/adfonic/android/AdfonicView$1;->this$0:Lcom/adfonic/android/AdfonicView;

    iget v1, p0, Lcom/adfonic/android/AdfonicView$1;->val$width:I

    iget v2, p0, Lcom/adfonic/android/AdfonicView$1;->val$height:I

    #calls: Lcom/adfonic/android/AdfonicView;->changeContentAreaOnUiThread(II)V
    invoke-static {v0, v1, v2}, Lcom/adfonic/android/AdfonicView;->access$000(Lcom/adfonic/android/AdfonicView;II)V

    .line 397
    return-void
.end method
