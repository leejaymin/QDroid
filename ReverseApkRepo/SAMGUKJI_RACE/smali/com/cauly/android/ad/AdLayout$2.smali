.class Lcom/cauly/android/ad/AdLayout$2;
.super Ljava/lang/Object;
.source "AdLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cauly/android/ad/AdLayout;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cauly/android/ad/AdLayout;


# direct methods
.method constructor <init>(Lcom/cauly/android/ad/AdLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cauly/android/ad/AdLayout$2;->this$0:Lcom/cauly/android/ad/AdLayout;

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 548
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 549
    return-void
.end method
